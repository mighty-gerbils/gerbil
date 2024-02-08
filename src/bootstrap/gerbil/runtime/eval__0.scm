(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707416389)
  (begin
    (define __context::t
      (let ((__tmp110552
             (let ((__tmp110553
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110553 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp110552
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args106162_
        (apply make-struct-instance __context::t _$args106162_)))
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
      (let ((__tmp110554
             (let ((__tmp110555
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110555 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp110554
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args106159_
        (apply make-struct-instance __runtime::t _$args106159_)))
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
      (let ((__tmp110556
             (let ((__tmp110557
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110557 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp110556
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args106156_
        (apply make-struct-instance __syntax::t _$args106156_)))
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
      (let ((__tmp110558
             (let ((__tmp110559
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110559 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp110558
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args106153_
        (apply make-struct-instance __macro::t _$args106153_)))
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
      (let ((__tmp110560
             (let ((__tmp110561
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110561 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp110560
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args106150_
        (apply make-struct-instance __special-form::t _$args106150_)))
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
      (let ((__tmp110562
             (let ((__tmp110563
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110563 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp110562
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args106147_
        (apply make-struct-instance __core-form::t _$args106147_)))
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
      (let ((__tmp110564
             (let ((__tmp110565
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110565 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp110564
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args106144_
        (apply make-struct-instance __core-expression::t _$args106144_)))
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
      (let ((__tmp110566
             (let ((__tmp110567
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110567 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp110566
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args106141_
        (apply make-struct-instance __core-special-form::t _$args106141_)))
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
      (let ((__tmp110568
             (let ((__tmp110569
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110569 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp110568
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args106138_
        (apply make-struct-instance __struct-info::t _$args106138_)))
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
      (let ((__tmp110570
             (let ((__tmp110571
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110571 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp110570
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args106135_
        (apply make-struct-instance __feature::t _$args106135_)))
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
      (let ((__tmp110572
             (let ((__tmp110573
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110573 '()))))
        (declare (not safe))
        (make-struct-type*
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp110572
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args106132_
        (apply make-struct-instance __module::t _$args106132_)))
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
      (let ((__tmp110575
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp110574
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp110575 __tmp110574)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id106107_ _ctx106108_)
        (if _ctx106108_
            (let ((_id106110_
                   (let () (declare (not safe)) (__AST-e _id106107_))))
              (let _lp106112_ ((_ctx106114_ _ctx106108_))
                (let ((_$e106116_
                       (table-ref
                        (##structure-ref _ctx106114_ '4 __context::t '#f)
                        _id106110_
                        '#f)))
                  (if _$e106116_
                      (values _$e106116_)
                      (let ((_$e106119_
                             (##structure-ref
                              _ctx106114_
                              '3
                              __context::t
                              '#f)))
                        (if _$e106119_
                            (let ()
                              (declare (not safe))
                              (_lp106112_ _$e106119_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id106125_)
        (let ((_ctx106127_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id106125_ _ctx106127_))))
    (define __core-resolve
      (lambda _g110577_
        (let ((_g110576_ (let () (declare (not safe)) (##length _g110577_))))
          (cond ((let () (declare (not safe)) (##fx= _g110576_ 1))
                 (apply (lambda (_id106125_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id106125_)))
                        _g110577_))
                ((let () (declare (not safe)) (##fx= _g110576_ 2))
                 (apply (lambda (_id106129_ _ctx106130_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id106129_ _ctx106130_)))
                        _g110577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g110577_))))))
    (define __core-bound-id?__%
      (lambda (_id106090_ _is?106091_)
        (let ((_$e106093_
               (let () (declare (not safe)) (__core-resolve__0 _id106090_))))
          (if _$e106093_ (_is?106091_ _$e106093_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id106099_)
        (let ((_is?106101_ true))
          (declare (not safe))
          (__core-bound-id?__% _id106099_ _is?106101_))))
    (define __core-bound-id?
      (lambda _g110579_
        (let ((_g110578_ (let () (declare (not safe)) (##length _g110579_))))
          (cond ((let () (declare (not safe)) (##fx= _g110578_ 1))
                 (apply (lambda (_id106099_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id106099_)))
                        _g110579_))
                ((let () (declare (not safe)) (##fx= _g110578_ 2))
                 (apply (lambda (_id106103_ _is?106104_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id106103_ _is?106104_)))
                        _g110579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g110579_))))))
    (define __core-bind-runtime!__%
      (lambda (_id106073_ _eid106074_ _ctx106075_)
        (if _eid106074_
            (let ((__tmp110582
                   (##structure-ref _ctx106075_ '4 __context::t '#f))
                  (__tmp110581
                   (let () (declare (not safe)) (__AST-e _id106073_)))
                  (__tmp110580
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid106074_))))
              (declare (not safe))
              (table-set! __tmp110582 __tmp110581 __tmp110580))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id106080_ _eid106081_)
        (let ((_ctx106083_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id106080_ _eid106081_ _ctx106083_))))
    (define __core-bind-runtime!
      (lambda _g110584_
        (let ((_g110583_ (let () (declare (not safe)) (##length _g110584_))))
          (cond ((let () (declare (not safe)) (##fx= _g110583_ 2))
                 (apply (lambda (_id106080_ _eid106081_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id106080_ _eid106081_)))
                        _g110584_))
                ((let () (declare (not safe)) (##fx= _g110583_ 3))
                 (apply (lambda (_id106085_ _eid106086_ _ctx106087_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id106085_
                             _eid106086_
                             _ctx106087_)))
                        _g110584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g110584_))))))
    (define __core-bind-syntax!__%
      (lambda (_id106056_ _e106057_ _make106058_)
        (let ((__tmp110585
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e106057_
                      'gerbil/runtime/eval#__syntax::t))
                   _e106057_
                   (_make106058_ _e106057_ _id106056_))))
          (declare (not safe))
          (table-set! __*core* _id106056_ __tmp110585))))
    (define __core-bind-syntax!__0
      (lambda (_id106063_ _e106064_)
        (let ((_make106066_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id106063_ _e106064_ _make106066_))))
    (define __core-bind-syntax!
      (lambda _g110587_
        (let ((_g110586_ (let () (declare (not safe)) (##length _g110587_))))
          (cond ((let () (declare (not safe)) (##fx= _g110586_ 2))
                 (apply (lambda (_id106063_ _e106064_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id106063_ _e106064_)))
                        _g110587_))
                ((let () (declare (not safe)) (##fx= _g110586_ 3))
                 (apply (lambda (_id106068_ _e106069_ _make106070_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id106068_
                             _e106069_
                             _make106070_)))
                        _g110587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g110587_))))))
    (define __core-bind-macro!
      (lambda (_id106052_ _e106053_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id106052_ _e106053_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id106049_ _e106050_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id106049_ _e106050_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id106033_ _e106034_ _ctx106035_)
        (let ((__tmp110591 (##structure-ref _ctx106035_ '4 __context::t '#f))
              (__tmp110590 (let () (declare (not safe)) (__AST-e _id106033_)))
              (__tmp110588
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e106034_
                      'gerbil/runtime/eval#__syntax::t))
                   _e106034_
                   (let ((__tmp110589
                          (let () (declare (not safe)) (__AST-e _id106033_))))
                     (declare (not safe))
                     (##structure __syntax::t _e106034_ __tmp110589)))))
          (declare (not safe))
          (table-set! __tmp110591 __tmp110590 __tmp110588))))
    (define __core-bind-user-syntax!__0
      (lambda (_id106040_ _e106041_)
        (let ((_ctx106043_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id106040_ _e106041_ _ctx106043_))))
    (define __core-bind-user-syntax!
      (lambda _g110593_
        (let ((_g110592_ (let () (declare (not safe)) (##length _g110593_))))
          (cond ((let () (declare (not safe)) (##fx= _g110592_ 2))
                 (apply (lambda (_id106040_ _e106041_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id106040_
                             _e106041_)))
                        _g110593_))
                ((let () (declare (not safe)) (##fx= _g110592_ 3))
                 (apply (lambda (_id106045_ _e106046_ _ctx106047_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id106045_
                             _e106046_
                             _ctx106047_)))
                        _g110593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g110593_))))))
    (define make-__runtime-id__%
      (lambda (_id106014_ _ctx106015_)
        (let ((_id106017_ (let () (declare (not safe)) (__AST-e _id106014_))))
          (if (let () (declare (not safe)) (eq? _id106017_ '_))
              '#f
              (if (uninterned-symbol? _id106017_)
                  (gensym _id106017_)
                  (if (let () (declare (not safe)) (symbol? _id106017_))
                      (let ((_$e106019_
                             (##structure-ref
                              _ctx106015_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e106019_))
                            (gensym _id106017_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e106019_))
                                (let ((__tmp110594
                                       (##structure-ref
                                        _ctx106015_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp110594 '"#" _id106017_))
                                _id106017_)))
                      (error '"Illegal runtime identifier" _id106017_)))))))
    (define make-__runtime-id__0
      (lambda (_id106025_)
        (let ((_ctx106027_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id106025_ _ctx106027_))))
    (define make-__runtime-id
      (lambda _g110596_
        (let ((_g110595_ (let () (declare (not safe)) (##length _g110596_))))
          (cond ((let () (declare (not safe)) (##fx= _g110595_ 1))
                 (apply (lambda (_id106025_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id106025_)))
                        _g110596_))
                ((let () (declare (not safe)) (##fx= _g110595_ 2))
                 (apply (lambda (_id106029_ _ctx106030_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id106029_ _ctx106030_)))
                        _g110596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g110596_))))))
    (define make-__context-local__%
      (lambda (_super106003_)
        (let ((__tmp110597
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super106003_ __tmp110597))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super106009_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super106009_))))
    (define make-__context-local
      (lambda _g110599_
        (let ((_g110598_ (let () (declare (not safe)) (##length _g110599_))))
          (cond ((let () (declare (not safe)) (##fx= _g110598_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g110599_))
                ((let () (declare (not safe)) (##fx= _g110598_ 1))
                 (apply (lambda (_super106011_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super106011_)))
                        _g110599_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g110599_))))))
    (define make-__context-module__%
      (lambda (_id105983_ _ns105984_ _path105985_ _super105986_)
        (let ((__tmp110600
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns105984_
           _super105986_
           __tmp110600
           _id105983_
           _path105985_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id105991_ _ns105992_ _path105993_)
        (let ((_super105995_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id105991_
           _ns105992_
           _path105993_
           _super105995_))))
    (define make-__context-module
      (lambda _g110602_
        (let ((_g110601_ (let () (declare (not safe)) (##length _g110602_))))
          (cond ((let () (declare (not safe)) (##fx= _g110601_ 3))
                 (apply (lambda (_id105991_ _ns105992_ _path105993_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id105991_
                             _ns105992_
                             _path105993_)))
                        _g110602_))
                ((let () (declare (not safe)) (##fx= _g110601_ 4))
                 (apply (lambda (_id105997_
                                 _ns105998_
                                 _path105999_
                                 _super106000_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id105997_
                             _ns105998_
                             _path105999_
                             _super106000_)))
                        _g110602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g110602_))))))
    (define __SRC__%
      (lambda (_e105966_ _src-stx105967_)
        (if (or (let () (declare (not safe)) (pair? _e105966_))
                (let () (declare (not safe)) (symbol? _e105966_)))
            (let ((__tmp110606
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx105967_
                          'gerbil#AST::t))
                       (let ((__tmp110607
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx105967_))))
                         (declare (not safe))
                         (__locat __tmp110607))
                       '#f)))
              (declare (not safe))
              (##make-source _e105966_ __tmp110606))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e105966_ 'gerbil#AST::t))
                (let ((__tmp110605
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e105966_ '1 AST::t '#f)))
                      (__tmp110603
                       (let ((__tmp110604
                              (let ()
                                (declare (not safe))
                                (__AST-source _e105966_))))
                         (declare (not safe))
                         (__locat __tmp110604))))
                  (declare (not safe))
                  (##make-source __tmp110605 __tmp110603))
                (error '"BUG! Cannot sourcify object" _e105966_)))))
    (define __SRC__0
      (lambda (_e105975_)
        (let ((_src-stx105977_ '#f))
          (declare (not safe))
          (__SRC__% _e105975_ _src-stx105977_))))
    (define __SRC
      (lambda _g110609_
        (let ((_g110608_ (let () (declare (not safe)) (##length _g110609_))))
          (cond ((let () (declare (not safe)) (##fx= _g110608_ 1))
                 (apply (lambda (_e105975_)
                          (let () (declare (not safe)) (__SRC__0 _e105975_)))
                        _g110609_))
                ((let () (declare (not safe)) (##fx= _g110608_ 2))
                 (apply (lambda (_e105979_ _src-stx105980_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e105979_ _src-stx105980_)))
                        _g110609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g110609_))))))
    (define __locat
      (lambda (_loc105963_)
        (if (let () (declare (not safe)) (##locat? _loc105963_))
            _loc105963_
            '#f)))
    (define __check-values
      (lambda (_obj105958_ _k105959_)
        (let ((_count105961_
               (if (let () (declare (not safe)) (##values? _obj105958_))
                   (let () (declare (not safe)) (##vector-length _obj105958_))
                   '1)))
          (if (fx= _count105961_ _k105959_)
              '#!void
              (error (if (fx< _count105961_ _k105959_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj105958_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj105958_))
                         _obj105958_)
                     _k105959_)))))
    (define __compile
      (lambda (_stx105928_)
        (let* ((_$e105930_ _stx105928_)
               (_$E105932105938_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105930_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105930_))
              (let* ((_$tgt105933105941_
                      (let () (declare (not safe)) (__AST-e _$e105930_)))
                     (_$hd105934105944_
                      (let () (declare (not safe)) (##car _$tgt105933105941_)))
                     (_$tl105935105947_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105933105941_))))
                (let* ((_form105951_ _$hd105934105944_)
                       (_$e105953_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form105951_))))
                  (if _$e105953_
                      ((lambda (_bind105956_)
                         ((##structure-ref _bind105956_ '1 __syntax::t '#f)
                          _stx105928_))
                       _$e105953_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx105928_
                         _form105951_)))))
              (let () (declare (not safe)) (_$E105932105938_))))))
    (define __compile-error__%
      (lambda (_stx105915_ _detail105916_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx105915_
           _detail105916_))))
    (define __compile-error__0
      (lambda (_stx105921_)
        (let ((_detail105923_ '#f))
          (declare (not safe))
          (__compile-error__% _stx105921_ _detail105923_))))
    (define __compile-error
      (lambda _g110611_
        (let ((_g110610_ (let () (declare (not safe)) (##length _g110611_))))
          (cond ((let () (declare (not safe)) (##fx= _g110610_ 1))
                 (apply (lambda (_stx105921_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx105921_)))
                        _g110611_))
                ((let () (declare (not safe)) (##fx= _g110610_ 2))
                 (apply (lambda (_stx105925_ _detail105926_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx105925_ _detail105926_)))
                        _g110611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g110611_))))))
    (define __compile-ignore%
      (lambda (_stx105912_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx105912_))))
    (define __compile-begin%
      (lambda (_stx105887_)
        (let* ((_$e105889_ _stx105887_)
               (_$E105891105897_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105889_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105889_))
              (let* ((_$tgt105892105900_
                      (let () (declare (not safe)) (__AST-e _$e105889_)))
                     (_$hd105893105903_
                      (let () (declare (not safe)) (##car _$tgt105892105900_)))
                     (_$tl105894105906_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105892105900_))))
                (let* ((_body105910_ _$tl105894105906_)
                       (__tmp110612
                        (let ((__tmp110613 (map __compile _body105910_)))
                          (declare (not safe))
                          (cons 'begin __tmp110613))))
                  (declare (not safe))
                  (__SRC__% __tmp110612 _stx105887_)))
              (let () (declare (not safe)) (_$E105891105897_))))))
    (define __compile-begin-foreign%
      (lambda (_stx105862_)
        (let* ((_$e105864_ _stx105862_)
               (_$E105866105872_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105864_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105864_))
              (let* ((_$tgt105867105875_
                      (let () (declare (not safe)) (__AST-e _$e105864_)))
                     (_$hd105868105878_
                      (let () (declare (not safe)) (##car _$tgt105867105875_)))
                     (_$tl105869105881_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105867105875_))))
                (let* ((_body105885_ _$tl105869105881_)
                       (__tmp110614
                        (let ((__tmp110615
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body105885_))))
                          (declare (not safe))
                          (cons 'begin __tmp110615))))
                  (declare (not safe))
                  (__SRC__% __tmp110614 _stx105862_)))
              (let () (declare (not safe)) (_$E105866105872_))))))
    (define __compile-import%
      (lambda (_stx105837_)
        (let* ((_$e105839_ _stx105837_)
               (_$E105841105847_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105839_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105839_))
              (let* ((_$tgt105842105850_
                      (let () (declare (not safe)) (__AST-e _$e105839_)))
                     (_$hd105843105853_
                      (let () (declare (not safe)) (##car _$tgt105842105850_)))
                     (_$tl105844105856_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105842105850_))))
                (let* ((_body105860_ _$tl105844105856_)
                       (__tmp110616
                        (let ((__tmp110617
                               (let ((__tmp110618
                                      (let ((__tmp110619
                                             (let ()
                                               (declare (not safe))
                                               (cons _body105860_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp110619))))
                                 (declare (not safe))
                                 (cons __tmp110618 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp110617))))
                  (declare (not safe))
                  (__SRC__% __tmp110616 _stx105837_)))
              (let () (declare (not safe)) (_$E105841105847_))))))
    (define __compile-begin-annotation%
      (lambda (_stx105784_)
        (let* ((_$e105786_ _stx105784_)
               (_$E105788105800_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105786_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105786_))
              (let* ((_$tgt105789105803_
                      (let () (declare (not safe)) (__AST-e _$e105786_)))
                     (_$hd105790105806_
                      (let () (declare (not safe)) (##car _$tgt105789105803_)))
                     (_$tl105791105809_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105789105803_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105791105809_))
                    (let* ((_$tgt105792105813_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105791105809_)))
                           (_$hd105793105816_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105792105813_)))
                           (_$tl105794105819_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105792105813_))))
                      (let ((_ann105823_ _$hd105793105816_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105794105819_))
                            (let* ((_$tgt105795105825_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105794105819_)))
                                   (_$hd105796105828_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105795105825_)))
                                   (_$tl105797105831_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105795105825_))))
                              (let ((_expr105835_ _$hd105796105828_))
                                (if (let ((__tmp110620
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105797105831_))))
                                      (declare (not safe))
                                      (equal? __tmp110620 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr105835_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105788105800_)))))
                            (let () (declare (not safe)) (_$E105788105800_)))))
                    (let () (declare (not safe)) (_$E105788105800_))))
              (let () (declare (not safe)) (_$E105788105800_))))))
    (define __compile-define-values%
      (lambda (_stx105675_)
        (let* ((_$e105677_ _stx105675_)
               (_$E105679105691_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105677_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105677_))
              (let* ((_$tgt105680105694_
                      (let () (declare (not safe)) (__AST-e _$e105677_)))
                     (_$hd105681105697_
                      (let () (declare (not safe)) (##car _$tgt105680105694_)))
                     (_$tl105682105700_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105680105694_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105682105700_))
                    (let* ((_$tgt105683105704_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105682105700_)))
                           (_$hd105684105707_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105683105704_)))
                           (_$tl105685105710_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105683105704_))))
                      (let ((_hd105714_ _$hd105684105707_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105685105710_))
                            (let* ((_$tgt105686105716_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105685105710_)))
                                   (_$hd105687105719_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105686105716_)))
                                   (_$tl105688105722_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105686105716_))))
                              (let ((_expr105726_ _$hd105687105719_))
                                (if (let ((__tmp110653
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105688105722_))))
                                      (declare (not safe))
                                      (equal? __tmp110653 '()))
                                    (let* ((_$e105728_ _hd105714_)
                                           (_$E105730105771_
                                            (lambda ()
                                              (let ((_$E105731105756_
                                                     (lambda ()
                                                       (let* ((_$E105732105743_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e105728_))))
                      (_ids105746_ _hd105714_)
                      (_len105748_ (length _ids105746_))
                      (_tmp105750_
                       (let ((__tmp110621 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp110621))))
                 (let ((__tmp110622
                        (let ((__tmp110623
                               (let ((__tmp110640
                                      (let ((__tmp110641
                                             (let ((__tmp110642
                                                    (let ((__tmp110643
                                                           (let ((__tmp110644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr105726_))))
                     (declare (not safe))
                     (cons __tmp110644 '()))))
              (declare (not safe))
              (cons _tmp105750_ __tmp110643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp110642))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110641 _stx105675_)))
                                     (__tmp110624
                                      (let ((__tmp110636
                                             (let ((__tmp110637
                                                    (let ((__tmp110638
                                                           (let ((__tmp110639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len105748_ '()))))
                     (declare (not safe))
                     (cons _tmp105750_ __tmp110639))))
              (declare (not safe))
              (cons '__check-values __tmp110638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp110637
                                                _stx105675_)))
                                            (__tmp110625
                                             (let ((__tmp110626
                                                    (let ((__tmp110628
                                                           (lambda (_id105753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k105754_)
                     (if (let () (declare (not safe)) (__AST-e _id105753_))
                         (let ((__tmp110629
                                (let ((__tmp110630
                                       (let ((__tmp110635
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id105753_)))
                                             (__tmp110631
                                              (let ((__tmp110632
                                                     (let ((__tmp110633
                                                            (let ((__tmp110634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k105754_ '()))))
                      (declare (not safe))
                      (cons _tmp105750_ __tmp110634))))
               (declare (not safe))
               (cons '##vector-ref __tmp110633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110632 '()))))
                                         (declare (not safe))
                                         (cons __tmp110635 __tmp110631))))
                                  (declare (not safe))
                                  (cons 'define __tmp110630))))
                           (declare (not safe))
                           (__SRC__% __tmp110629 _stx105675_))
                         '#f)))
                  (__tmp110627
                   (let () (declare (not safe)) (iota _len105748_))))
              (declare (not safe))
              (filter-map2 __tmp110628 _ids105746_ __tmp110627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp110626))))
                                        (declare (not safe))
                                        (cons __tmp110636 __tmp110625))))
                                 (declare (not safe))
                                 (cons __tmp110640 __tmp110624))))
                          (declare (not safe))
                          (cons 'begin __tmp110623))))
                   (declare (not safe))
                   (__SRC__% __tmp110622 _stx105675_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e105728_))
                                                    (let* ((_$tgt105733105759_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e105728_)))
                                                           (_$hd105734105762_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt105733105759_)))
                                                           (_$tl105735105765_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt105733105759_))))
                                                      (let ((_id105769_
                                                             _$hd105734105762_))
                                                        (if (let ((__tmp110650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl105735105765_))))
                      (declare (not safe))
                      (equal? __tmp110650 '()))
                    (let ((__tmp110645
                           (let ((__tmp110646
                                  (let ((__tmp110649
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id105769_)))
                                        (__tmp110647
                                         (let ((__tmp110648
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr105726_))))
                                           (declare (not safe))
                                           (cons __tmp110648 '()))))
                                    (declare (not safe))
                                    (cons __tmp110649 __tmp110647))))
                             (declare (not safe))
                             (cons 'define __tmp110646))))
                      (declare (not safe))
                      (__SRC__% __tmp110645 _stx105675_))
                    (let () (declare (not safe)) (_$E105731105756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105731105756_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e105728_))
                                          (let* ((_$tgt105736105774_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e105728_)))
                                                 (_$hd105737105777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105736105774_)))
                                                 (_$tl105738105780_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105736105774_))))
                                            (if (let ((__tmp110652
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd105737105777_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110652 '#f))
                                                (if (let ((__tmp110651
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl105738105780_))))
                                                      (declare (not safe))
                                                      (equal? __tmp110651 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr105726_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E105730105771_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105730105771_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105730105771_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105679105691_)))))
                            (let () (declare (not safe)) (_$E105679105691_)))))
                    (let () (declare (not safe)) (_$E105679105691_))))
              (let () (declare (not safe)) (_$E105679105691_))))))
    (define __compile-head-id
      (lambda (_e105673_)
        (let ((__tmp110654
               (if (let () (declare (not safe)) (__AST-e _e105673_))
                   _e105673_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp110654))))
    (define __compile-lambda-head
      (lambda (_hd105630_)
        (let _recur105632_ ((_rest105634_ _hd105630_))
          (let* ((_$e105636_ _rest105634_)
                 (_$E105638105656_
                  (lambda ()
                    (let ((_$E105639105653_
                           (lambda ()
                             (let* ((_$E105640105648_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e105636_))))
                                    (_tail105651_ _$e105636_))
                               (declare (not safe))
                               (__compile-head-id _tail105651_)))))
                      (if (let ((__tmp110655
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e105636_))))
                            (declare (not safe))
                            (equal? __tmp110655 '()))
                          '()
                          (let () (declare (not safe)) (_$E105639105653_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105636_))
                (let* ((_$tgt105641105659_
                        (let () (declare (not safe)) (__AST-e _$e105636_)))
                       (_$hd105642105662_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105641105659_)))
                       (_$tl105643105665_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105641105659_))))
                  (let* ((_hd105669_ _$hd105642105662_)
                         (_rest105671_ _$tl105643105665_))
                    (let ((__tmp110657
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd105669_)))
                          (__tmp110656
                           (let ()
                             (declare (not safe))
                             (_recur105632_ _rest105671_))))
                      (declare (not safe))
                      (cons __tmp110657 __tmp110656))))
                (let () (declare (not safe)) (_$E105638105656_)))))))
    (define __compile-lambda%
      (lambda (_stx105577_)
        (let* ((_$e105579_ _stx105577_)
               (_$E105581105593_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105579_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105579_))
              (let* ((_$tgt105582105596_
                      (let () (declare (not safe)) (__AST-e _$e105579_)))
                     (_$hd105583105599_
                      (let () (declare (not safe)) (##car _$tgt105582105596_)))
                     (_$tl105584105602_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105582105596_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105584105602_))
                    (let* ((_$tgt105585105606_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105584105602_)))
                           (_$hd105586105609_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105585105606_)))
                           (_$tl105587105612_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105585105606_))))
                      (let ((_hd105616_ _$hd105586105609_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105587105612_))
                            (let* ((_$tgt105588105618_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105587105612_)))
                                   (_$hd105589105621_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105588105618_)))
                                   (_$tl105590105624_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105588105618_))))
                              (let ((_body105628_ _$hd105589105621_))
                                (if (let ((__tmp110663
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105590105624_))))
                                      (declare (not safe))
                                      (equal? __tmp110663 '()))
                                    (let ((__tmp110658
                                           (let ((__tmp110659
                                                  (let ((__tmp110662
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd105616_)))
                                                        (__tmp110660
                                                         (let ((__tmp110661
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body105628_))))
                   (declare (not safe))
                   (cons __tmp110661 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110662
                                                          __tmp110660))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp110659))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110658 _stx105577_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105581105593_)))))
                            (let () (declare (not safe)) (_$E105581105593_)))))
                    (let () (declare (not safe)) (_$E105581105593_))))
              (let () (declare (not safe)) (_$E105581105593_))))))
    (define __compile-case-lambda%
      (lambda (_stx105369_)
        (letrec ((_variadic?105371_
                  (lambda (_hd105542_)
                    (let* ((_$e105544_ _hd105542_)
                           (_$E105546105562_
                            (lambda ()
                              (let ((_$E105547105559_
                                     (lambda ()
                                       (let ((_$E105548105556_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e105544_)))))
                                         '#t))))
                                (if (let ((__tmp110664
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e105544_))))
                                      (declare (not safe))
                                      (equal? __tmp110664 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E105547105559_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105544_))
                          (let* ((_$tgt105549105565_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105544_)))
                                 (_$hd105550105568_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105549105565_)))
                                 (_$tl105551105571_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105549105565_))))
                            (let ((_rest105575_ _$tl105551105571_))
                              (declare (not safe))
                              (_variadic?105371_ _rest105575_)))
                          (let () (declare (not safe)) (_$E105546105562_))))))
                 (_arity105372_
                  (lambda (_hd105507_)
                    (let _lp105509_ ((_rest105511_ _hd105507_) (_k105512_ '0))
                      (let* ((_$e105514_ _rest105511_)
                             (_$E105516105527_
                              (lambda ()
                                (let ((_$E105517105524_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e105514_)))))
                                  _k105512_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e105514_))
                            (let* ((_$tgt105518105530_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e105514_)))
                                   (_$hd105519105533_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105518105530_)))
                                   (_$tl105520105536_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105518105530_))))
                              (let* ((_rest105540_ _$tl105520105536_)
                                     (__tmp110665
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k105512_ '1))))
                                (declare (not safe))
                                (_lp105509_ _rest105540_ __tmp110665)))
                            (let ()
                              (declare (not safe))
                              (_$E105516105527_)))))))
                 (_generate105373_
                  (lambda (_rest105434_ _args105435_ _len105436_)
                    (let* ((_$e105438_ _rest105434_)
                           (_$E105440105451_
                            (lambda ()
                              (let* ((_$E105441105448_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e105438_))))
                                     (__tmp110666
                                      (let ((__tmp110667
                                             (let ((__tmp110668
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args105435_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp110668))))
                                        (declare (not safe))
                                        (cons 'error __tmp110667))))
                                (declare (not safe))
                                (__SRC__% __tmp110666 _stx105369_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105438_))
                          (let* ((_$tgt105442105454_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105438_)))
                                 (_$hd105443105457_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105442105454_)))
                                 (_$tl105444105460_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105442105454_))))
                            (let* ((_clause105464_ _$hd105443105457_)
                                   (_rest105466_ _$tl105444105460_)
                                   (_$e105468_ _clause105464_)
                                   (_$E105470105479_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e105468_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e105468_))
                                  (let* ((_$tgt105471105482_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e105468_)))
                                         (_$hd105472105485_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt105471105482_)))
                                         (_$tl105473105488_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt105471105482_))))
                                    (let ((_hd105492_ _$hd105472105485_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl105473105488_))
                                          (let* ((_$tgt105474105494_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105473105488_)))
                                                 (_$hd105475105497_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt105474105494_)))
                                                 (_$tl105476105500_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt105474105494_))))
                                            (if (let ((__tmp110683
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105476105500_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110683 '()))
                                                (let ((_clen105504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity105372_
                                                          _hd105492_)))
                                                      (_cmp105505_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?105371_
                                                              _hd105492_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp110669
                                                         (let ((__tmp110670
                                                                (let ((__tmp110680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110681
                                      (let ((__tmp110682
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen105504_ '()))))
                                        (declare (not safe))
                                        (cons _len105436_ __tmp110682))))
                                 (declare (not safe))
                                 (cons _cmp105505_ __tmp110681)))
                              (__tmp110671
                               (let ((__tmp110674
                                      (let ((__tmp110675
                                             (let ((__tmp110676
                                                    (let ((__tmp110678
                                                           (let ((__tmp110679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause105464_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp110679)))
                  (__tmp110677
                   (let () (declare (not safe)) (cons _args105435_ '()))))
              (declare (not safe))
              (cons __tmp110678 __tmp110677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp110676))))
                                        (declare (not safe))
                                        (__SRC__% __tmp110675 _stx105369_)))
                                     (__tmp110672
                                      (let ((__tmp110673
                                             (let ()
                                               (declare (not safe))
                                               (_generate105373_
                                                _rest105466_
                                                _args105435_
                                                _len105436_))))
                                        (declare (not safe))
                                        (cons __tmp110673 '()))))
                                 (declare (not safe))
                                 (cons __tmp110674 __tmp110672))))
                          (declare (not safe))
                          (cons __tmp110680 __tmp110671))))
                   (declare (not safe))
                   (cons 'if __tmp110670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp110669
                                                     _stx105369_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105470105479_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E105470105479_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E105470105479_)))))
                          (let () (declare (not safe)) (_$E105440105451_)))))))
          (let* ((_$e105375_ _stx105369_)
                 (_$E105377105409_
                  (lambda ()
                    (let ((_$E105378105391_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e105375_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e105375_))
                          (let* ((_$tgt105379105394_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105375_)))
                                 (_$hd105380105397_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105379105394_)))
                                 (_$tl105381105400_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105379105394_))))
                            (let ((_clauses105404_ _$tl105381105400_))
                              (let ((_args105406_
                                     (let ((__tmp110684 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110684 _stx105369_)))
                                    (_len105407_
                                     (let ((__tmp110685 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp110685 _stx105369_))))
                                (let ((__tmp110686
                                       (let ((__tmp110687
                                              (let ((__tmp110688
                                                     (let ((__tmp110689
                                                            (let ((__tmp110690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110691
                                  (let ((__tmp110694
                                         (let ((__tmp110695
                                                (let ((__tmp110696
                                                       (let ((__tmp110697
                                                              (let ((__tmp110698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp110699
                                    (let ()
                                      (declare (not safe))
                                      (cons _args105406_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp110699))))
                        (declare (not safe))
                        (__SRC__% __tmp110698 _stx105369_))))
                 (declare (not safe))
                 (cons __tmp110697 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len105407_
                                                        __tmp110696))))
                                           (declare (not safe))
                                           (cons __tmp110695 '())))
                                        (__tmp110692
                                         (let ((__tmp110693
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate105373_
                                                   _clauses105404_
                                                   _args105406_
                                                   _len105407_))))
                                           (declare (not safe))
                                           (cons __tmp110693 '()))))
                                    (declare (not safe))
                                    (cons __tmp110694 __tmp110692))))
                             (declare (not safe))
                             (cons 'let __tmp110691))))
                      (declare (not safe))
                      (__SRC__% __tmp110690 _stx105369_))))
               (declare (not safe))
               (cons __tmp110689 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args105406_
                                                      __tmp110688))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp110687))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110686 _stx105369_)))))
                          (let () (declare (not safe)) (_$E105378105391_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105375_))
                (let* ((_$tgt105382105412_
                        (let () (declare (not safe)) (__AST-e _$e105375_)))
                       (_$hd105383105415_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105382105412_)))
                       (_$tl105384105418_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105382105412_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105384105418_))
                      (let* ((_$tgt105385105422_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105384105418_)))
                             (_$hd105386105425_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105385105422_)))
                             (_$tl105387105428_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105385105422_))))
                        (let ((_clause105432_ _$hd105386105425_))
                          (if (let ((__tmp110701
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl105387105428_))))
                                (declare (not safe))
                                (equal? __tmp110701 '()))
                              (let ((__tmp110700
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause105432_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp110700))
                              (let ()
                                (declare (not safe))
                                (_$E105377105409_)))))
                      (let () (declare (not safe)) (_$E105377105409_))))
                (let () (declare (not safe)) (_$E105377105409_)))))))
    (define __compile-let-form
      (lambda (_stx105138_ _compile-simple105139_ _compile-values105140_)
        (letrec ((_simple-bind?105142_
                  (lambda (_hd105327_)
                    (let* ((_hd105328105338_ _hd105327_)
                           (_else105331105346_ (lambda () '#f)))
                      (let ((_K105334105359_ (lambda (_id105357_) '#t))
                            (_K105333105351_ (lambda () '#t)))
                        (let ((_try-match105330105354_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd105328105338_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K105333105351_))
                                     (let ()
                                       (declare (not safe))
                                       (_else105331105346_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd105328105338_))
                              (let ((_tl105336105364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd105328105338_)))
                                    (_hd105335105362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd105328105338_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl105336105364_))
                                    (let ((_id105367_ _hd105335105362_))
                                      (declare (not safe))
                                      (_K105334105359_ _id105367_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match105330105354_))))
                              (let ()
                                (declare (not safe))
                                (_try-match105330105354_))))))))
                 (_car-e105143_
                  (lambda (_hd105325_)
                    (if (let () (declare (not safe)) (pair? _hd105325_))
                        (car _hd105325_)
                        _hd105325_))))
          (let* ((_$e105145_ _stx105138_)
                 (_$E105147105290_
                  (lambda ()
                    (let ((_$E105148105170_
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
                          (let* ((_$tgt105149105173_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e105145_)))
                                 (_$hd105150105176_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt105149105173_)))
                                 (_$tl105151105179_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt105149105173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105151105179_))
                                (let* ((_$tgt105152105183_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105151105179_)))
                                       (_$hd105153105186_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105152105183_)))
                                       (_$tl105154105189_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105152105183_))))
                                  (let ((_hd105193_ _$hd105153105186_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl105154105189_))
                                        (let* ((_$tgt105155105195_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl105154105189_)))
                                               (_$hd105156105198_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt105155105195_)))
                                               (_$tl105157105201_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt105155105195_))))
                                          (let ((_body105205_
                                                 _$hd105156105198_))
                                            (if (let ((__tmp110704
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl105157105201_))))
                                                  (declare (not safe))
                                                  (equal? __tmp110704 '()))
                                                (let* ((_hd-ids105245_
                                                        (map (lambda (_bind105207_)
                                                               (let* ((_$e105209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind105207_)
                              (_$E105211105220_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105209_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105209_))
                             (let* ((_$tgt105212105223_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105209_)))
                                    (_$hd105213105226_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105212105223_)))
                                    (_$tl105214105229_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105212105223_))))
                               (let ((_ids105233_ _$hd105213105226_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl105214105229_))
                                     (let* ((_$tgt105215105235_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl105214105229_)))
                                            (_$hd105216105238_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt105215105235_)))
                                            (_$tl105217105241_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt105215105235_))))
                                       (if (let ((__tmp110702
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105217105241_))))
                                             (declare (not safe))
                                             (equal? __tmp110702 '()))
                                           _ids105233_
                                           (let ()
                                             (declare (not safe))
                                             (_$E105211105220_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E105211105220_)))))
                             (let ()
                               (declare (not safe))
                               (_$E105211105220_)))))
                     _hd105193_))
               (_exprs105285_
                (map (lambda (_bind105247_)
                       (let* ((_$e105249_ _bind105247_)
                              (_$E105251105260_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e105249_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e105249_))
                             (let* ((_$tgt105252105263_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e105249_)))
                                    (_$hd105253105266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt105252105263_)))
                                    (_$tl105254105269_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt105252105263_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl105254105269_))
                                   (let* ((_$tgt105255105273_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105254105269_)))
                                          (_$hd105256105276_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt105255105273_)))
                                          (_$tl105257105279_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt105255105273_))))
                                     (let ((_expr105283_ _$hd105256105276_))
                                       (if (let ((__tmp110703
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl105257105279_))))
                                             (declare (not safe))
                                             (equal? __tmp110703 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr105283_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E105251105260_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E105251105260_))))
                             (let ()
                               (declare (not safe))
                               (_$E105251105260_)))))
                     _hd105193_))
               (_body105287_
                (let () (declare (not safe)) (__compile _body105205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?105142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids105245_))
              (_compile-simple105139_
               (map _car-e105143_ _hd-ids105245_)
               _exprs105285_
               _body105287_)
              (_compile-values105140_
               _hd-ids105245_
               _exprs105285_
               _body105287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E105148105170_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105148105170_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105148105170_))))
                          (let () (declare (not safe)) (_$E105148105170_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e105145_))
                (let* ((_$tgt105158105293_
                        (let () (declare (not safe)) (__AST-e _$e105145_)))
                       (_$hd105159105296_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt105158105293_)))
                       (_$tl105160105299_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt105158105293_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl105160105299_))
                      (let* ((_$tgt105161105303_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl105160105299_)))
                             (_$hd105162105306_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt105161105303_)))
                             (_$tl105163105309_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt105161105303_))))
                        (if (let ((__tmp110706
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd105162105306_))))
                              (declare (not safe))
                              (equal? __tmp110706 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl105163105309_))
                                (let* ((_$tgt105164105313_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl105163105309_)))
                                       (_$hd105165105316_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt105164105313_)))
                                       (_$tl105166105319_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt105164105313_))))
                                  (let ((_body105323_ _$hd105165105316_))
                                    (if (let ((__tmp110705
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl105166105319_))))
                                          (declare (not safe))
                                          (equal? __tmp110705 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body105323_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E105147105290_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E105147105290_)))
                            (let () (declare (not safe)) (_$E105147105290_))))
                      (let () (declare (not safe)) (_$E105147105290_))))
                (let () (declare (not safe)) (_$E105147105290_)))))))
    (define __compile-let-values%
      (lambda (_stx104953_)
        (letrec ((_compile-simple104955_
                  (lambda (_hd-ids105134_ _exprs105135_ _body105136_)
                    (let ((__tmp110707
                           (let ((__tmp110708
                                  (let ((__tmp110710
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids105134_)
                                              _exprs105135_))
                                        (__tmp110709
                                         (let ()
                                           (declare (not safe))
                                           (cons _body105136_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110710 __tmp110709))))
                             (declare (not safe))
                             (cons 'let __tmp110708))))
                      (declare (not safe))
                      (__SRC__% __tmp110707 _stx104953_))))
                 (_compile-values104956_
                  (lambda (_hd-ids105052_ _exprs105053_ _body105054_)
                    (let _lp105056_ ((_rest105058_ _hd-ids105052_)
                                     (_exprs105059_ _exprs105053_)
                                     (_bind105060_ '())
                                     (_post105061_ '()))
                      (let* ((_rest105062105076_ _rest105058_)
                             (_else105065105084_
                              (lambda ()
                                (let ((__tmp110711
                                       (let ((__tmp110712
                                              (let ((__tmp110715
                                                     (reverse _bind105060_))
                                                    (__tmp110713
                                                     (let ((__tmp110714
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post104957_
                                                               _post105061_
                                                               _body105054_))))
                                                       (declare (not safe))
                                                       (cons __tmp110714
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp110715
                                                      __tmp110713))))
                                         (declare (not safe))
                                         (cons 'let __tmp110712))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110711 _stx104953_)))))
                        (let ((_K105070105117_
                               (lambda (_rest105114_ _id105115_)
                                 (let ((__tmp110721 (cdr _exprs105059_))
                                       (__tmp110716
                                        (let ((__tmp110717
                                               (let ((__tmp110720
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id105115_)))
                                                     (__tmp110718
                                                      (let ((__tmp110719
                                                             (car _exprs105059_)))
                                                        (declare (not safe))
                                                        (cons __tmp110719
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110720
                                                       __tmp110718))))
                                          (declare (not safe))
                                          (cons __tmp110717 _bind105060_))))
                                   (declare (not safe))
                                   (_lp105056_
                                    _rest105114_
                                    __tmp110721
                                    __tmp110716
                                    _post105061_))))
                              (_K105067105099_
                               (lambda (_rest105088_ _hd105089_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd105089_))
                                     (let ((__tmp110742 (cdr _exprs105059_))
                                           (__tmp110735
                                            (let ((__tmp110736
                                                   (let ((__tmp110741
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd105089_)))
                                                         (__tmp110737
                                                          (let ((__tmp110738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110739
                                (let ((__tmp110740 (car _exprs105059_)))
                                  (declare (not safe))
                                  (cons __tmp110740 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110739))))
                    (declare (not safe))
                    (cons __tmp110738 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110741
                                                           __tmp110737))))
                                              (declare (not safe))
                                              (cons __tmp110736
                                                    _bind105060_))))
                                       (declare (not safe))
                                       (_lp105056_
                                        _rest105088_
                                        __tmp110742
                                        __tmp110735
                                        _post105061_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd105089_))
                                         (let* ((_len105091_
                                                 (length _hd105089_))
                                                (_tmp105093_
                                                 (let ((__tmp110722 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110722))))
                                           (let ((__tmp110734
                                                  (cdr _exprs105059_))
                                                 (__tmp110730
                                                  (let ((__tmp110731
                                                         (let ((__tmp110732
                                                                (let ((__tmp110733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs105059_)))
                          (declare (not safe))
                          (cons __tmp110733 '()))))
                   (declare (not safe))
                   (cons _tmp105093_ __tmp110732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110731
                                                          _bind105060_)))
                                                 (__tmp110723
                                                  (let ((__tmp110724
                                                         (let ((__tmp110725
                                                                (let ((__tmp110726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110728
                                      (lambda (_id105096_ _k105097_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id105096_))
                                            (let ((__tmp110729
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id105096_))))
                                              (declare (not safe))
                                              (cons __tmp110729 _k105097_))
                                            '#f)))
                                     (__tmp110727
                                      (let ()
                                        (declare (not safe))
                                        (iota _len105091_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110728
                                  _hd105089_
                                  __tmp110727))))
                          (declare (not safe))
                          (cons _len105091_ __tmp110726))))
                   (declare (not safe))
                   (cons _tmp105093_ __tmp110725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110724
                                                          _post105061_))))
                                             (declare (not safe))
                                             (_lp105056_
                                              _rest105088_
                                              __tmp110734
                                              __tmp110730
                                              __tmp110723)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104953_
                                            _hd105089_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105062105076_))
                              (let ((_tl105072105122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105062105076_)))
                                    (_hd105071105120_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105062105076_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd105071105120_))
                                    (let ((_tl105074105127_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd105071105120_)))
                                          (_hd105073105125_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd105071105120_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105074105127_))
                                          (let ((_id105130_ _hd105073105125_)
                                                (_rest105132_
                                                 _tl105072105122_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105070105117_
                                               _rest105132_
                                               _id105130_)))
                                          (let ((_hd105107_ _hd105071105120_)
                                                (_rest105109_
                                                 _tl105072105122_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105067105099_
                                               _rest105109_
                                               _hd105107_)))))
                                    (let ((_hd105107_ _hd105071105120_)
                                          (_rest105109_ _tl105072105122_))
                                      (let ()
                                        (declare (not safe))
                                        (_K105067105099_
                                         _rest105109_
                                         _hd105107_)))))
                              (let ()
                                (declare (not safe))
                                (_else105065105084_))))))))
                 (_compile-post104957_
                  (lambda (_post104959_ _body104960_)
                    (let _lp104962_ ((_rest104964_ _post104959_)
                                     (_check104965_ '())
                                     (_bind104966_ '()))
                      (let* ((_rest104967104979_ _rest104964_)
                             (_else104969104987_
                              (lambda ()
                                (let ((__tmp110743
                                       (let ((__tmp110744
                                              (let ((__tmp110745
                                                     (let ((__tmp110746
                                                            (let ((__tmp110747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110748
                                  (let ((__tmp110749
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104960_ '()))))
                                    (declare (not safe))
                                    (cons _bind104966_ __tmp110749))))
                             (declare (not safe))
                             (cons 'let __tmp110748))))
                      (declare (not safe))
                      (__SRC__% __tmp110747 _stx104953_))))
               (declare (not safe))
               (cons __tmp110746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110745
                                                        _check104965_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110744))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110743 _stx104953_))))
                             (_K104971105026_
                              (lambda (_rest104990_
                                       _init104991_
                                       _len104992_
                                       _tmp104993_)
                                (let ((__tmp110757
                                       (let ((__tmp110758
                                              (let ((__tmp110759
                                                     (let ((__tmp110760
                                                            (let ((__tmp110761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104992_ '()))))
                      (declare (not safe))
                      (cons _tmp104993_ __tmp110761))))
               (declare (not safe))
               (cons '__check-values __tmp110760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110759
                                                 _stx104953_))))
                                         (declare (not safe))
                                         (cons __tmp110758 _check104965_)))
                                      (__tmp110750
                                       (let ((__tmp110751
                                              (lambda (_hd104995_ _r104996_)
                                                (let* ((_hd104997105004_
                                                        _hd104995_)
                                                       (_E104999105008_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104997105004_)))
               (_K105000105014_
                (lambda (_k105011_ _id105012_)
                  (let ((__tmp110752
                         (let ((__tmp110753
                                (let ((__tmp110754
                                       (let ((__tmp110755
                                              (let ((__tmp110756
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k105011_ '()))))
                                                (declare (not safe))
                                                (cons _tmp104993_
                                                      __tmp110756))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp110755))))
                                  (declare (not safe))
                                  (cons __tmp110754 '()))))
                           (declare (not safe))
                           (cons _id105012_ __tmp110753))))
                    (declare (not safe))
                    (cons __tmp110752 _r104996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104997105004_))
                                                      (let ((_hd105001105017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104997105004_)))
                    (_tl105002105019_
                     (let () (declare (not safe)) (##cdr _hd104997105004_))))
                (let* ((_id105022_ _hd105001105017_)
                       (_k105024_ _tl105002105019_))
                  (declare (not safe))
                  (_K105000105014_ _k105024_ _id105022_)))
              (let () (declare (not safe)) (_E104999105008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110751
                                                 _bind104966_
                                                 _init104991_))))
                                  (declare (not safe))
                                  (_lp104962_
                                   _rest104990_
                                   __tmp110757
                                   __tmp110750)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104967104979_))
                            (let ((_hd104972105029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104967104979_)))
                                  (_tl104973105031_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104967104979_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104972105029_))
                                  (let ((_hd104974105034_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104972105029_)))
                                        (_tl104975105036_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104972105029_))))
                                    (let ((_tmp105039_ _hd104974105034_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104975105036_))
                                          (let ((_hd104976105041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104975105036_)))
                                                (_tl104977105043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104975105036_))))
                                            (let* ((_len105046_
                                                    _hd104976105041_)
                                                   (_init105048_
                                                    _tl104977105043_)
                                                   (_rest105050_
                                                    _tl104973105031_))
                                              (declare (not safe))
                                              (_K104971105026_
                                               _rest105050_
                                               _init105048_
                                               _len105046_
                                               _tmp105039_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104969104987_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104969104987_))))
                            (let ()
                              (declare (not safe))
                              (_else104969104987_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104953_
             _compile-simple104955_
             _compile-values104956_)))))
    (define __compile-letrec-values%
      (lambda (_stx104753_)
        (letrec ((_compile-simple104755_
                  (lambda (_hd-ids104949_ _exprs104950_ _body104951_)
                    (let ((__tmp110762
                           (let ((__tmp110763
                                  (let ((__tmp110765
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104949_)
                                              _exprs104950_))
                                        (__tmp110764
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104951_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110765 __tmp110764))))
                             (declare (not safe))
                             (cons 'letrec __tmp110763))))
                      (declare (not safe))
                      (__SRC__% __tmp110762 _stx104753_))))
                 (_compile-values104756_
                  (lambda (_hd-ids104863_ _exprs104864_ _body104865_)
                    (let _lp104867_ ((_rest104869_ _hd-ids104863_)
                                     (_exprs104870_ _exprs104864_)
                                     (_pre104871_ '())
                                     (_bind104872_ '())
                                     (_post104873_ '()))
                      (let* ((_rest104874104888_ _rest104869_)
                             (_else104877104896_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner104757_
                                   _pre104871_
                                   _bind104872_
                                   _post104873_
                                   _body104865_)))))
                        (let ((_K104882104932_
                               (lambda (_rest104929_ _id104930_)
                                 (let ((__tmp110771 (cdr _exprs104870_))
                                       (__tmp110766
                                        (let ((__tmp110767
                                               (let ((__tmp110770
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id104930_)))
                                                     (__tmp110768
                                                      (let ((__tmp110769
                                                             (car _exprs104870_)))
                                                        (declare (not safe))
                                                        (cons __tmp110769
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp110770
                                                       __tmp110768))))
                                          (declare (not safe))
                                          (cons __tmp110767 _bind104872_))))
                                   (declare (not safe))
                                   (_lp104867_
                                    _rest104929_
                                    __tmp110771
                                    _pre104871_
                                    __tmp110766
                                    _post104873_))))
                              (_K104879104914_
                               (lambda (_rest104900_ _hd104901_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104901_))
                                     (let ((__tmp110799 (cdr _exprs104870_))
                                           (__tmp110792
                                            (let ((__tmp110793
                                                   (let ((__tmp110798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd104901_)))
                                                         (__tmp110794
                                                          (let ((__tmp110795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp110796
                                (let ((__tmp110797 (car _exprs104870_)))
                                  (declare (not safe))
                                  (cons __tmp110797 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp110796))))
                    (declare (not safe))
                    (cons __tmp110795 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp110798
                                                           __tmp110794))))
                                              (declare (not safe))
                                              (cons __tmp110793
                                                    _bind104872_))))
                                       (declare (not safe))
                                       (_lp104867_
                                        _rest104900_
                                        __tmp110799
                                        _pre104871_
                                        __tmp110792
                                        _post104873_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd104901_))
                                         (let* ((_len104903_
                                                 (length _hd104901_))
                                                (_tmp104905_
                                                 (let ((__tmp110772 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp110772))))
                                           (let ((__tmp110791
                                                  (cdr _exprs104870_))
                                                 (__tmp110784
                                                  (let ((__tmp110785
                                                         (lambda (_id104908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r104909_)
                   (if (let () (declare (not safe)) (__AST-e _id104908_))
                       (let ((__tmp110786
                              (let ((__tmp110790
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id104908_)))
                                    (__tmp110787
                                     (let ((__tmp110788
                                            (let ((__tmp110789
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp110789))))
                                       (declare (not safe))
                                       (cons __tmp110788 '()))))
                                (declare (not safe))
                                (cons __tmp110790 __tmp110787))))
                         (declare (not safe))
                         (cons __tmp110786 _r104909_))
                       _r104909_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp110785
                                                            _pre104871_
                                                            _hd104901_)))
                                                 (__tmp110780
                                                  (let ((__tmp110781
                                                         (let ((__tmp110782
                                                                (let ((__tmp110783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs104870_)))
                          (declare (not safe))
                          (cons __tmp110783 '()))))
                   (declare (not safe))
                   (cons _tmp104905_ __tmp110782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110781
                                                          _bind104872_)))
                                                 (__tmp110773
                                                  (let ((__tmp110774
                                                         (let ((__tmp110775
                                                                (let ((__tmp110776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110778
                                      (lambda (_id104911_ _k104912_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id104911_))
                                            (let ((__tmp110779
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id104911_))))
                                              (declare (not safe))
                                              (cons __tmp110779 _k104912_))
                                            '#f)))
                                     (__tmp110777
                                      (let ()
                                        (declare (not safe))
                                        (iota _len104903_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp110778
                                  _hd104901_
                                  __tmp110777))))
                          (declare (not safe))
                          (cons _len104903_ __tmp110776))))
                   (declare (not safe))
                   (cons _tmp104905_ __tmp110775))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110774
                                                          _post104873_))))
                                             (declare (not safe))
                                             (_lp104867_
                                              _rest104900_
                                              __tmp110791
                                              __tmp110784
                                              __tmp110780
                                              __tmp110773)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx104753_
                                            _hd104901_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104874104888_))
                              (let ((_tl104884104937_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104874104888_)))
                                    (_hd104883104935_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104874104888_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104883104935_))
                                    (let ((_tl104886104942_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104883104935_)))
                                          (_hd104885104940_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104883104935_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104886104942_))
                                          (let ((_id104945_ _hd104885104940_)
                                                (_rest104947_
                                                 _tl104884104937_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104882104932_
                                               _rest104947_
                                               _id104945_)))
                                          (let ((_hd104922_ _hd104883104935_)
                                                (_rest104924_
                                                 _tl104884104937_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104879104914_
                                               _rest104924_
                                               _hd104922_)))))
                                    (let ((_hd104922_ _hd104883104935_)
                                          (_rest104924_ _tl104884104937_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104879104914_
                                         _rest104924_
                                         _hd104922_)))))
                              (let ()
                                (declare (not safe))
                                (_else104877104896_))))))))
                 (_compile-inner104757_
                  (lambda (_pre104858_ _bind104859_ _post104860_ _body104861_)
                    (if (let () (declare (not safe)) (null? _pre104858_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind104758_
                           _bind104859_
                           _post104860_
                           _body104861_))
                        (let ((__tmp110800
                               (let ((__tmp110801
                                      (let ((__tmp110804 (reverse _pre104858_))
                                            (__tmp110802
                                             (let ((__tmp110803
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind104758_
                                                       _bind104859_
                                                       _post104860_
                                                       _body104861_))))
                                               (declare (not safe))
                                               (cons __tmp110803 '()))))
                                        (declare (not safe))
                                        (cons __tmp110804 __tmp110802))))
                                 (declare (not safe))
                                 (cons 'let __tmp110801))))
                          (declare (not safe))
                          (__SRC__% __tmp110800 _stx104753_)))))
                 (_compile-bind104758_
                  (lambda (_bind104854_ _post104855_ _body104856_)
                    (let ((__tmp110805
                           (let ((__tmp110806
                                  (let ((__tmp110809 (reverse _bind104854_))
                                        (__tmp110807
                                         (let ((__tmp110808
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104759_
                                                   _post104855_
                                                   _body104856_))))
                                           (declare (not safe))
                                           (cons __tmp110808 '()))))
                                    (declare (not safe))
                                    (cons __tmp110809 __tmp110807))))
                             (declare (not safe))
                             (cons 'letrec __tmp110806))))
                      (declare (not safe))
                      (__SRC__% __tmp110805 _stx104753_))))
                 (_compile-post104759_
                  (lambda (_post104761_ _body104762_)
                    (let _lp104764_ ((_rest104766_ _post104761_)
                                     (_check104767_ '())
                                     (_bind104768_ '()))
                      (let* ((_rest104769104781_ _rest104766_)
                             (_else104771104789_
                              (lambda ()
                                (let ((__tmp110810
                                       (let ((__tmp110811
                                              (let ((__tmp110812
                                                     (let ((__tmp110813
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body104762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp110813 _bind104768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp110812
                                                        _check104767_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp110811))))
                                  (declare (not safe))
                                  (__SRC__% __tmp110810 _stx104753_))))
                             (_K104773104828_
                              (lambda (_rest104792_
                                       _init104793_
                                       _len104794_
                                       _tmp104795_)
                                (let ((__tmp110822
                                       (let ((__tmp110823
                                              (let ((__tmp110824
                                                     (let ((__tmp110825
                                                            (let ((__tmp110826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len104794_ '()))))
                      (declare (not safe))
                      (cons _tmp104795_ __tmp110826))))
               (declare (not safe))
               (cons '__check-values __tmp110825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp110824
                                                 _stx104753_))))
                                         (declare (not safe))
                                         (cons __tmp110823 _check104767_)))
                                      (__tmp110814
                                       (let ((__tmp110815
                                              (lambda (_hd104797_ _r104798_)
                                                (let* ((_hd104799104806_
                                                        _hd104797_)
                                                       (_E104801104810_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd104799104806_)))
               (_K104802104816_
                (lambda (_k104813_ _id104814_)
                  (let ((__tmp110816
                         (let ((__tmp110817
                                (let ((__tmp110818
                                       (let ((__tmp110819
                                              (let ((__tmp110820
                                                     (let ((__tmp110821
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k104813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp104795_ __tmp110821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp110820))))
                                         (declare (not safe))
                                         (cons __tmp110819 '()))))
                                  (declare (not safe))
                                  (cons _id104814_ __tmp110818))))
                           (declare (not safe))
                           (cons 'set! __tmp110817))))
                    (declare (not safe))
                    (cons __tmp110816 _r104798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd104799104806_))
                                                      (let ((_hd104803104819_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd104799104806_)))
                    (_tl104804104821_
                     (let () (declare (not safe)) (##cdr _hd104799104806_))))
                (let* ((_id104824_ _hd104803104819_)
                       (_k104826_ _tl104804104821_))
                  (declare (not safe))
                  (_K104802104816_ _k104826_ _id104824_)))
              (let () (declare (not safe)) (_E104801104810_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp110815
                                                 _bind104768_
                                                 _init104793_))))
                                  (declare (not safe))
                                  (_lp104764_
                                   _rest104792_
                                   __tmp110822
                                   __tmp110814)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104769104781_))
                            (let ((_hd104774104831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104769104781_)))
                                  (_tl104775104833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104769104781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd104774104831_))
                                  (let ((_hd104776104836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd104774104831_)))
                                        (_tl104777104838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd104774104831_))))
                                    (let ((_tmp104841_ _hd104776104836_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104777104838_))
                                          (let ((_hd104778104843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl104777104838_)))
                                                (_tl104779104845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104777104838_))))
                                            (let* ((_len104848_
                                                    _hd104778104843_)
                                                   (_init104850_
                                                    _tl104779104845_)
                                                   (_rest104852_
                                                    _tl104775104833_))
                                              (declare (not safe))
                                              (_K104773104828_
                                               _rest104852_
                                               _init104850_
                                               _len104848_
                                               _tmp104841_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else104771104789_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else104771104789_))))
                            (let ()
                              (declare (not safe))
                              (_else104771104789_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104753_
             _compile-simple104755_
             _compile-values104756_)))))
    (define __compile-letrec*-values%
      (lambda (_stx104508_)
        (letrec ((_compile-simple104510_
                  (lambda (_hd-ids104749_ _exprs104750_ _body104751_)
                    (let ((__tmp110827
                           (let ((__tmp110828
                                  (let ((__tmp110830
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids104749_)
                                              _exprs104750_))
                                        (__tmp110829
                                         (let ()
                                           (declare (not safe))
                                           (cons _body104751_ '()))))
                                    (declare (not safe))
                                    (cons __tmp110830 __tmp110829))))
                             (declare (not safe))
                             (cons 'letrec* __tmp110828))))
                      (declare (not safe))
                      (__SRC__% __tmp110827 _stx104508_))))
                 (_compile-values104511_
                  (lambda (_hd-ids104660_ _exprs104661_ _body104662_)
                    (let _lp104664_ ((_rest104666_ _hd-ids104660_)
                                     (_exprs104667_ _exprs104661_)
                                     (_bind104668_ '())
                                     (_post104669_ '()))
                      (let* ((_rest104670104684_ _rest104666_)
                             (_else104673104692_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind104512_
                                   _bind104668_
                                   _post104669_
                                   _body104662_)))))
                        (let ((_K104678104732_
                               (lambda (_rest104727_ _hd104728_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104728_))
                                     (let ((_id104730_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104728_))))
                                       (let ((__tmp110845 (cdr _exprs104667_))
                                             (__tmp110840
                                              (let ((__tmp110841
                                                     (let ((__tmp110842
                                                            (let ((__tmp110843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110844
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110844))))
                      (declare (not safe))
                      (cons __tmp110843 '()))))
               (declare (not safe))
               (cons _id104730_ __tmp110842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110841
                                                      _bind104668_)))
                                             (__tmp110836
                                              (let ((__tmp110837
                                                     (let ((__tmp110838
                                                            (let ((__tmp110839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs104667_)))
                      (declare (not safe))
                      (cons __tmp110839 '()))))
               (declare (not safe))
               (cons _id104730_ __tmp110838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110837
                                                      _post104669_))))
                                         (declare (not safe))
                                         (_lp104664_
                                          _rest104727_
                                          __tmp110845
                                          __tmp110840
                                          __tmp110836)))
                                     (let ((__tmp110835 (cdr _exprs104667_))
                                           (__tmp110831
                                            (let ((__tmp110832
                                                   (let ((__tmp110833
                                                          (let ((__tmp110834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs104667_)))
                    (declare (not safe))
                    (cons __tmp110834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp110833))))
                                              (declare (not safe))
                                              (cons __tmp110832
                                                    _post104669_))))
                                       (declare (not safe))
                                       (_lp104664_
                                        _rest104727_
                                        __tmp110835
                                        _bind104668_
                                        __tmp110831)))))
                              (_K104675104712_
                               (lambda (_rest104696_ _hd104697_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd104697_))
                                     (let ((_id104699_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd104697_))))
                                       (let ((__tmp110881 (cdr _exprs104667_))
                                             (__tmp110876
                                              (let ((__tmp110877
                                                     (let ((__tmp110878
                                                            (let ((__tmp110879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110880
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp110880))))
                      (declare (not safe))
                      (cons __tmp110879 '()))))
               (declare (not safe))
               (cons _id104699_ __tmp110878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110877
                                                      _bind104668_)))
                                             (__tmp110870
                                              (let ((__tmp110871
                                                     (let ((__tmp110872
                                                            (let ((__tmp110873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp110874
                                  (let ((__tmp110875 (car _exprs104667_)))
                                    (declare (not safe))
                                    (cons __tmp110875 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp110874))))
                      (declare (not safe))
                      (cons __tmp110873 '()))))
               (declare (not safe))
               (cons _id104699_ __tmp110872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp110871
                                                      _post104669_))))
                                         (declare (not safe))
                                         (_lp104664_
                                          _rest104696_
                                          __tmp110881
                                          __tmp110876
                                          __tmp110870)))
                                     (if (let ((__tmp110869
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd104697_))))
                                           (declare (not safe))
                                           (not __tmp110869))
                                         (let ((__tmp110868
                                                (cdr _exprs104667_))
                                               (__tmp110864
                                                (let ((__tmp110865
                                                       (let ((__tmp110866
                                                              (let ((__tmp110867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs104667_)))
                        (declare (not safe))
                        (cons __tmp110867 '()))))
                 (declare (not safe))
                 (cons '#f __tmp110866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp110865
                                                        _post104669_))))
                                           (declare (not safe))
                                           (_lp104664_
                                            _rest104696_
                                            __tmp110868
                                            _bind104668_
                                            __tmp110864))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd104697_))
                                             (let* ((_len104701_
                                                     (length _hd104697_))
                                                    (_tmp104703_
                                                     (let ((__tmp110846
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp110846))))
                                               (let ((__tmp110863
                                                      (cdr _exprs104667_))
                                                     (__tmp110856
                                                      (let ((__tmp110857
                                                             (lambda (_id104706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r104707_)
                       (if (let () (declare (not safe)) (__AST-e _id104706_))
                           (let ((__tmp110858
                                  (let ((__tmp110862
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id104706_)))
                                        (__tmp110859
                                         (let ((__tmp110860
                                                (let ((__tmp110861
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp110861))))
                                           (declare (not safe))
                                           (cons __tmp110860 '()))))
                                    (declare (not safe))
                                    (cons __tmp110862 __tmp110859))))
                             (declare (not safe))
                             (cons __tmp110858 _r104707_))
                           _r104707_))))
                (declare (not safe))
                (foldl1 __tmp110857 _bind104668_ _hd104697_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp110847
                                                      (let ((__tmp110848
                                                             (let ((__tmp110849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110855 (car _exprs104667_))
                                  (__tmp110850
                                   (let ((__tmp110851
                                          (let ((__tmp110853
                                                 (lambda (_id104709_ _k104710_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id104709_))
                                                       (let ((__tmp110854
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id104709_))))
                 (declare (not safe))
                 (cons __tmp110854 _k104710_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp110852
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len104701_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp110853
                                             _hd104697_
                                             __tmp110852))))
                                     (declare (not safe))
                                     (cons _len104701_ __tmp110851))))
                              (declare (not safe))
                              (cons __tmp110855 __tmp110850))))
                       (declare (not safe))
                       (cons _tmp104703_ __tmp110849))))
                (declare (not safe))
                (cons __tmp110848 _post104669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp104664_
                                                  _rest104696_
                                                  __tmp110863
                                                  __tmp110856
                                                  __tmp110847)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx104508_
                                                _hd104697_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104670104684_))
                              (let ((_tl104680104737_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104670104684_)))
                                    (_hd104679104735_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104670104684_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104679104735_))
                                    (let ((_tl104682104742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104679104735_)))
                                          (_hd104681104740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104679104735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104682104742_))
                                          (let ((_hd104745_ _hd104681104740_)
                                                (_rest104747_
                                                 _tl104680104737_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104678104732_
                                               _rest104747_
                                               _hd104745_)))
                                          (let ((_hd104720_ _hd104679104735_)
                                                (_rest104722_
                                                 _tl104680104737_))
                                            (let ()
                                              (declare (not safe))
                                              (_K104675104712_
                                               _rest104722_
                                               _hd104720_)))))
                                    (let ((_hd104720_ _hd104679104735_)
                                          (_rest104722_ _tl104680104737_))
                                      (let ()
                                        (declare (not safe))
                                        (_K104675104712_
                                         _rest104722_
                                         _hd104720_)))))
                              (let ()
                                (declare (not safe))
                                (_else104673104692_))))))))
                 (_compile-bind104512_
                  (lambda (_bind104656_ _post104657_ _body104658_)
                    (let ((__tmp110882
                           (let ((__tmp110883
                                  (let ((__tmp110886 (reverse _bind104656_))
                                        (__tmp110884
                                         (let ((__tmp110885
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post104513_
                                                   _post104657_
                                                   _body104658_))))
                                           (declare (not safe))
                                           (cons __tmp110885 '()))))
                                    (declare (not safe))
                                    (cons __tmp110886 __tmp110884))))
                             (declare (not safe))
                             (cons 'let __tmp110883))))
                      (declare (not safe))
                      (__SRC__% __tmp110882 _stx104508_))))
                 (_compile-post104513_
                  (lambda (_post104515_ _body104516_)
                    (let ((__tmp110887
                           (let ((__tmp110888
                                  (let ((__tmp110889
                                         (let ((__tmp110891
                                                (lambda (_hd104518_ _r104519_)
                                                  (let* ((_hd104520104543_
                                                          _hd104518_)
                                                         (_E104524104547_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd104520104543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K104537104641_
                                                           (lambda (_expr104639_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr104639_ _r104519_))))
                  (_K104532104619_
                   (lambda (_expr104616_ _id104617_)
                     (let ((__tmp110892
                            (let ((__tmp110893
                                   (let ((__tmp110894
                                          (let ((__tmp110895
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr104616_ '()))))
                                            (declare (not safe))
                                            (cons _id104617_ __tmp110895))))
                                     (declare (not safe))
                                     (cons 'set! __tmp110894))))
                              (declare (not safe))
                              (__SRC__% __tmp110893 _stx104508_))))
                       (declare (not safe))
                       (cons __tmp110892 _r104519_))))
                  (_K104525104586_
                   (lambda (_init104551_ _len104552_ _expr104553_ _tmp104554_)
                     (let ((__tmp110896
                            (let ((__tmp110897
                                   (let ((__tmp110898
                                          (let ((__tmp110912
                                                 (let ((__tmp110913
                                                        (let ((__tmp110914
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr104553_ '()))))
                  (declare (not safe))
                  (cons _tmp104554_ __tmp110914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110913 '())))
                                                (__tmp110899
                                                 (let ((__tmp110908
                                                        (let ((__tmp110909
                                                               (let ((__tmp110910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp110911
                                     (let ()
                                       (declare (not safe))
                                       (cons _len104552_ '()))))
                                (declare (not safe))
                                (cons _tmp104554_ __tmp110911))))
                         (declare (not safe))
                         (cons '__check-values __tmp110910))))
                  (declare (not safe))
                  (__SRC__% __tmp110909 _stx104508_)))
               (__tmp110900
                (let ((__tmp110901
                       (map (lambda (_hd104556_)
                              (let* ((_hd104557104564_ _hd104556_)
                                     (_E104559104568_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd104557104564_)))
                                     (_K104560104574_
                                      (lambda (_k104571_ _id104572_)
                                        (let ((__tmp110902
                                               (let ((__tmp110903
                                                      (let ((__tmp110904
                                                             (let ((__tmp110905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp110906
                                   (let ((__tmp110907
                                          (let ()
                                            (declare (not safe))
                                            (cons _k104571_ '()))))
                                     (declare (not safe))
                                     (cons _tmp104554_ __tmp110907))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp110906))))
                       (declare (not safe))
                       (cons __tmp110905 '()))))
                (declare (not safe))
                (cons _id104572_ __tmp110904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp110903))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp110902
                                           _stx104508_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd104557104564_))
                                    (let ((_hd104561104577_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd104557104564_)))
                                          (_tl104562104579_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd104557104564_))))
                                      (let* ((_id104582_ _hd104561104577_)
                                             (_k104584_ _tl104562104579_))
                                        (declare (not safe))
                                        (_K104560104574_
                                         _k104584_
                                         _id104582_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E104559104568_)))))
                            _init104551_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp110901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp110908
                                                         __tmp110900))))
                                            (declare (not safe))
                                            (cons __tmp110912 __tmp110899))))
                                     (declare (not safe))
                                     (cons 'let __tmp110898))))
                              (declare (not safe))
                              (__SRC__% __tmp110897 _stx104508_))))
                       (declare (not safe))
                       (cons __tmp110896 _r104519_)))))
              (if (let () (declare (not safe)) (##pair? _hd104520104543_))
                  (let ((_tl104539104646_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104520104543_)))
                        (_hd104538104644_
                         (let ()
                           (declare (not safe))
                           (##car _hd104520104543_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104538104644_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104539104646_))
                            (let ((_tl104541104651_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104539104646_)))
                                  (_hd104540104649_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104539104646_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104541104651_))
                                  (let ((_expr104654_ _hd104540104649_))
                                    (declare (not safe))
                                    (_K104537104641_ _expr104654_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104541104651_))
                                      (let ((_tl104531104605_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104541104651_)))
                                            (_hd104530104603_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104541104651_))))
                                        (let ((_tmp104594_ _hd104538104644_)
                                              (_expr104601_ _hd104540104649_)
                                              (_len104608_ _hd104530104603_)
                                              (_init104610_ _tl104531104605_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104525104586_
                                             _init104610_
                                             _len104608_
                                             _expr104601_
                                             _tmp104594_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104524104547_)))))
                            (let () (declare (not safe)) (_E104524104547_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104539104646_))
                            (let ((_tl104536104631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104539104646_)))
                                  (_hd104535104629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104539104646_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104536104631_))
                                  (let ((_id104627_ _hd104538104644_)
                                        (_expr104634_ _hd104535104629_))
                                    (let ()
                                      (declare (not safe))
                                      (_K104532104619_
                                       _expr104634_
                                       _id104627_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl104536104631_))
                                      (let ((_tl104531104605_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl104536104631_)))
                                            (_hd104530104603_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl104536104631_))))
                                        (let ((_tmp104594_ _hd104538104644_)
                                              (_expr104601_ _hd104535104629_)
                                              (_len104608_ _hd104530104603_)
                                              (_init104610_ _tl104531104605_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104525104586_
                                             _init104610_
                                             _len104608_
                                             _expr104601_
                                             _tmp104594_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E104524104547_)))))
                            (let () (declare (not safe)) (_E104524104547_)))))
                  (let () (declare (not safe)) (_E104524104547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp110890
                                                (list _body104516_)))
                                           (declare (not safe))
                                           (foldl1 __tmp110891
                                                   __tmp110890
                                                   _post104515_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp110889))))
                             (declare (not safe))
                             (cons 'begin __tmp110888))))
                      (declare (not safe))
                      (__SRC__% __tmp110887 _stx104508_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx104508_
             _compile-simple104510_
             _compile-values104511_)))))
    (define __compile-call%
      (lambda (_stx104468_)
        (let* ((_$e104470_ _stx104468_)
               (_$E104472104481_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104470_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104470_))
              (let* ((_$tgt104473104484_
                      (let () (declare (not safe)) (__AST-e _$e104470_)))
                     (_$hd104474104487_
                      (let () (declare (not safe)) (##car _$tgt104473104484_)))
                     (_$tl104475104490_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104473104484_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104475104490_))
                    (let* ((_$tgt104476104494_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104475104490_)))
                           (_$hd104477104497_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104476104494_)))
                           (_$tl104478104500_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104476104494_))))
                      (let* ((_rator104504_ _$hd104477104497_)
                             (_rands104506_ _$tl104478104500_)
                             (__tmp110915
                              (let ((__tmp110917
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator104504_)))
                                    (__tmp110916
                                     (map __compile _rands104506_)))
                                (declare (not safe))
                                (cons __tmp110917 __tmp110916))))
                        (declare (not safe))
                        (__SRC__% __tmp110915 _stx104468_)))
                    (let () (declare (not safe)) (_$E104472104481_))))
              (let () (declare (not safe)) (_$E104472104481_))))))
    (define __compile-ref%
      (lambda (_stx104430_)
        (let* ((_$e104432_ _stx104430_)
               (_$E104434104443_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104432_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104432_))
              (let* ((_$tgt104435104446_
                      (let () (declare (not safe)) (__AST-e _$e104432_)))
                     (_$hd104436104449_
                      (let () (declare (not safe)) (##car _$tgt104435104446_)))
                     (_$tl104437104452_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104435104446_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104437104452_))
                    (let* ((_$tgt104438104456_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104437104452_)))
                           (_$hd104439104459_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104438104456_)))
                           (_$tl104440104462_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104438104456_))))
                      (let ((_id104466_ _$hd104439104459_))
                        (if (let ((__tmp110918
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104440104462_))))
                              (declare (not safe))
                              (equal? __tmp110918 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id104466_ _stx104430_))
                            (let () (declare (not safe)) (_$E104434104443_)))))
                    (let () (declare (not safe)) (_$E104434104443_))))
              (let () (declare (not safe)) (_$E104434104443_))))))
    (define __compile-setq%
      (lambda (_stx104377_)
        (let* ((_$e104379_ _stx104377_)
               (_$E104381104393_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104379_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104379_))
              (let* ((_$tgt104382104396_
                      (let () (declare (not safe)) (__AST-e _$e104379_)))
                     (_$hd104383104399_
                      (let () (declare (not safe)) (##car _$tgt104382104396_)))
                     (_$tl104384104402_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104382104396_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104384104402_))
                    (let* ((_$tgt104385104406_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104384104402_)))
                           (_$hd104386104409_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104385104406_)))
                           (_$tl104387104412_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104385104406_))))
                      (let ((_id104416_ _$hd104386104409_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104387104412_))
                            (let* ((_$tgt104388104418_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104387104412_)))
                                   (_$hd104389104421_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104388104418_)))
                                   (_$tl104390104424_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104388104418_))))
                              (let ((_expr104428_ _$hd104389104421_))
                                (if (let ((__tmp110924
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl104390104424_))))
                                      (declare (not safe))
                                      (equal? __tmp110924 '()))
                                    (let ((__tmp110919
                                           (let ((__tmp110920
                                                  (let ((__tmp110923
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id104416_
                                                            _stx104377_)))
                                                        (__tmp110921
                                                         (let ((__tmp110922
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr104428_))))
                   (declare (not safe))
                   (cons __tmp110922 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp110923
                                                          __tmp110921))))
                                             (declare (not safe))
                                             (cons 'set! __tmp110920))))
                                      (declare (not safe))
                                      (__SRC__% __tmp110919 _stx104377_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104381104393_)))))
                            (let () (declare (not safe)) (_$E104381104393_)))))
                    (let () (declare (not safe)) (_$E104381104393_))))
              (let () (declare (not safe)) (_$E104381104393_))))))
    (define __compile-if%
      (lambda (_stx104309_)
        (let* ((_$e104311_ _stx104309_)
               (_$E104313104328_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104311_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104311_))
              (let* ((_$tgt104314104331_
                      (let () (declare (not safe)) (__AST-e _$e104311_)))
                     (_$hd104315104334_
                      (let () (declare (not safe)) (##car _$tgt104314104331_)))
                     (_$tl104316104337_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104314104331_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104316104337_))
                    (let* ((_$tgt104317104341_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104316104337_)))
                           (_$hd104318104344_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104317104341_)))
                           (_$tl104319104347_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104317104341_))))
                      (let ((_p104351_ _$hd104318104344_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl104319104347_))
                            (let* ((_$tgt104320104353_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl104319104347_)))
                                   (_$hd104321104356_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt104320104353_)))
                                   (_$tl104322104359_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt104320104353_))))
                              (let ((_t104363_ _$hd104321104356_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl104322104359_))
                                    (let* ((_$tgt104323104365_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl104322104359_)))
                                           (_$hd104324104368_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt104323104365_)))
                                           (_$tl104325104371_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt104323104365_))))
                                      (let ((_f104375_ _$hd104324104368_))
                                        (if (let ((__tmp110932
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl104325104371_))))
                                              (declare (not safe))
                                              (equal? __tmp110932 '()))
                                            (let ((__tmp110925
                                                   (let ((__tmp110926
                                                          (let ((__tmp110931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p104351_)))
                        (__tmp110927
                         (let ((__tmp110930
                                (let ()
                                  (declare (not safe))
                                  (__compile _t104363_)))
                               (__tmp110928
                                (let ((__tmp110929
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f104375_))))
                                  (declare (not safe))
                                  (cons __tmp110929 '()))))
                           (declare (not safe))
                           (cons __tmp110930 __tmp110928))))
                    (declare (not safe))
                    (cons __tmp110931 __tmp110927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp110926))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp110925
                                               _stx104309_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E104313104328_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E104313104328_)))))
                            (let () (declare (not safe)) (_$E104313104328_)))))
                    (let () (declare (not safe)) (_$E104313104328_))))
              (let () (declare (not safe)) (_$E104313104328_))))))
    (define __compile-quote%
      (lambda (_stx104271_)
        (let* ((_$e104273_ _stx104271_)
               (_$E104275104284_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104273_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104273_))
              (let* ((_$tgt104276104287_
                      (let () (declare (not safe)) (__AST-e _$e104273_)))
                     (_$hd104277104290_
                      (let () (declare (not safe)) (##car _$tgt104276104287_)))
                     (_$tl104278104293_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104276104287_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104278104293_))
                    (let* ((_$tgt104279104297_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104278104293_)))
                           (_$hd104280104300_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104279104297_)))
                           (_$tl104281104303_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104279104297_))))
                      (let ((_e104307_ _$hd104280104300_))
                        (if (let ((__tmp110936
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104281104303_))))
                              (declare (not safe))
                              (equal? __tmp110936 '()))
                            (let ((__tmp110933
                                   (let ((__tmp110934
                                          (let ((__tmp110935
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e104307_))))
                                            (declare (not safe))
                                            (cons __tmp110935 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110934))))
                              (declare (not safe))
                              (__SRC__% __tmp110933 _stx104271_))
                            (let () (declare (not safe)) (_$E104275104284_)))))
                    (let () (declare (not safe)) (_$E104275104284_))))
              (let () (declare (not safe)) (_$E104275104284_))))))
    (define __compile-quote-syntax%
      (lambda (_stx104233_)
        (let* ((_$e104235_ _stx104233_)
               (_$E104237104246_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e104235_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e104235_))
              (let* ((_$tgt104238104249_
                      (let () (declare (not safe)) (__AST-e _$e104235_)))
                     (_$hd104239104252_
                      (let () (declare (not safe)) (##car _$tgt104238104249_)))
                     (_$tl104240104255_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt104238104249_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl104240104255_))
                    (let* ((_$tgt104241104259_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl104240104255_)))
                           (_$hd104242104262_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt104241104259_)))
                           (_$tl104243104265_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt104241104259_))))
                      (let ((_e104269_ _$hd104242104262_))
                        (if (let ((__tmp110939
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl104243104265_))))
                              (declare (not safe))
                              (equal? __tmp110939 '()))
                            (let ((__tmp110937
                                   (let ((__tmp110938
                                          (let ()
                                            (declare (not safe))
                                            (cons _e104269_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp110938))))
                              (declare (not safe))
                              (__SRC__% __tmp110937 _stx104233_))
                            (let () (declare (not safe)) (_$E104237104246_)))))
                    (let () (declare (not safe)) (_$E104237104246_))))
              (let () (declare (not safe)) (_$E104237104246_))))))
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
