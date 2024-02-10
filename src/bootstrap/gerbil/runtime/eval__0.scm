(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707552286)
  (begin
    (define __context::t
      (let ((__tmp110483
             (let ((__tmp110484
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110484 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp110483
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args106093_
        (apply make-struct-instance __context::t _$args106093_)))
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
      (let ((__tmp110485
             (let ((__tmp110486
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110486 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp110485
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args106090_
        (apply make-struct-instance __runtime::t _$args106090_)))
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
      (let ((__tmp110487
             (let ((__tmp110488
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110488 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp110487
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args106087_
        (apply make-struct-instance __syntax::t _$args106087_)))
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
      (let ((__tmp110489
             (let ((__tmp110490
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110490 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp110489
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args106084_
        (apply make-struct-instance __macro::t _$args106084_)))
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
      (let ((__tmp110491
             (let ((__tmp110492
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110492 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp110491
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args106081_
        (apply make-struct-instance __special-form::t _$args106081_)))
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
      (let ((__tmp110493
             (let ((__tmp110494
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110494 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp110493
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args106078_
        (apply make-struct-instance __core-form::t _$args106078_)))
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
      (let ((__tmp110495
             (let ((__tmp110496
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110496 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp110495
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args106075_
        (apply make-struct-instance __core-expression::t _$args106075_)))
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
      (let ((__tmp110497
             (let ((__tmp110498
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110498 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp110497
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args106072_
        (apply make-struct-instance __core-special-form::t _$args106072_)))
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
      (let ((__tmp110499
             (let ((__tmp110500
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110500 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp110499
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args106069_
        (apply make-struct-instance __struct-info::t _$args106069_)))
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
      (let ((__tmp110501
             (let ((__tmp110502
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110502 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp110501
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args106066_
        (apply make-struct-instance __feature::t _$args106066_)))
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
      (let ((__tmp110503
             (let ((__tmp110504
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110504 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp110503
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args106063_
        (apply make-struct-instance __module::t _$args106063_)))
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
      (let ((__tmp110506
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp110505
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp110506 __tmp110505)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id106038_ _ctx106039_)
        (if _ctx106039_
            (let ((_id106041_
                   (let () (declare (not safe)) (__AST-e _id106038_))))
              (let _lp106043_ ((_ctx106045_ _ctx106039_))
                (let ((_$e106047_
                       (table-ref
                        (##structure-ref _ctx106045_ '4 __context::t '#f)
                        _id106041_
                        '#f)))
                  (if _$e106047_
                      (values _$e106047_)
                      (let ((_$e106050_
                             (##structure-ref
                              _ctx106045_
                              '3
                              __context::t
                              '#f)))
                        (if _$e106050_
                            (let ()
                              (declare (not safe))
                              (_lp106043_ _$e106050_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id106056_)
        (let ((_ctx106058_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id106056_ _ctx106058_))))
    (define __core-resolve
      (lambda _g110508_
        (let ((_g110507_ (let () (declare (not safe)) (##length _g110508_))))
          (cond ((let () (declare (not safe)) (##fx= _g110507_ 1))
                 (apply (lambda (_id106056_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id106056_)))
                        _g110508_))
                ((let () (declare (not safe)) (##fx= _g110507_ 2))
                 (apply (lambda (_id106060_ _ctx106061_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id106060_ _ctx106061_)))
                        _g110508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g110508_))))))
    (define __core-bound-id?__%
      (lambda (_id106021_ _is?106022_)
        (let ((_$e106024_
               (let () (declare (not safe)) (__core-resolve__0 _id106021_))))
          (if _$e106024_ (_is?106022_ _$e106024_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id106030_)
        (let ((_is?106032_ true))
          (declare (not safe))
          (__core-bound-id?__% _id106030_ _is?106032_))))
    (define __core-bound-id?
      (lambda _g110510_
        (let ((_g110509_ (let () (declare (not safe)) (##length _g110510_))))
          (cond ((let () (declare (not safe)) (##fx= _g110509_ 1))
                 (apply (lambda (_id106030_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id106030_)))
                        _g110510_))
                ((let () (declare (not safe)) (##fx= _g110509_ 2))
                 (apply (lambda (_id106034_ _is?106035_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id106034_ _is?106035_)))
                        _g110510_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g110510_))))))
    (define __core-bind-runtime!__%
      (lambda (_id106004_ _eid106005_ _ctx106006_)
        (if _eid106005_
            (let ((__tmp110513
                   (##structure-ref _ctx106006_ '4 __context::t '#f))
                  (__tmp110512
                   (let () (declare (not safe)) (__AST-e _id106004_)))
                  (__tmp110511
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid106005_))))
              (declare (not safe))
              (table-set! __tmp110513 __tmp110512 __tmp110511))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id106011_ _eid106012_)
        (let ((_ctx106014_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id106011_ _eid106012_ _ctx106014_))))
    (define __core-bind-runtime!
      (lambda _g110515_
        (let ((_g110514_ (let () (declare (not safe)) (##length _g110515_))))
          (cond ((let () (declare (not safe)) (##fx= _g110514_ 2))
                 (apply (lambda (_id106011_ _eid106012_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id106011_ _eid106012_)))
                        _g110515_))
                ((let () (declare (not safe)) (##fx= _g110514_ 3))
                 (apply (lambda (_id106016_ _eid106017_ _ctx106018_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id106016_
                             _eid106017_
                             _ctx106018_)))
                        _g110515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g110515_))))))
    (define __core-bind-syntax!__%
      (lambda (_id105987_ _e105988_ _make105989_)
        (let ((__tmp110516
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105988_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105988_
                   (_make105989_ _e105988_ _id105987_))))
          (declare (not safe))
          (table-set! __*core* _id105987_ __tmp110516))))
    (define __core-bind-syntax!__0
      (lambda (_id105994_ _e105995_)
        (let ((_make105997_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id105994_ _e105995_ _make105997_))))
    (define __core-bind-syntax!
      (lambda _g110518_
        (let ((_g110517_ (let () (declare (not safe)) (##length _g110518_))))
          (cond ((let () (declare (not safe)) (##fx= _g110517_ 2))
                 (apply (lambda (_id105994_ _e105995_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id105994_ _e105995_)))
                        _g110518_))
                ((let () (declare (not safe)) (##fx= _g110517_ 3))
                 (apply (lambda (_id105999_ _e106000_ _make106001_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id105999_
                             _e106000_
                             _make106001_)))
                        _g110518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g110518_))))))
    (define __core-bind-macro!
      (lambda (_id105983_ _e105984_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105983_ _e105984_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id105980_ _e105981_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id105980_ _e105981_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id105964_ _e105965_ _ctx105966_)
        (let ((__tmp110522 (##structure-ref _ctx105966_ '4 __context::t '#f))
              (__tmp110521 (let () (declare (not safe)) (__AST-e _id105964_)))
              (__tmp110519
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e105965_
                      'gerbil/runtime/eval#__syntax::t))
                   _e105965_
                   (let ((__tmp110520
                          (let () (declare (not safe)) (__AST-e _id105964_))))
                     (declare (not safe))
                     (##structure __syntax::t _e105965_ __tmp110520)))))
          (declare (not safe))
          (table-set! __tmp110522 __tmp110521 __tmp110519))))
    (define __core-bind-user-syntax!__0
      (lambda (_id105971_ _e105972_)
        (let ((_ctx105974_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id105971_ _e105972_ _ctx105974_))))
    (define __core-bind-user-syntax!
      (lambda _g110524_
        (let ((_g110523_ (let () (declare (not safe)) (##length _g110524_))))
          (cond ((let () (declare (not safe)) (##fx= _g110523_ 2))
                 (apply (lambda (_id105971_ _e105972_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id105971_
                             _e105972_)))
                        _g110524_))
                ((let () (declare (not safe)) (##fx= _g110523_ 3))
                 (apply (lambda (_id105976_ _e105977_ _ctx105978_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id105976_
                             _e105977_
                             _ctx105978_)))
                        _g110524_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g110524_))))))
    (define make-__runtime-id__%
      (lambda (_id105945_ _ctx105946_)
        (let ((_id105948_ (let () (declare (not safe)) (__AST-e _id105945_))))
          (if (let () (declare (not safe)) (eq? _id105948_ '_))
              '#f
              (if (uninterned-symbol? _id105948_)
                  (gensym _id105948_)
                  (if (let () (declare (not safe)) (symbol? _id105948_))
                      (let ((_$e105950_
                             (##structure-ref
                              _ctx105946_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e105950_))
                            (gensym _id105948_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e105950_))
                                (let ((__tmp110525
                                       (##structure-ref
                                        _ctx105946_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp110525 '"#" _id105948_))
                                _id105948_)))
                      (error '"Illegal runtime identifier" _id105948_)))))))
    (define make-__runtime-id__0
      (lambda (_id105956_)
        (let ((_ctx105958_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id105956_ _ctx105958_))))
    (define make-__runtime-id
      (lambda _g110527_
        (let ((_g110526_ (let () (declare (not safe)) (##length _g110527_))))
          (cond ((let () (declare (not safe)) (##fx= _g110526_ 1))
                 (apply (lambda (_id105956_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id105956_)))
                        _g110527_))
                ((let () (declare (not safe)) (##fx= _g110526_ 2))
                 (apply (lambda (_id105960_ _ctx105961_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id105960_ _ctx105961_)))
                        _g110527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g110527_))))))
    (define make-__context-local__%
      (lambda (_super105934_)
        (let ((__tmp110528
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super105934_ __tmp110528))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super105940_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super105940_))))
    (define make-__context-local
      (lambda _g110530_
        (let ((_g110529_ (let () (declare (not safe)) (##length _g110530_))))
          (cond ((let () (declare (not safe)) (##fx= _g110529_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g110530_))
                ((let () (declare (not safe)) (##fx= _g110529_ 1))
                 (apply (lambda (_super105942_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super105942_)))
                        _g110530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g110530_))))))
    (define make-__context-module__%
      (lambda (_id105914_ _ns105915_ _path105916_ _super105917_)
        (let ((__tmp110531
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns105915_
           _super105917_
           __tmp110531
           _id105914_
           _path105916_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id105922_ _ns105923_ _path105924_)
        (let ((_super105926_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id105922_
           _ns105923_
           _path105924_
           _super105926_))))
    (define make-__context-module
      (lambda _g110533_
        (let ((_g110532_ (let () (declare (not safe)) (##length _g110533_))))
          (cond ((let () (declare (not safe)) (##fx= _g110532_ 3))
                 (apply (lambda (_id105922_ _ns105923_ _path105924_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id105922_
                             _ns105923_
                             _path105924_)))
                        _g110533_))
                ((let () (declare (not safe)) (##fx= _g110532_ 4))
                 (apply (lambda (_id105928_
                                 _ns105929_
                                 _path105930_
                                 _super105931_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id105928_
                             _ns105929_
                             _path105930_
                             _super105931_)))
                        _g110533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g110533_))))))
    (define __SRC__%
      (lambda (_e105897_ _src-stx105898_)
        (if (or (let () (declare (not safe)) (pair? _e105897_))
                (let () (declare (not safe)) (symbol? _e105897_)))
            (let ((__tmp110537
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx105898_
                          'gerbil#AST::t))
                       (let ((__tmp110538
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx105898_))))
                         (declare (not safe))
                         (__locat __tmp110538))
                       '#f)))
              (declare (not safe))
              (##make-source _e105897_ __tmp110537))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e105897_ 'gerbil#AST::t))
                (let ((__tmp110536
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e105897_ '1 AST::t '#f)))
                      (__tmp110534
                       (let ((__tmp110535
                              (let ()
                                (declare (not safe))
                                (__AST-source _e105897_))))
                         (declare (not safe))
                         (__locat __tmp110535))))
                  (declare (not safe))
                  (##make-source __tmp110536 __tmp110534))
                (error '"BUG! Cannot sourcify object" _e105897_)))))
    (define __SRC__0
      (lambda (_e105906_)
        (let ((_src-stx105908_ '#f))
          (declare (not safe))
          (__SRC__% _e105906_ _src-stx105908_))))
    (define __SRC
      (lambda _g110540_
        (let ((_g110539_ (let () (declare (not safe)) (##length _g110540_))))
          (cond ((let () (declare (not safe)) (##fx= _g110539_ 1))
                 (apply (lambda (_e105906_)
                          (let () (declare (not safe)) (__SRC__0 _e105906_)))
                        _g110540_))
                ((let () (declare (not safe)) (##fx= _g110539_ 2))
                 (apply (lambda (_e105910_ _src-stx105911_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e105910_ _src-stx105911_)))
                        _g110540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g110540_))))))
    (define __locat
      (lambda (_loc105894_)
        (if (let () (declare (not safe)) (##locat? _loc105894_))
            _loc105894_
            '#f)))
    (define __check-values
      (lambda (_obj105889_ _k105890_)
        (let ((_count105892_
               (if (let () (declare (not safe)) (##values? _obj105889_))
                   (let () (declare (not safe)) (##vector-length _obj105889_))
                   '1)))
          (if (fx= _count105892_ _k105890_)
              '#!void
              (error (if (fx< _count105892_ _k105890_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj105889_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj105889_))
                         _obj105889_)
                     _k105890_)))))
    (define __compile
      (lambda (_stx105859_)
        (let* ((_$e105861_ _stx105859_)
               (_$E105863105869_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105861_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105861_))
              (let* ((_$tgt105864105872_
                      (let () (declare (not safe)) (__AST-e _$e105861_)))
                     (_$hd105865105875_
                      (let () (declare (not safe)) (##car _$tgt105864105872_)))
                     (_$tl105866105878_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105864105872_))))
                (let* ((_form105882_ _$hd105865105875_)
                       (_$e105884_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form105882_))))
                  (if _$e105884_
                      ((lambda (_bind105887_)
                         ((##structure-ref _bind105887_ '1 __syntax::t '#f)
                          _stx105859_))
                       _$e105884_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx105859_
                         _form105882_)))))
              (let () (declare (not safe)) (_$E105863105869_))))))
    (define __compile-error__%
      (lambda (_stx105846_ _detail105847_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx105846_
           _detail105847_))))
    (define __compile-error__0
      (lambda (_stx105852_)
        (let ((_detail105854_ '#f))
          (declare (not safe))
          (__compile-error__% _stx105852_ _detail105854_))))
    (define __compile-error
      (lambda _g110542_
        (let ((_g110541_ (let () (declare (not safe)) (##length _g110542_))))
          (cond ((let () (declare (not safe)) (##fx= _g110541_ 1))
                 (apply (lambda (_stx105852_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx105852_)))
                        _g110542_))
                ((let () (declare (not safe)) (##fx= _g110541_ 2))
                 (apply (lambda (_stx105856_ _detail105857_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx105856_ _detail105857_)))
                        _g110542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g110542_))))))
    (define __compile-ignore%
      (lambda (_stx105843_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx105843_))))
    (define __compile-begin%
      (lambda (_stx105818_)
        (let* ((_$e105820_ _stx105818_)
               (_$E105822105828_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105820_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105820_))
              (let* ((_$tgt105823105831_
                      (let () (declare (not safe)) (__AST-e _$e105820_)))
                     (_$hd105824105834_
                      (let () (declare (not safe)) (##car _$tgt105823105831_)))
                     (_$tl105825105837_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105823105831_))))
                (let* ((_body105841_ _$tl105825105837_)
                       (__tmp110543
                        (let ((__tmp110544 (map __compile _body105841_)))
                          (declare (not safe))
                          (cons 'begin __tmp110544))))
                  (declare (not safe))
                  (__SRC__% __tmp110543 _stx105818_)))
              (let () (declare (not safe)) (_$E105822105828_))))))
    (define __compile-begin-foreign%
      (lambda (_stx105793_)
        (let* ((_$e105795_ _stx105793_)
               (_$E105797105803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105795_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105795_))
              (let* ((_$tgt105798105806_
                      (let () (declare (not safe)) (__AST-e _$e105795_)))
                     (_$hd105799105809_
                      (let () (declare (not safe)) (##car _$tgt105798105806_)))
                     (_$tl105800105812_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105798105806_))))
                (let* ((_body105816_ _$tl105800105812_)
                       (__tmp110545
                        (let ((__tmp110546
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body105816_))))
                          (declare (not safe))
                          (cons 'begin __tmp110546))))
                  (declare (not safe))
                  (__SRC__% __tmp110545 _stx105793_)))
              (let () (declare (not safe)) (_$E105797105803_))))))
    (define __compile-import%
      (lambda (_stx105768_)
        (let* ((_$e105770_ _stx105768_)
               (_$E105772105778_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105770_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105770_))
              (let* ((_$tgt105773105781_
                      (let () (declare (not safe)) (__AST-e _$e105770_)))
                     (_$hd105774105784_
                      (let () (declare (not safe)) (##car _$tgt105773105781_)))
                     (_$tl105775105787_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105773105781_))))
                (let* ((_body105791_ _$tl105775105787_)
                       (__tmp110547
                        (let ((__tmp110548
                               (let ((__tmp110549
                                      (let ((__tmp110550
                                             (let ()
                                               (declare (not safe))
                                               (cons _body105791_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp110550))))
                                 (declare (not safe))
                                 (cons __tmp110549 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp110548))))
                  (declare (not safe))
                  (__SRC__% __tmp110547 _stx105768_)))
              (let () (declare (not safe)) (_$E105772105778_))))))
    (define __compile-begin-annotation%
      (lambda (_stx105715_)
        (let* ((_$e105717_ _stx105715_)
               (_$E105719105731_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105717_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105717_))
              (let* ((_$tgt105720105734_
                      (let () (declare (not safe)) (__AST-e _$e105717_)))
                     (_$hd105721105737_
                      (let () (declare (not safe)) (##car _$tgt105720105734_)))
                     (_$tl105722105740_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105720105734_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105722105740_))
                    (let* ((_$tgt105723105744_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105722105740_)))
                           (_$hd105724105747_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105723105744_)))
                           (_$tl105725105750_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105723105744_))))
                      (let ((_ann105754_ _$hd105724105747_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105725105750_))
                            (let* ((_$tgt105726105756_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105725105750_)))
                                   (_$hd105727105759_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105726105756_)))
                                   (_$tl105728105762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105726105756_))))
                              (let ((_expr105766_ _$hd105727105759_))
                                (if (let ((__tmp110551
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105728105762_))))
                                      (declare (not safe))
                                      (equal? __tmp110551 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr105766_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105719105731_)))))
                            (let () (declare (not safe)) (_$E105719105731_)))))
                    (let () (declare (not safe)) (_$E105719105731_))))
              (let () (declare (not safe)) (_$E105719105731_))))))
    (define __compile-define-values%
      (lambda (_stx105606_)
        (let* ((_$e105608_ _stx105606_)
               (_$E105610105622_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105608_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105608_))
              (let* ((_$tgt105611105625_
                      (let () (declare (not safe)) (__AST-e _$e105608_)))
                     (_$hd105612105628_
                      (let () (declare (not safe)) (##car _$tgt105611105625_)))
                     (_$tl105613105631_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105611105625_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105613105631_))
                    (let* ((_$tgt105614105635_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105613105631_)))
                           (_$hd105615105638_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105614105635_)))
                           (_$tl105616105641_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105614105635_))))
                      (let ((_hd105645_ _$hd105615105638_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105616105641_))
                            (let* ((_$tgt105617105647_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105616105641_)))
                                   (_$hd105618105650_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105617105647_)))
                                   (_$tl105619105653_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105617105647_))))
                              (let ((_expr105657_ _$hd105618105650_))
                                (if (let ((__tmp110584
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105619105653_))))
                                      (declare (not safe))
                                      (equal? __tmp110584 '()))
                                    (let* ((_$e105659_ _hd105645_)
                                           (_$E105661105702_
                                            (lambda ()
                                              (let ((_$E105662105687_
                                                     (lambda ()
                                                       (let* ((_$E105663105674_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e105659_))))
                      (_ids105677_ _hd105645_)
                      (_len105679_ (length _ids105677_))
                      (_tmp105681_
                       (let ((__tmp110552 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp110552))))
                 (let ((__tmp110553
                        (let ((__tmp110554
                               (let ((__tmp110571
                                      (let ((__tmp110572
                                             (let ((__tmp110573
                                                    (let ((__tmp110574
                                                           (let ((__tmp110575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr105657_))))
                     (declare (not safe))
                     (cons __tmp110575 '()))))
              (declare (not safe))
              (cons _tmp105681_ __tmp110574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp110573))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110572 _stx105606_)))
                                     (__tmp110555
                                      (let ((__tmp110567
                                             (let ((__tmp110568
                                                    (let ((__tmp110569
                                                           (let ((__tmp110570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len105679_ '()))))
                     (declare (not safe))
                     (cons _tmp105681_ __tmp110570))))
              (declare (not safe))
              (cons '__check-values __tmp110569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp110568
                                                _stx105606_)))
                                            (__tmp110556
                                             (let ((__tmp110557
                                                    (let ((__tmp110559
                                                           (lambda (_id105684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k105685_)
                     (if (let () (declare (not safe)) (__AST-e _id105684_))
                         (let ((__tmp110560
                                (let ((__tmp110561
                                       (let ((__tmp110566
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id105684_)))
                                             (__tmp110562
                                              (let ((__tmp110563
                                                     (let ((__tmp110564
                                                            (let ((__tmp110565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k105685_ '()))))
                      (declare (not safe))
                      (cons _tmp105681_ __tmp110565))))
               (declare (not safe))
               (cons '##vector-ref __tmp110564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110563 '()))))
                                         (declare (not safe))
                                         (cons __tmp110566 __tmp110562))))
                                  (declare (not safe))
                                  (cons 'define __tmp110561))))
                           (declare (not safe))
                           (__SRC__% __tmp110560 _stx105606_))
                         '#f)))
                  (__tmp110558
                   (let () (declare (not safe)) (iota _len105679_))))
              (declare (not safe))
              (filter-map2 __tmp110559 _ids105677_ __tmp110558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp110557))))
                                        (declare (not safe))
                                        (cons __tmp110567 __tmp110556))))
                                 (declare (not safe))
                                 (cons __tmp110571 __tmp110555))))
                          (declare (not safe))
                          (cons 'begin __tmp110554))))
                   (declare (not safe))
                   (__SRC__% __tmp110553 _stx105606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e105659_))
                                                    (let* ((_$tgt105664105690_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e105659_)))
                                                           (_$hd105665105693_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt105664105690_)))
                                                           (_$tl105666105696_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt105664105690_))))
                                                      (let ((_id105700_
                                                             _$hd105665105693_))
                                                        (if (let ((__tmp110581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl105666105696_))))
                      (declare (not safe))
                      (equal? __tmp110581 '()))
                    (let ((__tmp110576
                           (let ((__tmp110577
                                  (let ((__tmp110580
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id105700_)))
                                        (__tmp110578
                                         (let ((__tmp110579
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr105657_))))
                                           (declare (not safe))
                                           (cons __tmp110579 '()))))
                                    (declare (not safe))
                                    (cons __tmp110580 __tmp110578))))
                             (declare (not safe))
                             (cons 'define __tmp110577))))
                      (declare (not safe))
                      (__SRC__% __tmp110576 _stx105606_))
                    (let () (declare (not safe)) (_$E105662105687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105662105687_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e105659_))
                                          (let* ((_$tgt105667105705_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e105659_)))
                                                 (_$hd105668105708_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105667105705_)))
                                                 (_$tl105669105711_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105667105705_))))
                                            (if (let ((__tmp110583
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd105668105708_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110583 '#f))
                                                (if (let ((__tmp110582
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl105669105711_))))
                                                      (declare (not safe))
                                                      (equal? __tmp110582 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr105657_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105661105702_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105661105702_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105661105702_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105610105622_)))))
                            (let () (declare (not safe)) (_$E105610105622_)))))
                    (let () (declare (not safe)) (_$E105610105622_))))
              (let () (declare (not safe)) (_$E105610105622_))))))
    (define __compile-head-id
      (lambda (_e105604_)
        (let ((__tmp110585
               (if (let () (declare (not safe)) (__AST-e _e105604_))
                   _e105604_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp110585))))
    (define __compile-lambda-head
      (lambda (_hd105561_)
        (let _recur105563_ ((_rest105565_ _hd105561_))
          (let* ((_$e105567_ _rest105565_)
                 (_$E105569105587_
                  (lambda ()
                    (let ((_$E105570105584_
                           (lambda ()
                             (let* ((_$E105571105579_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e105567_))))
                                    (_tail105582_ _$e105567_))
                               (declare (not safe))
                               (__compile-head-id _tail105582_)))))
                      (if (let ((__tmp110586
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e105567_))))
                            (declare (not safe))
                            (equal? __tmp110586 '()))
                          '()
                          (let () (declare (not safe)) (_$E105570105584_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105567_))
                (let* ((_$tgt105572105590_
                        (let () (declare (not safe)) (__AST-e _$e105567_)))
                       (_$hd105573105593_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105572105590_)))
                       (_$tl105574105596_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105572105590_))))
                  (let* ((_hd105600_ _$hd105573105593_)
                         (_rest105602_ _$tl105574105596_))
                    (let ((__tmp110588
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd105600_)))
                          (__tmp110587
                           (let ()
                             (declare (not safe))
                             (_recur105563_ _rest105602_))))
                      (declare (not safe))
                      (cons __tmp110588 __tmp110587))))
                (let () (declare (not safe)) (_$E105569105587_)))))))
    (define __compile-lambda%
      (lambda (_stx105508_)
        (let* ((_$e105510_ _stx105508_)
               (_$E105512105524_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105510_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105510_))
              (let* ((_$tgt105513105527_
                      (let () (declare (not safe)) (__AST-e _$e105510_)))
                     (_$hd105514105530_
                      (let () (declare (not safe)) (##car _$tgt105513105527_)))
                     (_$tl105515105533_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105513105527_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105515105533_))
                    (let* ((_$tgt105516105537_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105515105533_)))
                           (_$hd105517105540_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105516105537_)))
                           (_$tl105518105543_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105516105537_))))
                      (let ((_hd105547_ _$hd105517105540_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105518105543_))
                            (let* ((_$tgt105519105549_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105518105543_)))
                                   (_$hd105520105552_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105519105549_)))
                                   (_$tl105521105555_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105519105549_))))
                              (let ((_body105559_ _$hd105520105552_))
                                (if (let ((__tmp110594
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105521105555_))))
                                      (declare (not safe))
                                      (equal? __tmp110594 '()))
                                    (let ((__tmp110589
                                           (let ((__tmp110590
                                                  (let ((__tmp110593
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd105547_)))
                                                        (__tmp110591
                                                         (let ((__tmp110592
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body105559_))))
                   (declare (not safe))
                   (cons __tmp110592 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110593
                                                          __tmp110591))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp110590))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110589 _stx105508_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105512105524_)))))
                            (let () (declare (not safe)) (_$E105512105524_)))))
                    (let () (declare (not safe)) (_$E105512105524_))))
              (let () (declare (not safe)) (_$E105512105524_))))))
    (define __compile-case-lambda%
      (lambda (_stx105300_)
        (letrec ((_variadic?105302_
                  (lambda (_hd105473_)
                    (let* ((_$e105475_ _hd105473_)
                           (_$E105477105493_
                            (lambda ()
                              (let ((_$E105478105490_
                                     (lambda ()
                                       (let ((_$E105479105487_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e105475_)))))
                                         '#t))))
                                (if (let ((__tmp110595
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e105475_))))
                                      (declare (not safe))
                                      (equal? __tmp110595 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E105478105490_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105475_))
                          (let* ((_$tgt105480105496_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105475_)))
                                 (_$hd105481105499_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105480105496_)))
                                 (_$tl105482105502_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105480105496_))))
                            (let ((_rest105506_ _$tl105482105502_))
                              (declare (not safe))
                              (_variadic?105302_ _rest105506_)))
                          (let () (declare (not safe)) (_$E105477105493_))))))
                 (_arity105303_
                  (lambda (_hd105438_)
                    (let _lp105440_ ((_rest105442_ _hd105438_) (_k105443_ '0))
                      (let* ((_$e105445_ _rest105442_)
                             (_$E105447105458_
                              (lambda ()
                                (let ((_$E105448105455_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e105445_)))))
                                  _k105443_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e105445_))
                            (let* ((_$tgt105449105461_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e105445_)))
                                   (_$hd105450105464_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105449105461_)))
                                   (_$tl105451105467_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105449105461_))))
                              (let* ((_rest105471_ _$tl105451105467_)
                                     (__tmp110596
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k105443_ '1))))
                                (declare (not safe))
                                (_lp105440_ _rest105471_ __tmp110596)))
                            (let ()
                              (declare (not safe))
                              (_$E105447105458_)))))))
                 (_generate105304_
                  (lambda (_rest105365_ _args105366_ _len105367_)
                    (let* ((_$e105369_ _rest105365_)
                           (_$E105371105382_
                            (lambda ()
                              (let* ((_$E105372105379_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e105369_))))
                                     (__tmp110597
                                      (let ((__tmp110598
                                             (let ((__tmp110599
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args105366_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp110599))))
                                        (declare (not safe))
                                        (cons 'error __tmp110598))))
                                (declare (not safe))
                                (__SRC__% __tmp110597 _stx105300_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105369_))
                          (let* ((_$tgt105373105385_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105369_)))
                                 (_$hd105374105388_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105373105385_)))
                                 (_$tl105375105391_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105373105385_))))
                            (let* ((_clause105395_ _$hd105374105388_)
                                   (_rest105397_ _$tl105375105391_)
                                   (_$e105399_ _clause105395_)
                                   (_$E105401105410_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e105399_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e105399_))
                                  (let* ((_$tgt105402105413_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e105399_)))
                                         (_$hd105403105416_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt105402105413_)))
                                         (_$tl105404105419_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt105402105413_))))
                                    (let ((_hd105423_ _$hd105403105416_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl105404105419_))
                                          (let* ((_$tgt105405105425_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105404105419_)))
                                                 (_$hd105406105428_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105405105425_)))
                                                 (_$tl105407105431_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105405105425_))))
                                            (if (let ((__tmp110614
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105407105431_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110614 '()))
                                                (let ((_clen105435_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity105303_
                                                          _hd105423_)))
                                                      (_cmp105436_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?105302_
                                                              _hd105423_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp110600
                                                         (let ((__tmp110601
                                                                (let ((__tmp110611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110612
                                      (let ((__tmp110613
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen105435_ '()))))
                                        (declare (not safe))
                                        (cons _len105367_ __tmp110613))))
                                 (declare (not safe))
                                 (cons _cmp105436_ __tmp110612)))
                              (__tmp110602
                               (let ((__tmp110605
                                      (let ((__tmp110606
                                             (let ((__tmp110607
                                                    (let ((__tmp110609
                                                           (let ((__tmp110610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause105395_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp110610)))
                  (__tmp110608
                   (let () (declare (not safe)) (cons _args105366_ '()))))
              (declare (not safe))
              (cons __tmp110609 __tmp110608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp110607))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110606 _stx105300_)))
                                     (__tmp110603
                                      (let ((__tmp110604
                                             (let ()
                                               (declare (not safe))
                                               (_generate105304_
                                                _rest105397_
                                                _args105366_
                                                _len105367_))))
                                        (declare (not safe))
                                        (cons __tmp110604 '()))))
                                 (declare (not safe))
                                 (cons __tmp110605 __tmp110603))))
                          (declare (not safe))
                          (cons __tmp110611 __tmp110602))))
                   (declare (not safe))
                   (cons 'if __tmp110601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp110600
                                                     _stx105300_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105401105410_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105401105410_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E105401105410_)))))
                          (let () (declare (not safe)) (_$E105371105382_)))))))
          (let* ((_$e105306_ _stx105300_)
                 (_$E105308105340_
                  (lambda ()
                    (let ((_$E105309105322_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105306_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105306_))
                          (let* ((_$tgt105310105325_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105306_)))
                                 (_$hd105311105328_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105310105325_)))
                                 (_$tl105312105331_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105310105325_))))
                            (let ((_clauses105335_ _$tl105312105331_))
                              (let ((_args105337_
                                     (let ((__tmp110615 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110615 _stx105300_)))
                                    (_len105338_
                                     (let ((__tmp110616 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110616 _stx105300_))))
                                (let ((__tmp110617
                                       (let ((__tmp110618
                                              (let ((__tmp110619
                                                     (let ((__tmp110620
                                                            (let ((__tmp110621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110622
                                  (let ((__tmp110625
                                         (let ((__tmp110626
                                                (let ((__tmp110627
                                                       (let ((__tmp110628
                                                              (let ((__tmp110629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp110630
                                    (let ()
                                      (declare (not safe))
                                      (cons _args105337_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp110630))))
                        (declare (not safe))
                        (__SRC__% __tmp110629 _stx105300_))))
                 (declare (not safe))
                 (cons __tmp110628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len105338_
                                                        __tmp110627))))
                                           (declare (not safe))
                                           (cons __tmp110626 '())))
                                        (__tmp110623
                                         (let ((__tmp110624
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate105304_
                                                   _clauses105335_
                                                   _args105337_
                                                   _len105338_))))
                                           (declare (not safe))
                                           (cons __tmp110624 '()))))
                                    (declare (not safe))
                                    (cons __tmp110625 __tmp110623))))
                             (declare (not safe))
                             (cons 'let __tmp110622))))
                      (declare (not safe))
                      (__SRC__% __tmp110621 _stx105300_))))
               (declare (not safe))
               (cons __tmp110620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args105337_
                                                      __tmp110619))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp110618))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110617 _stx105300_)))))
                          (let () (declare (not safe)) (_$E105309105322_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105306_))
                (let* ((_$tgt105313105343_
                        (let () (declare (not safe)) (__AST-e _$e105306_)))
                       (_$hd105314105346_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105313105343_)))
                       (_$tl105315105349_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105313105343_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105315105349_))
                      (let* ((_$tgt105316105353_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105315105349_)))
                             (_$hd105317105356_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105316105353_)))
                             (_$tl105318105359_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105316105353_))))
                        (let ((_clause105363_ _$hd105317105356_))
                          (if (let ((__tmp110632
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl105318105359_))))
                                (declare (not safe))
                                (equal? __tmp110632 '()))
                              (let ((__tmp110631
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause105363_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp110631))
                              (let ()
                                (declare (not safe))
                                (_$E105308105340_)))))
                      (let () (declare (not safe)) (_$E105308105340_))))
                (let () (declare (not safe)) (_$E105308105340_)))))))
    (define __compile-let-form
      (lambda (_stx105069_ _compile-simple105070_ _compile-values105071_)
        (letrec ((_simple-bind?105073_
                  (lambda (_hd105258_)
                    (let* ((_hd105259105269_ _hd105258_)
                           (_else105262105277_ (lambda () '#f)))
                      (let ((_K105265105290_ (lambda (_id105288_) '#t))
                            (_K105264105282_ (lambda () '#t)))
                        (let ((_try-match105261105285_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd105259105269_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K105264105282_))
                                     (let ()
                                       (declare (not safe))
                                       (_else105262105277_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd105259105269_))
                              (let ((_tl105267105295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd105259105269_)))
                                    (_hd105266105293_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd105259105269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl105267105295_))
                                    (let ((_id105298_ _hd105266105293_))
                                      (declare (not safe))
                                      (_K105265105290_ _id105298_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match105261105285_))))
                              (let ()
                                (declare (not safe))
                                (_try-match105261105285_))))))))
                 (_car-e105074_
                  (lambda (_hd105256_)
                    (if (let () (declare (not safe)) (pair? _hd105256_))
                        (car _hd105256_)
                        _hd105256_))))
          (let* ((_$e105076_ _stx105069_)
                 (_$E105078105221_
                  (lambda ()
                    (let ((_$E105079105101_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105076_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105076_))
                          (let* ((_$tgt105080105104_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105076_)))
                                 (_$hd105081105107_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105080105104_)))
                                 (_$tl105082105110_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105080105104_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105082105110_))
                                (let* ((_$tgt105083105114_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105082105110_)))
                                       (_$hd105084105117_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105083105114_)))
                                       (_$tl105085105120_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105083105114_))))
                                  (let ((_hd105124_ _$hd105084105117_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl105085105120_))
                                        (let* ((_$tgt105086105126_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl105085105120_)))
                                               (_$hd105087105129_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt105086105126_)))
                                               (_$tl105088105132_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt105086105126_))))
                                          (let ((_body105136_
                                                 _$hd105087105129_))
                                            (if (let ((__tmp110635
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105088105132_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110635 '()))
                                                (let* ((_hd-ids105176_
                                                        (map (lambda (_bind105138_)
                                                               (let* ((_$e105140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind105138_)
                              (_$E105142105151_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105140_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105140_))
                             (let* ((_$tgt105143105154_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105140_)))
                                    (_$hd105144105157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105143105154_)))
                                    (_$tl105145105160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105143105154_))))
                               (let ((_ids105164_ _$hd105144105157_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl105145105160_))
                                     (let* ((_$tgt105146105166_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl105145105160_)))
                                            (_$hd105147105169_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt105146105166_)))
                                            (_$tl105148105172_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt105146105166_))))
                                       (if (let ((__tmp110633
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105148105172_))))
                                             (declare (not safe))
                                             (equal? __tmp110633 '()))
                                           _ids105164_
                                           (let ()
                                             (declare (not safe))
                                             (_$E105142105151_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E105142105151_)))))
                             (let ()
                               (declare (not safe))
                               (_$E105142105151_)))))
                     _hd105124_))
               (_exprs105216_
                (map (lambda (_bind105178_)
                       (let* ((_$e105180_ _bind105178_)
                              (_$E105182105191_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105180_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105180_))
                             (let* ((_$tgt105183105194_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105180_)))
                                    (_$hd105184105197_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105183105194_)))
                                    (_$tl105185105200_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105183105194_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl105185105200_))
                                   (let* ((_$tgt105186105204_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105185105200_)))
                                          (_$hd105187105207_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt105186105204_)))
                                          (_$tl105188105210_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt105186105204_))))
                                     (let ((_expr105214_ _$hd105187105207_))
                                       (if (let ((__tmp110634
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105188105210_))))
                                             (declare (not safe))
                                             (equal? __tmp110634 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr105214_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E105182105191_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E105182105191_))))
                             (let ()
                               (declare (not safe))
                               (_$E105182105191_)))))
                     _hd105124_))
               (_body105218_
                (let () (declare (not safe)) (__compile _body105136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?105073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids105176_))
              (_compile-simple105070_
               (map _car-e105074_ _hd-ids105176_)
               _exprs105216_
               _body105218_)
              (_compile-values105071_
               _hd-ids105176_
               _exprs105216_
               _body105218_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105079105101_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105079105101_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105079105101_))))
                          (let () (declare (not safe)) (_$E105079105101_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105076_))
                (let* ((_$tgt105089105224_
                        (let () (declare (not safe)) (__AST-e _$e105076_)))
                       (_$hd105090105227_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105089105224_)))
                       (_$tl105091105230_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105089105224_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105091105230_))
                      (let* ((_$tgt105092105234_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105091105230_)))
                             (_$hd105093105237_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105092105234_)))
                             (_$tl105094105240_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105092105234_))))
                        (if (let ((__tmp110637
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd105093105237_))))
                              (declare (not safe))
                              (equal? __tmp110637 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105094105240_))
                                (let* ((_$tgt105095105244_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105094105240_)))
                                       (_$hd105096105247_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105095105244_)))
                                       (_$tl105097105250_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105095105244_))))
                                  (let ((_body105254_ _$hd105096105247_))
                                    (if (let ((__tmp110636
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl105097105250_))))
                                          (declare (not safe))
                                          (equal? __tmp110636 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body105254_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105078105221_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105078105221_)))
                            (let () (declare (not safe)) (_$E105078105221_))))
                      (let () (declare (not safe)) (_$E105078105221_))))
                (let () (declare (not safe)) (_$E105078105221_)))))))
    (define __compile-let-values%
      (lambda (_stx104884_)
        (letrec ((_compile-simple104886_
                  (lambda (_hd-ids105065_ _exprs105066_ _body105067_)
                    (let ((__tmp110638
                           (let ((__tmp110639
                                  (let ((__tmp110641
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids105065_)
                                              _exprs105066_))
                                        (__tmp110640
                                         (let ()
                                           (declare (not safe))
                                           (cons _body105067_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110641 __tmp110640))))
                             (declare (not safe))
                             (cons 'let __tmp110639))))
                      (declare (not safe))
                      (__SRC__% __tmp110638 _stx104884_))))
                 (_compile-values104887_
                  (lambda (_hd-ids104983_ _exprs104984_ _body104985_)
                    (let _lp104987_ ((_rest104989_ _hd-ids104983_)
                                     (_exprs104990_ _exprs104984_)
                                     (_bind104991_ '())
                                     (_post104992_ '()))
                      (let* ((_rest104993105007_ _rest104989_)
                             (_else104996105015_
                              (lambda ()
                                (let ((__tmp110642
                                       (let ((__tmp110643
                                              (let ((__tmp110646
                                                     (reverse _bind104991_))
                                                    (__tmp110644
                                                     (let ((__tmp110645
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post104888_
                                                               _post104992_
                                                               _body104985_))))
                                                       (declare (not safe))
                                                       (cons __tmp110645
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp110646
                                                      __tmp110644))))
                                         (declare (not safe))
                                         (cons 'let __tmp110643))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110642 _stx104884_)))))
                        (let ((_K105001105048_
                               (lambda (_rest105045_ _id105046_)
                                 (let ((__tmp110652 (cdr _exprs104990_))
                                       (__tmp110647
                                        (let ((__tmp110648
                                               (let ((__tmp110651
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id105046_)))
                                                     (__tmp110649
                                                      (let ((__tmp110650
                                                             (car _exprs104990_)))
                                                        (declare (not safe))
                                                        (cons __tmp110650
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110651
                                                       __tmp110649))))
                                          (declare (not safe))
                                          (cons __tmp110648 _bind104991_))))
                                   (declare (not safe))
                                   (_lp104987_
                                    _rest105045_
                                    __tmp110652
                                    __tmp110647
                                    _post104992_))))
                              (_K104998105030_
                               (lambda (_rest105019_ _hd105020_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd105020_))
                                     (let ((__tmp110673 (cdr _exprs104990_))
                                           (__tmp110666
                                            (let ((__tmp110667
                                                   (let ((__tmp110672
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd105020_)))
                                                         (__tmp110668
                                                          (let ((__tmp110669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110670
                                (let ((__tmp110671 (car _exprs104990_)))
                                  (declare (not safe))
                                  (cons __tmp110671 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110670))))
                    (declare (not safe))
                    (cons __tmp110669 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110672
                                                           __tmp110668))))
                                              (declare (not safe))
                                              (cons __tmp110667
                                                    _bind104991_))))
                                       (declare (not safe))
                                       (_lp104987_
                                        _rest105019_
                                        __tmp110673
                                        __tmp110666
                                        _post104992_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd105020_))
                                         (let* ((_len105022_
                                                 (length _hd105020_))
                                                (_tmp105024_
                                                 (let ((__tmp110653 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110653))))
                                           (let ((__tmp110665
                                                  (cdr _exprs104990_))
                                                 (__tmp110661
                                                  (let ((__tmp110662
                                                         (let ((__tmp110663
                                                                (let ((__tmp110664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104990_)))
                          (declare (not safe))
                          (cons __tmp110664 '()))))
                   (declare (not safe))
                   (cons _tmp105024_ __tmp110663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110662
                                                          _bind104991_)))
                                                 (__tmp110654
                                                  (let ((__tmp110655
                                                         (let ((__tmp110656
                                                                (let ((__tmp110657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110659
                                      (lambda (_id105027_ _k105028_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id105027_))
                                            (let ((__tmp110660
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id105027_))))
                                              (declare (not safe))
                                              (cons __tmp110660 _k105028_))
                                            '#f)))
                                     (__tmp110658
                                      (let ()
                                        (declare (not safe))
                                        (iota _len105022_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110659
                                  _hd105020_
                                  __tmp110658))))
                          (declare (not safe))
                          (cons _len105022_ __tmp110657))))
                   (declare (not safe))
                   (cons _tmp105024_ __tmp110656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110655
                                                          _post104992_))))
                                             (declare (not safe))
                                             (_lp104987_
                                              _rest105019_
                                              __tmp110665
                                              __tmp110661
                                              __tmp110654)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104884_
                                            _hd105020_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104993105007_))
                              (let ((_tl105003105053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104993105007_)))
                                    (_hd105002105051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104993105007_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd105002105051_))
                                    (let ((_tl105005105058_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd105002105051_)))
                                          (_hd105004105056_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd105002105051_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105005105058_))
                                          (let ((_id105061_ _hd105004105056_)
                                                (_rest105063_
                                                 _tl105003105053_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105001105048_
                                               _rest105063_
                                               _id105061_)))
                                          (let ((_hd105038_ _hd105002105051_)
                                                (_rest105040_
                                                 _tl105003105053_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104998105030_
                                               _rest105040_
                                               _hd105038_)))))
                                    (let ((_hd105038_ _hd105002105051_)
                                          (_rest105040_ _tl105003105053_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104998105030_
                                         _rest105040_
                                         _hd105038_)))))
                              (let ()
                                (declare (not safe))
                                (_else104996105015_))))))))
                 (_compile-post104888_
                  (lambda (_post104890_ _body104891_)
                    (let _lp104893_ ((_rest104895_ _post104890_)
                                     (_check104896_ '())
                                     (_bind104897_ '()))
                      (let* ((_rest104898104910_ _rest104895_)
                             (_else104900104918_
                              (lambda ()
                                (let ((__tmp110674
                                       (let ((__tmp110675
                                              (let ((__tmp110676
                                                     (let ((__tmp110677
                                                            (let ((__tmp110678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110679
                                  (let ((__tmp110680
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104891_ '()))))
                                    (declare (not safe))
                                    (cons _bind104897_ __tmp110680))))
                             (declare (not safe))
                             (cons 'let __tmp110679))))
                      (declare (not safe))
                      (__SRC__% __tmp110678 _stx104884_))))
               (declare (not safe))
               (cons __tmp110677 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110676
                                                        _check104896_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110675))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110674 _stx104884_))))
                             (_K104902104957_
                              (lambda (_rest104921_
                                       _init104922_
                                       _len104923_
                                       _tmp104924_)
                                (let ((__tmp110688
                                       (let ((__tmp110689
                                              (let ((__tmp110690
                                                     (let ((__tmp110691
                                                            (let ((__tmp110692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104923_ '()))))
                      (declare (not safe))
                      (cons _tmp104924_ __tmp110692))))
               (declare (not safe))
               (cons '__check-values __tmp110691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110690
                                                 _stx104884_))))
                                         (declare (not safe))
                                         (cons __tmp110689 _check104896_)))
                                      (__tmp110681
                                       (let ((__tmp110682
                                              (lambda (_hd104926_ _r104927_)
                                                (let* ((_hd104928104935_
                                                        _hd104926_)
                                                       (_E104930104939_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104928104935_)))
               (_K104931104945_
                (lambda (_k104942_ _id104943_)
                  (let ((__tmp110683
                         (let ((__tmp110684
                                (let ((__tmp110685
                                       (let ((__tmp110686
                                              (let ((__tmp110687
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k104942_ '()))))
                                                (declare (not safe))
                                                (cons _tmp104924_
                                                      __tmp110687))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp110686))))
                                  (declare (not safe))
                                  (cons __tmp110685 '()))))
                           (declare (not safe))
                           (cons _id104943_ __tmp110684))))
                    (declare (not safe))
                    (cons __tmp110683 _r104927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104928104935_))
                                                      (let ((_hd104932104948_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104928104935_)))
                    (_tl104933104950_
                     (let () (declare (not safe)) (##cdr _hd104928104935_))))
                (let* ((_id104953_ _hd104932104948_)
                       (_k104955_ _tl104933104950_))
                  (declare (not safe))
                  (_K104931104945_ _k104955_ _id104953_)))
              (let () (declare (not safe)) (_E104930104939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110682
                                                 _bind104897_
                                                 _init104922_))))
                                  (declare (not safe))
                                  (_lp104893_
                                   _rest104921_
                                   __tmp110688
                                   __tmp110681)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104898104910_))
                            (let ((_hd104903104960_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104898104910_)))
                                  (_tl104904104962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104898104910_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104903104960_))
                                  (let ((_hd104905104965_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104903104960_)))
                                        (_tl104906104967_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104903104960_))))
                                    (let ((_tmp104970_ _hd104905104965_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104906104967_))
                                          (let ((_hd104907104972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104906104967_)))
                                                (_tl104908104974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104906104967_))))
                                            (let* ((_len104977_
                                                    _hd104907104972_)
                                                   (_init104979_
                                                    _tl104908104974_)
                                                   (_rest104981_
                                                    _tl104904104962_))
                                              (declare (not safe))
                                              (_K104902104957_
                                               _rest104981_
                                               _init104979_
                                               _len104977_
                                               _tmp104970_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104900104918_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104900104918_))))
                            (let ()
                              (declare (not safe))
                              (_else104900104918_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104884_
             _compile-simple104886_
             _compile-values104887_)))))
    (define __compile-letrec-values%
      (lambda (_stx104684_)
        (letrec ((_compile-simple104686_
                  (lambda (_hd-ids104880_ _exprs104881_ _body104882_)
                    (let ((__tmp110693
                           (let ((__tmp110694
                                  (let ((__tmp110696
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104880_)
                                              _exprs104881_))
                                        (__tmp110695
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104882_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110696 __tmp110695))))
                             (declare (not safe))
                             (cons 'letrec __tmp110694))))
                      (declare (not safe))
                      (__SRC__% __tmp110693 _stx104684_))))
                 (_compile-values104687_
                  (lambda (_hd-ids104794_ _exprs104795_ _body104796_)
                    (let _lp104798_ ((_rest104800_ _hd-ids104794_)
                                     (_exprs104801_ _exprs104795_)
                                     (_pre104802_ '())
                                     (_bind104803_ '())
                                     (_post104804_ '()))
                      (let* ((_rest104805104819_ _rest104800_)
                             (_else104808104827_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner104688_
                                   _pre104802_
                                   _bind104803_
                                   _post104804_
                                   _body104796_)))))
                        (let ((_K104813104863_
                               (lambda (_rest104860_ _id104861_)
                                 (let ((__tmp110702 (cdr _exprs104801_))
                                       (__tmp110697
                                        (let ((__tmp110698
                                               (let ((__tmp110701
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id104861_)))
                                                     (__tmp110699
                                                      (let ((__tmp110700
                                                             (car _exprs104801_)))
                                                        (declare (not safe))
                                                        (cons __tmp110700
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110701
                                                       __tmp110699))))
                                          (declare (not safe))
                                          (cons __tmp110698 _bind104803_))))
                                   (declare (not safe))
                                   (_lp104798_
                                    _rest104860_
                                    __tmp110702
                                    _pre104802_
                                    __tmp110697
                                    _post104804_))))
                              (_K104810104845_
                               (lambda (_rest104831_ _hd104832_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104832_))
                                     (let ((__tmp110730 (cdr _exprs104801_))
                                           (__tmp110723
                                            (let ((__tmp110724
                                                   (let ((__tmp110729
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd104832_)))
                                                         (__tmp110725
                                                          (let ((__tmp110726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110727
                                (let ((__tmp110728 (car _exprs104801_)))
                                  (declare (not safe))
                                  (cons __tmp110728 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110727))))
                    (declare (not safe))
                    (cons __tmp110726 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110729
                                                           __tmp110725))))
                                              (declare (not safe))
                                              (cons __tmp110724
                                                    _bind104803_))))
                                       (declare (not safe))
                                       (_lp104798_
                                        _rest104831_
                                        __tmp110730
                                        _pre104802_
                                        __tmp110723
                                        _post104804_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd104832_))
                                         (let* ((_len104834_
                                                 (length _hd104832_))
                                                (_tmp104836_
                                                 (let ((__tmp110703 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110703))))
                                           (let ((__tmp110722
                                                  (cdr _exprs104801_))
                                                 (__tmp110715
                                                  (let ((__tmp110716
                                                         (lambda (_id104839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r104840_)
                   (if (let () (declare (not safe)) (__AST-e _id104839_))
                       (let ((__tmp110717
                              (let ((__tmp110721
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id104839_)))
                                    (__tmp110718
                                     (let ((__tmp110719
                                            (let ((__tmp110720
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp110720))))
                                       (declare (not safe))
                                       (cons __tmp110719 '()))))
                                (declare (not safe))
                                (cons __tmp110721 __tmp110718))))
                         (declare (not safe))
                         (cons __tmp110717 _r104840_))
                       _r104840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp110716
                                                            _pre104802_
                                                            _hd104832_)))
                                                 (__tmp110711
                                                  (let ((__tmp110712
                                                         (let ((__tmp110713
                                                                (let ((__tmp110714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104801_)))
                          (declare (not safe))
                          (cons __tmp110714 '()))))
                   (declare (not safe))
                   (cons _tmp104836_ __tmp110713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110712
                                                          _bind104803_)))
                                                 (__tmp110704
                                                  (let ((__tmp110705
                                                         (let ((__tmp110706
                                                                (let ((__tmp110707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110709
                                      (lambda (_id104842_ _k104843_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id104842_))
                                            (let ((__tmp110710
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id104842_))))
                                              (declare (not safe))
                                              (cons __tmp110710 _k104843_))
                                            '#f)))
                                     (__tmp110708
                                      (let ()
                                        (declare (not safe))
                                        (iota _len104834_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110709
                                  _hd104832_
                                  __tmp110708))))
                          (declare (not safe))
                          (cons _len104834_ __tmp110707))))
                   (declare (not safe))
                   (cons _tmp104836_ __tmp110706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110705
                                                          _post104804_))))
                                             (declare (not safe))
                                             (_lp104798_
                                              _rest104831_
                                              __tmp110722
                                              __tmp110715
                                              __tmp110711
                                              __tmp110704)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104684_
                                            _hd104832_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104805104819_))
                              (let ((_tl104815104868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104805104819_)))
                                    (_hd104814104866_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104805104819_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104814104866_))
                                    (let ((_tl104817104873_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104814104866_)))
                                          (_hd104816104871_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104814104866_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104817104873_))
                                          (let ((_id104876_ _hd104816104871_)
                                                (_rest104878_
                                                 _tl104815104868_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104813104863_
                                               _rest104878_
                                               _id104876_)))
                                          (let ((_hd104853_ _hd104814104866_)
                                                (_rest104855_
                                                 _tl104815104868_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104810104845_
                                               _rest104855_
                                               _hd104853_)))))
                                    (let ((_hd104853_ _hd104814104866_)
                                          (_rest104855_ _tl104815104868_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104810104845_
                                         _rest104855_
                                         _hd104853_)))))
                              (let ()
                                (declare (not safe))
                                (_else104808104827_))))))))
                 (_compile-inner104688_
                  (lambda (_pre104789_ _bind104790_ _post104791_ _body104792_)
                    (if (let () (declare (not safe)) (null? _pre104789_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind104689_
                           _bind104790_
                           _post104791_
                           _body104792_))
                        (let ((__tmp110731
                               (let ((__tmp110732
                                      (let ((__tmp110735 (reverse _pre104789_))
                                            (__tmp110733
                                             (let ((__tmp110734
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind104689_
                                                       _bind104790_
                                                       _post104791_
                                                       _body104792_))))
                                               (declare (not safe))
                                               (cons __tmp110734 '()))))
                                        (declare (not safe))
                                        (cons __tmp110735 __tmp110733))))
                                 (declare (not safe))
                                 (cons 'let __tmp110732))))
                          (declare (not safe))
                          (__SRC__% __tmp110731 _stx104684_)))))
                 (_compile-bind104689_
                  (lambda (_bind104785_ _post104786_ _body104787_)
                    (let ((__tmp110736
                           (let ((__tmp110737
                                  (let ((__tmp110740 (reverse _bind104785_))
                                        (__tmp110738
                                         (let ((__tmp110739
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104690_
                                                   _post104786_
                                                   _body104787_))))
                                           (declare (not safe))
                                           (cons __tmp110739 '()))))
                                    (declare (not safe))
                                    (cons __tmp110740 __tmp110738))))
                             (declare (not safe))
                             (cons 'letrec __tmp110737))))
                      (declare (not safe))
                      (__SRC__% __tmp110736 _stx104684_))))
                 (_compile-post104690_
                  (lambda (_post104692_ _body104693_)
                    (let _lp104695_ ((_rest104697_ _post104692_)
                                     (_check104698_ '())
                                     (_bind104699_ '()))
                      (let* ((_rest104700104712_ _rest104697_)
                             (_else104702104720_
                              (lambda ()
                                (let ((__tmp110741
                                       (let ((__tmp110742
                                              (let ((__tmp110743
                                                     (let ((__tmp110744
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body104693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp110744 _bind104699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110743
                                                        _check104698_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110742))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110741 _stx104684_))))
                             (_K104704104759_
                              (lambda (_rest104723_
                                       _init104724_
                                       _len104725_
                                       _tmp104726_)
                                (let ((__tmp110753
                                       (let ((__tmp110754
                                              (let ((__tmp110755
                                                     (let ((__tmp110756
                                                            (let ((__tmp110757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104725_ '()))))
                      (declare (not safe))
                      (cons _tmp104726_ __tmp110757))))
               (declare (not safe))
               (cons '__check-values __tmp110756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110755
                                                 _stx104684_))))
                                         (declare (not safe))
                                         (cons __tmp110754 _check104698_)))
                                      (__tmp110745
                                       (let ((__tmp110746
                                              (lambda (_hd104728_ _r104729_)
                                                (let* ((_hd104730104737_
                                                        _hd104728_)
                                                       (_E104732104741_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104730104737_)))
               (_K104733104747_
                (lambda (_k104744_ _id104745_)
                  (let ((__tmp110747
                         (let ((__tmp110748
                                (let ((__tmp110749
                                       (let ((__tmp110750
                                              (let ((__tmp110751
                                                     (let ((__tmp110752
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k104744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp104726_ __tmp110752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp110751))))
                                         (declare (not safe))
                                         (cons __tmp110750 '()))))
                                  (declare (not safe))
                                  (cons _id104745_ __tmp110749))))
                           (declare (not safe))
                           (cons 'set! __tmp110748))))
                    (declare (not safe))
                    (cons __tmp110747 _r104729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104730104737_))
                                                      (let ((_hd104734104750_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104730104737_)))
                    (_tl104735104752_
                     (let () (declare (not safe)) (##cdr _hd104730104737_))))
                (let* ((_id104755_ _hd104734104750_)
                       (_k104757_ _tl104735104752_))
                  (declare (not safe))
                  (_K104733104747_ _k104757_ _id104755_)))
              (let () (declare (not safe)) (_E104732104741_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110746
                                                 _bind104699_
                                                 _init104724_))))
                                  (declare (not safe))
                                  (_lp104695_
                                   _rest104723_
                                   __tmp110753
                                   __tmp110745)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104700104712_))
                            (let ((_hd104705104762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104700104712_)))
                                  (_tl104706104764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104700104712_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104705104762_))
                                  (let ((_hd104707104767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104705104762_)))
                                        (_tl104708104769_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104705104762_))))
                                    (let ((_tmp104772_ _hd104707104767_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104708104769_))
                                          (let ((_hd104709104774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104708104769_)))
                                                (_tl104710104776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104708104769_))))
                                            (let* ((_len104779_
                                                    _hd104709104774_)
                                                   (_init104781_
                                                    _tl104710104776_)
                                                   (_rest104783_
                                                    _tl104706104764_))
                                              (declare (not safe))
                                              (_K104704104759_
                                               _rest104783_
                                               _init104781_
                                               _len104779_
                                               _tmp104772_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104702104720_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104702104720_))))
                            (let ()
                              (declare (not safe))
                              (_else104702104720_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104684_
             _compile-simple104686_
             _compile-values104687_)))))
    (define __compile-letrec*-values%
      (lambda (_stx104439_)
        (letrec ((_compile-simple104441_
                  (lambda (_hd-ids104680_ _exprs104681_ _body104682_)
                    (let ((__tmp110758
                           (let ((__tmp110759
                                  (let ((__tmp110761
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104680_)
                                              _exprs104681_))
                                        (__tmp110760
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104682_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110761 __tmp110760))))
                             (declare (not safe))
                             (cons 'letrec* __tmp110759))))
                      (declare (not safe))
                      (__SRC__% __tmp110758 _stx104439_))))
                 (_compile-values104442_
                  (lambda (_hd-ids104591_ _exprs104592_ _body104593_)
                    (let _lp104595_ ((_rest104597_ _hd-ids104591_)
                                     (_exprs104598_ _exprs104592_)
                                     (_bind104599_ '())
                                     (_post104600_ '()))
                      (let* ((_rest104601104615_ _rest104597_)
                             (_else104604104623_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind104443_
                                   _bind104599_
                                   _post104600_
                                   _body104593_)))))
                        (let ((_K104609104663_
                               (lambda (_rest104658_ _hd104659_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104659_))
                                     (let ((_id104661_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104659_))))
                                       (let ((__tmp110776 (cdr _exprs104598_))
                                             (__tmp110771
                                              (let ((__tmp110772
                                                     (let ((__tmp110773
                                                            (let ((__tmp110774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110775
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110775))))
                      (declare (not safe))
                      (cons __tmp110774 '()))))
               (declare (not safe))
               (cons _id104661_ __tmp110773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110772
                                                      _bind104599_)))
                                             (__tmp110767
                                              (let ((__tmp110768
                                                     (let ((__tmp110769
                                                            (let ((__tmp110770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs104598_)))
                      (declare (not safe))
                      (cons __tmp110770 '()))))
               (declare (not safe))
               (cons _id104661_ __tmp110769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110768
                                                      _post104600_))))
                                         (declare (not safe))
                                         (_lp104595_
                                          _rest104658_
                                          __tmp110776
                                          __tmp110771
                                          __tmp110767)))
                                     (let ((__tmp110766 (cdr _exprs104598_))
                                           (__tmp110762
                                            (let ((__tmp110763
                                                   (let ((__tmp110764
                                                          (let ((__tmp110765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs104598_)))
                    (declare (not safe))
                    (cons __tmp110765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp110764))))
                                              (declare (not safe))
                                              (cons __tmp110763
                                                    _post104600_))))
                                       (declare (not safe))
                                       (_lp104595_
                                        _rest104658_
                                        __tmp110766
                                        _bind104599_
                                        __tmp110762)))))
                              (_K104606104643_
                               (lambda (_rest104627_ _hd104628_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104628_))
                                     (let ((_id104630_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104628_))))
                                       (let ((__tmp110812 (cdr _exprs104598_))
                                             (__tmp110807
                                              (let ((__tmp110808
                                                     (let ((__tmp110809
                                                            (let ((__tmp110810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110811
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110811))))
                      (declare (not safe))
                      (cons __tmp110810 '()))))
               (declare (not safe))
               (cons _id104630_ __tmp110809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110808
                                                      _bind104599_)))
                                             (__tmp110801
                                              (let ((__tmp110802
                                                     (let ((__tmp110803
                                                            (let ((__tmp110804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110805
                                  (let ((__tmp110806 (car _exprs104598_)))
                                    (declare (not safe))
                                    (cons __tmp110806 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp110805))))
                      (declare (not safe))
                      (cons __tmp110804 '()))))
               (declare (not safe))
               (cons _id104630_ __tmp110803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110802
                                                      _post104600_))))
                                         (declare (not safe))
                                         (_lp104595_
                                          _rest104627_
                                          __tmp110812
                                          __tmp110807
                                          __tmp110801)))
                                     (if (let ((__tmp110800
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd104628_))))
                                           (declare (not safe))
                                           (not __tmp110800))
                                         (let ((__tmp110799
                                                (cdr _exprs104598_))
                                               (__tmp110795
                                                (let ((__tmp110796
                                                       (let ((__tmp110797
                                                              (let ((__tmp110798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs104598_)))
                        (declare (not safe))
                        (cons __tmp110798 '()))))
                 (declare (not safe))
                 (cons '#f __tmp110797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp110796
                                                        _post104600_))))
                                           (declare (not safe))
                                           (_lp104595_
                                            _rest104627_
                                            __tmp110799
                                            _bind104599_
                                            __tmp110795))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd104628_))
                                             (let* ((_len104632_
                                                     (length _hd104628_))
                                                    (_tmp104634_
                                                     (let ((__tmp110777
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp110777))))
                                               (let ((__tmp110794
                                                      (cdr _exprs104598_))
                                                     (__tmp110787
                                                      (let ((__tmp110788
                                                             (lambda (_id104637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r104638_)
                       (if (let () (declare (not safe)) (__AST-e _id104637_))
                           (let ((__tmp110789
                                  (let ((__tmp110793
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id104637_)))
                                        (__tmp110790
                                         (let ((__tmp110791
                                                (let ((__tmp110792
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp110792))))
                                           (declare (not safe))
                                           (cons __tmp110791 '()))))
                                    (declare (not safe))
                                    (cons __tmp110793 __tmp110790))))
                             (declare (not safe))
                             (cons __tmp110789 _r104638_))
                           _r104638_))))
                (declare (not safe))
                (foldl1 __tmp110788 _bind104599_ _hd104628_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp110778
                                                      (let ((__tmp110779
                                                             (let ((__tmp110780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110786 (car _exprs104598_))
                                  (__tmp110781
                                   (let ((__tmp110782
                                          (let ((__tmp110784
                                                 (lambda (_id104640_ _k104641_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id104640_))
                                                       (let ((__tmp110785
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id104640_))))
                 (declare (not safe))
                 (cons __tmp110785 _k104641_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp110783
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len104632_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp110784
                                             _hd104628_
                                             __tmp110783))))
                                     (declare (not safe))
                                     (cons _len104632_ __tmp110782))))
                              (declare (not safe))
                              (cons __tmp110786 __tmp110781))))
                       (declare (not safe))
                       (cons _tmp104634_ __tmp110780))))
                (declare (not safe))
                (cons __tmp110779 _post104600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp104595_
                                                  _rest104627_
                                                  __tmp110794
                                                  __tmp110787
                                                  __tmp110778)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx104439_
                                                _hd104628_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104601104615_))
                              (let ((_tl104611104668_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104601104615_)))
                                    (_hd104610104666_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104601104615_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104610104666_))
                                    (let ((_tl104613104673_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104610104666_)))
                                          (_hd104612104671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104610104666_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104613104673_))
                                          (let ((_hd104676_ _hd104612104671_)
                                                (_rest104678_
                                                 _tl104611104668_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104609104663_
                                               _rest104678_
                                               _hd104676_)))
                                          (let ((_hd104651_ _hd104610104666_)
                                                (_rest104653_
                                                 _tl104611104668_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104606104643_
                                               _rest104653_
                                               _hd104651_)))))
                                    (let ((_hd104651_ _hd104610104666_)
                                          (_rest104653_ _tl104611104668_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104606104643_
                                         _rest104653_
                                         _hd104651_)))))
                              (let ()
                                (declare (not safe))
                                (_else104604104623_))))))))
                 (_compile-bind104443_
                  (lambda (_bind104587_ _post104588_ _body104589_)
                    (let ((__tmp110813
                           (let ((__tmp110814
                                  (let ((__tmp110817 (reverse _bind104587_))
                                        (__tmp110815
                                         (let ((__tmp110816
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104444_
                                                   _post104588_
                                                   _body104589_))))
                                           (declare (not safe))
                                           (cons __tmp110816 '()))))
                                    (declare (not safe))
                                    (cons __tmp110817 __tmp110815))))
                             (declare (not safe))
                             (cons 'let __tmp110814))))
                      (declare (not safe))
                      (__SRC__% __tmp110813 _stx104439_))))
                 (_compile-post104444_
                  (lambda (_post104446_ _body104447_)
                    (let ((__tmp110818
                           (let ((__tmp110819
                                  (let ((__tmp110820
                                         (let ((__tmp110822
                                                (lambda (_hd104449_ _r104450_)
                                                  (let* ((_hd104451104474_
                                                          _hd104449_)
                                                         (_E104455104478_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd104451104474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K104468104572_
                                                           (lambda (_expr104570_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr104570_ _r104450_))))
                  (_K104463104550_
                   (lambda (_expr104547_ _id104548_)
                     (let ((__tmp110823
                            (let ((__tmp110824
                                   (let ((__tmp110825
                                          (let ((__tmp110826
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr104547_ '()))))
                                            (declare (not safe))
                                            (cons _id104548_ __tmp110826))))
                                     (declare (not safe))
                                     (cons 'set! __tmp110825))))
                              (declare (not safe))
                              (__SRC__% __tmp110824 _stx104439_))))
                       (declare (not safe))
                       (cons __tmp110823 _r104450_))))
                  (_K104456104517_
                   (lambda (_init104482_ _len104483_ _expr104484_ _tmp104485_)
                     (let ((__tmp110827
                            (let ((__tmp110828
                                   (let ((__tmp110829
                                          (let ((__tmp110843
                                                 (let ((__tmp110844
                                                        (let ((__tmp110845
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr104484_ '()))))
                  (declare (not safe))
                  (cons _tmp104485_ __tmp110845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110844 '())))
                                                (__tmp110830
                                                 (let ((__tmp110839
                                                        (let ((__tmp110840
                                                               (let ((__tmp110841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp110842
                                     (let ()
                                       (declare (not safe))
                                       (cons _len104483_ '()))))
                                (declare (not safe))
                                (cons _tmp104485_ __tmp110842))))
                         (declare (not safe))
                         (cons '__check-values __tmp110841))))
                  (declare (not safe))
                  (__SRC__% __tmp110840 _stx104439_)))
               (__tmp110831
                (let ((__tmp110832
                       (map (lambda (_hd104487_)
                              (let* ((_hd104488104495_ _hd104487_)
                                     (_E104490104499_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd104488104495_)))
                                     (_K104491104505_
                                      (lambda (_k104502_ _id104503_)
                                        (let ((__tmp110833
                                               (let ((__tmp110834
                                                      (let ((__tmp110835
                                                             (let ((__tmp110836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110837
                                   (let ((__tmp110838
                                          (let ()
                                            (declare (not safe))
                                            (cons _k104502_ '()))))
                                     (declare (not safe))
                                     (cons _tmp104485_ __tmp110838))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp110837))))
                       (declare (not safe))
                       (cons __tmp110836 '()))))
                (declare (not safe))
                (cons _id104503_ __tmp110835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp110834))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp110833
                                           _stx104439_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104488104495_))
                                    (let ((_hd104492104508_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104488104495_)))
                                          (_tl104493104510_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104488104495_))))
                                      (let* ((_id104513_ _hd104492104508_)
                                             (_k104515_ _tl104493104510_))
                                        (declare (not safe))
                                        (_K104491104505_
                                         _k104515_
                                         _id104513_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E104490104499_)))))
                            _init104482_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp110832))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110839
                                                         __tmp110831))))
                                            (declare (not safe))
                                            (cons __tmp110843 __tmp110830))))
                                     (declare (not safe))
                                     (cons 'let __tmp110829))))
                              (declare (not safe))
                              (__SRC__% __tmp110828 _stx104439_))))
                       (declare (not safe))
                       (cons __tmp110827 _r104450_)))))
              (if (let () (declare (not safe)) (##pair? _hd104451104474_))
                  (let ((_tl104470104577_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104451104474_)))
                        (_hd104469104575_
                         (let ()
                           (declare (not safe))
                           (##car _hd104451104474_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104469104575_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104470104577_))
                            (let ((_tl104472104582_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104470104577_)))
                                  (_hd104471104580_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104470104577_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104472104582_))
                                  (let ((_expr104585_ _hd104471104580_))
                                    (declare (not safe))
                                    (_K104468104572_ _expr104585_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104472104582_))
                                      (let ((_tl104462104536_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104472104582_)))
                                            (_hd104461104534_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104472104582_))))
                                        (let ((_tmp104525_ _hd104469104575_)
                                              (_expr104532_ _hd104471104580_)
                                              (_len104539_ _hd104461104534_)
                                              (_init104541_ _tl104462104536_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104456104517_
                                             _init104541_
                                             _len104539_
                                             _expr104532_
                                             _tmp104525_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104455104478_)))))
                            (let () (declare (not safe)) (_E104455104478_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104470104577_))
                            (let ((_tl104467104562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104470104577_)))
                                  (_hd104466104560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104470104577_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104467104562_))
                                  (let ((_id104558_ _hd104469104575_)
                                        (_expr104565_ _hd104466104560_))
                                    (let ()
                                      (declare (not safe))
                                      (_K104463104550_
                                       _expr104565_
                                       _id104558_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104467104562_))
                                      (let ((_tl104462104536_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104467104562_)))
                                            (_hd104461104534_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104467104562_))))
                                        (let ((_tmp104525_ _hd104469104575_)
                                              (_expr104532_ _hd104466104560_)
                                              (_len104539_ _hd104461104534_)
                                              (_init104541_ _tl104462104536_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104456104517_
                                             _init104541_
                                             _len104539_
                                             _expr104532_
                                             _tmp104525_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104455104478_)))))
                            (let () (declare (not safe)) (_E104455104478_)))))
                  (let () (declare (not safe)) (_E104455104478_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp110821
                                                (list _body104447_)))
                                           (declare (not safe))
                                           (foldl1 __tmp110822
                                                   __tmp110821
                                                   _post104446_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp110820))))
                             (declare (not safe))
                             (cons 'begin __tmp110819))))
                      (declare (not safe))
                      (__SRC__% __tmp110818 _stx104439_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104439_
             _compile-simple104441_
             _compile-values104442_)))))
    (define __compile-call%
      (lambda (_stx104399_)
        (let* ((_$e104401_ _stx104399_)
               (_$E104403104412_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104401_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104401_))
              (let* ((_$tgt104404104415_
                      (let () (declare (not safe)) (__AST-e _$e104401_)))
                     (_$hd104405104418_
                      (let () (declare (not safe)) (##car _$tgt104404104415_)))
                     (_$tl104406104421_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104404104415_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104406104421_))
                    (let* ((_$tgt104407104425_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104406104421_)))
                           (_$hd104408104428_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104407104425_)))
                           (_$tl104409104431_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104407104425_))))
                      (let* ((_rator104435_ _$hd104408104428_)
                             (_rands104437_ _$tl104409104431_)
                             (__tmp110846
                              (let ((__tmp110848
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator104435_)))
                                    (__tmp110847
                                     (map __compile _rands104437_)))
                                (declare (not safe))
                                (cons __tmp110848 __tmp110847))))
                        (declare (not safe))
                        (__SRC__% __tmp110846 _stx104399_)))
                    (let () (declare (not safe)) (_$E104403104412_))))
              (let () (declare (not safe)) (_$E104403104412_))))))
    (define __compile-ref%
      (lambda (_stx104361_)
        (let* ((_$e104363_ _stx104361_)
               (_$E104365104374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104363_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104363_))
              (let* ((_$tgt104366104377_
                      (let () (declare (not safe)) (__AST-e _$e104363_)))
                     (_$hd104367104380_
                      (let () (declare (not safe)) (##car _$tgt104366104377_)))
                     (_$tl104368104383_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104366104377_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104368104383_))
                    (let* ((_$tgt104369104387_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104368104383_)))
                           (_$hd104370104390_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104369104387_)))
                           (_$tl104371104393_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104369104387_))))
                      (let ((_id104397_ _$hd104370104390_))
                        (if (let ((__tmp110849
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104371104393_))))
                              (declare (not safe))
                              (equal? __tmp110849 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id104397_ _stx104361_))
                            (let () (declare (not safe)) (_$E104365104374_)))))
                    (let () (declare (not safe)) (_$E104365104374_))))
              (let () (declare (not safe)) (_$E104365104374_))))))
    (define __compile-setq%
      (lambda (_stx104308_)
        (let* ((_$e104310_ _stx104308_)
               (_$E104312104324_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104310_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104310_))
              (let* ((_$tgt104313104327_
                      (let () (declare (not safe)) (__AST-e _$e104310_)))
                     (_$hd104314104330_
                      (let () (declare (not safe)) (##car _$tgt104313104327_)))
                     (_$tl104315104333_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104313104327_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104315104333_))
                    (let* ((_$tgt104316104337_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104315104333_)))
                           (_$hd104317104340_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104316104337_)))
                           (_$tl104318104343_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104316104337_))))
                      (let ((_id104347_ _$hd104317104340_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104318104343_))
                            (let* ((_$tgt104319104349_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104318104343_)))
                                   (_$hd104320104352_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104319104349_)))
                                   (_$tl104321104355_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104319104349_))))
                              (let ((_expr104359_ _$hd104320104352_))
                                (if (let ((__tmp110855
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl104321104355_))))
                                      (declare (not safe))
                                      (equal? __tmp110855 '()))
                                    (let ((__tmp110850
                                           (let ((__tmp110851
                                                  (let ((__tmp110854
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id104347_
                                                            _stx104308_)))
                                                        (__tmp110852
                                                         (let ((__tmp110853
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr104359_))))
                   (declare (not safe))
                   (cons __tmp110853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110854
                                                          __tmp110852))))
                                             (declare (not safe))
                                             (cons 'set! __tmp110851))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110850 _stx104308_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104312104324_)))))
                            (let () (declare (not safe)) (_$E104312104324_)))))
                    (let () (declare (not safe)) (_$E104312104324_))))
              (let () (declare (not safe)) (_$E104312104324_))))))
    (define __compile-if%
      (lambda (_stx104240_)
        (let* ((_$e104242_ _stx104240_)
               (_$E104244104259_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104242_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104242_))
              (let* ((_$tgt104245104262_
                      (let () (declare (not safe)) (__AST-e _$e104242_)))
                     (_$hd104246104265_
                      (let () (declare (not safe)) (##car _$tgt104245104262_)))
                     (_$tl104247104268_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104245104262_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104247104268_))
                    (let* ((_$tgt104248104272_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104247104268_)))
                           (_$hd104249104275_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104248104272_)))
                           (_$tl104250104278_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104248104272_))))
                      (let ((_p104282_ _$hd104249104275_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104250104278_))
                            (let* ((_$tgt104251104284_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104250104278_)))
                                   (_$hd104252104287_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104251104284_)))
                                   (_$tl104253104290_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104251104284_))))
                              (let ((_t104294_ _$hd104252104287_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl104253104290_))
                                    (let* ((_$tgt104254104296_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl104253104290_)))
                                           (_$hd104255104299_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt104254104296_)))
                                           (_$tl104256104302_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt104254104296_))))
                                      (let ((_f104306_ _$hd104255104299_))
                                        (if (let ((__tmp110863
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl104256104302_))))
                                              (declare (not safe))
                                              (equal? __tmp110863 '()))
                                            (let ((__tmp110856
                                                   (let ((__tmp110857
                                                          (let ((__tmp110862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p104282_)))
                        (__tmp110858
                         (let ((__tmp110861
                                (let ()
                                  (declare (not safe))
                                  (__compile _t104294_)))
                               (__tmp110859
                                (let ((__tmp110860
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f104306_))))
                                  (declare (not safe))
                                  (cons __tmp110860 '()))))
                           (declare (not safe))
                           (cons __tmp110861 __tmp110859))))
                    (declare (not safe))
                    (cons __tmp110862 __tmp110858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp110857))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp110856
                                               _stx104240_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E104244104259_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104244104259_)))))
                            (let () (declare (not safe)) (_$E104244104259_)))))
                    (let () (declare (not safe)) (_$E104244104259_))))
              (let () (declare (not safe)) (_$E104244104259_))))))
    (define __compile-quote%
      (lambda (_stx104202_)
        (let* ((_$e104204_ _stx104202_)
               (_$E104206104215_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104204_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104204_))
              (let* ((_$tgt104207104218_
                      (let () (declare (not safe)) (__AST-e _$e104204_)))
                     (_$hd104208104221_
                      (let () (declare (not safe)) (##car _$tgt104207104218_)))
                     (_$tl104209104224_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104207104218_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104209104224_))
                    (let* ((_$tgt104210104228_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104209104224_)))
                           (_$hd104211104231_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104210104228_)))
                           (_$tl104212104234_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104210104228_))))
                      (let ((_e104238_ _$hd104211104231_))
                        (if (let ((__tmp110867
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104212104234_))))
                              (declare (not safe))
                              (equal? __tmp110867 '()))
                            (let ((__tmp110864
                                   (let ((__tmp110865
                                          (let ((__tmp110866
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e104238_))))
                                            (declare (not safe))
                                            (cons __tmp110866 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110865))))
                              (declare (not safe))
                              (__SRC__% __tmp110864 _stx104202_))
                            (let () (declare (not safe)) (_$E104206104215_)))))
                    (let () (declare (not safe)) (_$E104206104215_))))
              (let () (declare (not safe)) (_$E104206104215_))))))
    (define __compile-quote-syntax%
      (lambda (_stx104164_)
        (let* ((_$e104166_ _stx104164_)
               (_$E104168104177_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104166_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104166_))
              (let* ((_$tgt104169104180_
                      (let () (declare (not safe)) (__AST-e _$e104166_)))
                     (_$hd104170104183_
                      (let () (declare (not safe)) (##car _$tgt104169104180_)))
                     (_$tl104171104186_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104169104180_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104171104186_))
                    (let* ((_$tgt104172104190_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104171104186_)))
                           (_$hd104173104193_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104172104190_)))
                           (_$tl104174104196_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104172104190_))))
                      (let ((_e104200_ _$hd104173104193_))
                        (if (let ((__tmp110870
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104174104196_))))
                              (declare (not safe))
                              (equal? __tmp110870 '()))
                            (let ((__tmp110868
                                   (let ((__tmp110869
                                          (let ()
                                            (declare (not safe))
                                            (cons _e104200_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110869))))
                              (declare (not safe))
                              (__SRC__% __tmp110868 _stx104164_))
                            (let () (declare (not safe)) (_$E104168104177_)))))
                    (let () (declare (not safe)) (_$E104168104177_))))
              (let () (declare (not safe)) (_$E104168104177_))))))
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
