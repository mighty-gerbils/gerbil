(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708271949)
  (begin
    (define __context::t
      (let ((__tmp125533 (list))
            (__tmp125531
             (let ((__tmp125532
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125532 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp125533
         '(t ns super table)
         __tmp125531
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args121268_ (apply make-instance __context::t _$args121268_)))
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
      (let ((__tmp125536 (list))
            (__tmp125534
             (let ((__tmp125535
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125535 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp125536
         '(id)
         __tmp125534
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args121265_ (apply make-instance __runtime::t _$args121265_)))
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
      (let ((__tmp125539 (list))
            (__tmp125537
             (let ((__tmp125538
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125538 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp125539
         '(e id)
         __tmp125537
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args121262_ (apply make-instance __syntax::t _$args121262_)))
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
      (let ((__tmp125542 (list __syntax::t))
            (__tmp125540
             (let ((__tmp125541
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125541 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp125542
         '()
         __tmp125540
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args121259_ (apply make-instance __macro::t _$args121259_)))
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
      (let ((__tmp125545 (list __macro::t))
            (__tmp125543
             (let ((__tmp125544
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125544 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp125545
         '()
         __tmp125543
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args121256_
        (apply make-instance __special-form::t _$args121256_)))
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
      (let ((__tmp125548 (list __syntax::t))
            (__tmp125546
             (let ((__tmp125547
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125547 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp125548
         '()
         __tmp125546
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args121253_
        (apply make-instance __core-form::t _$args121253_)))
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
      (let ((__tmp125551 (list __core-form::t))
            (__tmp125549
             (let ((__tmp125550
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125550 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp125551
         '()
         __tmp125549
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args121250_
        (apply make-instance __core-expression::t _$args121250_)))
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
      (let ((__tmp125554 (list __core-form::t))
            (__tmp125552
             (let ((__tmp125553
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125553 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp125554
         '()
         __tmp125552
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args121247_
        (apply make-instance __core-special-form::t _$args121247_)))
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
      (let ((__tmp125557 (list __syntax::t))
            (__tmp125555
             (let ((__tmp125556
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125556 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp125557
         '()
         __tmp125555
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args121244_
        (apply make-instance __struct-info::t _$args121244_)))
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
      (let ((__tmp125560 (list __syntax::t))
            (__tmp125558
             (let ((__tmp125559
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125559 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp125560
         '()
         __tmp125558
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args121241_ (apply make-instance __feature::t _$args121241_)))
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
      (let ((__tmp125563 (list __context::t))
            (__tmp125561
             (let ((__tmp125562
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125562 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp125563
         '(id path import export)
         __tmp125561
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args121238_ (apply make-instance __module::t _$args121238_)))
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
    (define __*modules* (let () (declare (not safe)) (make-hash-table)))
    (define __*core* (let () (declare (not safe)) (make-hash-table-eq)))
    (define __*top*
      (let ((__tmp125565
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp125564 (let () (declare (not safe)) (make-hash-table-eq))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp125565 __tmp125564)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id121213_ _ctx121214_)
        (if _ctx121214_
            (let ((_id121216_
                   (let () (declare (not safe)) (__AST-e _id121213_))))
              (let _lp121218_ ((_ctx121220_ _ctx121214_))
                (let ((_$e121222_
                       (let ((__tmp125566
                              (##structure-ref
                               _ctx121220_
                               '4
                               __context::t
                               '#f)))
                         (declare (not safe))
                         (hash-ref__% __tmp125566 _id121216_ '#f))))
                  (if _$e121222_
                      (values _$e121222_)
                      (let ((_$e121225_
                             (##structure-ref
                              _ctx121220_
                              '3
                              __context::t
                              '#f)))
                        (if _$e121225_
                            (let ()
                              (declare (not safe))
                              (_lp121218_ _$e121225_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id121231_)
        (let ((_ctx121233_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id121231_ _ctx121233_))))
    (define __core-resolve
      (lambda _g125568_
        (let ((_g125567_ (let () (declare (not safe)) (##length _g125568_))))
          (cond ((let () (declare (not safe)) (##fx= _g125567_ 1))
                 (apply (lambda (_id121231_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id121231_)))
                        _g125568_))
                ((let () (declare (not safe)) (##fx= _g125567_ 2))
                 (apply (lambda (_id121235_ _ctx121236_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id121235_ _ctx121236_)))
                        _g125568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g125568_))))))
    (define __core-bound-id?__%
      (lambda (_id121196_ _is?121197_)
        (let ((_$e121199_
               (let () (declare (not safe)) (__core-resolve__0 _id121196_))))
          (if _$e121199_ (_is?121197_ _$e121199_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id121205_)
        (let ((_is?121207_ true))
          (declare (not safe))
          (__core-bound-id?__% _id121205_ _is?121207_))))
    (define __core-bound-id?
      (lambda _g125570_
        (let ((_g125569_ (let () (declare (not safe)) (##length _g125570_))))
          (cond ((let () (declare (not safe)) (##fx= _g125569_ 1))
                 (apply (lambda (_id121205_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id121205_)))
                        _g125570_))
                ((let () (declare (not safe)) (##fx= _g125569_ 2))
                 (apply (lambda (_id121209_ _is?121210_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id121209_ _is?121210_)))
                        _g125570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g125570_))))))
    (define __core-bind-runtime!__%
      (lambda (_id121179_ _eid121180_ _ctx121181_)
        (if _eid121180_
            (let ((__tmp125573
                   (##structure-ref _ctx121181_ '4 __context::t '#f))
                  (__tmp125572
                   (let () (declare (not safe)) (__AST-e _id121179_)))
                  (__tmp125571
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid121180_))))
              (declare (not safe))
              (hash-put! __tmp125573 __tmp125572 __tmp125571))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id121186_ _eid121187_)
        (let ((_ctx121189_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id121186_ _eid121187_ _ctx121189_))))
    (define __core-bind-runtime!
      (lambda _g125575_
        (let ((_g125574_ (let () (declare (not safe)) (##length _g125575_))))
          (cond ((let () (declare (not safe)) (##fx= _g125574_ 2))
                 (apply (lambda (_id121186_ _eid121187_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id121186_ _eid121187_)))
                        _g125575_))
                ((let () (declare (not safe)) (##fx= _g125574_ 3))
                 (apply (lambda (_id121191_ _eid121192_ _ctx121193_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id121191_
                             _eid121192_
                             _ctx121193_)))
                        _g125575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g125575_))))))
    (define __core-bind-syntax!__%
      (lambda (_id121162_ _e121163_ _make121164_)
        (let ((__tmp125576
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e121163_
                      'gerbil/runtime/eval#__syntax::t))
                   _e121163_
                   (_make121164_ _e121163_ _id121162_))))
          (declare (not safe))
          (hash-put! __*core* _id121162_ __tmp125576))))
    (define __core-bind-syntax!__0
      (lambda (_id121169_ _e121170_)
        (let ((_make121172_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id121169_ _e121170_ _make121172_))))
    (define __core-bind-syntax!
      (lambda _g125578_
        (let ((_g125577_ (let () (declare (not safe)) (##length _g125578_))))
          (cond ((let () (declare (not safe)) (##fx= _g125577_ 2))
                 (apply (lambda (_id121169_ _e121170_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id121169_ _e121170_)))
                        _g125578_))
                ((let () (declare (not safe)) (##fx= _g125577_ 3))
                 (apply (lambda (_id121174_ _e121175_ _make121176_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id121174_
                             _e121175_
                             _make121176_)))
                        _g125578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g125578_))))))
    (define __core-bind-macro!
      (lambda (_id121158_ _e121159_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id121158_ _e121159_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id121155_ _e121156_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id121155_ _e121156_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id121139_ _e121140_ _ctx121141_)
        (let ((__tmp125582 (##structure-ref _ctx121141_ '4 __context::t '#f))
              (__tmp125581 (let () (declare (not safe)) (__AST-e _id121139_)))
              (__tmp125579
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e121140_
                      'gerbil/runtime/eval#__syntax::t))
                   _e121140_
                   (let ((__tmp125580
                          (let () (declare (not safe)) (__AST-e _id121139_))))
                     (declare (not safe))
                     (##structure __syntax::t _e121140_ __tmp125580)))))
          (declare (not safe))
          (hash-put! __tmp125582 __tmp125581 __tmp125579))))
    (define __core-bind-user-syntax!__0
      (lambda (_id121146_ _e121147_)
        (let ((_ctx121149_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id121146_ _e121147_ _ctx121149_))))
    (define __core-bind-user-syntax!
      (lambda _g125584_
        (let ((_g125583_ (let () (declare (not safe)) (##length _g125584_))))
          (cond ((let () (declare (not safe)) (##fx= _g125583_ 2))
                 (apply (lambda (_id121146_ _e121147_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id121146_
                             _e121147_)))
                        _g125584_))
                ((let () (declare (not safe)) (##fx= _g125583_ 3))
                 (apply (lambda (_id121151_ _e121152_ _ctx121153_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id121151_
                             _e121152_
                             _ctx121153_)))
                        _g125584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g125584_))))))
    (define make-__runtime-id__%
      (lambda (_id121120_ _ctx121121_)
        (let ((_id121123_ (let () (declare (not safe)) (__AST-e _id121120_))))
          (if (let () (declare (not safe)) (eq? _id121123_ '_))
              '#f
              (if (uninterned-symbol? _id121123_)
                  (gensym _id121123_)
                  (if (let () (declare (not safe)) (symbol? _id121123_))
                      (let ((_$e121125_
                             (##structure-ref
                              _ctx121121_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e121125_))
                            (gensym _id121123_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e121125_))
                                (let ((__tmp125585
                                       (##structure-ref
                                        _ctx121121_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp125585 '"#" _id121123_))
                                _id121123_)))
                      (error '"Illegal runtime identifier" _id121123_)))))))
    (define make-__runtime-id__0
      (lambda (_id121131_)
        (let ((_ctx121133_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id121131_ _ctx121133_))))
    (define make-__runtime-id
      (lambda _g125587_
        (let ((_g125586_ (let () (declare (not safe)) (##length _g125587_))))
          (cond ((let () (declare (not safe)) (##fx= _g125586_ 1))
                 (apply (lambda (_id121131_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id121131_)))
                        _g125587_))
                ((let () (declare (not safe)) (##fx= _g125586_ 2))
                 (apply (lambda (_id121135_ _ctx121136_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id121135_ _ctx121136_)))
                        _g125587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g125587_))))))
    (define make-__context-local__%
      (lambda (_super121109_)
        (let ((__tmp125588 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super121109_ __tmp125588))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super121115_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super121115_))))
    (define make-__context-local
      (lambda _g125590_
        (let ((_g125589_ (let () (declare (not safe)) (##length _g125590_))))
          (cond ((let () (declare (not safe)) (##fx= _g125589_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g125590_))
                ((let () (declare (not safe)) (##fx= _g125589_ 1))
                 (apply (lambda (_super121117_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super121117_)))
                        _g125590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g125590_))))))
    (define make-__context-module__%
      (lambda (_id121089_ _ns121090_ _path121091_ _super121092_)
        (let ((__tmp125591 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns121090_
           _super121092_
           __tmp125591
           _id121089_
           _path121091_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id121097_ _ns121098_ _path121099_)
        (let ((_super121101_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id121097_
           _ns121098_
           _path121099_
           _super121101_))))
    (define make-__context-module
      (lambda _g125593_
        (let ((_g125592_ (let () (declare (not safe)) (##length _g125593_))))
          (cond ((let () (declare (not safe)) (##fx= _g125592_ 3))
                 (apply (lambda (_id121097_ _ns121098_ _path121099_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id121097_
                             _ns121098_
                             _path121099_)))
                        _g125593_))
                ((let () (declare (not safe)) (##fx= _g125592_ 4))
                 (apply (lambda (_id121103_
                                 _ns121104_
                                 _path121105_
                                 _super121106_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id121103_
                             _ns121104_
                             _path121105_
                             _super121106_)))
                        _g125593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g125593_))))))
    (define __SRC__%
      (lambda (_e121072_ _src-stx121073_)
        (if (or (let () (declare (not safe)) (pair? _e121072_))
                (let () (declare (not safe)) (symbol? _e121072_)))
            (let ((__tmp125597
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx121073_
                          'gerbil#AST::t))
                       (let ((__tmp125598
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx121073_))))
                         (declare (not safe))
                         (__locat __tmp125598))
                       '#f)))
              (declare (not safe))
              (##make-source _e121072_ __tmp125597))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e121072_ 'gerbil#AST::t))
                (let ((__tmp125596
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e121072_ '1 AST::t '#f)))
                      (__tmp125594
                       (let ((__tmp125595
                              (let ()
                                (declare (not safe))
                                (__AST-source _e121072_))))
                         (declare (not safe))
                         (__locat __tmp125595))))
                  (declare (not safe))
                  (##make-source __tmp125596 __tmp125594))
                (error '"BUG! Cannot sourcify object" _e121072_)))))
    (define __SRC__0
      (lambda (_e121081_)
        (let ((_src-stx121083_ '#f))
          (declare (not safe))
          (__SRC__% _e121081_ _src-stx121083_))))
    (define __SRC
      (lambda _g125600_
        (let ((_g125599_ (let () (declare (not safe)) (##length _g125600_))))
          (cond ((let () (declare (not safe)) (##fx= _g125599_ 1))
                 (apply (lambda (_e121081_)
                          (let () (declare (not safe)) (__SRC__0 _e121081_)))
                        _g125600_))
                ((let () (declare (not safe)) (##fx= _g125599_ 2))
                 (apply (lambda (_e121085_ _src-stx121086_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e121085_ _src-stx121086_)))
                        _g125600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g125600_))))))
    (define __locat
      (lambda (_loc121069_)
        (if (let () (declare (not safe)) (##locat? _loc121069_))
            _loc121069_
            '#f)))
    (define __check-values
      (lambda (_obj121064_ _k121065_)
        (let ((_count121067_
               (if (let () (declare (not safe)) (##values? _obj121064_))
                   (let () (declare (not safe)) (##vector-length _obj121064_))
                   '1)))
          (if (fx= _count121067_ _k121065_)
              '#!void
              (error (if (fx< _count121067_ _k121065_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj121064_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj121064_))
                         _obj121064_)
                     _k121065_)))))
    (define __compile
      (lambda (_stx121034_)
        (let* ((_$e121036_ _stx121034_)
               (_$E121038121044_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121036_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121036_))
              (let* ((_$tgt121039121047_
                      (let () (declare (not safe)) (__AST-e _$e121036_)))
                     (_$hd121040121050_
                      (let () (declare (not safe)) (##car _$tgt121039121047_)))
                     (_$tl121041121053_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121039121047_))))
                (let* ((_form121057_ _$hd121040121050_)
                       (_$e121059_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form121057_))))
                  (if _$e121059_
                      ((lambda (_bind121062_)
                         ((##structure-ref _bind121062_ '1 __syntax::t '#f)
                          _stx121034_))
                       _$e121059_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx121034_
                         _form121057_)))))
              (let () (declare (not safe)) (_$E121038121044_))))))
    (define __compile-error__%
      (lambda (_stx121021_ _detail121022_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx121021_
           _detail121022_))))
    (define __compile-error__0
      (lambda (_stx121027_)
        (let ((_detail121029_ '#f))
          (declare (not safe))
          (__compile-error__% _stx121027_ _detail121029_))))
    (define __compile-error
      (lambda _g125602_
        (let ((_g125601_ (let () (declare (not safe)) (##length _g125602_))))
          (cond ((let () (declare (not safe)) (##fx= _g125601_ 1))
                 (apply (lambda (_stx121027_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx121027_)))
                        _g125602_))
                ((let () (declare (not safe)) (##fx= _g125601_ 2))
                 (apply (lambda (_stx121031_ _detail121032_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx121031_ _detail121032_)))
                        _g125602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g125602_))))))
    (define __compile-ignore%
      (lambda (_stx121018_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx121018_))))
    (define __compile-begin%
      (lambda (_stx120993_)
        (let* ((_$e120995_ _stx120993_)
               (_$E120997121003_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120995_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120995_))
              (let* ((_$tgt120998121006_
                      (let () (declare (not safe)) (__AST-e _$e120995_)))
                     (_$hd120999121009_
                      (let () (declare (not safe)) (##car _$tgt120998121006_)))
                     (_$tl121000121012_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120998121006_))))
                (let* ((_body121016_ _$tl121000121012_)
                       (__tmp125603
                        (let ((__tmp125604 (map __compile _body121016_)))
                          (declare (not safe))
                          (cons 'begin __tmp125604))))
                  (declare (not safe))
                  (__SRC__% __tmp125603 _stx120993_)))
              (let () (declare (not safe)) (_$E120997121003_))))))
    (define __compile-begin-foreign%
      (lambda (_stx120968_)
        (let* ((_$e120970_ _stx120968_)
               (_$E120972120978_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120970_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120970_))
              (let* ((_$tgt120973120981_
                      (let () (declare (not safe)) (__AST-e _$e120970_)))
                     (_$hd120974120984_
                      (let () (declare (not safe)) (##car _$tgt120973120981_)))
                     (_$tl120975120987_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120973120981_))))
                (let* ((_body120991_ _$tl120975120987_)
                       (__tmp125605
                        (let ((__tmp125606
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body120991_))))
                          (declare (not safe))
                          (cons 'begin __tmp125606))))
                  (declare (not safe))
                  (__SRC__% __tmp125605 _stx120968_)))
              (let () (declare (not safe)) (_$E120972120978_))))))
    (define __compile-import%
      (lambda (_stx120943_)
        (let* ((_$e120945_ _stx120943_)
               (_$E120947120953_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120945_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120945_))
              (let* ((_$tgt120948120956_
                      (let () (declare (not safe)) (__AST-e _$e120945_)))
                     (_$hd120949120959_
                      (let () (declare (not safe)) (##car _$tgt120948120956_)))
                     (_$tl120950120962_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120948120956_))))
                (let* ((_body120966_ _$tl120950120962_)
                       (__tmp125607
                        (let ((__tmp125608
                               (let ((__tmp125609
                                      (let ((__tmp125610
                                             (let ()
                                               (declare (not safe))
                                               (cons _body120966_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp125610))))
                                 (declare (not safe))
                                 (cons __tmp125609 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp125608))))
                  (declare (not safe))
                  (__SRC__% __tmp125607 _stx120943_)))
              (let () (declare (not safe)) (_$E120947120953_))))))
    (define __compile-begin-annotation%
      (lambda (_stx120890_)
        (let* ((_$e120892_ _stx120890_)
               (_$E120894120906_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120892_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120892_))
              (let* ((_$tgt120895120909_
                      (let () (declare (not safe)) (__AST-e _$e120892_)))
                     (_$hd120896120912_
                      (let () (declare (not safe)) (##car _$tgt120895120909_)))
                     (_$tl120897120915_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120895120909_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120897120915_))
                    (let* ((_$tgt120898120919_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120897120915_)))
                           (_$hd120899120922_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120898120919_)))
                           (_$tl120900120925_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120898120919_))))
                      (let ((_ann120929_ _$hd120899120922_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120900120925_))
                            (let* ((_$tgt120901120931_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120900120925_)))
                                   (_$hd120902120934_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120901120931_)))
                                   (_$tl120903120937_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120901120931_))))
                              (let ((_expr120941_ _$hd120902120934_))
                                (if (let ((__tmp125611
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120903120937_))))
                                      (declare (not safe))
                                      (equal? __tmp125611 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr120941_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120894120906_)))))
                            (let () (declare (not safe)) (_$E120894120906_)))))
                    (let () (declare (not safe)) (_$E120894120906_))))
              (let () (declare (not safe)) (_$E120894120906_))))))
    (define __compile-define-values%
      (lambda (_stx120781_)
        (let* ((_$e120783_ _stx120781_)
               (_$E120785120797_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120783_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120783_))
              (let* ((_$tgt120786120800_
                      (let () (declare (not safe)) (__AST-e _$e120783_)))
                     (_$hd120787120803_
                      (let () (declare (not safe)) (##car _$tgt120786120800_)))
                     (_$tl120788120806_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120786120800_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120788120806_))
                    (let* ((_$tgt120789120810_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120788120806_)))
                           (_$hd120790120813_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120789120810_)))
                           (_$tl120791120816_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120789120810_))))
                      (let ((_hd120820_ _$hd120790120813_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120791120816_))
                            (let* ((_$tgt120792120822_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120791120816_)))
                                   (_$hd120793120825_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120792120822_)))
                                   (_$tl120794120828_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120792120822_))))
                              (let ((_expr120832_ _$hd120793120825_))
                                (if (let ((__tmp125644
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120794120828_))))
                                      (declare (not safe))
                                      (equal? __tmp125644 '()))
                                    (let* ((_$e120834_ _hd120820_)
                                           (_$E120836120877_
                                            (lambda ()
                                              (let ((_$E120837120862_
                                                     (lambda ()
                                                       (let* ((_$E120838120849_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e120834_))))
                      (_ids120852_ _hd120820_)
                      (_len120854_ (length _ids120852_))
                      (_tmp120856_
                       (let ((__tmp125612 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp125612))))
                 (let ((__tmp125613
                        (let ((__tmp125614
                               (let ((__tmp125631
                                      (let ((__tmp125632
                                             (let ((__tmp125633
                                                    (let ((__tmp125634
                                                           (let ((__tmp125635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr120832_))))
                     (declare (not safe))
                     (cons __tmp125635 '()))))
              (declare (not safe))
              (cons _tmp120856_ __tmp125634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp125633))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125632 _stx120781_)))
                                     (__tmp125615
                                      (let ((__tmp125627
                                             (let ((__tmp125628
                                                    (let ((__tmp125629
                                                           (let ((__tmp125630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len120854_ '()))))
                     (declare (not safe))
                     (cons _tmp120856_ __tmp125630))))
              (declare (not safe))
              (cons '__check-values __tmp125629))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp125628
                                                _stx120781_)))
                                            (__tmp125616
                                             (let ((__tmp125617
                                                    (let ((__tmp125619
                                                           (lambda (_id120859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k120860_)
                     (if (let () (declare (not safe)) (__AST-e _id120859_))
                         (let ((__tmp125620
                                (let ((__tmp125621
                                       (let ((__tmp125626
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id120859_)))
                                             (__tmp125622
                                              (let ((__tmp125623
                                                     (let ((__tmp125624
                                                            (let ((__tmp125625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k120860_ '()))))
                      (declare (not safe))
                      (cons _tmp120856_ __tmp125625))))
               (declare (not safe))
               (cons '##vector-ref __tmp125624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125623 '()))))
                                         (declare (not safe))
                                         (cons __tmp125626 __tmp125622))))
                                  (declare (not safe))
                                  (cons 'define __tmp125621))))
                           (declare (not safe))
                           (__SRC__% __tmp125620 _stx120781_))
                         '#f)))
                  (__tmp125618
                   (let () (declare (not safe)) (iota _len120854_))))
              (declare (not safe))
              (filter-map2 __tmp125619 _ids120852_ __tmp125618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp125617))))
                                        (declare (not safe))
                                        (cons __tmp125627 __tmp125616))))
                                 (declare (not safe))
                                 (cons __tmp125631 __tmp125615))))
                          (declare (not safe))
                          (cons 'begin __tmp125614))))
                   (declare (not safe))
                   (__SRC__% __tmp125613 _stx120781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e120834_))
                                                    (let* ((_$tgt120839120865_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e120834_)))
                                                           (_$hd120840120868_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt120839120865_)))
                                                           (_$tl120841120871_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt120839120865_))))
                                                      (let ((_id120875_
                                                             _$hd120840120868_))
                                                        (if (let ((__tmp125641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl120841120871_))))
                      (declare (not safe))
                      (equal? __tmp125641 '()))
                    (let ((__tmp125636
                           (let ((__tmp125637
                                  (let ((__tmp125640
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id120875_)))
                                        (__tmp125638
                                         (let ((__tmp125639
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr120832_))))
                                           (declare (not safe))
                                           (cons __tmp125639 '()))))
                                    (declare (not safe))
                                    (cons __tmp125640 __tmp125638))))
                             (declare (not safe))
                             (cons 'define __tmp125637))))
                      (declare (not safe))
                      (__SRC__% __tmp125636 _stx120781_))
                    (let () (declare (not safe)) (_$E120837120862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E120837120862_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e120834_))
                                          (let* ((_$tgt120842120880_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e120834_)))
                                                 (_$hd120843120883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt120842120880_)))
                                                 (_$tl120844120886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt120842120880_))))
                                            (if (let ((__tmp125643
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd120843120883_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125643 '#f))
                                                (if (let ((__tmp125642
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl120844120886_))))
                                                      (declare (not safe))
                                                      (equal? __tmp125642 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr120832_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E120836120877_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120836120877_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E120836120877_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120785120797_)))))
                            (let () (declare (not safe)) (_$E120785120797_)))))
                    (let () (declare (not safe)) (_$E120785120797_))))
              (let () (declare (not safe)) (_$E120785120797_))))))
    (define __compile-head-id
      (lambda (_e120779_)
        (let ((__tmp125645
               (if (let () (declare (not safe)) (__AST-e _e120779_))
                   _e120779_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp125645))))
    (define __compile-lambda-head
      (lambda (_hd120736_)
        (let _recur120738_ ((_rest120740_ _hd120736_))
          (let* ((_$e120742_ _rest120740_)
                 (_$E120744120762_
                  (lambda ()
                    (let ((_$E120745120759_
                           (lambda ()
                             (let* ((_$E120746120754_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e120742_))))
                                    (_tail120757_ _$e120742_))
                               (declare (not safe))
                               (__compile-head-id _tail120757_)))))
                      (if (let ((__tmp125646
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e120742_))))
                            (declare (not safe))
                            (equal? __tmp125646 '()))
                          '()
                          (let () (declare (not safe)) (_$E120745120759_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120742_))
                (let* ((_$tgt120747120765_
                        (let () (declare (not safe)) (__AST-e _$e120742_)))
                       (_$hd120748120768_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120747120765_)))
                       (_$tl120749120771_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120747120765_))))
                  (let* ((_hd120775_ _$hd120748120768_)
                         (_rest120777_ _$tl120749120771_))
                    (let ((__tmp125648
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd120775_)))
                          (__tmp125647
                           (let ()
                             (declare (not safe))
                             (_recur120738_ _rest120777_))))
                      (declare (not safe))
                      (cons __tmp125648 __tmp125647))))
                (let () (declare (not safe)) (_$E120744120762_)))))))
    (define __compile-lambda%
      (lambda (_stx120683_)
        (let* ((_$e120685_ _stx120683_)
               (_$E120687120699_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120685_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120685_))
              (let* ((_$tgt120688120702_
                      (let () (declare (not safe)) (__AST-e _$e120685_)))
                     (_$hd120689120705_
                      (let () (declare (not safe)) (##car _$tgt120688120702_)))
                     (_$tl120690120708_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120688120702_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120690120708_))
                    (let* ((_$tgt120691120712_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120690120708_)))
                           (_$hd120692120715_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120691120712_)))
                           (_$tl120693120718_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120691120712_))))
                      (let ((_hd120722_ _$hd120692120715_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120693120718_))
                            (let* ((_$tgt120694120724_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120693120718_)))
                                   (_$hd120695120727_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120694120724_)))
                                   (_$tl120696120730_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120694120724_))))
                              (let ((_body120734_ _$hd120695120727_))
                                (if (let ((__tmp125654
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120696120730_))))
                                      (declare (not safe))
                                      (equal? __tmp125654 '()))
                                    (let ((__tmp125649
                                           (let ((__tmp125650
                                                  (let ((__tmp125653
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd120722_)))
                                                        (__tmp125651
                                                         (let ((__tmp125652
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body120734_))))
                   (declare (not safe))
                   (cons __tmp125652 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125653
                                                          __tmp125651))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp125650))))
                                      (declare (not safe))
                                      (__SRC__% __tmp125649 _stx120683_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120687120699_)))))
                            (let () (declare (not safe)) (_$E120687120699_)))))
                    (let () (declare (not safe)) (_$E120687120699_))))
              (let () (declare (not safe)) (_$E120687120699_))))))
    (define __compile-case-lambda%
      (lambda (_stx120475_)
        (letrec ((_variadic?120477_
                  (lambda (_hd120648_)
                    (let* ((_$e120650_ _hd120648_)
                           (_$E120652120668_
                            (lambda ()
                              (let ((_$E120653120665_
                                     (lambda ()
                                       (let ((_$E120654120662_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e120650_)))))
                                         '#t))))
                                (if (let ((__tmp125655
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e120650_))))
                                      (declare (not safe))
                                      (equal? __tmp125655 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E120653120665_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120650_))
                          (let* ((_$tgt120655120671_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120650_)))
                                 (_$hd120656120674_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120655120671_)))
                                 (_$tl120657120677_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120655120671_))))
                            (let ((_rest120681_ _$tl120657120677_))
                              (declare (not safe))
                              (_variadic?120477_ _rest120681_)))
                          (let () (declare (not safe)) (_$E120652120668_))))))
                 (_arity120478_
                  (lambda (_hd120613_)
                    (let _lp120615_ ((_rest120617_ _hd120613_) (_k120618_ '0))
                      (let* ((_$e120620_ _rest120617_)
                             (_$E120622120633_
                              (lambda ()
                                (let ((_$E120623120630_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e120620_)))))
                                  _k120618_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e120620_))
                            (let* ((_$tgt120624120636_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e120620_)))
                                   (_$hd120625120639_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120624120636_)))
                                   (_$tl120626120642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120624120636_))))
                              (let* ((_rest120646_ _$tl120626120642_)
                                     (__tmp125656
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k120618_ '1))))
                                (declare (not safe))
                                (_lp120615_ _rest120646_ __tmp125656)))
                            (let ()
                              (declare (not safe))
                              (_$E120622120633_)))))))
                 (_generate120479_
                  (lambda (_rest120540_ _args120541_ _len120542_)
                    (let* ((_$e120544_ _rest120540_)
                           (_$E120546120557_
                            (lambda ()
                              (let* ((_$E120547120554_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e120544_))))
                                     (__tmp125657
                                      (let ((__tmp125658
                                             (let ((__tmp125659
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args120541_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp125659))))
                                        (declare (not safe))
                                        (cons 'error __tmp125658))))
                                (declare (not safe))
                                (__SRC__% __tmp125657 _stx120475_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120544_))
                          (let* ((_$tgt120548120560_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120544_)))
                                 (_$hd120549120563_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120548120560_)))
                                 (_$tl120550120566_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120548120560_))))
                            (let* ((_clause120570_ _$hd120549120563_)
                                   (_rest120572_ _$tl120550120566_)
                                   (_$e120574_ _clause120570_)
                                   (_$E120576120585_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e120574_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e120574_))
                                  (let* ((_$tgt120577120588_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e120574_)))
                                         (_$hd120578120591_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt120577120588_)))
                                         (_$tl120579120594_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt120577120588_))))
                                    (let ((_hd120598_ _$hd120578120591_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl120579120594_))
                                          (let* ((_$tgt120580120600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120579120594_)))
                                                 (_$hd120581120603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt120580120600_)))
                                                 (_$tl120582120606_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt120580120600_))))
                                            (if (let ((__tmp125674
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl120582120606_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125674 '()))
                                                (let ((_clen120610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity120478_
                                                          _hd120598_)))
                                                      (_cmp120611_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?120477_
                                                              _hd120598_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp125660
                                                         (let ((__tmp125661
                                                                (let ((__tmp125671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125672
                                      (let ((__tmp125673
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen120610_ '()))))
                                        (declare (not safe))
                                        (cons _len120542_ __tmp125673))))
                                 (declare (not safe))
                                 (cons _cmp120611_ __tmp125672)))
                              (__tmp125662
                               (let ((__tmp125665
                                      (let ((__tmp125666
                                             (let ((__tmp125667
                                                    (let ((__tmp125669
                                                           (let ((__tmp125670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause120570_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp125670)))
                  (__tmp125668
                   (let () (declare (not safe)) (cons _args120541_ '()))))
              (declare (not safe))
              (cons __tmp125669 __tmp125668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp125667))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125666 _stx120475_)))
                                     (__tmp125663
                                      (let ((__tmp125664
                                             (let ()
                                               (declare (not safe))
                                               (_generate120479_
                                                _rest120572_
                                                _args120541_
                                                _len120542_))))
                                        (declare (not safe))
                                        (cons __tmp125664 '()))))
                                 (declare (not safe))
                                 (cons __tmp125665 __tmp125663))))
                          (declare (not safe))
                          (cons __tmp125671 __tmp125662))))
                   (declare (not safe))
                   (cons 'if __tmp125661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp125660
                                                     _stx120475_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120576120585_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E120576120585_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E120576120585_)))))
                          (let () (declare (not safe)) (_$E120546120557_)))))))
          (let* ((_$e120481_ _stx120475_)
                 (_$E120483120515_
                  (lambda ()
                    (let ((_$E120484120497_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e120481_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120481_))
                          (let* ((_$tgt120485120500_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120481_)))
                                 (_$hd120486120503_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120485120500_)))
                                 (_$tl120487120506_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120485120500_))))
                            (let ((_clauses120510_ _$tl120487120506_))
                              (let ((_args120512_
                                     (let ((__tmp125675 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125675 _stx120475_)))
                                    (_len120513_
                                     (let ((__tmp125676 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125676 _stx120475_))))
                                (let ((__tmp125677
                                       (let ((__tmp125678
                                              (let ((__tmp125679
                                                     (let ((__tmp125680
                                                            (let ((__tmp125681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125682
                                  (let ((__tmp125685
                                         (let ((__tmp125686
                                                (let ((__tmp125687
                                                       (let ((__tmp125688
                                                              (let ((__tmp125689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp125690
                                    (let ()
                                      (declare (not safe))
                                      (cons _args120512_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp125690))))
                        (declare (not safe))
                        (__SRC__% __tmp125689 _stx120475_))))
                 (declare (not safe))
                 (cons __tmp125688 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len120513_
                                                        __tmp125687))))
                                           (declare (not safe))
                                           (cons __tmp125686 '())))
                                        (__tmp125683
                                         (let ((__tmp125684
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate120479_
                                                   _clauses120510_
                                                   _args120512_
                                                   _len120513_))))
                                           (declare (not safe))
                                           (cons __tmp125684 '()))))
                                    (declare (not safe))
                                    (cons __tmp125685 __tmp125683))))
                             (declare (not safe))
                             (cons 'let __tmp125682))))
                      (declare (not safe))
                      (__SRC__% __tmp125681 _stx120475_))))
               (declare (not safe))
               (cons __tmp125680 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args120512_
                                                      __tmp125679))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp125678))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125677 _stx120475_)))))
                          (let () (declare (not safe)) (_$E120484120497_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120481_))
                (let* ((_$tgt120488120518_
                        (let () (declare (not safe)) (__AST-e _$e120481_)))
                       (_$hd120489120521_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120488120518_)))
                       (_$tl120490120524_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120488120518_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl120490120524_))
                      (let* ((_$tgt120491120528_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl120490120524_)))
                             (_$hd120492120531_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt120491120528_)))
                             (_$tl120493120534_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt120491120528_))))
                        (let ((_clause120538_ _$hd120492120531_))
                          (if (let ((__tmp125692
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl120493120534_))))
                                (declare (not safe))
                                (equal? __tmp125692 '()))
                              (let ((__tmp125691
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause120538_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp125691))
                              (let ()
                                (declare (not safe))
                                (_$E120483120515_)))))
                      (let () (declare (not safe)) (_$E120483120515_))))
                (let () (declare (not safe)) (_$E120483120515_)))))))
    (define __compile-let-form
      (lambda (_stx120244_ _compile-simple120245_ _compile-values120246_)
        (letrec ((_simple-bind?120248_
                  (lambda (_hd120433_)
                    (let* ((_hd120434120444_ _hd120433_)
                           (_else120437120452_ (lambda () '#f)))
                      (let ((_K120440120465_ (lambda (_id120463_) '#t))
                            (_K120439120457_ (lambda () '#t)))
                        (let ((_try-match120436120460_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd120434120444_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K120439120457_))
                                     (let ()
                                       (declare (not safe))
                                       (_else120437120452_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd120434120444_))
                              (let ((_tl120442120470_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd120434120444_)))
                                    (_hd120441120468_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd120434120444_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl120442120470_))
                                    (let ((_id120473_ _hd120441120468_))
                                      (declare (not safe))
                                      (_K120440120465_ _id120473_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match120436120460_))))
                              (let ()
                                (declare (not safe))
                                (_try-match120436120460_))))))))
                 (_car-e120249_
                  (lambda (_hd120431_)
                    (if (let () (declare (not safe)) (pair? _hd120431_))
                        (car _hd120431_)
                        _hd120431_))))
          (let* ((_$e120251_ _stx120244_)
                 (_$E120253120396_
                  (lambda ()
                    (let ((_$E120254120276_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e120251_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120251_))
                          (let* ((_$tgt120255120279_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120251_)))
                                 (_$hd120256120282_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120255120279_)))
                                 (_$tl120257120285_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120255120279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120257120285_))
                                (let* ((_$tgt120258120289_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120257120285_)))
                                       (_$hd120259120292_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120258120289_)))
                                       (_$tl120260120295_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120258120289_))))
                                  (let ((_hd120299_ _$hd120259120292_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl120260120295_))
                                        (let* ((_$tgt120261120301_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl120260120295_)))
                                               (_$hd120262120304_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt120261120301_)))
                                               (_$tl120263120307_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt120261120301_))))
                                          (let ((_body120311_
                                                 _$hd120262120304_))
                                            (if (let ((__tmp125695
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl120263120307_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125695 '()))
                                                (let* ((_hd-ids120351_
                                                        (map (lambda (_bind120313_)
                                                               (let* ((_$e120315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind120313_)
                              (_$E120317120326_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120315_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120315_))
                             (let* ((_$tgt120318120329_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120315_)))
                                    (_$hd120319120332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120318120329_)))
                                    (_$tl120320120335_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120318120329_))))
                               (let ((_ids120339_ _$hd120319120332_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl120320120335_))
                                     (let* ((_$tgt120321120341_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl120320120335_)))
                                            (_$hd120322120344_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt120321120341_)))
                                            (_$tl120323120347_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt120321120341_))))
                                       (if (let ((__tmp125693
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120323120347_))))
                                             (declare (not safe))
                                             (equal? __tmp125693 '()))
                                           _ids120339_
                                           (let ()
                                             (declare (not safe))
                                             (_$E120317120326_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E120317120326_)))))
                             (let ()
                               (declare (not safe))
                               (_$E120317120326_)))))
                     _hd120299_))
               (_exprs120391_
                (map (lambda (_bind120353_)
                       (let* ((_$e120355_ _bind120353_)
                              (_$E120357120366_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120355_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120355_))
                             (let* ((_$tgt120358120369_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120355_)))
                                    (_$hd120359120372_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120358120369_)))
                                    (_$tl120360120375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120358120369_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl120360120375_))
                                   (let* ((_$tgt120361120379_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120360120375_)))
                                          (_$hd120362120382_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt120361120379_)))
                                          (_$tl120363120385_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt120361120379_))))
                                     (let ((_expr120389_ _$hd120362120382_))
                                       (if (let ((__tmp125694
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120363120385_))))
                                             (declare (not safe))
                                             (equal? __tmp125694 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr120389_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E120357120366_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E120357120366_))))
                             (let ()
                               (declare (not safe))
                               (_$E120357120366_)))))
                     _hd120299_))
               (_body120393_
                (let () (declare (not safe)) (__compile _body120311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?120248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids120351_))
              (_compile-simple120245_
               (map _car-e120249_ _hd-ids120351_)
               _exprs120391_
               _body120393_)
              (_compile-values120246_
               _hd-ids120351_
               _exprs120391_
               _body120393_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120254120276_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120254120276_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120254120276_))))
                          (let () (declare (not safe)) (_$E120254120276_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120251_))
                (let* ((_$tgt120264120399_
                        (let () (declare (not safe)) (__AST-e _$e120251_)))
                       (_$hd120265120402_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120264120399_)))
                       (_$tl120266120405_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120264120399_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl120266120405_))
                      (let* ((_$tgt120267120409_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl120266120405_)))
                             (_$hd120268120412_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt120267120409_)))
                             (_$tl120269120415_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt120267120409_))))
                        (if (let ((__tmp125697
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd120268120412_))))
                              (declare (not safe))
                              (equal? __tmp125697 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120269120415_))
                                (let* ((_$tgt120270120419_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120269120415_)))
                                       (_$hd120271120422_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120270120419_)))
                                       (_$tl120272120425_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120270120419_))))
                                  (let ((_body120429_ _$hd120271120422_))
                                    (if (let ((__tmp125696
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl120272120425_))))
                                          (declare (not safe))
                                          (equal? __tmp125696 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body120429_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120253120396_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120253120396_)))
                            (let () (declare (not safe)) (_$E120253120396_))))
                      (let () (declare (not safe)) (_$E120253120396_))))
                (let () (declare (not safe)) (_$E120253120396_)))))))
    (define __compile-let-values%
      (lambda (_stx120059_)
        (letrec ((_compile-simple120061_
                  (lambda (_hd-ids120240_ _exprs120241_ _body120242_)
                    (let ((__tmp125698
                           (let ((__tmp125699
                                  (let ((__tmp125701
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120240_)
                                              _exprs120241_))
                                        (__tmp125700
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120242_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125701 __tmp125700))))
                             (declare (not safe))
                             (cons 'let __tmp125699))))
                      (declare (not safe))
                      (__SRC__% __tmp125698 _stx120059_))))
                 (_compile-values120062_
                  (lambda (_hd-ids120158_ _exprs120159_ _body120160_)
                    (let _lp120162_ ((_rest120164_ _hd-ids120158_)
                                     (_exprs120165_ _exprs120159_)
                                     (_bind120166_ '())
                                     (_post120167_ '()))
                      (let* ((_rest120168120182_ _rest120164_)
                             (_else120171120190_
                              (lambda ()
                                (let ((__tmp125702
                                       (let ((__tmp125703
                                              (let ((__tmp125706
                                                     (reverse _bind120166_))
                                                    (__tmp125704
                                                     (let ((__tmp125705
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post120063_
                                                               _post120167_
                                                               _body120160_))))
                                                       (declare (not safe))
                                                       (cons __tmp125705
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp125706
                                                      __tmp125704))))
                                         (declare (not safe))
                                         (cons 'let __tmp125703))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125702 _stx120059_)))))
                        (let ((_K120176120223_
                               (lambda (_rest120220_ _id120221_)
                                 (let ((__tmp125712 (cdr _exprs120165_))
                                       (__tmp125707
                                        (let ((__tmp125708
                                               (let ((__tmp125711
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120221_)))
                                                     (__tmp125709
                                                      (let ((__tmp125710
                                                             (car _exprs120165_)))
                                                        (declare (not safe))
                                                        (cons __tmp125710
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp125711
                                                       __tmp125709))))
                                          (declare (not safe))
                                          (cons __tmp125708 _bind120166_))))
                                   (declare (not safe))
                                   (_lp120162_
                                    _rest120220_
                                    __tmp125712
                                    __tmp125707
                                    _post120167_))))
                              (_K120173120205_
                               (lambda (_rest120194_ _hd120195_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120195_))
                                     (let ((__tmp125733 (cdr _exprs120165_))
                                           (__tmp125726
                                            (let ((__tmp125727
                                                   (let ((__tmp125732
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120195_)))
                                                         (__tmp125728
                                                          (let ((__tmp125729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125730
                                (let ((__tmp125731 (car _exprs120165_)))
                                  (declare (not safe))
                                  (cons __tmp125731 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp125730))))
                    (declare (not safe))
                    (cons __tmp125729 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125732
                                                           __tmp125728))))
                                              (declare (not safe))
                                              (cons __tmp125727
                                                    _bind120166_))))
                                       (declare (not safe))
                                       (_lp120162_
                                        _rest120194_
                                        __tmp125733
                                        __tmp125726
                                        _post120167_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120195_))
                                         (let* ((_len120197_
                                                 (length _hd120195_))
                                                (_tmp120199_
                                                 (let ((__tmp125713 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp125713))))
                                           (let ((__tmp125725
                                                  (cdr _exprs120165_))
                                                 (__tmp125721
                                                  (let ((__tmp125722
                                                         (let ((__tmp125723
                                                                (let ((__tmp125724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs120165_)))
                          (declare (not safe))
                          (cons __tmp125724 '()))))
                   (declare (not safe))
                   (cons _tmp120199_ __tmp125723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125722
                                                          _bind120166_)))
                                                 (__tmp125714
                                                  (let ((__tmp125715
                                                         (let ((__tmp125716
                                                                (let ((__tmp125717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125719
                                      (lambda (_id120202_ _k120203_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120202_))
                                            (let ((__tmp125720
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120202_))))
                                              (declare (not safe))
                                              (cons __tmp125720 _k120203_))
                                            '#f)))
                                     (__tmp125718
                                      (let ()
                                        (declare (not safe))
                                        (iota _len120197_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp125719
                                  _hd120195_
                                  __tmp125718))))
                          (declare (not safe))
                          (cons _len120197_ __tmp125717))))
                   (declare (not safe))
                   (cons _tmp120199_ __tmp125716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125715
                                                          _post120167_))))
                                             (declare (not safe))
                                             (_lp120162_
                                              _rest120194_
                                              __tmp125725
                                              __tmp125721
                                              __tmp125714)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx120059_
                                            _hd120195_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120168120182_))
                              (let ((_tl120178120228_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120168120182_)))
                                    (_hd120177120226_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120168120182_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120177120226_))
                                    (let ((_tl120180120233_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120177120226_)))
                                          (_hd120179120231_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120177120226_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120180120233_))
                                          (let ((_id120236_ _hd120179120231_)
                                                (_rest120238_
                                                 _tl120178120228_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120176120223_
                                               _rest120238_
                                               _id120236_)))
                                          (let ((_hd120213_ _hd120177120226_)
                                                (_rest120215_
                                                 _tl120178120228_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120173120205_
                                               _rest120215_
                                               _hd120213_)))))
                                    (let ((_hd120213_ _hd120177120226_)
                                          (_rest120215_ _tl120178120228_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120173120205_
                                         _rest120215_
                                         _hd120213_)))))
                              (let ()
                                (declare (not safe))
                                (_else120171120190_))))))))
                 (_compile-post120063_
                  (lambda (_post120065_ _body120066_)
                    (let _lp120068_ ((_rest120070_ _post120065_)
                                     (_check120071_ '())
                                     (_bind120072_ '()))
                      (let* ((_rest120073120085_ _rest120070_)
                             (_else120075120093_
                              (lambda ()
                                (let ((__tmp125734
                                       (let ((__tmp125735
                                              (let ((__tmp125736
                                                     (let ((__tmp125737
                                                            (let ((__tmp125738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125739
                                  (let ((__tmp125740
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120066_ '()))))
                                    (declare (not safe))
                                    (cons _bind120072_ __tmp125740))))
                             (declare (not safe))
                             (cons 'let __tmp125739))))
                      (declare (not safe))
                      (__SRC__% __tmp125738 _stx120059_))))
               (declare (not safe))
               (cons __tmp125737 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp125736
                                                        _check120071_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp125735))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125734 _stx120059_))))
                             (_K120077120132_
                              (lambda (_rest120096_
                                       _init120097_
                                       _len120098_
                                       _tmp120099_)
                                (let ((__tmp125748
                                       (let ((__tmp125749
                                              (let ((__tmp125750
                                                     (let ((__tmp125751
                                                            (let ((__tmp125752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len120098_ '()))))
                      (declare (not safe))
                      (cons _tmp120099_ __tmp125752))))
               (declare (not safe))
               (cons '__check-values __tmp125751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp125750
                                                 _stx120059_))))
                                         (declare (not safe))
                                         (cons __tmp125749 _check120071_)))
                                      (__tmp125741
                                       (let ((__tmp125742
                                              (lambda (_hd120101_ _r120102_)
                                                (let* ((_hd120103120110_
                                                        _hd120101_)
                                                       (_E120105120114_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd120103120110_)))
               (_K120106120120_
                (lambda (_k120117_ _id120118_)
                  (let ((__tmp125743
                         (let ((__tmp125744
                                (let ((__tmp125745
                                       (let ((__tmp125746
                                              (let ((__tmp125747
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k120117_ '()))))
                                                (declare (not safe))
                                                (cons _tmp120099_
                                                      __tmp125747))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp125746))))
                                  (declare (not safe))
                                  (cons __tmp125745 '()))))
                           (declare (not safe))
                           (cons _id120118_ __tmp125744))))
                    (declare (not safe))
                    (cons __tmp125743 _r120102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd120103120110_))
                                                      (let ((_hd120107120123_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd120103120110_)))
                    (_tl120108120125_
                     (let () (declare (not safe)) (##cdr _hd120103120110_))))
                (let* ((_id120128_ _hd120107120123_)
                       (_k120130_ _tl120108120125_))
                  (declare (not safe))
                  (_K120106120120_ _k120130_ _id120128_)))
              (let () (declare (not safe)) (_E120105120114_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp125742
                                                 _bind120072_
                                                 _init120097_))))
                                  (declare (not safe))
                                  (_lp120068_
                                   _rest120096_
                                   __tmp125748
                                   __tmp125741)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest120073120085_))
                            (let ((_hd120078120135_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest120073120085_)))
                                  (_tl120079120137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest120073120085_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd120078120135_))
                                  (let ((_hd120080120140_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd120078120135_)))
                                        (_tl120081120142_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd120078120135_))))
                                    (let ((_tmp120145_ _hd120080120140_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl120081120142_))
                                          (let ((_hd120082120147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl120081120142_)))
                                                (_tl120083120149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl120081120142_))))
                                            (let* ((_len120152_
                                                    _hd120082120147_)
                                                   (_init120154_
                                                    _tl120083120149_)
                                                   (_rest120156_
                                                    _tl120079120137_))
                                              (declare (not safe))
                                              (_K120077120132_
                                               _rest120156_
                                               _init120154_
                                               _len120152_
                                               _tmp120145_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else120075120093_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else120075120093_))))
                            (let ()
                              (declare (not safe))
                              (_else120075120093_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx120059_
             _compile-simple120061_
             _compile-values120062_)))))
    (define __compile-letrec-values%
      (lambda (_stx119859_)
        (letrec ((_compile-simple119861_
                  (lambda (_hd-ids120055_ _exprs120056_ _body120057_)
                    (let ((__tmp125753
                           (let ((__tmp125754
                                  (let ((__tmp125756
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120055_)
                                              _exprs120056_))
                                        (__tmp125755
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120057_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125756 __tmp125755))))
                             (declare (not safe))
                             (cons 'letrec __tmp125754))))
                      (declare (not safe))
                      (__SRC__% __tmp125753 _stx119859_))))
                 (_compile-values119862_
                  (lambda (_hd-ids119969_ _exprs119970_ _body119971_)
                    (let _lp119973_ ((_rest119975_ _hd-ids119969_)
                                     (_exprs119976_ _exprs119970_)
                                     (_pre119977_ '())
                                     (_bind119978_ '())
                                     (_post119979_ '()))
                      (let* ((_rest119980119994_ _rest119975_)
                             (_else119983120002_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner119863_
                                   _pre119977_
                                   _bind119978_
                                   _post119979_
                                   _body119971_)))))
                        (let ((_K119988120038_
                               (lambda (_rest120035_ _id120036_)
                                 (let ((__tmp125762 (cdr _exprs119976_))
                                       (__tmp125757
                                        (let ((__tmp125758
                                               (let ((__tmp125761
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120036_)))
                                                     (__tmp125759
                                                      (let ((__tmp125760
                                                             (car _exprs119976_)))
                                                        (declare (not safe))
                                                        (cons __tmp125760
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp125761
                                                       __tmp125759))))
                                          (declare (not safe))
                                          (cons __tmp125758 _bind119978_))))
                                   (declare (not safe))
                                   (_lp119973_
                                    _rest120035_
                                    __tmp125762
                                    _pre119977_
                                    __tmp125757
                                    _post119979_))))
                              (_K119985120020_
                               (lambda (_rest120006_ _hd120007_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120007_))
                                     (let ((__tmp125790 (cdr _exprs119976_))
                                           (__tmp125783
                                            (let ((__tmp125784
                                                   (let ((__tmp125789
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120007_)))
                                                         (__tmp125785
                                                          (let ((__tmp125786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125787
                                (let ((__tmp125788 (car _exprs119976_)))
                                  (declare (not safe))
                                  (cons __tmp125788 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp125787))))
                    (declare (not safe))
                    (cons __tmp125786 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125789
                                                           __tmp125785))))
                                              (declare (not safe))
                                              (cons __tmp125784
                                                    _bind119978_))))
                                       (declare (not safe))
                                       (_lp119973_
                                        _rest120006_
                                        __tmp125790
                                        _pre119977_
                                        __tmp125783
                                        _post119979_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120007_))
                                         (let* ((_len120009_
                                                 (length _hd120007_))
                                                (_tmp120011_
                                                 (let ((__tmp125763 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp125763))))
                                           (let ((__tmp125782
                                                  (cdr _exprs119976_))
                                                 (__tmp125775
                                                  (let ((__tmp125776
                                                         (lambda (_id120014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r120015_)
                   (if (let () (declare (not safe)) (__AST-e _id120014_))
                       (let ((__tmp125777
                              (let ((__tmp125781
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id120014_)))
                                    (__tmp125778
                                     (let ((__tmp125779
                                            (let ((__tmp125780
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp125780))))
                                       (declare (not safe))
                                       (cons __tmp125779 '()))))
                                (declare (not safe))
                                (cons __tmp125781 __tmp125778))))
                         (declare (not safe))
                         (cons __tmp125777 _r120015_))
                       _r120015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp125776
                                                            _pre119977_
                                                            _hd120007_)))
                                                 (__tmp125771
                                                  (let ((__tmp125772
                                                         (let ((__tmp125773
                                                                (let ((__tmp125774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs119976_)))
                          (declare (not safe))
                          (cons __tmp125774 '()))))
                   (declare (not safe))
                   (cons _tmp120011_ __tmp125773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125772
                                                          _bind119978_)))
                                                 (__tmp125764
                                                  (let ((__tmp125765
                                                         (let ((__tmp125766
                                                                (let ((__tmp125767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125769
                                      (lambda (_id120017_ _k120018_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120017_))
                                            (let ((__tmp125770
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120017_))))
                                              (declare (not safe))
                                              (cons __tmp125770 _k120018_))
                                            '#f)))
                                     (__tmp125768
                                      (let ()
                                        (declare (not safe))
                                        (iota _len120009_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp125769
                                  _hd120007_
                                  __tmp125768))))
                          (declare (not safe))
                          (cons _len120009_ __tmp125767))))
                   (declare (not safe))
                   (cons _tmp120011_ __tmp125766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125765
                                                          _post119979_))))
                                             (declare (not safe))
                                             (_lp119973_
                                              _rest120006_
                                              __tmp125782
                                              __tmp125775
                                              __tmp125771
                                              __tmp125764)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx119859_
                                            _hd120007_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119980119994_))
                              (let ((_tl119990120043_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119980119994_)))
                                    (_hd119989120041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119980119994_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd119989120041_))
                                    (let ((_tl119992120048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd119989120041_)))
                                          (_hd119991120046_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd119989120041_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl119992120048_))
                                          (let ((_id120051_ _hd119991120046_)
                                                (_rest120053_
                                                 _tl119990120043_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119988120038_
                                               _rest120053_
                                               _id120051_)))
                                          (let ((_hd120028_ _hd119989120041_)
                                                (_rest120030_
                                                 _tl119990120043_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119985120020_
                                               _rest120030_
                                               _hd120028_)))))
                                    (let ((_hd120028_ _hd119989120041_)
                                          (_rest120030_ _tl119990120043_))
                                      (let ()
                                        (declare (not safe))
                                        (_K119985120020_
                                         _rest120030_
                                         _hd120028_)))))
                              (let ()
                                (declare (not safe))
                                (_else119983120002_))))))))
                 (_compile-inner119863_
                  (lambda (_pre119964_ _bind119965_ _post119966_ _body119967_)
                    (if (let () (declare (not safe)) (null? _pre119964_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind119864_
                           _bind119965_
                           _post119966_
                           _body119967_))
                        (let ((__tmp125791
                               (let ((__tmp125792
                                      (let ((__tmp125795 (reverse _pre119964_))
                                            (__tmp125793
                                             (let ((__tmp125794
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind119864_
                                                       _bind119965_
                                                       _post119966_
                                                       _body119967_))))
                                               (declare (not safe))
                                               (cons __tmp125794 '()))))
                                        (declare (not safe))
                                        (cons __tmp125795 __tmp125793))))
                                 (declare (not safe))
                                 (cons 'let __tmp125792))))
                          (declare (not safe))
                          (__SRC__% __tmp125791 _stx119859_)))))
                 (_compile-bind119864_
                  (lambda (_bind119960_ _post119961_ _body119962_)
                    (let ((__tmp125796
                           (let ((__tmp125797
                                  (let ((__tmp125800 (reverse _bind119960_))
                                        (__tmp125798
                                         (let ((__tmp125799
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post119865_
                                                   _post119961_
                                                   _body119962_))))
                                           (declare (not safe))
                                           (cons __tmp125799 '()))))
                                    (declare (not safe))
                                    (cons __tmp125800 __tmp125798))))
                             (declare (not safe))
                             (cons 'letrec __tmp125797))))
                      (declare (not safe))
                      (__SRC__% __tmp125796 _stx119859_))))
                 (_compile-post119865_
                  (lambda (_post119867_ _body119868_)
                    (let _lp119870_ ((_rest119872_ _post119867_)
                                     (_check119873_ '())
                                     (_bind119874_ '()))
                      (let* ((_rest119875119887_ _rest119872_)
                             (_else119877119895_
                              (lambda ()
                                (let ((__tmp125801
                                       (let ((__tmp125802
                                              (let ((__tmp125803
                                                     (let ((__tmp125804
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body119868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp125804 _bind119874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp125803
                                                        _check119873_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp125802))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125801 _stx119859_))))
                             (_K119879119934_
                              (lambda (_rest119898_
                                       _init119899_
                                       _len119900_
                                       _tmp119901_)
                                (let ((__tmp125813
                                       (let ((__tmp125814
                                              (let ((__tmp125815
                                                     (let ((__tmp125816
                                                            (let ((__tmp125817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len119900_ '()))))
                      (declare (not safe))
                      (cons _tmp119901_ __tmp125817))))
               (declare (not safe))
               (cons '__check-values __tmp125816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp125815
                                                 _stx119859_))))
                                         (declare (not safe))
                                         (cons __tmp125814 _check119873_)))
                                      (__tmp125805
                                       (let ((__tmp125806
                                              (lambda (_hd119903_ _r119904_)
                                                (let* ((_hd119905119912_
                                                        _hd119903_)
                                                       (_E119907119916_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd119905119912_)))
               (_K119908119922_
                (lambda (_k119919_ _id119920_)
                  (let ((__tmp125807
                         (let ((__tmp125808
                                (let ((__tmp125809
                                       (let ((__tmp125810
                                              (let ((__tmp125811
                                                     (let ((__tmp125812
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k119919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp119901_ __tmp125812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp125811))))
                                         (declare (not safe))
                                         (cons __tmp125810 '()))))
                                  (declare (not safe))
                                  (cons _id119920_ __tmp125809))))
                           (declare (not safe))
                           (cons 'set! __tmp125808))))
                    (declare (not safe))
                    (cons __tmp125807 _r119904_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd119905119912_))
                                                      (let ((_hd119909119925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd119905119912_)))
                    (_tl119910119927_
                     (let () (declare (not safe)) (##cdr _hd119905119912_))))
                (let* ((_id119930_ _hd119909119925_)
                       (_k119932_ _tl119910119927_))
                  (declare (not safe))
                  (_K119908119922_ _k119932_ _id119930_)))
              (let () (declare (not safe)) (_E119907119916_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp125806
                                                 _bind119874_
                                                 _init119899_))))
                                  (declare (not safe))
                                  (_lp119870_
                                   _rest119898_
                                   __tmp125813
                                   __tmp125805)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest119875119887_))
                            (let ((_hd119880119937_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest119875119887_)))
                                  (_tl119881119939_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest119875119887_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd119880119937_))
                                  (let ((_hd119882119942_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd119880119937_)))
                                        (_tl119883119944_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd119880119937_))))
                                    (let ((_tmp119947_ _hd119882119942_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl119883119944_))
                                          (let ((_hd119884119949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl119883119944_)))
                                                (_tl119885119951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl119883119944_))))
                                            (let* ((_len119954_
                                                    _hd119884119949_)
                                                   (_init119956_
                                                    _tl119885119951_)
                                                   (_rest119958_
                                                    _tl119881119939_))
                                              (declare (not safe))
                                              (_K119879119934_
                                               _rest119958_
                                               _init119956_
                                               _len119954_
                                               _tmp119947_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else119877119895_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else119877119895_))))
                            (let ()
                              (declare (not safe))
                              (_else119877119895_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx119859_
             _compile-simple119861_
             _compile-values119862_)))))
    (define __compile-letrec*-values%
      (lambda (_stx119614_)
        (letrec ((_compile-simple119616_
                  (lambda (_hd-ids119855_ _exprs119856_ _body119857_)
                    (let ((__tmp125818
                           (let ((__tmp125819
                                  (let ((__tmp125821
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids119855_)
                                              _exprs119856_))
                                        (__tmp125820
                                         (let ()
                                           (declare (not safe))
                                           (cons _body119857_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125821 __tmp125820))))
                             (declare (not safe))
                             (cons 'letrec* __tmp125819))))
                      (declare (not safe))
                      (__SRC__% __tmp125818 _stx119614_))))
                 (_compile-values119617_
                  (lambda (_hd-ids119766_ _exprs119767_ _body119768_)
                    (let _lp119770_ ((_rest119772_ _hd-ids119766_)
                                     (_exprs119773_ _exprs119767_)
                                     (_bind119774_ '())
                                     (_post119775_ '()))
                      (let* ((_rest119776119790_ _rest119772_)
                             (_else119779119798_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind119618_
                                   _bind119774_
                                   _post119775_
                                   _body119768_)))))
                        (let ((_K119784119838_
                               (lambda (_rest119833_ _hd119834_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd119834_))
                                     (let ((_id119836_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd119834_))))
                                       (let ((__tmp125836 (cdr _exprs119773_))
                                             (__tmp125831
                                              (let ((__tmp125832
                                                     (let ((__tmp125833
                                                            (let ((__tmp125834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125835
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp125835))))
                      (declare (not safe))
                      (cons __tmp125834 '()))))
               (declare (not safe))
               (cons _id119836_ __tmp125833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125832
                                                      _bind119774_)))
                                             (__tmp125827
                                              (let ((__tmp125828
                                                     (let ((__tmp125829
                                                            (let ((__tmp125830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs119773_)))
                      (declare (not safe))
                      (cons __tmp125830 '()))))
               (declare (not safe))
               (cons _id119836_ __tmp125829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125828
                                                      _post119775_))))
                                         (declare (not safe))
                                         (_lp119770_
                                          _rest119833_
                                          __tmp125836
                                          __tmp125831
                                          __tmp125827)))
                                     (let ((__tmp125826 (cdr _exprs119773_))
                                           (__tmp125822
                                            (let ((__tmp125823
                                                   (let ((__tmp125824
                                                          (let ((__tmp125825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs119773_)))
                    (declare (not safe))
                    (cons __tmp125825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp125824))))
                                              (declare (not safe))
                                              (cons __tmp125823
                                                    _post119775_))))
                                       (declare (not safe))
                                       (_lp119770_
                                        _rest119833_
                                        __tmp125826
                                        _bind119774_
                                        __tmp125822)))))
                              (_K119781119818_
                               (lambda (_rest119802_ _hd119803_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd119803_))
                                     (let ((_id119805_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd119803_))))
                                       (let ((__tmp125872 (cdr _exprs119773_))
                                             (__tmp125867
                                              (let ((__tmp125868
                                                     (let ((__tmp125869
                                                            (let ((__tmp125870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125871
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp125871))))
                      (declare (not safe))
                      (cons __tmp125870 '()))))
               (declare (not safe))
               (cons _id119805_ __tmp125869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125868
                                                      _bind119774_)))
                                             (__tmp125861
                                              (let ((__tmp125862
                                                     (let ((__tmp125863
                                                            (let ((__tmp125864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125865
                                  (let ((__tmp125866 (car _exprs119773_)))
                                    (declare (not safe))
                                    (cons __tmp125866 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp125865))))
                      (declare (not safe))
                      (cons __tmp125864 '()))))
               (declare (not safe))
               (cons _id119805_ __tmp125863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125862
                                                      _post119775_))))
                                         (declare (not safe))
                                         (_lp119770_
                                          _rest119802_
                                          __tmp125872
                                          __tmp125867
                                          __tmp125861)))
                                     (if (let ((__tmp125860
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd119803_))))
                                           (declare (not safe))
                                           (not __tmp125860))
                                         (let ((__tmp125859
                                                (cdr _exprs119773_))
                                               (__tmp125855
                                                (let ((__tmp125856
                                                       (let ((__tmp125857
                                                              (let ((__tmp125858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs119773_)))
                        (declare (not safe))
                        (cons __tmp125858 '()))))
                 (declare (not safe))
                 (cons '#f __tmp125857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp125856
                                                        _post119775_))))
                                           (declare (not safe))
                                           (_lp119770_
                                            _rest119802_
                                            __tmp125859
                                            _bind119774_
                                            __tmp125855))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd119803_))
                                             (let* ((_len119807_
                                                     (length _hd119803_))
                                                    (_tmp119809_
                                                     (let ((__tmp125837
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp125837))))
                                               (let ((__tmp125854
                                                      (cdr _exprs119773_))
                                                     (__tmp125847
                                                      (let ((__tmp125848
                                                             (lambda (_id119812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r119813_)
                       (if (let () (declare (not safe)) (__AST-e _id119812_))
                           (let ((__tmp125849
                                  (let ((__tmp125853
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id119812_)))
                                        (__tmp125850
                                         (let ((__tmp125851
                                                (let ((__tmp125852
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp125852))))
                                           (declare (not safe))
                                           (cons __tmp125851 '()))))
                                    (declare (not safe))
                                    (cons __tmp125853 __tmp125850))))
                             (declare (not safe))
                             (cons __tmp125849 _r119813_))
                           _r119813_))))
                (declare (not safe))
                (foldl1 __tmp125848 _bind119774_ _hd119803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp125838
                                                      (let ((__tmp125839
                                                             (let ((__tmp125840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125846 (car _exprs119773_))
                                  (__tmp125841
                                   (let ((__tmp125842
                                          (let ((__tmp125844
                                                 (lambda (_id119815_ _k119816_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id119815_))
                                                       (let ((__tmp125845
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id119815_))))
                 (declare (not safe))
                 (cons __tmp125845 _k119816_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp125843
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len119807_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp125844
                                             _hd119803_
                                             __tmp125843))))
                                     (declare (not safe))
                                     (cons _len119807_ __tmp125842))))
                              (declare (not safe))
                              (cons __tmp125846 __tmp125841))))
                       (declare (not safe))
                       (cons _tmp119809_ __tmp125840))))
                (declare (not safe))
                (cons __tmp125839 _post119775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp119770_
                                                  _rest119802_
                                                  __tmp125854
                                                  __tmp125847
                                                  __tmp125838)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx119614_
                                                _hd119803_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119776119790_))
                              (let ((_tl119786119843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119776119790_)))
                                    (_hd119785119841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119776119790_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd119785119841_))
                                    (let ((_tl119788119848_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd119785119841_)))
                                          (_hd119787119846_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd119785119841_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl119788119848_))
                                          (let ((_hd119851_ _hd119787119846_)
                                                (_rest119853_
                                                 _tl119786119843_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119784119838_
                                               _rest119853_
                                               _hd119851_)))
                                          (let ((_hd119826_ _hd119785119841_)
                                                (_rest119828_
                                                 _tl119786119843_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119781119818_
                                               _rest119828_
                                               _hd119826_)))))
                                    (let ((_hd119826_ _hd119785119841_)
                                          (_rest119828_ _tl119786119843_))
                                      (let ()
                                        (declare (not safe))
                                        (_K119781119818_
                                         _rest119828_
                                         _hd119826_)))))
                              (let ()
                                (declare (not safe))
                                (_else119779119798_))))))))
                 (_compile-bind119618_
                  (lambda (_bind119762_ _post119763_ _body119764_)
                    (let ((__tmp125873
                           (let ((__tmp125874
                                  (let ((__tmp125877 (reverse _bind119762_))
                                        (__tmp125875
                                         (let ((__tmp125876
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post119619_
                                                   _post119763_
                                                   _body119764_))))
                                           (declare (not safe))
                                           (cons __tmp125876 '()))))
                                    (declare (not safe))
                                    (cons __tmp125877 __tmp125875))))
                             (declare (not safe))
                             (cons 'let __tmp125874))))
                      (declare (not safe))
                      (__SRC__% __tmp125873 _stx119614_))))
                 (_compile-post119619_
                  (lambda (_post119621_ _body119622_)
                    (let ((__tmp125878
                           (let ((__tmp125879
                                  (let ((__tmp125880
                                         (let ((__tmp125882
                                                (lambda (_hd119624_ _r119625_)
                                                  (let* ((_hd119626119649_
                                                          _hd119624_)
                                                         (_E119630119653_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd119626119649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K119643119747_
                                                           (lambda (_expr119745_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr119745_ _r119625_))))
                  (_K119638119725_
                   (lambda (_expr119722_ _id119723_)
                     (let ((__tmp125883
                            (let ((__tmp125884
                                   (let ((__tmp125885
                                          (let ((__tmp125886
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr119722_ '()))))
                                            (declare (not safe))
                                            (cons _id119723_ __tmp125886))))
                                     (declare (not safe))
                                     (cons 'set! __tmp125885))))
                              (declare (not safe))
                              (__SRC__% __tmp125884 _stx119614_))))
                       (declare (not safe))
                       (cons __tmp125883 _r119625_))))
                  (_K119631119692_
                   (lambda (_init119657_ _len119658_ _expr119659_ _tmp119660_)
                     (let ((__tmp125887
                            (let ((__tmp125888
                                   (let ((__tmp125889
                                          (let ((__tmp125903
                                                 (let ((__tmp125904
                                                        (let ((__tmp125905
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr119659_ '()))))
                  (declare (not safe))
                  (cons _tmp119660_ __tmp125905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125904 '())))
                                                (__tmp125890
                                                 (let ((__tmp125899
                                                        (let ((__tmp125900
                                                               (let ((__tmp125901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp125902
                                     (let ()
                                       (declare (not safe))
                                       (cons _len119658_ '()))))
                                (declare (not safe))
                                (cons _tmp119660_ __tmp125902))))
                         (declare (not safe))
                         (cons '__check-values __tmp125901))))
                  (declare (not safe))
                  (__SRC__% __tmp125900 _stx119614_)))
               (__tmp125891
                (let ((__tmp125892
                       (map (lambda (_hd119662_)
                              (let* ((_hd119663119670_ _hd119662_)
                                     (_E119665119674_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd119663119670_)))
                                     (_K119666119680_
                                      (lambda (_k119677_ _id119678_)
                                        (let ((__tmp125893
                                               (let ((__tmp125894
                                                      (let ((__tmp125895
                                                             (let ((__tmp125896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125897
                                   (let ((__tmp125898
                                          (let ()
                                            (declare (not safe))
                                            (cons _k119677_ '()))))
                                     (declare (not safe))
                                     (cons _tmp119660_ __tmp125898))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp125897))))
                       (declare (not safe))
                       (cons __tmp125896 '()))))
                (declare (not safe))
                (cons _id119678_ __tmp125895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp125894))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp125893
                                           _stx119614_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd119663119670_))
                                    (let ((_hd119667119683_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd119663119670_)))
                                          (_tl119668119685_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd119663119670_))))
                                      (let* ((_id119688_ _hd119667119683_)
                                             (_k119690_ _tl119668119685_))
                                        (declare (not safe))
                                        (_K119666119680_
                                         _k119690_
                                         _id119688_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E119665119674_)))))
                            _init119657_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp125892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125899
                                                         __tmp125891))))
                                            (declare (not safe))
                                            (cons __tmp125903 __tmp125890))))
                                     (declare (not safe))
                                     (cons 'let __tmp125889))))
                              (declare (not safe))
                              (__SRC__% __tmp125888 _stx119614_))))
                       (declare (not safe))
                       (cons __tmp125887 _r119625_)))))
              (if (let () (declare (not safe)) (##pair? _hd119626119649_))
                  (let ((_tl119645119752_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd119626119649_)))
                        (_hd119644119750_
                         (let ()
                           (declare (not safe))
                           (##car _hd119626119649_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd119644119750_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl119645119752_))
                            (let ((_tl119647119757_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl119645119752_)))
                                  (_hd119646119755_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl119645119752_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl119647119757_))
                                  (let ((_expr119760_ _hd119646119755_))
                                    (declare (not safe))
                                    (_K119643119747_ _expr119760_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl119647119757_))
                                      (let ((_tl119637119711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl119647119757_)))
                                            (_hd119636119709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl119647119757_))))
                                        (let ((_tmp119700_ _hd119644119750_)
                                              (_expr119707_ _hd119646119755_)
                                              (_len119714_ _hd119636119709_)
                                              (_init119716_ _tl119637119711_))
                                          (let ()
                                            (declare (not safe))
                                            (_K119631119692_
                                             _init119716_
                                             _len119714_
                                             _expr119707_
                                             _tmp119700_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E119630119653_)))))
                            (let () (declare (not safe)) (_E119630119653_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl119645119752_))
                            (let ((_tl119642119737_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl119645119752_)))
                                  (_hd119641119735_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl119645119752_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl119642119737_))
                                  (let ((_id119733_ _hd119644119750_)
                                        (_expr119740_ _hd119641119735_))
                                    (let ()
                                      (declare (not safe))
                                      (_K119638119725_
                                       _expr119740_
                                       _id119733_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl119642119737_))
                                      (let ((_tl119637119711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl119642119737_)))
                                            (_hd119636119709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl119642119737_))))
                                        (let ((_tmp119700_ _hd119644119750_)
                                              (_expr119707_ _hd119641119735_)
                                              (_len119714_ _hd119636119709_)
                                              (_init119716_ _tl119637119711_))
                                          (let ()
                                            (declare (not safe))
                                            (_K119631119692_
                                             _init119716_
                                             _len119714_
                                             _expr119707_
                                             _tmp119700_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E119630119653_)))))
                            (let () (declare (not safe)) (_E119630119653_)))))
                  (let () (declare (not safe)) (_E119630119653_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp125881
                                                (list _body119622_)))
                                           (declare (not safe))
                                           (foldl1 __tmp125882
                                                   __tmp125881
                                                   _post119621_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp125880))))
                             (declare (not safe))
                             (cons 'begin __tmp125879))))
                      (declare (not safe))
                      (__SRC__% __tmp125878 _stx119614_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx119614_
             _compile-simple119616_
             _compile-values119617_)))))
    (define __compile-call%
      (lambda (_stx119574_)
        (let* ((_$e119576_ _stx119574_)
               (_$E119578119587_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119576_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119576_))
              (let* ((_$tgt119579119590_
                      (let () (declare (not safe)) (__AST-e _$e119576_)))
                     (_$hd119580119593_
                      (let () (declare (not safe)) (##car _$tgt119579119590_)))
                     (_$tl119581119596_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119579119590_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119581119596_))
                    (let* ((_$tgt119582119600_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119581119596_)))
                           (_$hd119583119603_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119582119600_)))
                           (_$tl119584119606_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119582119600_))))
                      (let* ((_rator119610_ _$hd119583119603_)
                             (_rands119612_ _$tl119584119606_)
                             (__tmp125906
                              (let ((__tmp125908
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator119610_)))
                                    (__tmp125907
                                     (map __compile _rands119612_)))
                                (declare (not safe))
                                (cons __tmp125908 __tmp125907))))
                        (declare (not safe))
                        (__SRC__% __tmp125906 _stx119574_)))
                    (let () (declare (not safe)) (_$E119578119587_))))
              (let () (declare (not safe)) (_$E119578119587_))))))
    (define __compile-ref%
      (lambda (_stx119536_)
        (let* ((_$e119538_ _stx119536_)
               (_$E119540119549_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119538_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119538_))
              (let* ((_$tgt119541119552_
                      (let () (declare (not safe)) (__AST-e _$e119538_)))
                     (_$hd119542119555_
                      (let () (declare (not safe)) (##car _$tgt119541119552_)))
                     (_$tl119543119558_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119541119552_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119543119558_))
                    (let* ((_$tgt119544119562_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119543119558_)))
                           (_$hd119545119565_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119544119562_)))
                           (_$tl119546119568_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119544119562_))))
                      (let ((_id119572_ _$hd119545119565_))
                        (if (let ((__tmp125909
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119546119568_))))
                              (declare (not safe))
                              (equal? __tmp125909 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id119572_ _stx119536_))
                            (let () (declare (not safe)) (_$E119540119549_)))))
                    (let () (declare (not safe)) (_$E119540119549_))))
              (let () (declare (not safe)) (_$E119540119549_))))))
    (define __compile-setq%
      (lambda (_stx119483_)
        (let* ((_$e119485_ _stx119483_)
               (_$E119487119499_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119485_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119485_))
              (let* ((_$tgt119488119502_
                      (let () (declare (not safe)) (__AST-e _$e119485_)))
                     (_$hd119489119505_
                      (let () (declare (not safe)) (##car _$tgt119488119502_)))
                     (_$tl119490119508_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119488119502_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119490119508_))
                    (let* ((_$tgt119491119512_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119490119508_)))
                           (_$hd119492119515_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119491119512_)))
                           (_$tl119493119518_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119491119512_))))
                      (let ((_id119522_ _$hd119492119515_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl119493119518_))
                            (let* ((_$tgt119494119524_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl119493119518_)))
                                   (_$hd119495119527_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt119494119524_)))
                                   (_$tl119496119530_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt119494119524_))))
                              (let ((_expr119534_ _$hd119495119527_))
                                (if (let ((__tmp125915
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl119496119530_))))
                                      (declare (not safe))
                                      (equal? __tmp125915 '()))
                                    (let ((__tmp125910
                                           (let ((__tmp125911
                                                  (let ((__tmp125914
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id119522_
                                                            _stx119483_)))
                                                        (__tmp125912
                                                         (let ((__tmp125913
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr119534_))))
                   (declare (not safe))
                   (cons __tmp125913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125914
                                                          __tmp125912))))
                                             (declare (not safe))
                                             (cons 'set! __tmp125911))))
                                      (declare (not safe))
                                      (__SRC__% __tmp125910 _stx119483_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E119487119499_)))))
                            (let () (declare (not safe)) (_$E119487119499_)))))
                    (let () (declare (not safe)) (_$E119487119499_))))
              (let () (declare (not safe)) (_$E119487119499_))))))
    (define __compile-if%
      (lambda (_stx119415_)
        (let* ((_$e119417_ _stx119415_)
               (_$E119419119434_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119417_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119417_))
              (let* ((_$tgt119420119437_
                      (let () (declare (not safe)) (__AST-e _$e119417_)))
                     (_$hd119421119440_
                      (let () (declare (not safe)) (##car _$tgt119420119437_)))
                     (_$tl119422119443_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119420119437_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119422119443_))
                    (let* ((_$tgt119423119447_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119422119443_)))
                           (_$hd119424119450_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119423119447_)))
                           (_$tl119425119453_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119423119447_))))
                      (let ((_p119457_ _$hd119424119450_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl119425119453_))
                            (let* ((_$tgt119426119459_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl119425119453_)))
                                   (_$hd119427119462_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt119426119459_)))
                                   (_$tl119428119465_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt119426119459_))))
                              (let ((_t119469_ _$hd119427119462_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl119428119465_))
                                    (let* ((_$tgt119429119471_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl119428119465_)))
                                           (_$hd119430119474_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt119429119471_)))
                                           (_$tl119431119477_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt119429119471_))))
                                      (let ((_f119481_ _$hd119430119474_))
                                        (if (let ((__tmp125923
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl119431119477_))))
                                              (declare (not safe))
                                              (equal? __tmp125923 '()))
                                            (let ((__tmp125916
                                                   (let ((__tmp125917
                                                          (let ((__tmp125922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p119457_)))
                        (__tmp125918
                         (let ((__tmp125921
                                (let ()
                                  (declare (not safe))
                                  (__compile _t119469_)))
                               (__tmp125919
                                (let ((__tmp125920
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f119481_))))
                                  (declare (not safe))
                                  (cons __tmp125920 '()))))
                           (declare (not safe))
                           (cons __tmp125921 __tmp125919))))
                    (declare (not safe))
                    (cons __tmp125922 __tmp125918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp125917))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp125916
                                               _stx119415_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E119419119434_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E119419119434_)))))
                            (let () (declare (not safe)) (_$E119419119434_)))))
                    (let () (declare (not safe)) (_$E119419119434_))))
              (let () (declare (not safe)) (_$E119419119434_))))))
    (define __compile-quote%
      (lambda (_stx119377_)
        (let* ((_$e119379_ _stx119377_)
               (_$E119381119390_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119379_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119379_))
              (let* ((_$tgt119382119393_
                      (let () (declare (not safe)) (__AST-e _$e119379_)))
                     (_$hd119383119396_
                      (let () (declare (not safe)) (##car _$tgt119382119393_)))
                     (_$tl119384119399_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119382119393_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119384119399_))
                    (let* ((_$tgt119385119403_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119384119399_)))
                           (_$hd119386119406_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119385119403_)))
                           (_$tl119387119409_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119385119403_))))
                      (let ((_e119413_ _$hd119386119406_))
                        (if (let ((__tmp125927
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119387119409_))))
                              (declare (not safe))
                              (equal? __tmp125927 '()))
                            (let ((__tmp125924
                                   (let ((__tmp125925
                                          (let ((__tmp125926
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e119413_))))
                                            (declare (not safe))
                                            (cons __tmp125926 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp125925))))
                              (declare (not safe))
                              (__SRC__% __tmp125924 _stx119377_))
                            (let () (declare (not safe)) (_$E119381119390_)))))
                    (let () (declare (not safe)) (_$E119381119390_))))
              (let () (declare (not safe)) (_$E119381119390_))))))
    (define __compile-quote-syntax%
      (lambda (_stx119339_)
        (let* ((_$e119341_ _stx119339_)
               (_$E119343119352_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119341_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119341_))
              (let* ((_$tgt119344119355_
                      (let () (declare (not safe)) (__AST-e _$e119341_)))
                     (_$hd119345119358_
                      (let () (declare (not safe)) (##car _$tgt119344119355_)))
                     (_$tl119346119361_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119344119355_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119346119361_))
                    (let* ((_$tgt119347119365_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119346119361_)))
                           (_$hd119348119368_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119347119365_)))
                           (_$tl119349119371_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119347119365_))))
                      (let ((_e119375_ _$hd119348119368_))
                        (if (let ((__tmp125930
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119349119371_))))
                              (declare (not safe))
                              (equal? __tmp125930 '()))
                            (let ((__tmp125928
                                   (let ((__tmp125929
                                          (let ()
                                            (declare (not safe))
                                            (cons _e119375_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp125929))))
                              (declare (not safe))
                              (__SRC__% __tmp125928 _stx119339_))
                            (let () (declare (not safe)) (_$E119343119352_)))))
                    (let () (declare (not safe)) (_$E119343119352_))))
              (let () (declare (not safe)) (_$E119343119352_))))))
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
