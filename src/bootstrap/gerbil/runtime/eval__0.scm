(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707555132)
  (begin
    (define __context::t
      (let ((__tmp110488
             (let ((__tmp110489
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110489 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp110488
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args106098_
        (apply make-struct-instance __context::t _$args106098_)))
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
      (let ((__tmp110490
             (let ((__tmp110491
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110491 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp110490
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args106095_
        (apply make-struct-instance __runtime::t _$args106095_)))
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
      (let ((__tmp110492
             (let ((__tmp110493
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110493 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp110492
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args106092_
        (apply make-struct-instance __syntax::t _$args106092_)))
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
      (let ((__tmp110494
             (let ((__tmp110495
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110495 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp110494
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args106089_
        (apply make-struct-instance __macro::t _$args106089_)))
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
      (let ((__tmp110496
             (let ((__tmp110497
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110497 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp110496
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args106086_
        (apply make-struct-instance __special-form::t _$args106086_)))
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
      (let ((__tmp110498
             (let ((__tmp110499
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110499 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp110498
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args106083_
        (apply make-struct-instance __core-form::t _$args106083_)))
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
      (let ((__tmp110500
             (let ((__tmp110501
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110501 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp110500
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args106080_
        (apply make-struct-instance __core-expression::t _$args106080_)))
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
      (let ((__tmp110502
             (let ((__tmp110503
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110503 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp110502
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args106077_
        (apply make-struct-instance __core-special-form::t _$args106077_)))
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
      (let ((__tmp110504
             (let ((__tmp110505
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110505 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp110504
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args106074_
        (apply make-struct-instance __struct-info::t _$args106074_)))
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
      (let ((__tmp110506
             (let ((__tmp110507
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110507 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp110506
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args106071_
        (apply make-struct-instance __feature::t _$args106071_)))
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
      (let ((__tmp110508
             (let ((__tmp110509
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110509 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp110508
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args106068_
        (apply make-struct-instance __module::t _$args106068_)))
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
      (let ((__tmp110511
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp110510
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp110511 __tmp110510)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id106043_ _ctx106044_)
        (if _ctx106044_
            (let ((_id106046_
                   (let () (declare (not safe)) (__AST-e _id106043_))))
              (let _lp106048_ ((_ctx106050_ _ctx106044_))
                (let ((_$e106052_
                       (table-ref
                        (##structure-ref _ctx106050_ '4 __context::t '#f)
                        _id106046_
                        '#f)))
                  (if _$e106052_
                      (values _$e106052_)
                      (let ((_$e106055_
                             (##structure-ref
                              _ctx106050_
                              '3
                              __context::t
                              '#f)))
                        (if _$e106055_
                            (let ()
                              (declare (not safe))
                              (_lp106048_ _$e106055_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id106061_)
        (let ((_ctx106063_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id106061_ _ctx106063_))))
    (define __core-resolve
      (lambda _g110513_
        (let ((_g110512_ (let () (declare (not safe)) (##length _g110513_))))
          (cond ((let () (declare (not safe)) (##fx= _g110512_ 1))
                 (apply (lambda (_id106061_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id106061_)))
                        _g110513_))
                ((let () (declare (not safe)) (##fx= _g110512_ 2))
                 (apply (lambda (_id106065_ _ctx106066_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id106065_ _ctx106066_)))
                        _g110513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g110513_))))))
    (define __core-bound-id?__%
      (lambda (_id106026_ _is?106027_)
        (let ((_$e106029_
               (let () (declare (not safe)) (__core-resolve__0 _id106026_))))
          (if _$e106029_ (_is?106027_ _$e106029_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id106035_)
        (let ((_is?106037_ true))
          (declare (not safe))
          (__core-bound-id?__% _id106035_ _is?106037_))))
    (define __core-bound-id?
      (lambda _g110515_
        (let ((_g110514_ (let () (declare (not safe)) (##length _g110515_))))
          (cond ((let () (declare (not safe)) (##fx= _g110514_ 1))
                 (apply (lambda (_id106035_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id106035_)))
                        _g110515_))
                ((let () (declare (not safe)) (##fx= _g110514_ 2))
                 (apply (lambda (_id106039_ _is?106040_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id106039_ _is?106040_)))
                        _g110515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g110515_))))))
    (define __core-bind-runtime!__%
      (lambda (_id106009_ _eid106010_ _ctx106011_)
        (if _eid106010_
            (let ((__tmp110518
                   (##structure-ref _ctx106011_ '4 __context::t '#f))
                  (__tmp110517
                   (let () (declare (not safe)) (__AST-e _id106009_)))
                  (__tmp110516
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid106010_))))
              (declare (not safe))
              (table-set! __tmp110518 __tmp110517 __tmp110516))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id106016_ _eid106017_)
        (let ((_ctx106019_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id106016_ _eid106017_ _ctx106019_))))
    (define __core-bind-runtime!
      (lambda _g110520_
        (let ((_g110519_ (let () (declare (not safe)) (##length _g110520_))))
          (cond ((let () (declare (not safe)) (##fx= _g110519_ 2))
                 (apply (lambda (_id106016_ _eid106017_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id106016_ _eid106017_)))
                        _g110520_))
                ((let () (declare (not safe)) (##fx= _g110519_ 3))
                 (apply (lambda (_id106021_ _eid106022_ _ctx106023_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id106021_
                             _eid106022_
                             _ctx106023_)))
                        _g110520_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g110520_))))))
    (define __core-bind-syntax!__%
      (lambda (_id105992_ _e105993_ _make105994_)
        (let ((__tmp110521
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105993_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105993_
                   (_make105994_ _e105993_ _id105992_))))
          (declare (not safe))
          (table-set! __*core* _id105992_ __tmp110521))))
    (define __core-bind-syntax!__0
      (lambda (_id105999_ _e106000_)
        (let ((_make106002_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id105999_ _e106000_ _make106002_))))
    (define __core-bind-syntax!
      (lambda _g110523_
        (let ((_g110522_ (let () (declare (not safe)) (##length _g110523_))))
          (cond ((let () (declare (not safe)) (##fx= _g110522_ 2))
                 (apply (lambda (_id105999_ _e106000_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id105999_ _e106000_)))
                        _g110523_))
                ((let () (declare (not safe)) (##fx= _g110522_ 3))
                 (apply (lambda (_id106004_ _e106005_ _make106006_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id106004_
                             _e106005_
                             _make106006_)))
                        _g110523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g110523_))))))
    (define __core-bind-macro!
      (lambda (_id105988_ _e105989_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105988_ _e105989_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id105985_ _e105986_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105985_ _e105986_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id105969_ _e105970_ _ctx105971_)
        (let ((__tmp110527 (##structure-ref _ctx105971_ '4 __context::t '#f))
              (__tmp110526 (let () (declare (not safe)) (__AST-e _id105969_)))
              (__tmp110524
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105970_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105970_
                   (let ((__tmp110525
                          (let () (declare (not safe)) (__AST-e _id105969_))))
                     (declare (not safe))
                     (##structure __syntax::t _e105970_ __tmp110525)))))
          (declare (not safe))
          (table-set! __tmp110527 __tmp110526 __tmp110524))))
    (define __core-bind-user-syntax!__0
      (lambda (_id105976_ _e105977_)
        (let ((_ctx105979_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id105976_ _e105977_ _ctx105979_))))
    (define __core-bind-user-syntax!
      (lambda _g110529_
        (let ((_g110528_ (let () (declare (not safe)) (##length _g110529_))))
          (cond ((let () (declare (not safe)) (##fx= _g110528_ 2))
                 (apply (lambda (_id105976_ _e105977_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id105976_
                             _e105977_)))
                        _g110529_))
                ((let () (declare (not safe)) (##fx= _g110528_ 3))
                 (apply (lambda (_id105981_ _e105982_ _ctx105983_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id105981_
                             _e105982_
                             _ctx105983_)))
                        _g110529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g110529_))))))
    (define make-__runtime-id__%
      (lambda (_id105950_ _ctx105951_)
        (let ((_id105953_ (let () (declare (not safe)) (__AST-e _id105950_))))
          (if (let () (declare (not safe)) (eq? _id105953_ '_))
              '#f
              (if (uninterned-symbol? _id105953_)
                  (gensym _id105953_)
                  (if (let () (declare (not safe)) (symbol? _id105953_))
                      (let ((_$e105955_
                             (##structure-ref
                              _ctx105951_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e105955_))
                            (gensym _id105953_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e105955_))
                                (let ((__tmp110530
                                       (##structure-ref
                                        _ctx105951_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp110530 '"#" _id105953_))
                                _id105953_)))
                      (error '"Illegal runtime identifier" _id105953_)))))))
    (define make-__runtime-id__0
      (lambda (_id105961_)
        (let ((_ctx105963_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id105961_ _ctx105963_))))
    (define make-__runtime-id
      (lambda _g110532_
        (let ((_g110531_ (let () (declare (not safe)) (##length _g110532_))))
          (cond ((let () (declare (not safe)) (##fx= _g110531_ 1))
                 (apply (lambda (_id105961_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id105961_)))
                        _g110532_))
                ((let () (declare (not safe)) (##fx= _g110531_ 2))
                 (apply (lambda (_id105965_ _ctx105966_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id105965_ _ctx105966_)))
                        _g110532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g110532_))))))
    (define make-__context-local__%
      (lambda (_super105939_)
        (let ((__tmp110533
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super105939_ __tmp110533))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super105945_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super105945_))))
    (define make-__context-local
      (lambda _g110535_
        (let ((_g110534_ (let () (declare (not safe)) (##length _g110535_))))
          (cond ((let () (declare (not safe)) (##fx= _g110534_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g110535_))
                ((let () (declare (not safe)) (##fx= _g110534_ 1))
                 (apply (lambda (_super105947_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super105947_)))
                        _g110535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g110535_))))))
    (define make-__context-module__%
      (lambda (_id105919_ _ns105920_ _path105921_ _super105922_)
        (let ((__tmp110536
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns105920_
           _super105922_
           __tmp110536
           _id105919_
           _path105921_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id105927_ _ns105928_ _path105929_)
        (let ((_super105931_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id105927_
           _ns105928_
           _path105929_
           _super105931_))))
    (define make-__context-module
      (lambda _g110538_
        (let ((_g110537_ (let () (declare (not safe)) (##length _g110538_))))
          (cond ((let () (declare (not safe)) (##fx= _g110537_ 3))
                 (apply (lambda (_id105927_ _ns105928_ _path105929_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id105927_
                             _ns105928_
                             _path105929_)))
                        _g110538_))
                ((let () (declare (not safe)) (##fx= _g110537_ 4))
                 (apply (lambda (_id105933_
                                 _ns105934_
                                 _path105935_
                                 _super105936_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id105933_
                             _ns105934_
                             _path105935_
                             _super105936_)))
                        _g110538_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g110538_))))))
    (define __SRC__%
      (lambda (_e105902_ _src-stx105903_)
        (if (or (let () (declare (not safe)) (pair? _e105902_))
                (let () (declare (not safe)) (symbol? _e105902_)))
            (let ((__tmp110542
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx105903_
                          'gerbil#AST::t))
                       (let ((__tmp110543
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx105903_))))
                         (declare (not safe))
                         (__locat __tmp110543))
                       '#f)))
              (declare (not safe))
              (##make-source _e105902_ __tmp110542))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e105902_ 'gerbil#AST::t))
                (let ((__tmp110541
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e105902_ '1 AST::t '#f)))
                      (__tmp110539
                       (let ((__tmp110540
                              (let ()
                                (declare (not safe))
                                (__AST-source _e105902_))))
                         (declare (not safe))
                         (__locat __tmp110540))))
                  (declare (not safe))
                  (##make-source __tmp110541 __tmp110539))
                (error '"BUG! Cannot sourcify object" _e105902_)))))
    (define __SRC__0
      (lambda (_e105911_)
        (let ((_src-stx105913_ '#f))
          (declare (not safe))
          (__SRC__% _e105911_ _src-stx105913_))))
    (define __SRC
      (lambda _g110545_
        (let ((_g110544_ (let () (declare (not safe)) (##length _g110545_))))
          (cond ((let () (declare (not safe)) (##fx= _g110544_ 1))
                 (apply (lambda (_e105911_)
                          (let () (declare (not safe)) (__SRC__0 _e105911_)))
                        _g110545_))
                ((let () (declare (not safe)) (##fx= _g110544_ 2))
                 (apply (lambda (_e105915_ _src-stx105916_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e105915_ _src-stx105916_)))
                        _g110545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g110545_))))))
    (define __locat
      (lambda (_loc105899_)
        (if (let () (declare (not safe)) (##locat? _loc105899_))
            _loc105899_
            '#f)))
    (define __check-values
      (lambda (_obj105894_ _k105895_)
        (let ((_count105897_
               (if (let () (declare (not safe)) (##values? _obj105894_))
                   (let () (declare (not safe)) (##vector-length _obj105894_))
                   '1)))
          (if (fx= _count105897_ _k105895_)
              '#!void
              (error (if (fx< _count105897_ _k105895_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj105894_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj105894_))
                         _obj105894_)
                     _k105895_)))))
    (define __compile
      (lambda (_stx105864_)
        (let* ((_$e105866_ _stx105864_)
               (_$E105868105874_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105866_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105866_))
              (let* ((_$tgt105869105877_
                      (let () (declare (not safe)) (__AST-e _$e105866_)))
                     (_$hd105870105880_
                      (let () (declare (not safe)) (##car _$tgt105869105877_)))
                     (_$tl105871105883_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105869105877_))))
                (let* ((_form105887_ _$hd105870105880_)
                       (_$e105889_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form105887_))))
                  (if _$e105889_
                      ((lambda (_bind105892_)
                         ((##structure-ref _bind105892_ '1 __syntax::t '#f)
                          _stx105864_))
                       _$e105889_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx105864_
                         _form105887_)))))
              (let () (declare (not safe)) (_$E105868105874_))))))
    (define __compile-error__%
      (lambda (_stx105851_ _detail105852_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx105851_
           _detail105852_))))
    (define __compile-error__0
      (lambda (_stx105857_)
        (let ((_detail105859_ '#f))
          (declare (not safe))
          (__compile-error__% _stx105857_ _detail105859_))))
    (define __compile-error
      (lambda _g110547_
        (let ((_g110546_ (let () (declare (not safe)) (##length _g110547_))))
          (cond ((let () (declare (not safe)) (##fx= _g110546_ 1))
                 (apply (lambda (_stx105857_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx105857_)))
                        _g110547_))
                ((let () (declare (not safe)) (##fx= _g110546_ 2))
                 (apply (lambda (_stx105861_ _detail105862_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx105861_ _detail105862_)))
                        _g110547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g110547_))))))
    (define __compile-ignore%
      (lambda (_stx105848_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx105848_))))
    (define __compile-begin%
      (lambda (_stx105823_)
        (let* ((_$e105825_ _stx105823_)
               (_$E105827105833_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105825_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105825_))
              (let* ((_$tgt105828105836_
                      (let () (declare (not safe)) (__AST-e _$e105825_)))
                     (_$hd105829105839_
                      (let () (declare (not safe)) (##car _$tgt105828105836_)))
                     (_$tl105830105842_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105828105836_))))
                (let* ((_body105846_ _$tl105830105842_)
                       (__tmp110548
                        (let ((__tmp110549 (map __compile _body105846_)))
                          (declare (not safe))
                          (cons 'begin __tmp110549))))
                  (declare (not safe))
                  (__SRC__% __tmp110548 _stx105823_)))
              (let () (declare (not safe)) (_$E105827105833_))))))
    (define __compile-begin-foreign%
      (lambda (_stx105798_)
        (let* ((_$e105800_ _stx105798_)
               (_$E105802105808_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105800_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105800_))
              (let* ((_$tgt105803105811_
                      (let () (declare (not safe)) (__AST-e _$e105800_)))
                     (_$hd105804105814_
                      (let () (declare (not safe)) (##car _$tgt105803105811_)))
                     (_$tl105805105817_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105803105811_))))
                (let* ((_body105821_ _$tl105805105817_)
                       (__tmp110550
                        (let ((__tmp110551
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body105821_))))
                          (declare (not safe))
                          (cons 'begin __tmp110551))))
                  (declare (not safe))
                  (__SRC__% __tmp110550 _stx105798_)))
              (let () (declare (not safe)) (_$E105802105808_))))))
    (define __compile-import%
      (lambda (_stx105773_)
        (let* ((_$e105775_ _stx105773_)
               (_$E105777105783_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105775_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105775_))
              (let* ((_$tgt105778105786_
                      (let () (declare (not safe)) (__AST-e _$e105775_)))
                     (_$hd105779105789_
                      (let () (declare (not safe)) (##car _$tgt105778105786_)))
                     (_$tl105780105792_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105778105786_))))
                (let* ((_body105796_ _$tl105780105792_)
                       (__tmp110552
                        (let ((__tmp110553
                               (let ((__tmp110554
                                      (let ((__tmp110555
                                             (let ()
                                               (declare (not safe))
                                               (cons _body105796_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp110555))))
                                 (declare (not safe))
                                 (cons __tmp110554 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp110553))))
                  (declare (not safe))
                  (__SRC__% __tmp110552 _stx105773_)))
              (let () (declare (not safe)) (_$E105777105783_))))))
    (define __compile-begin-annotation%
      (lambda (_stx105720_)
        (let* ((_$e105722_ _stx105720_)
               (_$E105724105736_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105722_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105722_))
              (let* ((_$tgt105725105739_
                      (let () (declare (not safe)) (__AST-e _$e105722_)))
                     (_$hd105726105742_
                      (let () (declare (not safe)) (##car _$tgt105725105739_)))
                     (_$tl105727105745_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105725105739_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105727105745_))
                    (let* ((_$tgt105728105749_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105727105745_)))
                           (_$hd105729105752_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105728105749_)))
                           (_$tl105730105755_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105728105749_))))
                      (let ((_ann105759_ _$hd105729105752_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105730105755_))
                            (let* ((_$tgt105731105761_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105730105755_)))
                                   (_$hd105732105764_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105731105761_)))
                                   (_$tl105733105767_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105731105761_))))
                              (let ((_expr105771_ _$hd105732105764_))
                                (if (let ((__tmp110556
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105733105767_))))
                                      (declare (not safe))
                                      (equal? __tmp110556 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr105771_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105724105736_)))))
                            (let () (declare (not safe)) (_$E105724105736_)))))
                    (let () (declare (not safe)) (_$E105724105736_))))
              (let () (declare (not safe)) (_$E105724105736_))))))
    (define __compile-define-values%
      (lambda (_stx105611_)
        (let* ((_$e105613_ _stx105611_)
               (_$E105615105627_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105613_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105613_))
              (let* ((_$tgt105616105630_
                      (let () (declare (not safe)) (__AST-e _$e105613_)))
                     (_$hd105617105633_
                      (let () (declare (not safe)) (##car _$tgt105616105630_)))
                     (_$tl105618105636_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105616105630_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105618105636_))
                    (let* ((_$tgt105619105640_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105618105636_)))
                           (_$hd105620105643_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105619105640_)))
                           (_$tl105621105646_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105619105640_))))
                      (let ((_hd105650_ _$hd105620105643_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105621105646_))
                            (let* ((_$tgt105622105652_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105621105646_)))
                                   (_$hd105623105655_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105622105652_)))
                                   (_$tl105624105658_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105622105652_))))
                              (let ((_expr105662_ _$hd105623105655_))
                                (if (let ((__tmp110589
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105624105658_))))
                                      (declare (not safe))
                                      (equal? __tmp110589 '()))
                                    (let* ((_$e105664_ _hd105650_)
                                           (_$E105666105707_
                                            (lambda ()
                                              (let ((_$E105667105692_
                                                     (lambda ()
                                                       (let* ((_$E105668105679_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e105664_))))
                      (_ids105682_ _hd105650_)
                      (_len105684_ (length _ids105682_))
                      (_tmp105686_
                       (let ((__tmp110557 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp110557))))
                 (let ((__tmp110558
                        (let ((__tmp110559
                               (let ((__tmp110576
                                      (let ((__tmp110577
                                             (let ((__tmp110578
                                                    (let ((__tmp110579
                                                           (let ((__tmp110580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr105662_))))
                     (declare (not safe))
                     (cons __tmp110580 '()))))
              (declare (not safe))
              (cons _tmp105686_ __tmp110579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp110578))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110577 _stx105611_)))
                                     (__tmp110560
                                      (let ((__tmp110572
                                             (let ((__tmp110573
                                                    (let ((__tmp110574
                                                           (let ((__tmp110575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len105684_ '()))))
                     (declare (not safe))
                     (cons _tmp105686_ __tmp110575))))
              (declare (not safe))
              (cons '__check-values __tmp110574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp110573
                                                _stx105611_)))
                                            (__tmp110561
                                             (let ((__tmp110562
                                                    (let ((__tmp110564
                                                           (lambda (_id105689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k105690_)
                     (if (let () (declare (not safe)) (__AST-e _id105689_))
                         (let ((__tmp110565
                                (let ((__tmp110566
                                       (let ((__tmp110571
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id105689_)))
                                             (__tmp110567
                                              (let ((__tmp110568
                                                     (let ((__tmp110569
                                                            (let ((__tmp110570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k105690_ '()))))
                      (declare (not safe))
                      (cons _tmp105686_ __tmp110570))))
               (declare (not safe))
               (cons '##vector-ref __tmp110569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110568 '()))))
                                         (declare (not safe))
                                         (cons __tmp110571 __tmp110567))))
                                  (declare (not safe))
                                  (cons 'define __tmp110566))))
                           (declare (not safe))
                           (__SRC__% __tmp110565 _stx105611_))
                         '#f)))
                  (__tmp110563
                   (let () (declare (not safe)) (iota _len105684_))))
              (declare (not safe))
              (filter-map2 __tmp110564 _ids105682_ __tmp110563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp110562))))
                                        (declare (not safe))
                                        (cons __tmp110572 __tmp110561))))
                                 (declare (not safe))
                                 (cons __tmp110576 __tmp110560))))
                          (declare (not safe))
                          (cons 'begin __tmp110559))))
                   (declare (not safe))
                   (__SRC__% __tmp110558 _stx105611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e105664_))
                                                    (let* ((_$tgt105669105695_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e105664_)))
                                                           (_$hd105670105698_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt105669105695_)))
                                                           (_$tl105671105701_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt105669105695_))))
                                                      (let ((_id105705_
                                                             _$hd105670105698_))
                                                        (if (let ((__tmp110586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl105671105701_))))
                      (declare (not safe))
                      (equal? __tmp110586 '()))
                    (let ((__tmp110581
                           (let ((__tmp110582
                                  (let ((__tmp110585
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id105705_)))
                                        (__tmp110583
                                         (let ((__tmp110584
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr105662_))))
                                           (declare (not safe))
                                           (cons __tmp110584 '()))))
                                    (declare (not safe))
                                    (cons __tmp110585 __tmp110583))))
                             (declare (not safe))
                             (cons 'define __tmp110582))))
                      (declare (not safe))
                      (__SRC__% __tmp110581 _stx105611_))
                    (let () (declare (not safe)) (_$E105667105692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105667105692_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e105664_))
                                          (let* ((_$tgt105672105710_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e105664_)))
                                                 (_$hd105673105713_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105672105710_)))
                                                 (_$tl105674105716_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105672105710_))))
                                            (if (let ((__tmp110588
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd105673105713_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110588 '#f))
                                                (if (let ((__tmp110587
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl105674105716_))))
                                                      (declare (not safe))
                                                      (equal? __tmp110587 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr105662_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105666105707_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105666105707_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105666105707_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105615105627_)))))
                            (let () (declare (not safe)) (_$E105615105627_)))))
                    (let () (declare (not safe)) (_$E105615105627_))))
              (let () (declare (not safe)) (_$E105615105627_))))))
    (define __compile-head-id
      (lambda (_e105609_)
        (let ((__tmp110590
               (if (let () (declare (not safe)) (__AST-e _e105609_))
                   _e105609_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp110590))))
    (define __compile-lambda-head
      (lambda (_hd105566_)
        (let _recur105568_ ((_rest105570_ _hd105566_))
          (let* ((_$e105572_ _rest105570_)
                 (_$E105574105592_
                  (lambda ()
                    (let ((_$E105575105589_
                           (lambda ()
                             (let* ((_$E105576105584_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e105572_))))
                                    (_tail105587_ _$e105572_))
                               (declare (not safe))
                               (__compile-head-id _tail105587_)))))
                      (if (let ((__tmp110591
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e105572_))))
                            (declare (not safe))
                            (equal? __tmp110591 '()))
                          '()
                          (let () (declare (not safe)) (_$E105575105589_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105572_))
                (let* ((_$tgt105577105595_
                        (let () (declare (not safe)) (__AST-e _$e105572_)))
                       (_$hd105578105598_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105577105595_)))
                       (_$tl105579105601_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105577105595_))))
                  (let* ((_hd105605_ _$hd105578105598_)
                         (_rest105607_ _$tl105579105601_))
                    (let ((__tmp110593
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd105605_)))
                          (__tmp110592
                           (let ()
                             (declare (not safe))
                             (_recur105568_ _rest105607_))))
                      (declare (not safe))
                      (cons __tmp110593 __tmp110592))))
                (let () (declare (not safe)) (_$E105574105592_)))))))
    (define __compile-lambda%
      (lambda (_stx105513_)
        (let* ((_$e105515_ _stx105513_)
               (_$E105517105529_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105515_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105515_))
              (let* ((_$tgt105518105532_
                      (let () (declare (not safe)) (__AST-e _$e105515_)))
                     (_$hd105519105535_
                      (let () (declare (not safe)) (##car _$tgt105518105532_)))
                     (_$tl105520105538_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105518105532_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105520105538_))
                    (let* ((_$tgt105521105542_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105520105538_)))
                           (_$hd105522105545_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105521105542_)))
                           (_$tl105523105548_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105521105542_))))
                      (let ((_hd105552_ _$hd105522105545_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105523105548_))
                            (let* ((_$tgt105524105554_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105523105548_)))
                                   (_$hd105525105557_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105524105554_)))
                                   (_$tl105526105560_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105524105554_))))
                              (let ((_body105564_ _$hd105525105557_))
                                (if (let ((__tmp110599
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105526105560_))))
                                      (declare (not safe))
                                      (equal? __tmp110599 '()))
                                    (let ((__tmp110594
                                           (let ((__tmp110595
                                                  (let ((__tmp110598
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd105552_)))
                                                        (__tmp110596
                                                         (let ((__tmp110597
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body105564_))))
                   (declare (not safe))
                   (cons __tmp110597 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110598
                                                          __tmp110596))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp110595))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110594 _stx105513_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105517105529_)))))
                            (let () (declare (not safe)) (_$E105517105529_)))))
                    (let () (declare (not safe)) (_$E105517105529_))))
              (let () (declare (not safe)) (_$E105517105529_))))))
    (define __compile-case-lambda%
      (lambda (_stx105305_)
        (letrec ((_variadic?105307_
                  (lambda (_hd105478_)
                    (let* ((_$e105480_ _hd105478_)
                           (_$E105482105498_
                            (lambda ()
                              (let ((_$E105483105495_
                                     (lambda ()
                                       (let ((_$E105484105492_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e105480_)))))
                                         '#t))))
                                (if (let ((__tmp110600
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e105480_))))
                                      (declare (not safe))
                                      (equal? __tmp110600 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E105483105495_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105480_))
                          (let* ((_$tgt105485105501_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105480_)))
                                 (_$hd105486105504_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105485105501_)))
                                 (_$tl105487105507_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105485105501_))))
                            (let ((_rest105511_ _$tl105487105507_))
                              (declare (not safe))
                              (_variadic?105307_ _rest105511_)))
                          (let () (declare (not safe)) (_$E105482105498_))))))
                 (_arity105308_
                  (lambda (_hd105443_)
                    (let _lp105445_ ((_rest105447_ _hd105443_) (_k105448_ '0))
                      (let* ((_$e105450_ _rest105447_)
                             (_$E105452105463_
                              (lambda ()
                                (let ((_$E105453105460_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e105450_)))))
                                  _k105448_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e105450_))
                            (let* ((_$tgt105454105466_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e105450_)))
                                   (_$hd105455105469_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105454105466_)))
                                   (_$tl105456105472_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105454105466_))))
                              (let* ((_rest105476_ _$tl105456105472_)
                                     (__tmp110601
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k105448_ '1))))
                                (declare (not safe))
                                (_lp105445_ _rest105476_ __tmp110601)))
                            (let ()
                              (declare (not safe))
                              (_$E105452105463_)))))))
                 (_generate105309_
                  (lambda (_rest105370_ _args105371_ _len105372_)
                    (let* ((_$e105374_ _rest105370_)
                           (_$E105376105387_
                            (lambda ()
                              (let* ((_$E105377105384_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e105374_))))
                                     (__tmp110602
                                      (let ((__tmp110603
                                             (let ((__tmp110604
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args105371_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp110604))))
                                        (declare (not safe))
                                        (cons 'error __tmp110603))))
                                (declare (not safe))
                                (__SRC__% __tmp110602 _stx105305_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105374_))
                          (let* ((_$tgt105378105390_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105374_)))
                                 (_$hd105379105393_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105378105390_)))
                                 (_$tl105380105396_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105378105390_))))
                            (let* ((_clause105400_ _$hd105379105393_)
                                   (_rest105402_ _$tl105380105396_)
                                   (_$e105404_ _clause105400_)
                                   (_$E105406105415_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e105404_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e105404_))
                                  (let* ((_$tgt105407105418_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e105404_)))
                                         (_$hd105408105421_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt105407105418_)))
                                         (_$tl105409105424_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt105407105418_))))
                                    (let ((_hd105428_ _$hd105408105421_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl105409105424_))
                                          (let* ((_$tgt105410105430_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105409105424_)))
                                                 (_$hd105411105433_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105410105430_)))
                                                 (_$tl105412105436_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105410105430_))))
                                            (if (let ((__tmp110619
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105412105436_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110619 '()))
                                                (let ((_clen105440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity105308_
                                                          _hd105428_)))
                                                      (_cmp105441_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?105307_
                                                              _hd105428_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp110605
                                                         (let ((__tmp110606
                                                                (let ((__tmp110616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110617
                                      (let ((__tmp110618
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen105440_ '()))))
                                        (declare (not safe))
                                        (cons _len105372_ __tmp110618))))
                                 (declare (not safe))
                                 (cons _cmp105441_ __tmp110617)))
                              (__tmp110607
                               (let ((__tmp110610
                                      (let ((__tmp110611
                                             (let ((__tmp110612
                                                    (let ((__tmp110614
                                                           (let ((__tmp110615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause105400_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp110615)))
                  (__tmp110613
                   (let () (declare (not safe)) (cons _args105371_ '()))))
              (declare (not safe))
              (cons __tmp110614 __tmp110613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp110612))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110611 _stx105305_)))
                                     (__tmp110608
                                      (let ((__tmp110609
                                             (let ()
                                               (declare (not safe))
                                               (_generate105309_
                                                _rest105402_
                                                _args105371_
                                                _len105372_))))
                                        (declare (not safe))
                                        (cons __tmp110609 '()))))
                                 (declare (not safe))
                                 (cons __tmp110610 __tmp110608))))
                          (declare (not safe))
                          (cons __tmp110616 __tmp110607))))
                   (declare (not safe))
                   (cons 'if __tmp110606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp110605
                                                     _stx105305_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105406105415_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105406105415_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E105406105415_)))))
                          (let () (declare (not safe)) (_$E105376105387_)))))))
          (let* ((_$e105311_ _stx105305_)
                 (_$E105313105345_
                  (lambda ()
                    (let ((_$E105314105327_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105311_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105311_))
                          (let* ((_$tgt105315105330_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105311_)))
                                 (_$hd105316105333_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105315105330_)))
                                 (_$tl105317105336_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105315105330_))))
                            (let ((_clauses105340_ _$tl105317105336_))
                              (let ((_args105342_
                                     (let ((__tmp110620 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110620 _stx105305_)))
                                    (_len105343_
                                     (let ((__tmp110621 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110621 _stx105305_))))
                                (let ((__tmp110622
                                       (let ((__tmp110623
                                              (let ((__tmp110624
                                                     (let ((__tmp110625
                                                            (let ((__tmp110626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110627
                                  (let ((__tmp110630
                                         (let ((__tmp110631
                                                (let ((__tmp110632
                                                       (let ((__tmp110633
                                                              (let ((__tmp110634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp110635
                                    (let ()
                                      (declare (not safe))
                                      (cons _args105342_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp110635))))
                        (declare (not safe))
                        (__SRC__% __tmp110634 _stx105305_))))
                 (declare (not safe))
                 (cons __tmp110633 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len105343_
                                                        __tmp110632))))
                                           (declare (not safe))
                                           (cons __tmp110631 '())))
                                        (__tmp110628
                                         (let ((__tmp110629
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate105309_
                                                   _clauses105340_
                                                   _args105342_
                                                   _len105343_))))
                                           (declare (not safe))
                                           (cons __tmp110629 '()))))
                                    (declare (not safe))
                                    (cons __tmp110630 __tmp110628))))
                             (declare (not safe))
                             (cons 'let __tmp110627))))
                      (declare (not safe))
                      (__SRC__% __tmp110626 _stx105305_))))
               (declare (not safe))
               (cons __tmp110625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args105342_
                                                      __tmp110624))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp110623))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110622 _stx105305_)))))
                          (let () (declare (not safe)) (_$E105314105327_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105311_))
                (let* ((_$tgt105318105348_
                        (let () (declare (not safe)) (__AST-e _$e105311_)))
                       (_$hd105319105351_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105318105348_)))
                       (_$tl105320105354_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105318105348_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105320105354_))
                      (let* ((_$tgt105321105358_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105320105354_)))
                             (_$hd105322105361_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105321105358_)))
                             (_$tl105323105364_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105321105358_))))
                        (let ((_clause105368_ _$hd105322105361_))
                          (if (let ((__tmp110637
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl105323105364_))))
                                (declare (not safe))
                                (equal? __tmp110637 '()))
                              (let ((__tmp110636
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause105368_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp110636))
                              (let ()
                                (declare (not safe))
                                (_$E105313105345_)))))
                      (let () (declare (not safe)) (_$E105313105345_))))
                (let () (declare (not safe)) (_$E105313105345_)))))))
    (define __compile-let-form
      (lambda (_stx105074_ _compile-simple105075_ _compile-values105076_)
        (letrec ((_simple-bind?105078_
                  (lambda (_hd105263_)
                    (let* ((_hd105264105274_ _hd105263_)
                           (_else105267105282_ (lambda () '#f)))
                      (let ((_K105270105295_ (lambda (_id105293_) '#t))
                            (_K105269105287_ (lambda () '#t)))
                        (let ((_try-match105266105290_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd105264105274_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K105269105287_))
                                     (let ()
                                       (declare (not safe))
                                       (_else105267105282_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd105264105274_))
                              (let ((_tl105272105300_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd105264105274_)))
                                    (_hd105271105298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd105264105274_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl105272105300_))
                                    (let ((_id105303_ _hd105271105298_))
                                      (declare (not safe))
                                      (_K105270105295_ _id105303_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match105266105290_))))
                              (let ()
                                (declare (not safe))
                                (_try-match105266105290_))))))))
                 (_car-e105079_
                  (lambda (_hd105261_)
                    (if (let () (declare (not safe)) (pair? _hd105261_))
                        (car _hd105261_)
                        _hd105261_))))
          (let* ((_$e105081_ _stx105074_)
                 (_$E105083105226_
                  (lambda ()
                    (let ((_$E105084105106_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105081_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105081_))
                          (let* ((_$tgt105085105109_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105081_)))
                                 (_$hd105086105112_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105085105109_)))
                                 (_$tl105087105115_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105085105109_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105087105115_))
                                (let* ((_$tgt105088105119_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105087105115_)))
                                       (_$hd105089105122_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105088105119_)))
                                       (_$tl105090105125_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105088105119_))))
                                  (let ((_hd105129_ _$hd105089105122_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl105090105125_))
                                        (let* ((_$tgt105091105131_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl105090105125_)))
                                               (_$hd105092105134_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt105091105131_)))
                                               (_$tl105093105137_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt105091105131_))))
                                          (let ((_body105141_
                                                 _$hd105092105134_))
                                            (if (let ((__tmp110640
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105093105137_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110640 '()))
                                                (let* ((_hd-ids105181_
                                                        (map (lambda (_bind105143_)
                                                               (let* ((_$e105145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind105143_)
                              (_$E105147105156_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105145_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105145_))
                             (let* ((_$tgt105148105159_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105145_)))
                                    (_$hd105149105162_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105148105159_)))
                                    (_$tl105150105165_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105148105159_))))
                               (let ((_ids105169_ _$hd105149105162_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl105150105165_))
                                     (let* ((_$tgt105151105171_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl105150105165_)))
                                            (_$hd105152105174_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt105151105171_)))
                                            (_$tl105153105177_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt105151105171_))))
                                       (if (let ((__tmp110638
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105153105177_))))
                                             (declare (not safe))
                                             (equal? __tmp110638 '()))
                                           _ids105169_
                                           (let ()
                                             (declare (not safe))
                                             (_$E105147105156_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E105147105156_)))))
                             (let ()
                               (declare (not safe))
                               (_$E105147105156_)))))
                     _hd105129_))
               (_exprs105221_
                (map (lambda (_bind105183_)
                       (let* ((_$e105185_ _bind105183_)
                              (_$E105187105196_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105185_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105185_))
                             (let* ((_$tgt105188105199_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105185_)))
                                    (_$hd105189105202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105188105199_)))
                                    (_$tl105190105205_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105188105199_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl105190105205_))
                                   (let* ((_$tgt105191105209_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105190105205_)))
                                          (_$hd105192105212_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt105191105209_)))
                                          (_$tl105193105215_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt105191105209_))))
                                     (let ((_expr105219_ _$hd105192105212_))
                                       (if (let ((__tmp110639
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105193105215_))))
                                             (declare (not safe))
                                             (equal? __tmp110639 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr105219_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E105187105196_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E105187105196_))))
                             (let ()
                               (declare (not safe))
                               (_$E105187105196_)))))
                     _hd105129_))
               (_body105223_
                (let () (declare (not safe)) (__compile _body105141_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?105078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids105181_))
              (_compile-simple105075_
               (map _car-e105079_ _hd-ids105181_)
               _exprs105221_
               _body105223_)
              (_compile-values105076_
               _hd-ids105181_
               _exprs105221_
               _body105223_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105084105106_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105084105106_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105084105106_))))
                          (let () (declare (not safe)) (_$E105084105106_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105081_))
                (let* ((_$tgt105094105229_
                        (let () (declare (not safe)) (__AST-e _$e105081_)))
                       (_$hd105095105232_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105094105229_)))
                       (_$tl105096105235_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105094105229_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105096105235_))
                      (let* ((_$tgt105097105239_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105096105235_)))
                             (_$hd105098105242_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105097105239_)))
                             (_$tl105099105245_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105097105239_))))
                        (if (let ((__tmp110642
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd105098105242_))))
                              (declare (not safe))
                              (equal? __tmp110642 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105099105245_))
                                (let* ((_$tgt105100105249_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105099105245_)))
                                       (_$hd105101105252_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105100105249_)))
                                       (_$tl105102105255_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105100105249_))))
                                  (let ((_body105259_ _$hd105101105252_))
                                    (if (let ((__tmp110641
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl105102105255_))))
                                          (declare (not safe))
                                          (equal? __tmp110641 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body105259_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105083105226_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105083105226_)))
                            (let () (declare (not safe)) (_$E105083105226_))))
                      (let () (declare (not safe)) (_$E105083105226_))))
                (let () (declare (not safe)) (_$E105083105226_)))))))
    (define __compile-let-values%
      (lambda (_stx104889_)
        (letrec ((_compile-simple104891_
                  (lambda (_hd-ids105070_ _exprs105071_ _body105072_)
                    (let ((__tmp110643
                           (let ((__tmp110644
                                  (let ((__tmp110646
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids105070_)
                                              _exprs105071_))
                                        (__tmp110645
                                         (let ()
                                           (declare (not safe))
                                           (cons _body105072_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110646 __tmp110645))))
                             (declare (not safe))
                             (cons 'let __tmp110644))))
                      (declare (not safe))
                      (__SRC__% __tmp110643 _stx104889_))))
                 (_compile-values104892_
                  (lambda (_hd-ids104988_ _exprs104989_ _body104990_)
                    (let _lp104992_ ((_rest104994_ _hd-ids104988_)
                                     (_exprs104995_ _exprs104989_)
                                     (_bind104996_ '())
                                     (_post104997_ '()))
                      (let* ((_rest104998105012_ _rest104994_)
                             (_else105001105020_
                              (lambda ()
                                (let ((__tmp110647
                                       (let ((__tmp110648
                                              (let ((__tmp110651
                                                     (reverse _bind104996_))
                                                    (__tmp110649
                                                     (let ((__tmp110650
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post104893_
                                                               _post104997_
                                                               _body104990_))))
                                                       (declare (not safe))
                                                       (cons __tmp110650
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp110651
                                                      __tmp110649))))
                                         (declare (not safe))
                                         (cons 'let __tmp110648))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110647 _stx104889_)))))
                        (let ((_K105006105053_
                               (lambda (_rest105050_ _id105051_)
                                 (let ((__tmp110657 (cdr _exprs104995_))
                                       (__tmp110652
                                        (let ((__tmp110653
                                               (let ((__tmp110656
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id105051_)))
                                                     (__tmp110654
                                                      (let ((__tmp110655
                                                             (car _exprs104995_)))
                                                        (declare (not safe))
                                                        (cons __tmp110655
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110656
                                                       __tmp110654))))
                                          (declare (not safe))
                                          (cons __tmp110653 _bind104996_))))
                                   (declare (not safe))
                                   (_lp104992_
                                    _rest105050_
                                    __tmp110657
                                    __tmp110652
                                    _post104997_))))
                              (_K105003105035_
                               (lambda (_rest105024_ _hd105025_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd105025_))
                                     (let ((__tmp110678 (cdr _exprs104995_))
                                           (__tmp110671
                                            (let ((__tmp110672
                                                   (let ((__tmp110677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd105025_)))
                                                         (__tmp110673
                                                          (let ((__tmp110674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110675
                                (let ((__tmp110676 (car _exprs104995_)))
                                  (declare (not safe))
                                  (cons __tmp110676 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110675))))
                    (declare (not safe))
                    (cons __tmp110674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110677
                                                           __tmp110673))))
                                              (declare (not safe))
                                              (cons __tmp110672
                                                    _bind104996_))))
                                       (declare (not safe))
                                       (_lp104992_
                                        _rest105024_
                                        __tmp110678
                                        __tmp110671
                                        _post104997_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd105025_))
                                         (let* ((_len105027_
                                                 (length _hd105025_))
                                                (_tmp105029_
                                                 (let ((__tmp110658 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110658))))
                                           (let ((__tmp110670
                                                  (cdr _exprs104995_))
                                                 (__tmp110666
                                                  (let ((__tmp110667
                                                         (let ((__tmp110668
                                                                (let ((__tmp110669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104995_)))
                          (declare (not safe))
                          (cons __tmp110669 '()))))
                   (declare (not safe))
                   (cons _tmp105029_ __tmp110668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110667
                                                          _bind104996_)))
                                                 (__tmp110659
                                                  (let ((__tmp110660
                                                         (let ((__tmp110661
                                                                (let ((__tmp110662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110664
                                      (lambda (_id105032_ _k105033_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id105032_))
                                            (let ((__tmp110665
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id105032_))))
                                              (declare (not safe))
                                              (cons __tmp110665 _k105033_))
                                            '#f)))
                                     (__tmp110663
                                      (let ()
                                        (declare (not safe))
                                        (iota _len105027_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110664
                                  _hd105025_
                                  __tmp110663))))
                          (declare (not safe))
                          (cons _len105027_ __tmp110662))))
                   (declare (not safe))
                   (cons _tmp105029_ __tmp110661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110660
                                                          _post104997_))))
                                             (declare (not safe))
                                             (_lp104992_
                                              _rest105024_
                                              __tmp110670
                                              __tmp110666
                                              __tmp110659)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104889_
                                            _hd105025_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104998105012_))
                              (let ((_tl105008105058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104998105012_)))
                                    (_hd105007105056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104998105012_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd105007105056_))
                                    (let ((_tl105010105063_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd105007105056_)))
                                          (_hd105009105061_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd105007105056_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105010105063_))
                                          (let ((_id105066_ _hd105009105061_)
                                                (_rest105068_
                                                 _tl105008105058_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105006105053_
                                               _rest105068_
                                               _id105066_)))
                                          (let ((_hd105043_ _hd105007105056_)
                                                (_rest105045_
                                                 _tl105008105058_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105003105035_
                                               _rest105045_
                                               _hd105043_)))))
                                    (let ((_hd105043_ _hd105007105056_)
                                          (_rest105045_ _tl105008105058_))
                                      (let ()
                                        (declare (not safe))
                                        (_K105003105035_
                                         _rest105045_
                                         _hd105043_)))))
                              (let ()
                                (declare (not safe))
                                (_else105001105020_))))))))
                 (_compile-post104893_
                  (lambda (_post104895_ _body104896_)
                    (let _lp104898_ ((_rest104900_ _post104895_)
                                     (_check104901_ '())
                                     (_bind104902_ '()))
                      (let* ((_rest104903104915_ _rest104900_)
                             (_else104905104923_
                              (lambda ()
                                (let ((__tmp110679
                                       (let ((__tmp110680
                                              (let ((__tmp110681
                                                     (let ((__tmp110682
                                                            (let ((__tmp110683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110684
                                  (let ((__tmp110685
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104896_ '()))))
                                    (declare (not safe))
                                    (cons _bind104902_ __tmp110685))))
                             (declare (not safe))
                             (cons 'let __tmp110684))))
                      (declare (not safe))
                      (__SRC__% __tmp110683 _stx104889_))))
               (declare (not safe))
               (cons __tmp110682 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110681
                                                        _check104901_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110680))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110679 _stx104889_))))
                             (_K104907104962_
                              (lambda (_rest104926_
                                       _init104927_
                                       _len104928_
                                       _tmp104929_)
                                (let ((__tmp110693
                                       (let ((__tmp110694
                                              (let ((__tmp110695
                                                     (let ((__tmp110696
                                                            (let ((__tmp110697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104928_ '()))))
                      (declare (not safe))
                      (cons _tmp104929_ __tmp110697))))
               (declare (not safe))
               (cons '__check-values __tmp110696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110695
                                                 _stx104889_))))
                                         (declare (not safe))
                                         (cons __tmp110694 _check104901_)))
                                      (__tmp110686
                                       (let ((__tmp110687
                                              (lambda (_hd104931_ _r104932_)
                                                (let* ((_hd104933104940_
                                                        _hd104931_)
                                                       (_E104935104944_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104933104940_)))
               (_K104936104950_
                (lambda (_k104947_ _id104948_)
                  (let ((__tmp110688
                         (let ((__tmp110689
                                (let ((__tmp110690
                                       (let ((__tmp110691
                                              (let ((__tmp110692
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k104947_ '()))))
                                                (declare (not safe))
                                                (cons _tmp104929_
                                                      __tmp110692))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp110691))))
                                  (declare (not safe))
                                  (cons __tmp110690 '()))))
                           (declare (not safe))
                           (cons _id104948_ __tmp110689))))
                    (declare (not safe))
                    (cons __tmp110688 _r104932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104933104940_))
                                                      (let ((_hd104937104953_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104933104940_)))
                    (_tl104938104955_
                     (let () (declare (not safe)) (##cdr _hd104933104940_))))
                (let* ((_id104958_ _hd104937104953_)
                       (_k104960_ _tl104938104955_))
                  (declare (not safe))
                  (_K104936104950_ _k104960_ _id104958_)))
              (let () (declare (not safe)) (_E104935104944_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110687
                                                 _bind104902_
                                                 _init104927_))))
                                  (declare (not safe))
                                  (_lp104898_
                                   _rest104926_
                                   __tmp110693
                                   __tmp110686)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104903104915_))
                            (let ((_hd104908104965_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104903104915_)))
                                  (_tl104909104967_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104903104915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104908104965_))
                                  (let ((_hd104910104970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104908104965_)))
                                        (_tl104911104972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104908104965_))))
                                    (let ((_tmp104975_ _hd104910104970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104911104972_))
                                          (let ((_hd104912104977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104911104972_)))
                                                (_tl104913104979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104911104972_))))
                                            (let* ((_len104982_
                                                    _hd104912104977_)
                                                   (_init104984_
                                                    _tl104913104979_)
                                                   (_rest104986_
                                                    _tl104909104967_))
                                              (declare (not safe))
                                              (_K104907104962_
                                               _rest104986_
                                               _init104984_
                                               _len104982_
                                               _tmp104975_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104905104923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104905104923_))))
                            (let ()
                              (declare (not safe))
                              (_else104905104923_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104889_
             _compile-simple104891_
             _compile-values104892_)))))
    (define __compile-letrec-values%
      (lambda (_stx104689_)
        (letrec ((_compile-simple104691_
                  (lambda (_hd-ids104885_ _exprs104886_ _body104887_)
                    (let ((__tmp110698
                           (let ((__tmp110699
                                  (let ((__tmp110701
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104885_)
                                              _exprs104886_))
                                        (__tmp110700
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104887_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110701 __tmp110700))))
                             (declare (not safe))
                             (cons 'letrec __tmp110699))))
                      (declare (not safe))
                      (__SRC__% __tmp110698 _stx104689_))))
                 (_compile-values104692_
                  (lambda (_hd-ids104799_ _exprs104800_ _body104801_)
                    (let _lp104803_ ((_rest104805_ _hd-ids104799_)
                                     (_exprs104806_ _exprs104800_)
                                     (_pre104807_ '())
                                     (_bind104808_ '())
                                     (_post104809_ '()))
                      (let* ((_rest104810104824_ _rest104805_)
                             (_else104813104832_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner104693_
                                   _pre104807_
                                   _bind104808_
                                   _post104809_
                                   _body104801_)))))
                        (let ((_K104818104868_
                               (lambda (_rest104865_ _id104866_)
                                 (let ((__tmp110707 (cdr _exprs104806_))
                                       (__tmp110702
                                        (let ((__tmp110703
                                               (let ((__tmp110706
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id104866_)))
                                                     (__tmp110704
                                                      (let ((__tmp110705
                                                             (car _exprs104806_)))
                                                        (declare (not safe))
                                                        (cons __tmp110705
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110706
                                                       __tmp110704))))
                                          (declare (not safe))
                                          (cons __tmp110703 _bind104808_))))
                                   (declare (not safe))
                                   (_lp104803_
                                    _rest104865_
                                    __tmp110707
                                    _pre104807_
                                    __tmp110702
                                    _post104809_))))
                              (_K104815104850_
                               (lambda (_rest104836_ _hd104837_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104837_))
                                     (let ((__tmp110735 (cdr _exprs104806_))
                                           (__tmp110728
                                            (let ((__tmp110729
                                                   (let ((__tmp110734
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd104837_)))
                                                         (__tmp110730
                                                          (let ((__tmp110731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110732
                                (let ((__tmp110733 (car _exprs104806_)))
                                  (declare (not safe))
                                  (cons __tmp110733 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110732))))
                    (declare (not safe))
                    (cons __tmp110731 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110734
                                                           __tmp110730))))
                                              (declare (not safe))
                                              (cons __tmp110729
                                                    _bind104808_))))
                                       (declare (not safe))
                                       (_lp104803_
                                        _rest104836_
                                        __tmp110735
                                        _pre104807_
                                        __tmp110728
                                        _post104809_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd104837_))
                                         (let* ((_len104839_
                                                 (length _hd104837_))
                                                (_tmp104841_
                                                 (let ((__tmp110708 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110708))))
                                           (let ((__tmp110727
                                                  (cdr _exprs104806_))
                                                 (__tmp110720
                                                  (let ((__tmp110721
                                                         (lambda (_id104844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r104845_)
                   (if (let () (declare (not safe)) (__AST-e _id104844_))
                       (let ((__tmp110722
                              (let ((__tmp110726
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id104844_)))
                                    (__tmp110723
                                     (let ((__tmp110724
                                            (let ((__tmp110725
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp110725))))
                                       (declare (not safe))
                                       (cons __tmp110724 '()))))
                                (declare (not safe))
                                (cons __tmp110726 __tmp110723))))
                         (declare (not safe))
                         (cons __tmp110722 _r104845_))
                       _r104845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp110721
                                                            _pre104807_
                                                            _hd104837_)))
                                                 (__tmp110716
                                                  (let ((__tmp110717
                                                         (let ((__tmp110718
                                                                (let ((__tmp110719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104806_)))
                          (declare (not safe))
                          (cons __tmp110719 '()))))
                   (declare (not safe))
                   (cons _tmp104841_ __tmp110718))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110717
                                                          _bind104808_)))
                                                 (__tmp110709
                                                  (let ((__tmp110710
                                                         (let ((__tmp110711
                                                                (let ((__tmp110712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110714
                                      (lambda (_id104847_ _k104848_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id104847_))
                                            (let ((__tmp110715
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id104847_))))
                                              (declare (not safe))
                                              (cons __tmp110715 _k104848_))
                                            '#f)))
                                     (__tmp110713
                                      (let ()
                                        (declare (not safe))
                                        (iota _len104839_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110714
                                  _hd104837_
                                  __tmp110713))))
                          (declare (not safe))
                          (cons _len104839_ __tmp110712))))
                   (declare (not safe))
                   (cons _tmp104841_ __tmp110711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110710
                                                          _post104809_))))
                                             (declare (not safe))
                                             (_lp104803_
                                              _rest104836_
                                              __tmp110727
                                              __tmp110720
                                              __tmp110716
                                              __tmp110709)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104689_
                                            _hd104837_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104810104824_))
                              (let ((_tl104820104873_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104810104824_)))
                                    (_hd104819104871_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104810104824_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104819104871_))
                                    (let ((_tl104822104878_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104819104871_)))
                                          (_hd104821104876_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104819104871_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104822104878_))
                                          (let ((_id104881_ _hd104821104876_)
                                                (_rest104883_
                                                 _tl104820104873_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104818104868_
                                               _rest104883_
                                               _id104881_)))
                                          (let ((_hd104858_ _hd104819104871_)
                                                (_rest104860_
                                                 _tl104820104873_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104815104850_
                                               _rest104860_
                                               _hd104858_)))))
                                    (let ((_hd104858_ _hd104819104871_)
                                          (_rest104860_ _tl104820104873_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104815104850_
                                         _rest104860_
                                         _hd104858_)))))
                              (let ()
                                (declare (not safe))
                                (_else104813104832_))))))))
                 (_compile-inner104693_
                  (lambda (_pre104794_ _bind104795_ _post104796_ _body104797_)
                    (if (let () (declare (not safe)) (null? _pre104794_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind104694_
                           _bind104795_
                           _post104796_
                           _body104797_))
                        (let ((__tmp110736
                               (let ((__tmp110737
                                      (let ((__tmp110740 (reverse _pre104794_))
                                            (__tmp110738
                                             (let ((__tmp110739
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind104694_
                                                       _bind104795_
                                                       _post104796_
                                                       _body104797_))))
                                               (declare (not safe))
                                               (cons __tmp110739 '()))))
                                        (declare (not safe))
                                        (cons __tmp110740 __tmp110738))))
                                 (declare (not safe))
                                 (cons 'let __tmp110737))))
                          (declare (not safe))
                          (__SRC__% __tmp110736 _stx104689_)))))
                 (_compile-bind104694_
                  (lambda (_bind104790_ _post104791_ _body104792_)
                    (let ((__tmp110741
                           (let ((__tmp110742
                                  (let ((__tmp110745 (reverse _bind104790_))
                                        (__tmp110743
                                         (let ((__tmp110744
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104695_
                                                   _post104791_
                                                   _body104792_))))
                                           (declare (not safe))
                                           (cons __tmp110744 '()))))
                                    (declare (not safe))
                                    (cons __tmp110745 __tmp110743))))
                             (declare (not safe))
                             (cons 'letrec __tmp110742))))
                      (declare (not safe))
                      (__SRC__% __tmp110741 _stx104689_))))
                 (_compile-post104695_
                  (lambda (_post104697_ _body104698_)
                    (let _lp104700_ ((_rest104702_ _post104697_)
                                     (_check104703_ '())
                                     (_bind104704_ '()))
                      (let* ((_rest104705104717_ _rest104702_)
                             (_else104707104725_
                              (lambda ()
                                (let ((__tmp110746
                                       (let ((__tmp110747
                                              (let ((__tmp110748
                                                     (let ((__tmp110749
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body104698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp110749 _bind104704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110748
                                                        _check104703_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110747))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110746 _stx104689_))))
                             (_K104709104764_
                              (lambda (_rest104728_
                                       _init104729_
                                       _len104730_
                                       _tmp104731_)
                                (let ((__tmp110758
                                       (let ((__tmp110759
                                              (let ((__tmp110760
                                                     (let ((__tmp110761
                                                            (let ((__tmp110762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104730_ '()))))
                      (declare (not safe))
                      (cons _tmp104731_ __tmp110762))))
               (declare (not safe))
               (cons '__check-values __tmp110761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110760
                                                 _stx104689_))))
                                         (declare (not safe))
                                         (cons __tmp110759 _check104703_)))
                                      (__tmp110750
                                       (let ((__tmp110751
                                              (lambda (_hd104733_ _r104734_)
                                                (let* ((_hd104735104742_
                                                        _hd104733_)
                                                       (_E104737104746_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104735104742_)))
               (_K104738104752_
                (lambda (_k104749_ _id104750_)
                  (let ((__tmp110752
                         (let ((__tmp110753
                                (let ((__tmp110754
                                       (let ((__tmp110755
                                              (let ((__tmp110756
                                                     (let ((__tmp110757
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k104749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp104731_ __tmp110757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp110756))))
                                         (declare (not safe))
                                         (cons __tmp110755 '()))))
                                  (declare (not safe))
                                  (cons _id104750_ __tmp110754))))
                           (declare (not safe))
                           (cons 'set! __tmp110753))))
                    (declare (not safe))
                    (cons __tmp110752 _r104734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104735104742_))
                                                      (let ((_hd104739104755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104735104742_)))
                    (_tl104740104757_
                     (let () (declare (not safe)) (##cdr _hd104735104742_))))
                (let* ((_id104760_ _hd104739104755_)
                       (_k104762_ _tl104740104757_))
                  (declare (not safe))
                  (_K104738104752_ _k104762_ _id104760_)))
              (let () (declare (not safe)) (_E104737104746_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110751
                                                 _bind104704_
                                                 _init104729_))))
                                  (declare (not safe))
                                  (_lp104700_
                                   _rest104728_
                                   __tmp110758
                                   __tmp110750)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104705104717_))
                            (let ((_hd104710104767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104705104717_)))
                                  (_tl104711104769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104705104717_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104710104767_))
                                  (let ((_hd104712104772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104710104767_)))
                                        (_tl104713104774_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104710104767_))))
                                    (let ((_tmp104777_ _hd104712104772_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104713104774_))
                                          (let ((_hd104714104779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104713104774_)))
                                                (_tl104715104781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104713104774_))))
                                            (let* ((_len104784_
                                                    _hd104714104779_)
                                                   (_init104786_
                                                    _tl104715104781_)
                                                   (_rest104788_
                                                    _tl104711104769_))
                                              (declare (not safe))
                                              (_K104709104764_
                                               _rest104788_
                                               _init104786_
                                               _len104784_
                                               _tmp104777_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104707104725_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104707104725_))))
                            (let ()
                              (declare (not safe))
                              (_else104707104725_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104689_
             _compile-simple104691_
             _compile-values104692_)))))
    (define __compile-letrec*-values%
      (lambda (_stx104444_)
        (letrec ((_compile-simple104446_
                  (lambda (_hd-ids104685_ _exprs104686_ _body104687_)
                    (let ((__tmp110763
                           (let ((__tmp110764
                                  (let ((__tmp110766
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104685_)
                                              _exprs104686_))
                                        (__tmp110765
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104687_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110766 __tmp110765))))
                             (declare (not safe))
                             (cons 'letrec* __tmp110764))))
                      (declare (not safe))
                      (__SRC__% __tmp110763 _stx104444_))))
                 (_compile-values104447_
                  (lambda (_hd-ids104596_ _exprs104597_ _body104598_)
                    (let _lp104600_ ((_rest104602_ _hd-ids104596_)
                                     (_exprs104603_ _exprs104597_)
                                     (_bind104604_ '())
                                     (_post104605_ '()))
                      (let* ((_rest104606104620_ _rest104602_)
                             (_else104609104628_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind104448_
                                   _bind104604_
                                   _post104605_
                                   _body104598_)))))
                        (let ((_K104614104668_
                               (lambda (_rest104663_ _hd104664_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104664_))
                                     (let ((_id104666_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104664_))))
                                       (let ((__tmp110781 (cdr _exprs104603_))
                                             (__tmp110776
                                              (let ((__tmp110777
                                                     (let ((__tmp110778
                                                            (let ((__tmp110779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110780
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110780))))
                      (declare (not safe))
                      (cons __tmp110779 '()))))
               (declare (not safe))
               (cons _id104666_ __tmp110778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110777
                                                      _bind104604_)))
                                             (__tmp110772
                                              (let ((__tmp110773
                                                     (let ((__tmp110774
                                                            (let ((__tmp110775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs104603_)))
                      (declare (not safe))
                      (cons __tmp110775 '()))))
               (declare (not safe))
               (cons _id104666_ __tmp110774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110773
                                                      _post104605_))))
                                         (declare (not safe))
                                         (_lp104600_
                                          _rest104663_
                                          __tmp110781
                                          __tmp110776
                                          __tmp110772)))
                                     (let ((__tmp110771 (cdr _exprs104603_))
                                           (__tmp110767
                                            (let ((__tmp110768
                                                   (let ((__tmp110769
                                                          (let ((__tmp110770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs104603_)))
                    (declare (not safe))
                    (cons __tmp110770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp110769))))
                                              (declare (not safe))
                                              (cons __tmp110768
                                                    _post104605_))))
                                       (declare (not safe))
                                       (_lp104600_
                                        _rest104663_
                                        __tmp110771
                                        _bind104604_
                                        __tmp110767)))))
                              (_K104611104648_
                               (lambda (_rest104632_ _hd104633_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104633_))
                                     (let ((_id104635_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104633_))))
                                       (let ((__tmp110817 (cdr _exprs104603_))
                                             (__tmp110812
                                              (let ((__tmp110813
                                                     (let ((__tmp110814
                                                            (let ((__tmp110815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110816
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110816))))
                      (declare (not safe))
                      (cons __tmp110815 '()))))
               (declare (not safe))
               (cons _id104635_ __tmp110814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110813
                                                      _bind104604_)))
                                             (__tmp110806
                                              (let ((__tmp110807
                                                     (let ((__tmp110808
                                                            (let ((__tmp110809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110810
                                  (let ((__tmp110811 (car _exprs104603_)))
                                    (declare (not safe))
                                    (cons __tmp110811 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp110810))))
                      (declare (not safe))
                      (cons __tmp110809 '()))))
               (declare (not safe))
               (cons _id104635_ __tmp110808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110807
                                                      _post104605_))))
                                         (declare (not safe))
                                         (_lp104600_
                                          _rest104632_
                                          __tmp110817
                                          __tmp110812
                                          __tmp110806)))
                                     (if (let ((__tmp110805
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd104633_))))
                                           (declare (not safe))
                                           (not __tmp110805))
                                         (let ((__tmp110804
                                                (cdr _exprs104603_))
                                               (__tmp110800
                                                (let ((__tmp110801
                                                       (let ((__tmp110802
                                                              (let ((__tmp110803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs104603_)))
                        (declare (not safe))
                        (cons __tmp110803 '()))))
                 (declare (not safe))
                 (cons '#f __tmp110802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp110801
                                                        _post104605_))))
                                           (declare (not safe))
                                           (_lp104600_
                                            _rest104632_
                                            __tmp110804
                                            _bind104604_
                                            __tmp110800))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd104633_))
                                             (let* ((_len104637_
                                                     (length _hd104633_))
                                                    (_tmp104639_
                                                     (let ((__tmp110782
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp110782))))
                                               (let ((__tmp110799
                                                      (cdr _exprs104603_))
                                                     (__tmp110792
                                                      (let ((__tmp110793
                                                             (lambda (_id104642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r104643_)
                       (if (let () (declare (not safe)) (__AST-e _id104642_))
                           (let ((__tmp110794
                                  (let ((__tmp110798
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id104642_)))
                                        (__tmp110795
                                         (let ((__tmp110796
                                                (let ((__tmp110797
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp110797))))
                                           (declare (not safe))
                                           (cons __tmp110796 '()))))
                                    (declare (not safe))
                                    (cons __tmp110798 __tmp110795))))
                             (declare (not safe))
                             (cons __tmp110794 _r104643_))
                           _r104643_))))
                (declare (not safe))
                (foldl1 __tmp110793 _bind104604_ _hd104633_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp110783
                                                      (let ((__tmp110784
                                                             (let ((__tmp110785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110791 (car _exprs104603_))
                                  (__tmp110786
                                   (let ((__tmp110787
                                          (let ((__tmp110789
                                                 (lambda (_id104645_ _k104646_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id104645_))
                                                       (let ((__tmp110790
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id104645_))))
                 (declare (not safe))
                 (cons __tmp110790 _k104646_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp110788
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len104637_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp110789
                                             _hd104633_
                                             __tmp110788))))
                                     (declare (not safe))
                                     (cons _len104637_ __tmp110787))))
                              (declare (not safe))
                              (cons __tmp110791 __tmp110786))))
                       (declare (not safe))
                       (cons _tmp104639_ __tmp110785))))
                (declare (not safe))
                (cons __tmp110784 _post104605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp104600_
                                                  _rest104632_
                                                  __tmp110799
                                                  __tmp110792
                                                  __tmp110783)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx104444_
                                                _hd104633_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104606104620_))
                              (let ((_tl104616104673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104606104620_)))
                                    (_hd104615104671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104606104620_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104615104671_))
                                    (let ((_tl104618104678_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104615104671_)))
                                          (_hd104617104676_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104615104671_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104618104678_))
                                          (let ((_hd104681_ _hd104617104676_)
                                                (_rest104683_
                                                 _tl104616104673_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104614104668_
                                               _rest104683_
                                               _hd104681_)))
                                          (let ((_hd104656_ _hd104615104671_)
                                                (_rest104658_
                                                 _tl104616104673_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104611104648_
                                               _rest104658_
                                               _hd104656_)))))
                                    (let ((_hd104656_ _hd104615104671_)
                                          (_rest104658_ _tl104616104673_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104611104648_
                                         _rest104658_
                                         _hd104656_)))))
                              (let ()
                                (declare (not safe))
                                (_else104609104628_))))))))
                 (_compile-bind104448_
                  (lambda (_bind104592_ _post104593_ _body104594_)
                    (let ((__tmp110818
                           (let ((__tmp110819
                                  (let ((__tmp110822 (reverse _bind104592_))
                                        (__tmp110820
                                         (let ((__tmp110821
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104449_
                                                   _post104593_
                                                   _body104594_))))
                                           (declare (not safe))
                                           (cons __tmp110821 '()))))
                                    (declare (not safe))
                                    (cons __tmp110822 __tmp110820))))
                             (declare (not safe))
                             (cons 'let __tmp110819))))
                      (declare (not safe))
                      (__SRC__% __tmp110818 _stx104444_))))
                 (_compile-post104449_
                  (lambda (_post104451_ _body104452_)
                    (let ((__tmp110823
                           (let ((__tmp110824
                                  (let ((__tmp110825
                                         (let ((__tmp110827
                                                (lambda (_hd104454_ _r104455_)
                                                  (let* ((_hd104456104479_
                                                          _hd104454_)
                                                         (_E104460104483_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd104456104479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K104473104577_
                                                           (lambda (_expr104575_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr104575_ _r104455_))))
                  (_K104468104555_
                   (lambda (_expr104552_ _id104553_)
                     (let ((__tmp110828
                            (let ((__tmp110829
                                   (let ((__tmp110830
                                          (let ((__tmp110831
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr104552_ '()))))
                                            (declare (not safe))
                                            (cons _id104553_ __tmp110831))))
                                     (declare (not safe))
                                     (cons 'set! __tmp110830))))
                              (declare (not safe))
                              (__SRC__% __tmp110829 _stx104444_))))
                       (declare (not safe))
                       (cons __tmp110828 _r104455_))))
                  (_K104461104522_
                   (lambda (_init104487_ _len104488_ _expr104489_ _tmp104490_)
                     (let ((__tmp110832
                            (let ((__tmp110833
                                   (let ((__tmp110834
                                          (let ((__tmp110848
                                                 (let ((__tmp110849
                                                        (let ((__tmp110850
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr104489_ '()))))
                  (declare (not safe))
                  (cons _tmp104490_ __tmp110850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110849 '())))
                                                (__tmp110835
                                                 (let ((__tmp110844
                                                        (let ((__tmp110845
                                                               (let ((__tmp110846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp110847
                                     (let ()
                                       (declare (not safe))
                                       (cons _len104488_ '()))))
                                (declare (not safe))
                                (cons _tmp104490_ __tmp110847))))
                         (declare (not safe))
                         (cons '__check-values __tmp110846))))
                  (declare (not safe))
                  (__SRC__% __tmp110845 _stx104444_)))
               (__tmp110836
                (let ((__tmp110837
                       (map (lambda (_hd104492_)
                              (let* ((_hd104493104500_ _hd104492_)
                                     (_E104495104504_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd104493104500_)))
                                     (_K104496104510_
                                      (lambda (_k104507_ _id104508_)
                                        (let ((__tmp110838
                                               (let ((__tmp110839
                                                      (let ((__tmp110840
                                                             (let ((__tmp110841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110842
                                   (let ((__tmp110843
                                          (let ()
                                            (declare (not safe))
                                            (cons _k104507_ '()))))
                                     (declare (not safe))
                                     (cons _tmp104490_ __tmp110843))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp110842))))
                       (declare (not safe))
                       (cons __tmp110841 '()))))
                (declare (not safe))
                (cons _id104508_ __tmp110840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp110839))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp110838
                                           _stx104444_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104493104500_))
                                    (let ((_hd104497104513_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104493104500_)))
                                          (_tl104498104515_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104493104500_))))
                                      (let* ((_id104518_ _hd104497104513_)
                                             (_k104520_ _tl104498104515_))
                                        (declare (not safe))
                                        (_K104496104510_
                                         _k104520_
                                         _id104518_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E104495104504_)))))
                            _init104487_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp110837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110844
                                                         __tmp110836))))
                                            (declare (not safe))
                                            (cons __tmp110848 __tmp110835))))
                                     (declare (not safe))
                                     (cons 'let __tmp110834))))
                              (declare (not safe))
                              (__SRC__% __tmp110833 _stx104444_))))
                       (declare (not safe))
                       (cons __tmp110832 _r104455_)))))
              (if (let () (declare (not safe)) (##pair? _hd104456104479_))
                  (let ((_tl104475104582_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104456104479_)))
                        (_hd104474104580_
                         (let ()
                           (declare (not safe))
                           (##car _hd104456104479_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104474104580_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104475104582_))
                            (let ((_tl104477104587_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104475104582_)))
                                  (_hd104476104585_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104475104582_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104477104587_))
                                  (let ((_expr104590_ _hd104476104585_))
                                    (declare (not safe))
                                    (_K104473104577_ _expr104590_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104477104587_))
                                      (let ((_tl104467104541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104477104587_)))
                                            (_hd104466104539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104477104587_))))
                                        (let ((_tmp104530_ _hd104474104580_)
                                              (_expr104537_ _hd104476104585_)
                                              (_len104544_ _hd104466104539_)
                                              (_init104546_ _tl104467104541_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104461104522_
                                             _init104546_
                                             _len104544_
                                             _expr104537_
                                             _tmp104530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104460104483_)))))
                            (let () (declare (not safe)) (_E104460104483_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104475104582_))
                            (let ((_tl104472104567_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104475104582_)))
                                  (_hd104471104565_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104475104582_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104472104567_))
                                  (let ((_id104563_ _hd104474104580_)
                                        (_expr104570_ _hd104471104565_))
                                    (let ()
                                      (declare (not safe))
                                      (_K104468104555_
                                       _expr104570_
                                       _id104563_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104472104567_))
                                      (let ((_tl104467104541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104472104567_)))
                                            (_hd104466104539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104472104567_))))
                                        (let ((_tmp104530_ _hd104474104580_)
                                              (_expr104537_ _hd104471104565_)
                                              (_len104544_ _hd104466104539_)
                                              (_init104546_ _tl104467104541_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104461104522_
                                             _init104546_
                                             _len104544_
                                             _expr104537_
                                             _tmp104530_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104460104483_)))))
                            (let () (declare (not safe)) (_E104460104483_)))))
                  (let () (declare (not safe)) (_E104460104483_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp110826
                                                (list _body104452_)))
                                           (declare (not safe))
                                           (foldl1 __tmp110827
                                                   __tmp110826
                                                   _post104451_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp110825))))
                             (declare (not safe))
                             (cons 'begin __tmp110824))))
                      (declare (not safe))
                      (__SRC__% __tmp110823 _stx104444_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104444_
             _compile-simple104446_
             _compile-values104447_)))))
    (define __compile-call%
      (lambda (_stx104404_)
        (let* ((_$e104406_ _stx104404_)
               (_$E104408104417_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104406_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104406_))
              (let* ((_$tgt104409104420_
                      (let () (declare (not safe)) (__AST-e _$e104406_)))
                     (_$hd104410104423_
                      (let () (declare (not safe)) (##car _$tgt104409104420_)))
                     (_$tl104411104426_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104409104420_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104411104426_))
                    (let* ((_$tgt104412104430_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104411104426_)))
                           (_$hd104413104433_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104412104430_)))
                           (_$tl104414104436_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104412104430_))))
                      (let* ((_rator104440_ _$hd104413104433_)
                             (_rands104442_ _$tl104414104436_)
                             (__tmp110851
                              (let ((__tmp110853
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator104440_)))
                                    (__tmp110852
                                     (map __compile _rands104442_)))
                                (declare (not safe))
                                (cons __tmp110853 __tmp110852))))
                        (declare (not safe))
                        (__SRC__% __tmp110851 _stx104404_)))
                    (let () (declare (not safe)) (_$E104408104417_))))
              (let () (declare (not safe)) (_$E104408104417_))))))
    (define __compile-ref%
      (lambda (_stx104366_)
        (let* ((_$e104368_ _stx104366_)
               (_$E104370104379_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104368_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104368_))
              (let* ((_$tgt104371104382_
                      (let () (declare (not safe)) (__AST-e _$e104368_)))
                     (_$hd104372104385_
                      (let () (declare (not safe)) (##car _$tgt104371104382_)))
                     (_$tl104373104388_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104371104382_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104373104388_))
                    (let* ((_$tgt104374104392_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104373104388_)))
                           (_$hd104375104395_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104374104392_)))
                           (_$tl104376104398_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104374104392_))))
                      (let ((_id104402_ _$hd104375104395_))
                        (if (let ((__tmp110854
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104376104398_))))
                              (declare (not safe))
                              (equal? __tmp110854 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id104402_ _stx104366_))
                            (let () (declare (not safe)) (_$E104370104379_)))))
                    (let () (declare (not safe)) (_$E104370104379_))))
              (let () (declare (not safe)) (_$E104370104379_))))))
    (define __compile-setq%
      (lambda (_stx104313_)
        (let* ((_$e104315_ _stx104313_)
               (_$E104317104329_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104315_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104315_))
              (let* ((_$tgt104318104332_
                      (let () (declare (not safe)) (__AST-e _$e104315_)))
                     (_$hd104319104335_
                      (let () (declare (not safe)) (##car _$tgt104318104332_)))
                     (_$tl104320104338_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104318104332_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104320104338_))
                    (let* ((_$tgt104321104342_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104320104338_)))
                           (_$hd104322104345_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104321104342_)))
                           (_$tl104323104348_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104321104342_))))
                      (let ((_id104352_ _$hd104322104345_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104323104348_))
                            (let* ((_$tgt104324104354_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104323104348_)))
                                   (_$hd104325104357_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104324104354_)))
                                   (_$tl104326104360_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104324104354_))))
                              (let ((_expr104364_ _$hd104325104357_))
                                (if (let ((__tmp110860
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl104326104360_))))
                                      (declare (not safe))
                                      (equal? __tmp110860 '()))
                                    (let ((__tmp110855
                                           (let ((__tmp110856
                                                  (let ((__tmp110859
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id104352_
                                                            _stx104313_)))
                                                        (__tmp110857
                                                         (let ((__tmp110858
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr104364_))))
                   (declare (not safe))
                   (cons __tmp110858 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110859
                                                          __tmp110857))))
                                             (declare (not safe))
                                             (cons 'set! __tmp110856))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110855 _stx104313_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104317104329_)))))
                            (let () (declare (not safe)) (_$E104317104329_)))))
                    (let () (declare (not safe)) (_$E104317104329_))))
              (let () (declare (not safe)) (_$E104317104329_))))))
    (define __compile-if%
      (lambda (_stx104245_)
        (let* ((_$e104247_ _stx104245_)
               (_$E104249104264_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104247_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104247_))
              (let* ((_$tgt104250104267_
                      (let () (declare (not safe)) (__AST-e _$e104247_)))
                     (_$hd104251104270_
                      (let () (declare (not safe)) (##car _$tgt104250104267_)))
                     (_$tl104252104273_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104250104267_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104252104273_))
                    (let* ((_$tgt104253104277_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104252104273_)))
                           (_$hd104254104280_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104253104277_)))
                           (_$tl104255104283_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104253104277_))))
                      (let ((_p104287_ _$hd104254104280_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104255104283_))
                            (let* ((_$tgt104256104289_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104255104283_)))
                                   (_$hd104257104292_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104256104289_)))
                                   (_$tl104258104295_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104256104289_))))
                              (let ((_t104299_ _$hd104257104292_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl104258104295_))
                                    (let* ((_$tgt104259104301_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl104258104295_)))
                                           (_$hd104260104304_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt104259104301_)))
                                           (_$tl104261104307_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt104259104301_))))
                                      (let ((_f104311_ _$hd104260104304_))
                                        (if (let ((__tmp110868
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl104261104307_))))
                                              (declare (not safe))
                                              (equal? __tmp110868 '()))
                                            (let ((__tmp110861
                                                   (let ((__tmp110862
                                                          (let ((__tmp110867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p104287_)))
                        (__tmp110863
                         (let ((__tmp110866
                                (let ()
                                  (declare (not safe))
                                  (__compile _t104299_)))
                               (__tmp110864
                                (let ((__tmp110865
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f104311_))))
                                  (declare (not safe))
                                  (cons __tmp110865 '()))))
                           (declare (not safe))
                           (cons __tmp110866 __tmp110864))))
                    (declare (not safe))
                    (cons __tmp110867 __tmp110863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp110862))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp110861
                                               _stx104245_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E104249104264_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104249104264_)))))
                            (let () (declare (not safe)) (_$E104249104264_)))))
                    (let () (declare (not safe)) (_$E104249104264_))))
              (let () (declare (not safe)) (_$E104249104264_))))))
    (define __compile-quote%
      (lambda (_stx104207_)
        (let* ((_$e104209_ _stx104207_)
               (_$E104211104220_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104209_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104209_))
              (let* ((_$tgt104212104223_
                      (let () (declare (not safe)) (__AST-e _$e104209_)))
                     (_$hd104213104226_
                      (let () (declare (not safe)) (##car _$tgt104212104223_)))
                     (_$tl104214104229_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104212104223_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104214104229_))
                    (let* ((_$tgt104215104233_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104214104229_)))
                           (_$hd104216104236_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104215104233_)))
                           (_$tl104217104239_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104215104233_))))
                      (let ((_e104243_ _$hd104216104236_))
                        (if (let ((__tmp110872
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104217104239_))))
                              (declare (not safe))
                              (equal? __tmp110872 '()))
                            (let ((__tmp110869
                                   (let ((__tmp110870
                                          (let ((__tmp110871
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e104243_))))
                                            (declare (not safe))
                                            (cons __tmp110871 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110870))))
                              (declare (not safe))
                              (__SRC__% __tmp110869 _stx104207_))
                            (let () (declare (not safe)) (_$E104211104220_)))))
                    (let () (declare (not safe)) (_$E104211104220_))))
              (let () (declare (not safe)) (_$E104211104220_))))))
    (define __compile-quote-syntax%
      (lambda (_stx104169_)
        (let* ((_$e104171_ _stx104169_)
               (_$E104173104182_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104171_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104171_))
              (let* ((_$tgt104174104185_
                      (let () (declare (not safe)) (__AST-e _$e104171_)))
                     (_$hd104175104188_
                      (let () (declare (not safe)) (##car _$tgt104174104185_)))
                     (_$tl104176104191_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104174104185_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104176104191_))
                    (let* ((_$tgt104177104195_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104176104191_)))
                           (_$hd104178104198_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104177104195_)))
                           (_$tl104179104201_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104177104195_))))
                      (let ((_e104205_ _$hd104178104198_))
                        (if (let ((__tmp110875
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104179104201_))))
                              (declare (not safe))
                              (equal? __tmp110875 '()))
                            (let ((__tmp110873
                                   (let ((__tmp110874
                                          (let ()
                                            (declare (not safe))
                                            (cons _e104205_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110874))))
                              (declare (not safe))
                              (__SRC__% __tmp110873 _stx104169_))
                            (let () (declare (not safe)) (_$E104173104182_)))))
                    (let () (declare (not safe)) (_$E104173104182_))))
              (let () (declare (not safe)) (_$E104173104182_))))))
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
