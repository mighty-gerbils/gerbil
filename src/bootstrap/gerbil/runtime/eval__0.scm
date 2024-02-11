(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707659878)
  (begin
    (define __context::t
      (let ((__tmp113512 (list))
            (__tmp113510
             (let ((__tmp113511
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113511 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp113512
         '(t ns super table)
         __tmp113510
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args108846_ (apply make-instance __context::t _$args108846_)))
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
      (let ((__tmp113515 (list))
            (__tmp113513
             (let ((__tmp113514
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113514 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp113515
         '(id)
         __tmp113513
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args108843_ (apply make-instance __runtime::t _$args108843_)))
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
      (let ((__tmp113518 (list))
            (__tmp113516
             (let ((__tmp113517
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113517 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113518
         '(e id)
         __tmp113516
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args108840_ (apply make-instance __syntax::t _$args108840_)))
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
      (let ((__tmp113521 (list __syntax::t))
            (__tmp113519
             (let ((__tmp113520
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113520 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp113521
         '()
         __tmp113519
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args108837_ (apply make-instance __macro::t _$args108837_)))
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
      (let ((__tmp113524 (list __macro::t))
            (__tmp113522
             (let ((__tmp113523
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113523 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp113524
         '()
         __tmp113522
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args108834_
        (apply make-instance __special-form::t _$args108834_)))
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
      (let ((__tmp113527 (list __syntax::t))
            (__tmp113525
             (let ((__tmp113526
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113526 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113527
         '()
         __tmp113525
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args108831_
        (apply make-instance __core-form::t _$args108831_)))
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
      (let ((__tmp113530 (list __core-form::t))
            (__tmp113528
             (let ((__tmp113529
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113529 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113530
         '()
         __tmp113528
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args108828_
        (apply make-instance __core-expression::t _$args108828_)))
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
      (let ((__tmp113533 (list __core-form::t))
            (__tmp113531
             (let ((__tmp113532
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113532 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113533
         '()
         __tmp113531
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args108825_
        (apply make-instance __core-special-form::t _$args108825_)))
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
      (let ((__tmp113536 (list __syntax::t))
            (__tmp113534
             (let ((__tmp113535
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113535 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp113536
         '()
         __tmp113534
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args108822_
        (apply make-instance __struct-info::t _$args108822_)))
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
      (let ((__tmp113539 (list __syntax::t))
            (__tmp113537
             (let ((__tmp113538
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113538 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp113539
         '()
         __tmp113537
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args108819_ (apply make-instance __feature::t _$args108819_)))
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
      (let ((__tmp113542 (list __context::t))
            (__tmp113540
             (let ((__tmp113541
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113541 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp113542
         '(id path import export)
         __tmp113540
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args108816_ (apply make-instance __module::t _$args108816_)))
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
      (let ((__tmp113544
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp113543
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp113544 __tmp113543)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id108791_ _ctx108792_)
        (if _ctx108792_
            (let ((_id108794_
                   (let () (declare (not safe)) (__AST-e _id108791_))))
              (let _lp108796_ ((_ctx108798_ _ctx108792_))
                (let ((_$e108800_
                       (table-ref
                        (##structure-ref _ctx108798_ '4 __context::t '#f)
                        _id108794_
                        '#f)))
                  (if _$e108800_
                      (values _$e108800_)
                      (let ((_$e108803_
                             (##structure-ref
                              _ctx108798_
                              '3
                              __context::t
                              '#f)))
                        (if _$e108803_
                            (let ()
                              (declare (not safe))
                              (_lp108796_ _$e108803_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id108809_)
        (let ((_ctx108811_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id108809_ _ctx108811_))))
    (define __core-resolve
      (lambda _g113546_
        (let ((_g113545_ (let () (declare (not safe)) (##length _g113546_))))
          (cond ((let () (declare (not safe)) (##fx= _g113545_ 1))
                 (apply (lambda (_id108809_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id108809_)))
                        _g113546_))
                ((let () (declare (not safe)) (##fx= _g113545_ 2))
                 (apply (lambda (_id108813_ _ctx108814_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id108813_ _ctx108814_)))
                        _g113546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113546_))))))
    (define __core-bound-id?__%
      (lambda (_id108774_ _is?108775_)
        (let ((_$e108777_
               (let () (declare (not safe)) (__core-resolve__0 _id108774_))))
          (if _$e108777_ (_is?108775_ _$e108777_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id108783_)
        (let ((_is?108785_ true))
          (declare (not safe))
          (__core-bound-id?__% _id108783_ _is?108785_))))
    (define __core-bound-id?
      (lambda _g113548_
        (let ((_g113547_ (let () (declare (not safe)) (##length _g113548_))))
          (cond ((let () (declare (not safe)) (##fx= _g113547_ 1))
                 (apply (lambda (_id108783_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id108783_)))
                        _g113548_))
                ((let () (declare (not safe)) (##fx= _g113547_ 2))
                 (apply (lambda (_id108787_ _is?108788_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id108787_ _is?108788_)))
                        _g113548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113548_))))))
    (define __core-bind-runtime!__%
      (lambda (_id108757_ _eid108758_ _ctx108759_)
        (if _eid108758_
            (let ((__tmp113551
                   (##structure-ref _ctx108759_ '4 __context::t '#f))
                  (__tmp113550
                   (let () (declare (not safe)) (__AST-e _id108757_)))
                  (__tmp113549
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid108758_))))
              (declare (not safe))
              (table-set! __tmp113551 __tmp113550 __tmp113549))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id108764_ _eid108765_)
        (let ((_ctx108767_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id108764_ _eid108765_ _ctx108767_))))
    (define __core-bind-runtime!
      (lambda _g113553_
        (let ((_g113552_ (let () (declare (not safe)) (##length _g113553_))))
          (cond ((let () (declare (not safe)) (##fx= _g113552_ 2))
                 (apply (lambda (_id108764_ _eid108765_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id108764_ _eid108765_)))
                        _g113553_))
                ((let () (declare (not safe)) (##fx= _g113552_ 3))
                 (apply (lambda (_id108769_ _eid108770_ _ctx108771_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id108769_
                             _eid108770_
                             _ctx108771_)))
                        _g113553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113553_))))))
    (define __core-bind-syntax!__%
      (lambda (_id108740_ _e108741_ _make108742_)
        (let ((__tmp113554
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e108741_
                      'gerbil/runtime/eval#__syntax::t))
                   _e108741_
                   (_make108742_ _e108741_ _id108740_))))
          (declare (not safe))
          (table-set! __*core* _id108740_ __tmp113554))))
    (define __core-bind-syntax!__0
      (lambda (_id108747_ _e108748_)
        (let ((_make108750_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id108747_ _e108748_ _make108750_))))
    (define __core-bind-syntax!
      (lambda _g113556_
        (let ((_g113555_ (let () (declare (not safe)) (##length _g113556_))))
          (cond ((let () (declare (not safe)) (##fx= _g113555_ 2))
                 (apply (lambda (_id108747_ _e108748_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id108747_ _e108748_)))
                        _g113556_))
                ((let () (declare (not safe)) (##fx= _g113555_ 3))
                 (apply (lambda (_id108752_ _e108753_ _make108754_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id108752_
                             _e108753_
                             _make108754_)))
                        _g113556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113556_))))))
    (define __core-bind-macro!
      (lambda (_id108736_ _e108737_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108736_ _e108737_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id108733_ _e108734_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108733_ _e108734_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id108717_ _e108718_ _ctx108719_)
        (let ((__tmp113560 (##structure-ref _ctx108719_ '4 __context::t '#f))
              (__tmp113559 (let () (declare (not safe)) (__AST-e _id108717_)))
              (__tmp113557
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e108718_
                      'gerbil/runtime/eval#__syntax::t))
                   _e108718_
                   (let ((__tmp113558
                          (let () (declare (not safe)) (__AST-e _id108717_))))
                     (declare (not safe))
                     (##structure __syntax::t _e108718_ __tmp113558)))))
          (declare (not safe))
          (table-set! __tmp113560 __tmp113559 __tmp113557))))
    (define __core-bind-user-syntax!__0
      (lambda (_id108724_ _e108725_)
        (let ((_ctx108727_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id108724_ _e108725_ _ctx108727_))))
    (define __core-bind-user-syntax!
      (lambda _g113562_
        (let ((_g113561_ (let () (declare (not safe)) (##length _g113562_))))
          (cond ((let () (declare (not safe)) (##fx= _g113561_ 2))
                 (apply (lambda (_id108724_ _e108725_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id108724_
                             _e108725_)))
                        _g113562_))
                ((let () (declare (not safe)) (##fx= _g113561_ 3))
                 (apply (lambda (_id108729_ _e108730_ _ctx108731_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id108729_
                             _e108730_
                             _ctx108731_)))
                        _g113562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113562_))))))
    (define make-__runtime-id__%
      (lambda (_id108698_ _ctx108699_)
        (let ((_id108701_ (let () (declare (not safe)) (__AST-e _id108698_))))
          (if (let () (declare (not safe)) (eq? _id108701_ '_))
              '#f
              (if (uninterned-symbol? _id108701_)
                  (gensym _id108701_)
                  (if (let () (declare (not safe)) (symbol? _id108701_))
                      (let ((_$e108703_
                             (##structure-ref
                              _ctx108699_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e108703_))
                            (gensym _id108701_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e108703_))
                                (let ((__tmp113563
                                       (##structure-ref
                                        _ctx108699_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113563 '"#" _id108701_))
                                _id108701_)))
                      (error '"Illegal runtime identifier" _id108701_)))))))
    (define make-__runtime-id__0
      (lambda (_id108709_)
        (let ((_ctx108711_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id108709_ _ctx108711_))))
    (define make-__runtime-id
      (lambda _g113565_
        (let ((_g113564_ (let () (declare (not safe)) (##length _g113565_))))
          (cond ((let () (declare (not safe)) (##fx= _g113564_ 1))
                 (apply (lambda (_id108709_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id108709_)))
                        _g113565_))
                ((let () (declare (not safe)) (##fx= _g113564_ 2))
                 (apply (lambda (_id108713_ _ctx108714_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id108713_ _ctx108714_)))
                        _g113565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113565_))))))
    (define make-__context-local__%
      (lambda (_super108687_)
        (let ((__tmp113566
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super108687_ __tmp113566))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super108693_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super108693_))))
    (define make-__context-local
      (lambda _g113568_
        (let ((_g113567_ (let () (declare (not safe)) (##length _g113568_))))
          (cond ((let () (declare (not safe)) (##fx= _g113567_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g113568_))
                ((let () (declare (not safe)) (##fx= _g113567_ 1))
                 (apply (lambda (_super108695_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super108695_)))
                        _g113568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g113568_))))))
    (define make-__context-module__%
      (lambda (_id108667_ _ns108668_ _path108669_ _super108670_)
        (let ((__tmp113569
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns108668_
           _super108670_
           __tmp113569
           _id108667_
           _path108669_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id108675_ _ns108676_ _path108677_)
        (let ((_super108679_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id108675_
           _ns108676_
           _path108677_
           _super108679_))))
    (define make-__context-module
      (lambda _g113571_
        (let ((_g113570_ (let () (declare (not safe)) (##length _g113571_))))
          (cond ((let () (declare (not safe)) (##fx= _g113570_ 3))
                 (apply (lambda (_id108675_ _ns108676_ _path108677_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id108675_
                             _ns108676_
                             _path108677_)))
                        _g113571_))
                ((let () (declare (not safe)) (##fx= _g113570_ 4))
                 (apply (lambda (_id108681_
                                 _ns108682_
                                 _path108683_
                                 _super108684_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id108681_
                             _ns108682_
                             _path108683_
                             _super108684_)))
                        _g113571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g113571_))))))
    (define __SRC__%
      (lambda (_e108650_ _src-stx108651_)
        (if (or (let () (declare (not safe)) (pair? _e108650_))
                (let () (declare (not safe)) (symbol? _e108650_)))
            (let ((__tmp113575
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx108651_
                          'gerbil#AST::t))
                       (let ((__tmp113576
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx108651_))))
                         (declare (not safe))
                         (__locat __tmp113576))
                       '#f)))
              (declare (not safe))
              (##make-source _e108650_ __tmp113575))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e108650_ 'gerbil#AST::t))
                (let ((__tmp113574
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e108650_ '1 AST::t '#f)))
                      (__tmp113572
                       (let ((__tmp113573
                              (let ()
                                (declare (not safe))
                                (__AST-source _e108650_))))
                         (declare (not safe))
                         (__locat __tmp113573))))
                  (declare (not safe))
                  (##make-source __tmp113574 __tmp113572))
                (error '"BUG! Cannot sourcify object" _e108650_)))))
    (define __SRC__0
      (lambda (_e108659_)
        (let ((_src-stx108661_ '#f))
          (declare (not safe))
          (__SRC__% _e108659_ _src-stx108661_))))
    (define __SRC
      (lambda _g113578_
        (let ((_g113577_ (let () (declare (not safe)) (##length _g113578_))))
          (cond ((let () (declare (not safe)) (##fx= _g113577_ 1))
                 (apply (lambda (_e108659_)
                          (let () (declare (not safe)) (__SRC__0 _e108659_)))
                        _g113578_))
                ((let () (declare (not safe)) (##fx= _g113577_ 2))
                 (apply (lambda (_e108663_ _src-stx108664_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e108663_ _src-stx108664_)))
                        _g113578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113578_))))))
    (define __locat
      (lambda (_loc108647_)
        (if (let () (declare (not safe)) (##locat? _loc108647_))
            _loc108647_
            '#f)))
    (define __check-values
      (lambda (_obj108642_ _k108643_)
        (let ((_count108645_
               (if (let () (declare (not safe)) (##values? _obj108642_))
                   (let () (declare (not safe)) (##vector-length _obj108642_))
                   '1)))
          (if (fx= _count108645_ _k108643_)
              '#!void
              (error (if (fx< _count108645_ _k108643_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj108642_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj108642_))
                         _obj108642_)
                     _k108643_)))))
    (define __compile
      (lambda (_stx108612_)
        (let* ((_$e108614_ _stx108612_)
               (_$E108616108622_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108614_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108614_))
              (let* ((_$tgt108617108625_
                      (let () (declare (not safe)) (__AST-e _$e108614_)))
                     (_$hd108618108628_
                      (let () (declare (not safe)) (##car _$tgt108617108625_)))
                     (_$tl108619108631_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108617108625_))))
                (let* ((_form108635_ _$hd108618108628_)
                       (_$e108637_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form108635_))))
                  (if _$e108637_
                      ((lambda (_bind108640_)
                         ((##structure-ref _bind108640_ '1 __syntax::t '#f)
                          _stx108612_))
                       _$e108637_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx108612_
                         _form108635_)))))
              (let () (declare (not safe)) (_$E108616108622_))))))
    (define __compile-error__%
      (lambda (_stx108599_ _detail108600_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx108599_
           _detail108600_))))
    (define __compile-error__0
      (lambda (_stx108605_)
        (let ((_detail108607_ '#f))
          (declare (not safe))
          (__compile-error__% _stx108605_ _detail108607_))))
    (define __compile-error
      (lambda _g113580_
        (let ((_g113579_ (let () (declare (not safe)) (##length _g113580_))))
          (cond ((let () (declare (not safe)) (##fx= _g113579_ 1))
                 (apply (lambda (_stx108605_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx108605_)))
                        _g113580_))
                ((let () (declare (not safe)) (##fx= _g113579_ 2))
                 (apply (lambda (_stx108609_ _detail108610_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx108609_ _detail108610_)))
                        _g113580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113580_))))))
    (define __compile-ignore%
      (lambda (_stx108596_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx108596_))))
    (define __compile-begin%
      (lambda (_stx108571_)
        (let* ((_$e108573_ _stx108571_)
               (_$E108575108581_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108573_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108573_))
              (let* ((_$tgt108576108584_
                      (let () (declare (not safe)) (__AST-e _$e108573_)))
                     (_$hd108577108587_
                      (let () (declare (not safe)) (##car _$tgt108576108584_)))
                     (_$tl108578108590_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108576108584_))))
                (let* ((_body108594_ _$tl108578108590_)
                       (__tmp113581
                        (let ((__tmp113582 (map __compile _body108594_)))
                          (declare (not safe))
                          (cons 'begin __tmp113582))))
                  (declare (not safe))
                  (__SRC__% __tmp113581 _stx108571_)))
              (let () (declare (not safe)) (_$E108575108581_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108546_)
        (let* ((_$e108548_ _stx108546_)
               (_$E108550108556_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108548_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108548_))
              (let* ((_$tgt108551108559_
                      (let () (declare (not safe)) (__AST-e _$e108548_)))
                     (_$hd108552108562_
                      (let () (declare (not safe)) (##car _$tgt108551108559_)))
                     (_$tl108553108565_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108551108559_))))
                (let* ((_body108569_ _$tl108553108565_)
                       (__tmp113583
                        (let ((__tmp113584
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body108569_))))
                          (declare (not safe))
                          (cons 'begin __tmp113584))))
                  (declare (not safe))
                  (__SRC__% __tmp113583 _stx108546_)))
              (let () (declare (not safe)) (_$E108550108556_))))))
    (define __compile-import%
      (lambda (_stx108521_)
        (let* ((_$e108523_ _stx108521_)
               (_$E108525108531_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108523_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108523_))
              (let* ((_$tgt108526108534_
                      (let () (declare (not safe)) (__AST-e _$e108523_)))
                     (_$hd108527108537_
                      (let () (declare (not safe)) (##car _$tgt108526108534_)))
                     (_$tl108528108540_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108526108534_))))
                (let* ((_body108544_ _$tl108528108540_)
                       (__tmp113585
                        (let ((__tmp113586
                               (let ((__tmp113587
                                      (let ((__tmp113588
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108544_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp113588))))
                                 (declare (not safe))
                                 (cons __tmp113587 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp113586))))
                  (declare (not safe))
                  (__SRC__% __tmp113585 _stx108521_)))
              (let () (declare (not safe)) (_$E108525108531_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108468_)
        (let* ((_$e108470_ _stx108468_)
               (_$E108472108484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108470_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108470_))
              (let* ((_$tgt108473108487_
                      (let () (declare (not safe)) (__AST-e _$e108470_)))
                     (_$hd108474108490_
                      (let () (declare (not safe)) (##car _$tgt108473108487_)))
                     (_$tl108475108493_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108473108487_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108475108493_))
                    (let* ((_$tgt108476108497_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108475108493_)))
                           (_$hd108477108500_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108476108497_)))
                           (_$tl108478108503_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108476108497_))))
                      (let ((_ann108507_ _$hd108477108500_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108478108503_))
                            (let* ((_$tgt108479108509_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108478108503_)))
                                   (_$hd108480108512_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108479108509_)))
                                   (_$tl108481108515_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108479108509_))))
                              (let ((_expr108519_ _$hd108480108512_))
                                (if (let ((__tmp113589
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108481108515_))))
                                      (declare (not safe))
                                      (equal? __tmp113589 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108519_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108472108484_)))))
                            (let () (declare (not safe)) (_$E108472108484_)))))
                    (let () (declare (not safe)) (_$E108472108484_))))
              (let () (declare (not safe)) (_$E108472108484_))))))
    (define __compile-define-values%
      (lambda (_stx108359_)
        (let* ((_$e108361_ _stx108359_)
               (_$E108363108375_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108361_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108361_))
              (let* ((_$tgt108364108378_
                      (let () (declare (not safe)) (__AST-e _$e108361_)))
                     (_$hd108365108381_
                      (let () (declare (not safe)) (##car _$tgt108364108378_)))
                     (_$tl108366108384_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108364108378_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108366108384_))
                    (let* ((_$tgt108367108388_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108366108384_)))
                           (_$hd108368108391_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108367108388_)))
                           (_$tl108369108394_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108367108388_))))
                      (let ((_hd108398_ _$hd108368108391_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108369108394_))
                            (let* ((_$tgt108370108400_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108369108394_)))
                                   (_$hd108371108403_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108370108400_)))
                                   (_$tl108372108406_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108370108400_))))
                              (let ((_expr108410_ _$hd108371108403_))
                                (if (let ((__tmp113622
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108372108406_))))
                                      (declare (not safe))
                                      (equal? __tmp113622 '()))
                                    (let* ((_$e108412_ _hd108398_)
                                           (_$E108414108455_
                                            (lambda ()
                                              (let ((_$E108415108440_
                                                     (lambda ()
                                                       (let* ((_$E108416108427_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108412_))))
                      (_ids108430_ _hd108398_)
                      (_len108432_ (length _ids108430_))
                      (_tmp108434_
                       (let ((__tmp113590 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp113590))))
                 (let ((__tmp113591
                        (let ((__tmp113592
                               (let ((__tmp113609
                                      (let ((__tmp113610
                                             (let ((__tmp113611
                                                    (let ((__tmp113612
                                                           (let ((__tmp113613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108410_))))
                     (declare (not safe))
                     (cons __tmp113613 '()))))
              (declare (not safe))
              (cons _tmp108434_ __tmp113612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp113611))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113610 _stx108359_)))
                                     (__tmp113593
                                      (let ((__tmp113605
                                             (let ((__tmp113606
                                                    (let ((__tmp113607
                                                           (let ((__tmp113608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108432_ '()))))
                     (declare (not safe))
                     (cons _tmp108434_ __tmp113608))))
              (declare (not safe))
              (cons '__check-values __tmp113607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp113606
                                                _stx108359_)))
                                            (__tmp113594
                                             (let ((__tmp113595
                                                    (let ((__tmp113597
                                                           (lambda (_id108437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108438_)
                     (if (let () (declare (not safe)) (__AST-e _id108437_))
                         (let ((__tmp113598
                                (let ((__tmp113599
                                       (let ((__tmp113604
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108437_)))
                                             (__tmp113600
                                              (let ((__tmp113601
                                                     (let ((__tmp113602
                                                            (let ((__tmp113603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108438_ '()))))
                      (declare (not safe))
                      (cons _tmp108434_ __tmp113603))))
               (declare (not safe))
               (cons '##vector-ref __tmp113602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113601 '()))))
                                         (declare (not safe))
                                         (cons __tmp113604 __tmp113600))))
                                  (declare (not safe))
                                  (cons 'define __tmp113599))))
                           (declare (not safe))
                           (__SRC__% __tmp113598 _stx108359_))
                         '#f)))
                  (__tmp113596
                   (let () (declare (not safe)) (iota _len108432_))))
              (declare (not safe))
              (filter-map2 __tmp113597 _ids108430_ __tmp113596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp113595))))
                                        (declare (not safe))
                                        (cons __tmp113605 __tmp113594))))
                                 (declare (not safe))
                                 (cons __tmp113609 __tmp113593))))
                          (declare (not safe))
                          (cons 'begin __tmp113592))))
                   (declare (not safe))
                   (__SRC__% __tmp113591 _stx108359_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108412_))
                                                    (let* ((_$tgt108417108443_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108412_)))
                                                           (_$hd108418108446_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108417108443_)))
                                                           (_$tl108419108449_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108417108443_))))
                                                      (let ((_id108453_
                                                             _$hd108418108446_))
                                                        (if (let ((__tmp113619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108419108449_))))
                      (declare (not safe))
                      (equal? __tmp113619 '()))
                    (let ((__tmp113614
                           (let ((__tmp113615
                                  (let ((__tmp113618
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108453_)))
                                        (__tmp113616
                                         (let ((__tmp113617
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108410_))))
                                           (declare (not safe))
                                           (cons __tmp113617 '()))))
                                    (declare (not safe))
                                    (cons __tmp113618 __tmp113616))))
                             (declare (not safe))
                             (cons 'define __tmp113615))))
                      (declare (not safe))
                      (__SRC__% __tmp113614 _stx108359_))
                    (let () (declare (not safe)) (_$E108415108440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108415108440_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108412_))
                                          (let* ((_$tgt108420108458_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108412_)))
                                                 (_$hd108421108461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108420108458_)))
                                                 (_$tl108422108464_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108420108458_))))
                                            (if (let ((__tmp113621
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108421108461_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113621 '#f))
                                                (if (let ((__tmp113620
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108422108464_))))
                                                      (declare (not safe))
                                                      (equal? __tmp113620 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108410_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108414108455_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108414108455_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108414108455_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108363108375_)))))
                            (let () (declare (not safe)) (_$E108363108375_)))))
                    (let () (declare (not safe)) (_$E108363108375_))))
              (let () (declare (not safe)) (_$E108363108375_))))))
    (define __compile-head-id
      (lambda (_e108357_)
        (let ((__tmp113623
               (if (let () (declare (not safe)) (__AST-e _e108357_))
                   _e108357_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp113623))))
    (define __compile-lambda-head
      (lambda (_hd108314_)
        (let _recur108316_ ((_rest108318_ _hd108314_))
          (let* ((_$e108320_ _rest108318_)
                 (_$E108322108340_
                  (lambda ()
                    (let ((_$E108323108337_
                           (lambda ()
                             (let* ((_$E108324108332_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108320_))))
                                    (_tail108335_ _$e108320_))
                               (declare (not safe))
                               (__compile-head-id _tail108335_)))))
                      (if (let ((__tmp113624
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108320_))))
                            (declare (not safe))
                            (equal? __tmp113624 '()))
                          '()
                          (let () (declare (not safe)) (_$E108323108337_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108320_))
                (let* ((_$tgt108325108343_
                        (let () (declare (not safe)) (__AST-e _$e108320_)))
                       (_$hd108326108346_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108325108343_)))
                       (_$tl108327108349_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108325108343_))))
                  (let* ((_hd108353_ _$hd108326108346_)
                         (_rest108355_ _$tl108327108349_))
                    (let ((__tmp113626
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108353_)))
                          (__tmp113625
                           (let ()
                             (declare (not safe))
                             (_recur108316_ _rest108355_))))
                      (declare (not safe))
                      (cons __tmp113626 __tmp113625))))
                (let () (declare (not safe)) (_$E108322108340_)))))))
    (define __compile-lambda%
      (lambda (_stx108261_)
        (let* ((_$e108263_ _stx108261_)
               (_$E108265108277_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108263_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108263_))
              (let* ((_$tgt108266108280_
                      (let () (declare (not safe)) (__AST-e _$e108263_)))
                     (_$hd108267108283_
                      (let () (declare (not safe)) (##car _$tgt108266108280_)))
                     (_$tl108268108286_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108266108280_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108268108286_))
                    (let* ((_$tgt108269108290_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108268108286_)))
                           (_$hd108270108293_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108269108290_)))
                           (_$tl108271108296_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108269108290_))))
                      (let ((_hd108300_ _$hd108270108293_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108271108296_))
                            (let* ((_$tgt108272108302_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108271108296_)))
                                   (_$hd108273108305_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108272108302_)))
                                   (_$tl108274108308_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108272108302_))))
                              (let ((_body108312_ _$hd108273108305_))
                                (if (let ((__tmp113632
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108274108308_))))
                                      (declare (not safe))
                                      (equal? __tmp113632 '()))
                                    (let ((__tmp113627
                                           (let ((__tmp113628
                                                  (let ((__tmp113631
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108300_)))
                                                        (__tmp113629
                                                         (let ((__tmp113630
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108312_))))
                   (declare (not safe))
                   (cons __tmp113630 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113631
                                                          __tmp113629))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp113628))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113627 _stx108261_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108265108277_)))))
                            (let () (declare (not safe)) (_$E108265108277_)))))
                    (let () (declare (not safe)) (_$E108265108277_))))
              (let () (declare (not safe)) (_$E108265108277_))))))
    (define __compile-case-lambda%
      (lambda (_stx108053_)
        (letrec ((_variadic?108055_
                  (lambda (_hd108226_)
                    (let* ((_$e108228_ _hd108226_)
                           (_$E108230108246_
                            (lambda ()
                              (let ((_$E108231108243_
                                     (lambda ()
                                       (let ((_$E108232108240_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108228_)))))
                                         '#t))))
                                (if (let ((__tmp113633
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108228_))))
                                      (declare (not safe))
                                      (equal? __tmp113633 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108231108243_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108228_))
                          (let* ((_$tgt108233108249_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108228_)))
                                 (_$hd108234108252_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108233108249_)))
                                 (_$tl108235108255_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108233108249_))))
                            (let ((_rest108259_ _$tl108235108255_))
                              (declare (not safe))
                              (_variadic?108055_ _rest108259_)))
                          (let () (declare (not safe)) (_$E108230108246_))))))
                 (_arity108056_
                  (lambda (_hd108191_)
                    (let _lp108193_ ((_rest108195_ _hd108191_) (_k108196_ '0))
                      (let* ((_$e108198_ _rest108195_)
                             (_$E108200108211_
                              (lambda ()
                                (let ((_$E108201108208_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108198_)))))
                                  _k108196_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108198_))
                            (let* ((_$tgt108202108214_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108198_)))
                                   (_$hd108203108217_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108202108214_)))
                                   (_$tl108204108220_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108202108214_))))
                              (let* ((_rest108224_ _$tl108204108220_)
                                     (__tmp113634
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108196_ '1))))
                                (declare (not safe))
                                (_lp108193_ _rest108224_ __tmp113634)))
                            (let ()
                              (declare (not safe))
                              (_$E108200108211_)))))))
                 (_generate108057_
                  (lambda (_rest108118_ _args108119_ _len108120_)
                    (let* ((_$e108122_ _rest108118_)
                           (_$E108124108135_
                            (lambda ()
                              (let* ((_$E108125108132_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108122_))))
                                     (__tmp113635
                                      (let ((__tmp113636
                                             (let ((__tmp113637
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108119_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp113637))))
                                        (declare (not safe))
                                        (cons 'error __tmp113636))))
                                (declare (not safe))
                                (__SRC__% __tmp113635 _stx108053_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108122_))
                          (let* ((_$tgt108126108138_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108122_)))
                                 (_$hd108127108141_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108126108138_)))
                                 (_$tl108128108144_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108126108138_))))
                            (let* ((_clause108148_ _$hd108127108141_)
                                   (_rest108150_ _$tl108128108144_)
                                   (_$e108152_ _clause108148_)
                                   (_$E108154108163_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108152_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108152_))
                                  (let* ((_$tgt108155108166_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108152_)))
                                         (_$hd108156108169_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108155108166_)))
                                         (_$tl108157108172_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108155108166_))))
                                    (let ((_hd108176_ _$hd108156108169_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108157108172_))
                                          (let* ((_$tgt108158108178_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108157108172_)))
                                                 (_$hd108159108181_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108158108178_)))
                                                 (_$tl108160108184_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108158108178_))))
                                            (if (let ((__tmp113652
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108160108184_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113652 '()))
                                                (let ((_clen108188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108056_
                                                          _hd108176_)))
                                                      (_cmp108189_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108055_
                                                              _hd108176_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp113638
                                                         (let ((__tmp113639
                                                                (let ((__tmp113649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113650
                                      (let ((__tmp113651
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108188_ '()))))
                                        (declare (not safe))
                                        (cons _len108120_ __tmp113651))))
                                 (declare (not safe))
                                 (cons _cmp108189_ __tmp113650)))
                              (__tmp113640
                               (let ((__tmp113643
                                      (let ((__tmp113644
                                             (let ((__tmp113645
                                                    (let ((__tmp113647
                                                           (let ((__tmp113648
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108148_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp113648)))
                  (__tmp113646
                   (let () (declare (not safe)) (cons _args108119_ '()))))
              (declare (not safe))
              (cons __tmp113647 __tmp113646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp113645))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113644 _stx108053_)))
                                     (__tmp113641
                                      (let ((__tmp113642
                                             (let ()
                                               (declare (not safe))
                                               (_generate108057_
                                                _rest108150_
                                                _args108119_
                                                _len108120_))))
                                        (declare (not safe))
                                        (cons __tmp113642 '()))))
                                 (declare (not safe))
                                 (cons __tmp113643 __tmp113641))))
                          (declare (not safe))
                          (cons __tmp113649 __tmp113640))))
                   (declare (not safe))
                   (cons 'if __tmp113639))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp113638
                                                     _stx108053_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108154108163_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108154108163_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108154108163_)))))
                          (let () (declare (not safe)) (_$E108124108135_)))))))
          (let* ((_$e108059_ _stx108053_)
                 (_$E108061108093_
                  (lambda ()
                    (let ((_$E108062108075_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108059_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108059_))
                          (let* ((_$tgt108063108078_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108059_)))
                                 (_$hd108064108081_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108063108078_)))
                                 (_$tl108065108084_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108063108078_))))
                            (let ((_clauses108088_ _$tl108065108084_))
                              (let ((_args108090_
                                     (let ((__tmp113653 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113653 _stx108053_)))
                                    (_len108091_
                                     (let ((__tmp113654 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113654 _stx108053_))))
                                (let ((__tmp113655
                                       (let ((__tmp113656
                                              (let ((__tmp113657
                                                     (let ((__tmp113658
                                                            (let ((__tmp113659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113660
                                  (let ((__tmp113663
                                         (let ((__tmp113664
                                                (let ((__tmp113665
                                                       (let ((__tmp113666
                                                              (let ((__tmp113667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113668
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108090_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp113668))))
                        (declare (not safe))
                        (__SRC__% __tmp113667 _stx108053_))))
                 (declare (not safe))
                 (cons __tmp113666 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108091_
                                                        __tmp113665))))
                                           (declare (not safe))
                                           (cons __tmp113664 '())))
                                        (__tmp113661
                                         (let ((__tmp113662
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108057_
                                                   _clauses108088_
                                                   _args108090_
                                                   _len108091_))))
                                           (declare (not safe))
                                           (cons __tmp113662 '()))))
                                    (declare (not safe))
                                    (cons __tmp113663 __tmp113661))))
                             (declare (not safe))
                             (cons 'let __tmp113660))))
                      (declare (not safe))
                      (__SRC__% __tmp113659 _stx108053_))))
               (declare (not safe))
               (cons __tmp113658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108090_
                                                      __tmp113657))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp113656))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113655 _stx108053_)))))
                          (let () (declare (not safe)) (_$E108062108075_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108059_))
                (let* ((_$tgt108066108096_
                        (let () (declare (not safe)) (__AST-e _$e108059_)))
                       (_$hd108067108099_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108066108096_)))
                       (_$tl108068108102_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108066108096_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108068108102_))
                      (let* ((_$tgt108069108106_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108068108102_)))
                             (_$hd108070108109_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108069108106_)))
                             (_$tl108071108112_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108069108106_))))
                        (let ((_clause108116_ _$hd108070108109_))
                          (if (let ((__tmp113670
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108071108112_))))
                                (declare (not safe))
                                (equal? __tmp113670 '()))
                              (let ((__tmp113669
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108116_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp113669))
                              (let ()
                                (declare (not safe))
                                (_$E108061108093_)))))
                      (let () (declare (not safe)) (_$E108061108093_))))
                (let () (declare (not safe)) (_$E108061108093_)))))))
    (define __compile-let-form
      (lambda (_stx107822_ _compile-simple107823_ _compile-values107824_)
        (letrec ((_simple-bind?107826_
                  (lambda (_hd108011_)
                    (let* ((_hd108012108022_ _hd108011_)
                           (_else108015108030_ (lambda () '#f)))
                      (let ((_K108018108043_ (lambda (_id108041_) '#t))
                            (_K108017108035_ (lambda () '#t)))
                        (let ((_try-match108014108038_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108012108022_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108017108035_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108015108030_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108012108022_))
                              (let ((_tl108020108048_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108012108022_)))
                                    (_hd108019108046_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108012108022_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108020108048_))
                                    (let ((_id108051_ _hd108019108046_))
                                      (declare (not safe))
                                      (_K108018108043_ _id108051_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108014108038_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108014108038_))))))))
                 (_car-e107827_
                  (lambda (_hd108009_)
                    (if (let () (declare (not safe)) (pair? _hd108009_))
                        (car _hd108009_)
                        _hd108009_))))
          (let* ((_$e107829_ _stx107822_)
                 (_$E107831107974_
                  (lambda ()
                    (let ((_$E107832107854_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e107829_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107829_))
                          (let* ((_$tgt107833107857_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107829_)))
                                 (_$hd107834107860_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107833107857_)))
                                 (_$tl107835107863_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107833107857_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107835107863_))
                                (let* ((_$tgt107836107867_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107835107863_)))
                                       (_$hd107837107870_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107836107867_)))
                                       (_$tl107838107873_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107836107867_))))
                                  (let ((_hd107877_ _$hd107837107870_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl107838107873_))
                                        (let* ((_$tgt107839107879_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl107838107873_)))
                                               (_$hd107840107882_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt107839107879_)))
                                               (_$tl107841107885_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt107839107879_))))
                                          (let ((_body107889_
                                                 _$hd107840107882_))
                                            (if (let ((__tmp113673
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107841107885_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113673 '()))
                                                (let* ((_hd-ids107929_
                                                        (map (lambda (_bind107891_)
                                                               (let* ((_$e107893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind107891_)
                              (_$E107895107904_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e107893_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e107893_))
                             (let* ((_$tgt107896107907_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e107893_)))
                                    (_$hd107897107910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt107896107907_)))
                                    (_$tl107898107913_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt107896107907_))))
                               (let ((_ids107917_ _$hd107897107910_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl107898107913_))
                                     (let* ((_$tgt107899107919_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl107898107913_)))
                                            (_$hd107900107922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt107899107919_)))
                                            (_$tl107901107925_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt107899107919_))))
                                       (if (let ((__tmp113671
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107901107925_))))
                                             (declare (not safe))
                                             (equal? __tmp113671 '()))
                                           _ids107917_
                                           (let ()
                                             (declare (not safe))
                                             (_$E107895107904_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E107895107904_)))))
                             (let ()
                               (declare (not safe))
                               (_$E107895107904_)))))
                     _hd107877_))
               (_exprs107969_
                (map (lambda (_bind107931_)
                       (let* ((_$e107933_ _bind107931_)
                              (_$E107935107944_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e107933_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e107933_))
                             (let* ((_$tgt107936107947_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e107933_)))
                                    (_$hd107937107950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt107936107947_)))
                                    (_$tl107938107953_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt107936107947_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl107938107953_))
                                   (let* ((_$tgt107939107957_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107938107953_)))
                                          (_$hd107940107960_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt107939107957_)))
                                          (_$tl107941107963_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt107939107957_))))
                                     (let ((_expr107967_ _$hd107940107960_))
                                       (if (let ((__tmp113672
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107941107963_))))
                                             (declare (not safe))
                                             (equal? __tmp113672 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr107967_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E107935107944_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E107935107944_))))
                             (let ()
                               (declare (not safe))
                               (_$E107935107944_)))))
                     _hd107877_))
               (_body107971_
                (let () (declare (not safe)) (__compile _body107889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?107826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids107929_))
              (_compile-simple107823_
               (map _car-e107827_ _hd-ids107929_)
               _exprs107969_
               _body107971_)
              (_compile-values107824_
               _hd-ids107929_
               _exprs107969_
               _body107971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107832107854_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107832107854_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107832107854_))))
                          (let () (declare (not safe)) (_$E107832107854_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107829_))
                (let* ((_$tgt107842107977_
                        (let () (declare (not safe)) (__AST-e _$e107829_)))
                       (_$hd107843107980_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107842107977_)))
                       (_$tl107844107983_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107842107977_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl107844107983_))
                      (let* ((_$tgt107845107987_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl107844107983_)))
                             (_$hd107846107990_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt107845107987_)))
                             (_$tl107847107993_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt107845107987_))))
                        (if (let ((__tmp113675
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd107846107990_))))
                              (declare (not safe))
                              (equal? __tmp113675 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107847107993_))
                                (let* ((_$tgt107848107997_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107847107993_)))
                                       (_$hd107849108000_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107848107997_)))
                                       (_$tl107850108003_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107848107997_))))
                                  (let ((_body108007_ _$hd107849108000_))
                                    (if (let ((__tmp113674
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl107850108003_))))
                                          (declare (not safe))
                                          (equal? __tmp113674 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108007_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107831107974_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107831107974_)))
                            (let () (declare (not safe)) (_$E107831107974_))))
                      (let () (declare (not safe)) (_$E107831107974_))))
                (let () (declare (not safe)) (_$E107831107974_)))))))
    (define __compile-let-values%
      (lambda (_stx107637_)
        (letrec ((_compile-simple107639_
                  (lambda (_hd-ids107818_ _exprs107819_ _body107820_)
                    (let ((__tmp113676
                           (let ((__tmp113677
                                  (let ((__tmp113679
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107818_)
                                              _exprs107819_))
                                        (__tmp113678
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107820_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113679 __tmp113678))))
                             (declare (not safe))
                             (cons 'let __tmp113677))))
                      (declare (not safe))
                      (__SRC__% __tmp113676 _stx107637_))))
                 (_compile-values107640_
                  (lambda (_hd-ids107736_ _exprs107737_ _body107738_)
                    (let _lp107740_ ((_rest107742_ _hd-ids107736_)
                                     (_exprs107743_ _exprs107737_)
                                     (_bind107744_ '())
                                     (_post107745_ '()))
                      (let* ((_rest107746107760_ _rest107742_)
                             (_else107749107768_
                              (lambda ()
                                (let ((__tmp113680
                                       (let ((__tmp113681
                                              (let ((__tmp113684
                                                     (reverse _bind107744_))
                                                    (__tmp113682
                                                     (let ((__tmp113683
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post107641_
                                                               _post107745_
                                                               _body107738_))))
                                                       (declare (not safe))
                                                       (cons __tmp113683
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp113684
                                                      __tmp113682))))
                                         (declare (not safe))
                                         (cons 'let __tmp113681))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113680 _stx107637_)))))
                        (let ((_K107754107801_
                               (lambda (_rest107798_ _id107799_)
                                 (let ((__tmp113690 (cdr _exprs107743_))
                                       (__tmp113685
                                        (let ((__tmp113686
                                               (let ((__tmp113689
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107799_)))
                                                     (__tmp113687
                                                      (let ((__tmp113688
                                                             (car _exprs107743_)))
                                                        (declare (not safe))
                                                        (cons __tmp113688
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113689
                                                       __tmp113687))))
                                          (declare (not safe))
                                          (cons __tmp113686 _bind107744_))))
                                   (declare (not safe))
                                   (_lp107740_
                                    _rest107798_
                                    __tmp113690
                                    __tmp113685
                                    _post107745_))))
                              (_K107751107783_
                               (lambda (_rest107772_ _hd107773_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107773_))
                                     (let ((__tmp113711 (cdr _exprs107743_))
                                           (__tmp113704
                                            (let ((__tmp113705
                                                   (let ((__tmp113710
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107773_)))
                                                         (__tmp113706
                                                          (let ((__tmp113707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113708
                                (let ((__tmp113709 (car _exprs107743_)))
                                  (declare (not safe))
                                  (cons __tmp113709 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113708))))
                    (declare (not safe))
                    (cons __tmp113707 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113710
                                                           __tmp113706))))
                                              (declare (not safe))
                                              (cons __tmp113705
                                                    _bind107744_))))
                                       (declare (not safe))
                                       (_lp107740_
                                        _rest107772_
                                        __tmp113711
                                        __tmp113704
                                        _post107745_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107773_))
                                         (let* ((_len107775_
                                                 (length _hd107773_))
                                                (_tmp107777_
                                                 (let ((__tmp113691 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113691))))
                                           (let ((__tmp113703
                                                  (cdr _exprs107743_))
                                                 (__tmp113699
                                                  (let ((__tmp113700
                                                         (let ((__tmp113701
                                                                (let ((__tmp113702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107743_)))
                          (declare (not safe))
                          (cons __tmp113702 '()))))
                   (declare (not safe))
                   (cons _tmp107777_ __tmp113701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113700
                                                          _bind107744_)))
                                                 (__tmp113692
                                                  (let ((__tmp113693
                                                         (let ((__tmp113694
                                                                (let ((__tmp113695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113697
                                      (lambda (_id107780_ _k107781_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107780_))
                                            (let ((__tmp113698
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107780_))))
                                              (declare (not safe))
                                              (cons __tmp113698 _k107781_))
                                            '#f)))
                                     (__tmp113696
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107775_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113697
                                  _hd107773_
                                  __tmp113696))))
                          (declare (not safe))
                          (cons _len107775_ __tmp113695))))
                   (declare (not safe))
                   (cons _tmp107777_ __tmp113694))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113693
                                                          _post107745_))))
                                             (declare (not safe))
                                             (_lp107740_
                                              _rest107772_
                                              __tmp113703
                                              __tmp113699
                                              __tmp113692)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107637_
                                            _hd107773_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107746107760_))
                              (let ((_tl107756107806_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107746107760_)))
                                    (_hd107755107804_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107746107760_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107755107804_))
                                    (let ((_tl107758107811_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107755107804_)))
                                          (_hd107757107809_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107755107804_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107758107811_))
                                          (let ((_id107814_ _hd107757107809_)
                                                (_rest107816_
                                                 _tl107756107806_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107754107801_
                                               _rest107816_
                                               _id107814_)))
                                          (let ((_hd107791_ _hd107755107804_)
                                                (_rest107793_
                                                 _tl107756107806_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107751107783_
                                               _rest107793_
                                               _hd107791_)))))
                                    (let ((_hd107791_ _hd107755107804_)
                                          (_rest107793_ _tl107756107806_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107751107783_
                                         _rest107793_
                                         _hd107791_)))))
                              (let ()
                                (declare (not safe))
                                (_else107749107768_))))))))
                 (_compile-post107641_
                  (lambda (_post107643_ _body107644_)
                    (let _lp107646_ ((_rest107648_ _post107643_)
                                     (_check107649_ '())
                                     (_bind107650_ '()))
                      (let* ((_rest107651107663_ _rest107648_)
                             (_else107653107671_
                              (lambda ()
                                (let ((__tmp113712
                                       (let ((__tmp113713
                                              (let ((__tmp113714
                                                     (let ((__tmp113715
                                                            (let ((__tmp113716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113717
                                  (let ((__tmp113718
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107644_ '()))))
                                    (declare (not safe))
                                    (cons _bind107650_ __tmp113718))))
                             (declare (not safe))
                             (cons 'let __tmp113717))))
                      (declare (not safe))
                      (__SRC__% __tmp113716 _stx107637_))))
               (declare (not safe))
               (cons __tmp113715 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113714
                                                        _check107649_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113713))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113712 _stx107637_))))
                             (_K107655107710_
                              (lambda (_rest107674_
                                       _init107675_
                                       _len107676_
                                       _tmp107677_)
                                (let ((__tmp113726
                                       (let ((__tmp113727
                                              (let ((__tmp113728
                                                     (let ((__tmp113729
                                                            (let ((__tmp113730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107676_ '()))))
                      (declare (not safe))
                      (cons _tmp107677_ __tmp113730))))
               (declare (not safe))
               (cons '__check-values __tmp113729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113728
                                                 _stx107637_))))
                                         (declare (not safe))
                                         (cons __tmp113727 _check107649_)))
                                      (__tmp113719
                                       (let ((__tmp113720
                                              (lambda (_hd107679_ _r107680_)
                                                (let* ((_hd107681107688_
                                                        _hd107679_)
                                                       (_E107683107692_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107681107688_)))
               (_K107684107698_
                (lambda (_k107695_ _id107696_)
                  (let ((__tmp113721
                         (let ((__tmp113722
                                (let ((__tmp113723
                                       (let ((__tmp113724
                                              (let ((__tmp113725
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k107695_ '()))))
                                                (declare (not safe))
                                                (cons _tmp107677_
                                                      __tmp113725))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp113724))))
                                  (declare (not safe))
                                  (cons __tmp113723 '()))))
                           (declare (not safe))
                           (cons _id107696_ __tmp113722))))
                    (declare (not safe))
                    (cons __tmp113721 _r107680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107681107688_))
                                                      (let ((_hd107685107701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107681107688_)))
                    (_tl107686107703_
                     (let () (declare (not safe)) (##cdr _hd107681107688_))))
                (let* ((_id107706_ _hd107685107701_)
                       (_k107708_ _tl107686107703_))
                  (declare (not safe))
                  (_K107684107698_ _k107708_ _id107706_)))
              (let () (declare (not safe)) (_E107683107692_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113720
                                                 _bind107650_
                                                 _init107675_))))
                                  (declare (not safe))
                                  (_lp107646_
                                   _rest107674_
                                   __tmp113726
                                   __tmp113719)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107651107663_))
                            (let ((_hd107656107713_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107651107663_)))
                                  (_tl107657107715_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107651107663_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107656107713_))
                                  (let ((_hd107658107718_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107656107713_)))
                                        (_tl107659107720_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107656107713_))))
                                    (let ((_tmp107723_ _hd107658107718_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107659107720_))
                                          (let ((_hd107660107725_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107659107720_)))
                                                (_tl107661107727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107659107720_))))
                                            (let* ((_len107730_
                                                    _hd107660107725_)
                                                   (_init107732_
                                                    _tl107661107727_)
                                                   (_rest107734_
                                                    _tl107657107715_))
                                              (declare (not safe))
                                              (_K107655107710_
                                               _rest107734_
                                               _init107732_
                                               _len107730_
                                               _tmp107723_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107653107671_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107653107671_))))
                            (let ()
                              (declare (not safe))
                              (_else107653107671_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107637_
             _compile-simple107639_
             _compile-values107640_)))))
    (define __compile-letrec-values%
      (lambda (_stx107437_)
        (letrec ((_compile-simple107439_
                  (lambda (_hd-ids107633_ _exprs107634_ _body107635_)
                    (let ((__tmp113731
                           (let ((__tmp113732
                                  (let ((__tmp113734
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107633_)
                                              _exprs107634_))
                                        (__tmp113733
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107635_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113734 __tmp113733))))
                             (declare (not safe))
                             (cons 'letrec __tmp113732))))
                      (declare (not safe))
                      (__SRC__% __tmp113731 _stx107437_))))
                 (_compile-values107440_
                  (lambda (_hd-ids107547_ _exprs107548_ _body107549_)
                    (let _lp107551_ ((_rest107553_ _hd-ids107547_)
                                     (_exprs107554_ _exprs107548_)
                                     (_pre107555_ '())
                                     (_bind107556_ '())
                                     (_post107557_ '()))
                      (let* ((_rest107558107572_ _rest107553_)
                             (_else107561107580_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107441_
                                   _pre107555_
                                   _bind107556_
                                   _post107557_
                                   _body107549_)))))
                        (let ((_K107566107616_
                               (lambda (_rest107613_ _id107614_)
                                 (let ((__tmp113740 (cdr _exprs107554_))
                                       (__tmp113735
                                        (let ((__tmp113736
                                               (let ((__tmp113739
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107614_)))
                                                     (__tmp113737
                                                      (let ((__tmp113738
                                                             (car _exprs107554_)))
                                                        (declare (not safe))
                                                        (cons __tmp113738
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113739
                                                       __tmp113737))))
                                          (declare (not safe))
                                          (cons __tmp113736 _bind107556_))))
                                   (declare (not safe))
                                   (_lp107551_
                                    _rest107613_
                                    __tmp113740
                                    _pre107555_
                                    __tmp113735
                                    _post107557_))))
                              (_K107563107598_
                               (lambda (_rest107584_ _hd107585_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107585_))
                                     (let ((__tmp113768 (cdr _exprs107554_))
                                           (__tmp113761
                                            (let ((__tmp113762
                                                   (let ((__tmp113767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107585_)))
                                                         (__tmp113763
                                                          (let ((__tmp113764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113765
                                (let ((__tmp113766 (car _exprs107554_)))
                                  (declare (not safe))
                                  (cons __tmp113766 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113765))))
                    (declare (not safe))
                    (cons __tmp113764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113767
                                                           __tmp113763))))
                                              (declare (not safe))
                                              (cons __tmp113762
                                                    _bind107556_))))
                                       (declare (not safe))
                                       (_lp107551_
                                        _rest107584_
                                        __tmp113768
                                        _pre107555_
                                        __tmp113761
                                        _post107557_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107585_))
                                         (let* ((_len107587_
                                                 (length _hd107585_))
                                                (_tmp107589_
                                                 (let ((__tmp113741 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113741))))
                                           (let ((__tmp113760
                                                  (cdr _exprs107554_))
                                                 (__tmp113753
                                                  (let ((__tmp113754
                                                         (lambda (_id107592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r107593_)
                   (if (let () (declare (not safe)) (__AST-e _id107592_))
                       (let ((__tmp113755
                              (let ((__tmp113759
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id107592_)))
                                    (__tmp113756
                                     (let ((__tmp113757
                                            (let ((__tmp113758
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp113758))))
                                       (declare (not safe))
                                       (cons __tmp113757 '()))))
                                (declare (not safe))
                                (cons __tmp113759 __tmp113756))))
                         (declare (not safe))
                         (cons __tmp113755 _r107593_))
                       _r107593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp113754
                                                            _pre107555_
                                                            _hd107585_)))
                                                 (__tmp113749
                                                  (let ((__tmp113750
                                                         (let ((__tmp113751
                                                                (let ((__tmp113752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107554_)))
                          (declare (not safe))
                          (cons __tmp113752 '()))))
                   (declare (not safe))
                   (cons _tmp107589_ __tmp113751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113750
                                                          _bind107556_)))
                                                 (__tmp113742
                                                  (let ((__tmp113743
                                                         (let ((__tmp113744
                                                                (let ((__tmp113745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113747
                                      (lambda (_id107595_ _k107596_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107595_))
                                            (let ((__tmp113748
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107595_))))
                                              (declare (not safe))
                                              (cons __tmp113748 _k107596_))
                                            '#f)))
                                     (__tmp113746
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107587_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113747
                                  _hd107585_
                                  __tmp113746))))
                          (declare (not safe))
                          (cons _len107587_ __tmp113745))))
                   (declare (not safe))
                   (cons _tmp107589_ __tmp113744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113743
                                                          _post107557_))))
                                             (declare (not safe))
                                             (_lp107551_
                                              _rest107584_
                                              __tmp113760
                                              __tmp113753
                                              __tmp113749
                                              __tmp113742)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107437_
                                            _hd107585_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107558107572_))
                              (let ((_tl107568107621_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107558107572_)))
                                    (_hd107567107619_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107558107572_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107567107619_))
                                    (let ((_tl107570107626_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107567107619_)))
                                          (_hd107569107624_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107567107619_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107570107626_))
                                          (let ((_id107629_ _hd107569107624_)
                                                (_rest107631_
                                                 _tl107568107621_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107566107616_
                                               _rest107631_
                                               _id107629_)))
                                          (let ((_hd107606_ _hd107567107619_)
                                                (_rest107608_
                                                 _tl107568107621_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107563107598_
                                               _rest107608_
                                               _hd107606_)))))
                                    (let ((_hd107606_ _hd107567107619_)
                                          (_rest107608_ _tl107568107621_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107563107598_
                                         _rest107608_
                                         _hd107606_)))))
                              (let ()
                                (declare (not safe))
                                (_else107561107580_))))))))
                 (_compile-inner107441_
                  (lambda (_pre107542_ _bind107543_ _post107544_ _body107545_)
                    (if (let () (declare (not safe)) (null? _pre107542_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107442_
                           _bind107543_
                           _post107544_
                           _body107545_))
                        (let ((__tmp113769
                               (let ((__tmp113770
                                      (let ((__tmp113773 (reverse _pre107542_))
                                            (__tmp113771
                                             (let ((__tmp113772
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107442_
                                                       _bind107543_
                                                       _post107544_
                                                       _body107545_))))
                                               (declare (not safe))
                                               (cons __tmp113772 '()))))
                                        (declare (not safe))
                                        (cons __tmp113773 __tmp113771))))
                                 (declare (not safe))
                                 (cons 'let __tmp113770))))
                          (declare (not safe))
                          (__SRC__% __tmp113769 _stx107437_)))))
                 (_compile-bind107442_
                  (lambda (_bind107538_ _post107539_ _body107540_)
                    (let ((__tmp113774
                           (let ((__tmp113775
                                  (let ((__tmp113778 (reverse _bind107538_))
                                        (__tmp113776
                                         (let ((__tmp113777
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107443_
                                                   _post107539_
                                                   _body107540_))))
                                           (declare (not safe))
                                           (cons __tmp113777 '()))))
                                    (declare (not safe))
                                    (cons __tmp113778 __tmp113776))))
                             (declare (not safe))
                             (cons 'letrec __tmp113775))))
                      (declare (not safe))
                      (__SRC__% __tmp113774 _stx107437_))))
                 (_compile-post107443_
                  (lambda (_post107445_ _body107446_)
                    (let _lp107448_ ((_rest107450_ _post107445_)
                                     (_check107451_ '())
                                     (_bind107452_ '()))
                      (let* ((_rest107453107465_ _rest107450_)
                             (_else107455107473_
                              (lambda ()
                                (let ((__tmp113779
                                       (let ((__tmp113780
                                              (let ((__tmp113781
                                                     (let ((__tmp113782
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp113782 _bind107452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113781
                                                        _check107451_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113780))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113779 _stx107437_))))
                             (_K107457107512_
                              (lambda (_rest107476_
                                       _init107477_
                                       _len107478_
                                       _tmp107479_)
                                (let ((__tmp113791
                                       (let ((__tmp113792
                                              (let ((__tmp113793
                                                     (let ((__tmp113794
                                                            (let ((__tmp113795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107478_ '()))))
                      (declare (not safe))
                      (cons _tmp107479_ __tmp113795))))
               (declare (not safe))
               (cons '__check-values __tmp113794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113793
                                                 _stx107437_))))
                                         (declare (not safe))
                                         (cons __tmp113792 _check107451_)))
                                      (__tmp113783
                                       (let ((__tmp113784
                                              (lambda (_hd107481_ _r107482_)
                                                (let* ((_hd107483107490_
                                                        _hd107481_)
                                                       (_E107485107494_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107483107490_)))
               (_K107486107500_
                (lambda (_k107497_ _id107498_)
                  (let ((__tmp113785
                         (let ((__tmp113786
                                (let ((__tmp113787
                                       (let ((__tmp113788
                                              (let ((__tmp113789
                                                     (let ((__tmp113790
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107479_ __tmp113790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp113789))))
                                         (declare (not safe))
                                         (cons __tmp113788 '()))))
                                  (declare (not safe))
                                  (cons _id107498_ __tmp113787))))
                           (declare (not safe))
                           (cons 'set! __tmp113786))))
                    (declare (not safe))
                    (cons __tmp113785 _r107482_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107483107490_))
                                                      (let ((_hd107487107503_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107483107490_)))
                    (_tl107488107505_
                     (let () (declare (not safe)) (##cdr _hd107483107490_))))
                (let* ((_id107508_ _hd107487107503_)
                       (_k107510_ _tl107488107505_))
                  (declare (not safe))
                  (_K107486107500_ _k107510_ _id107508_)))
              (let () (declare (not safe)) (_E107485107494_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113784
                                                 _bind107452_
                                                 _init107477_))))
                                  (declare (not safe))
                                  (_lp107448_
                                   _rest107476_
                                   __tmp113791
                                   __tmp113783)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107453107465_))
                            (let ((_hd107458107515_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107453107465_)))
                                  (_tl107459107517_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107453107465_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107458107515_))
                                  (let ((_hd107460107520_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107458107515_)))
                                        (_tl107461107522_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107458107515_))))
                                    (let ((_tmp107525_ _hd107460107520_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107461107522_))
                                          (let ((_hd107462107527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107461107522_)))
                                                (_tl107463107529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107461107522_))))
                                            (let* ((_len107532_
                                                    _hd107462107527_)
                                                   (_init107534_
                                                    _tl107463107529_)
                                                   (_rest107536_
                                                    _tl107459107517_))
                                              (declare (not safe))
                                              (_K107457107512_
                                               _rest107536_
                                               _init107534_
                                               _len107532_
                                               _tmp107525_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107455107473_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107455107473_))))
                            (let ()
                              (declare (not safe))
                              (_else107455107473_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107437_
             _compile-simple107439_
             _compile-values107440_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107192_)
        (letrec ((_compile-simple107194_
                  (lambda (_hd-ids107433_ _exprs107434_ _body107435_)
                    (let ((__tmp113796
                           (let ((__tmp113797
                                  (let ((__tmp113799
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107433_)
                                              _exprs107434_))
                                        (__tmp113798
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107435_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113799 __tmp113798))))
                             (declare (not safe))
                             (cons 'letrec* __tmp113797))))
                      (declare (not safe))
                      (__SRC__% __tmp113796 _stx107192_))))
                 (_compile-values107195_
                  (lambda (_hd-ids107344_ _exprs107345_ _body107346_)
                    (let _lp107348_ ((_rest107350_ _hd-ids107344_)
                                     (_exprs107351_ _exprs107345_)
                                     (_bind107352_ '())
                                     (_post107353_ '()))
                      (let* ((_rest107354107368_ _rest107350_)
                             (_else107357107376_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107196_
                                   _bind107352_
                                   _post107353_
                                   _body107346_)))))
                        (let ((_K107362107416_
                               (lambda (_rest107411_ _hd107412_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107412_))
                                     (let ((_id107414_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107412_))))
                                       (let ((__tmp113814 (cdr _exprs107351_))
                                             (__tmp113809
                                              (let ((__tmp113810
                                                     (let ((__tmp113811
                                                            (let ((__tmp113812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113813
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113813))))
                      (declare (not safe))
                      (cons __tmp113812 '()))))
               (declare (not safe))
               (cons _id107414_ __tmp113811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113810
                                                      _bind107352_)))
                                             (__tmp113805
                                              (let ((__tmp113806
                                                     (let ((__tmp113807
                                                            (let ((__tmp113808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107351_)))
                      (declare (not safe))
                      (cons __tmp113808 '()))))
               (declare (not safe))
               (cons _id107414_ __tmp113807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113806
                                                      _post107353_))))
                                         (declare (not safe))
                                         (_lp107348_
                                          _rest107411_
                                          __tmp113814
                                          __tmp113809
                                          __tmp113805)))
                                     (let ((__tmp113804 (cdr _exprs107351_))
                                           (__tmp113800
                                            (let ((__tmp113801
                                                   (let ((__tmp113802
                                                          (let ((__tmp113803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107351_)))
                    (declare (not safe))
                    (cons __tmp113803 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp113802))))
                                              (declare (not safe))
                                              (cons __tmp113801
                                                    _post107353_))))
                                       (declare (not safe))
                                       (_lp107348_
                                        _rest107411_
                                        __tmp113804
                                        _bind107352_
                                        __tmp113800)))))
                              (_K107359107396_
                               (lambda (_rest107380_ _hd107381_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107381_))
                                     (let ((_id107383_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107381_))))
                                       (let ((__tmp113850 (cdr _exprs107351_))
                                             (__tmp113845
                                              (let ((__tmp113846
                                                     (let ((__tmp113847
                                                            (let ((__tmp113848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113849
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113849))))
                      (declare (not safe))
                      (cons __tmp113848 '()))))
               (declare (not safe))
               (cons _id107383_ __tmp113847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113846
                                                      _bind107352_)))
                                             (__tmp113839
                                              (let ((__tmp113840
                                                     (let ((__tmp113841
                                                            (let ((__tmp113842
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113843
                                  (let ((__tmp113844 (car _exprs107351_)))
                                    (declare (not safe))
                                    (cons __tmp113844 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp113843))))
                      (declare (not safe))
                      (cons __tmp113842 '()))))
               (declare (not safe))
               (cons _id107383_ __tmp113841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113840
                                                      _post107353_))))
                                         (declare (not safe))
                                         (_lp107348_
                                          _rest107380_
                                          __tmp113850
                                          __tmp113845
                                          __tmp113839)))
                                     (if (let ((__tmp113838
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107381_))))
                                           (declare (not safe))
                                           (not __tmp113838))
                                         (let ((__tmp113837
                                                (cdr _exprs107351_))
                                               (__tmp113833
                                                (let ((__tmp113834
                                                       (let ((__tmp113835
                                                              (let ((__tmp113836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107351_)))
                        (declare (not safe))
                        (cons __tmp113836 '()))))
                 (declare (not safe))
                 (cons '#f __tmp113835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113834
                                                        _post107353_))))
                                           (declare (not safe))
                                           (_lp107348_
                                            _rest107380_
                                            __tmp113837
                                            _bind107352_
                                            __tmp113833))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107381_))
                                             (let* ((_len107385_
                                                     (length _hd107381_))
                                                    (_tmp107387_
                                                     (let ((__tmp113815
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp113815))))
                                               (let ((__tmp113832
                                                      (cdr _exprs107351_))
                                                     (__tmp113825
                                                      (let ((__tmp113826
                                                             (lambda (_id107390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107391_)
                       (if (let () (declare (not safe)) (__AST-e _id107390_))
                           (let ((__tmp113827
                                  (let ((__tmp113831
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107390_)))
                                        (__tmp113828
                                         (let ((__tmp113829
                                                (let ((__tmp113830
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp113830))))
                                           (declare (not safe))
                                           (cons __tmp113829 '()))))
                                    (declare (not safe))
                                    (cons __tmp113831 __tmp113828))))
                             (declare (not safe))
                             (cons __tmp113827 _r107391_))
                           _r107391_))))
                (declare (not safe))
                (foldl1 __tmp113826 _bind107352_ _hd107381_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113816
                                                      (let ((__tmp113817
                                                             (let ((__tmp113818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113824 (car _exprs107351_))
                                  (__tmp113819
                                   (let ((__tmp113820
                                          (let ((__tmp113822
                                                 (lambda (_id107393_ _k107394_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107393_))
                                                       (let ((__tmp113823
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107393_))))
                 (declare (not safe))
                 (cons __tmp113823 _k107394_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp113821
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107385_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp113822
                                             _hd107381_
                                             __tmp113821))))
                                     (declare (not safe))
                                     (cons _len107385_ __tmp113820))))
                              (declare (not safe))
                              (cons __tmp113824 __tmp113819))))
                       (declare (not safe))
                       (cons _tmp107387_ __tmp113818))))
                (declare (not safe))
                (cons __tmp113817 _post107353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107348_
                                                  _rest107380_
                                                  __tmp113832
                                                  __tmp113825
                                                  __tmp113816)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107192_
                                                _hd107381_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107354107368_))
                              (let ((_tl107364107421_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107354107368_)))
                                    (_hd107363107419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107354107368_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107363107419_))
                                    (let ((_tl107366107426_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107363107419_)))
                                          (_hd107365107424_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107363107419_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107366107426_))
                                          (let ((_hd107429_ _hd107365107424_)
                                                (_rest107431_
                                                 _tl107364107421_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107362107416_
                                               _rest107431_
                                               _hd107429_)))
                                          (let ((_hd107404_ _hd107363107419_)
                                                (_rest107406_
                                                 _tl107364107421_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107359107396_
                                               _rest107406_
                                               _hd107404_)))))
                                    (let ((_hd107404_ _hd107363107419_)
                                          (_rest107406_ _tl107364107421_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107359107396_
                                         _rest107406_
                                         _hd107404_)))))
                              (let ()
                                (declare (not safe))
                                (_else107357107376_))))))))
                 (_compile-bind107196_
                  (lambda (_bind107340_ _post107341_ _body107342_)
                    (let ((__tmp113851
                           (let ((__tmp113852
                                  (let ((__tmp113855 (reverse _bind107340_))
                                        (__tmp113853
                                         (let ((__tmp113854
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107197_
                                                   _post107341_
                                                   _body107342_))))
                                           (declare (not safe))
                                           (cons __tmp113854 '()))))
                                    (declare (not safe))
                                    (cons __tmp113855 __tmp113853))))
                             (declare (not safe))
                             (cons 'let __tmp113852))))
                      (declare (not safe))
                      (__SRC__% __tmp113851 _stx107192_))))
                 (_compile-post107197_
                  (lambda (_post107199_ _body107200_)
                    (let ((__tmp113856
                           (let ((__tmp113857
                                  (let ((__tmp113858
                                         (let ((__tmp113860
                                                (lambda (_hd107202_ _r107203_)
                                                  (let* ((_hd107204107227_
                                                          _hd107202_)
                                                         (_E107208107231_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107204107227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107221107325_
                                                           (lambda (_expr107323_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107323_ _r107203_))))
                  (_K107216107303_
                   (lambda (_expr107300_ _id107301_)
                     (let ((__tmp113861
                            (let ((__tmp113862
                                   (let ((__tmp113863
                                          (let ((__tmp113864
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107300_ '()))))
                                            (declare (not safe))
                                            (cons _id107301_ __tmp113864))))
                                     (declare (not safe))
                                     (cons 'set! __tmp113863))))
                              (declare (not safe))
                              (__SRC__% __tmp113862 _stx107192_))))
                       (declare (not safe))
                       (cons __tmp113861 _r107203_))))
                  (_K107209107270_
                   (lambda (_init107235_ _len107236_ _expr107237_ _tmp107238_)
                     (let ((__tmp113865
                            (let ((__tmp113866
                                   (let ((__tmp113867
                                          (let ((__tmp113881
                                                 (let ((__tmp113882
                                                        (let ((__tmp113883
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107237_ '()))))
                  (declare (not safe))
                  (cons _tmp107238_ __tmp113883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113882 '())))
                                                (__tmp113868
                                                 (let ((__tmp113877
                                                        (let ((__tmp113878
                                                               (let ((__tmp113879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp113880
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107236_ '()))))
                                (declare (not safe))
                                (cons _tmp107238_ __tmp113880))))
                         (declare (not safe))
                         (cons '__check-values __tmp113879))))
                  (declare (not safe))
                  (__SRC__% __tmp113878 _stx107192_)))
               (__tmp113869
                (let ((__tmp113870
                       (map (lambda (_hd107240_)
                              (let* ((_hd107241107248_ _hd107240_)
                                     (_E107243107252_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107241107248_)))
                                     (_K107244107258_
                                      (lambda (_k107255_ _id107256_)
                                        (let ((__tmp113871
                                               (let ((__tmp113872
                                                      (let ((__tmp113873
                                                             (let ((__tmp113874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113875
                                   (let ((__tmp113876
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107255_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107238_ __tmp113876))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp113875))))
                       (declare (not safe))
                       (cons __tmp113874 '()))))
                (declare (not safe))
                (cons _id107256_ __tmp113873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp113872))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp113871
                                           _stx107192_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107241107248_))
                                    (let ((_hd107245107261_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107241107248_)))
                                          (_tl107246107263_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107241107248_))))
                                      (let* ((_id107266_ _hd107245107261_)
                                             (_k107268_ _tl107246107263_))
                                        (declare (not safe))
                                        (_K107244107258_
                                         _k107268_
                                         _id107266_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107243107252_)))))
                            _init107235_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp113870))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113877
                                                         __tmp113869))))
                                            (declare (not safe))
                                            (cons __tmp113881 __tmp113868))))
                                     (declare (not safe))
                                     (cons 'let __tmp113867))))
                              (declare (not safe))
                              (__SRC__% __tmp113866 _stx107192_))))
                       (declare (not safe))
                       (cons __tmp113865 _r107203_)))))
              (if (let () (declare (not safe)) (##pair? _hd107204107227_))
                  (let ((_tl107223107330_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107204107227_)))
                        (_hd107222107328_
                         (let ()
                           (declare (not safe))
                           (##car _hd107204107227_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107222107328_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107223107330_))
                            (let ((_tl107225107335_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107223107330_)))
                                  (_hd107224107333_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107223107330_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107225107335_))
                                  (let ((_expr107338_ _hd107224107333_))
                                    (declare (not safe))
                                    (_K107221107325_ _expr107338_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107225107335_))
                                      (let ((_tl107215107289_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107225107335_)))
                                            (_hd107214107287_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107225107335_))))
                                        (let ((_tmp107278_ _hd107222107328_)
                                              (_expr107285_ _hd107224107333_)
                                              (_len107292_ _hd107214107287_)
                                              (_init107294_ _tl107215107289_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107209107270_
                                             _init107294_
                                             _len107292_
                                             _expr107285_
                                             _tmp107278_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107208107231_)))))
                            (let () (declare (not safe)) (_E107208107231_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107223107330_))
                            (let ((_tl107220107315_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107223107330_)))
                                  (_hd107219107313_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107223107330_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107220107315_))
                                  (let ((_id107311_ _hd107222107328_)
                                        (_expr107318_ _hd107219107313_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107216107303_
                                       _expr107318_
                                       _id107311_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107220107315_))
                                      (let ((_tl107215107289_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107220107315_)))
                                            (_hd107214107287_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107220107315_))))
                                        (let ((_tmp107278_ _hd107222107328_)
                                              (_expr107285_ _hd107219107313_)
                                              (_len107292_ _hd107214107287_)
                                              (_init107294_ _tl107215107289_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107209107270_
                                             _init107294_
                                             _len107292_
                                             _expr107285_
                                             _tmp107278_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107208107231_)))))
                            (let () (declare (not safe)) (_E107208107231_)))))
                  (let () (declare (not safe)) (_E107208107231_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp113859
                                                (list _body107200_)))
                                           (declare (not safe))
                                           (foldl1 __tmp113860
                                                   __tmp113859
                                                   _post107199_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp113858))))
                             (declare (not safe))
                             (cons 'begin __tmp113857))))
                      (declare (not safe))
                      (__SRC__% __tmp113856 _stx107192_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107192_
             _compile-simple107194_
             _compile-values107195_)))))
    (define __compile-call%
      (lambda (_stx107152_)
        (let* ((_$e107154_ _stx107152_)
               (_$E107156107165_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107154_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107154_))
              (let* ((_$tgt107157107168_
                      (let () (declare (not safe)) (__AST-e _$e107154_)))
                     (_$hd107158107171_
                      (let () (declare (not safe)) (##car _$tgt107157107168_)))
                     (_$tl107159107174_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107157107168_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107159107174_))
                    (let* ((_$tgt107160107178_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107159107174_)))
                           (_$hd107161107181_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107160107178_)))
                           (_$tl107162107184_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107160107178_))))
                      (let* ((_rator107188_ _$hd107161107181_)
                             (_rands107190_ _$tl107162107184_)
                             (__tmp113884
                              (let ((__tmp113886
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107188_)))
                                    (__tmp113885
                                     (map __compile _rands107190_)))
                                (declare (not safe))
                                (cons __tmp113886 __tmp113885))))
                        (declare (not safe))
                        (__SRC__% __tmp113884 _stx107152_)))
                    (let () (declare (not safe)) (_$E107156107165_))))
              (let () (declare (not safe)) (_$E107156107165_))))))
    (define __compile-ref%
      (lambda (_stx107114_)
        (let* ((_$e107116_ _stx107114_)
               (_$E107118107127_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107116_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107116_))
              (let* ((_$tgt107119107130_
                      (let () (declare (not safe)) (__AST-e _$e107116_)))
                     (_$hd107120107133_
                      (let () (declare (not safe)) (##car _$tgt107119107130_)))
                     (_$tl107121107136_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107119107130_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107121107136_))
                    (let* ((_$tgt107122107140_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107121107136_)))
                           (_$hd107123107143_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107122107140_)))
                           (_$tl107124107146_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107122107140_))))
                      (let ((_id107150_ _$hd107123107143_))
                        (if (let ((__tmp113887
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107124107146_))))
                              (declare (not safe))
                              (equal? __tmp113887 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107150_ _stx107114_))
                            (let () (declare (not safe)) (_$E107118107127_)))))
                    (let () (declare (not safe)) (_$E107118107127_))))
              (let () (declare (not safe)) (_$E107118107127_))))))
    (define __compile-setq%
      (lambda (_stx107061_)
        (let* ((_$e107063_ _stx107061_)
               (_$E107065107077_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107063_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107063_))
              (let* ((_$tgt107066107080_
                      (let () (declare (not safe)) (__AST-e _$e107063_)))
                     (_$hd107067107083_
                      (let () (declare (not safe)) (##car _$tgt107066107080_)))
                     (_$tl107068107086_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107066107080_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107068107086_))
                    (let* ((_$tgt107069107090_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107068107086_)))
                           (_$hd107070107093_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107069107090_)))
                           (_$tl107071107096_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107069107090_))))
                      (let ((_id107100_ _$hd107070107093_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107071107096_))
                            (let* ((_$tgt107072107102_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107071107096_)))
                                   (_$hd107073107105_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107072107102_)))
                                   (_$tl107074107108_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107072107102_))))
                              (let ((_expr107112_ _$hd107073107105_))
                                (if (let ((__tmp113893
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107074107108_))))
                                      (declare (not safe))
                                      (equal? __tmp113893 '()))
                                    (let ((__tmp113888
                                           (let ((__tmp113889
                                                  (let ((__tmp113892
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107100_
                                                            _stx107061_)))
                                                        (__tmp113890
                                                         (let ((__tmp113891
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107112_))))
                   (declare (not safe))
                   (cons __tmp113891 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113892
                                                          __tmp113890))))
                                             (declare (not safe))
                                             (cons 'set! __tmp113889))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113888 _stx107061_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107065107077_)))))
                            (let () (declare (not safe)) (_$E107065107077_)))))
                    (let () (declare (not safe)) (_$E107065107077_))))
              (let () (declare (not safe)) (_$E107065107077_))))))
    (define __compile-if%
      (lambda (_stx106993_)
        (let* ((_$e106995_ _stx106993_)
               (_$E106997107012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106995_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106995_))
              (let* ((_$tgt106998107015_
                      (let () (declare (not safe)) (__AST-e _$e106995_)))
                     (_$hd106999107018_
                      (let () (declare (not safe)) (##car _$tgt106998107015_)))
                     (_$tl107000107021_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106998107015_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107000107021_))
                    (let* ((_$tgt107001107025_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107000107021_)))
                           (_$hd107002107028_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107001107025_)))
                           (_$tl107003107031_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107001107025_))))
                      (let ((_p107035_ _$hd107002107028_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107003107031_))
                            (let* ((_$tgt107004107037_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107003107031_)))
                                   (_$hd107005107040_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107004107037_)))
                                   (_$tl107006107043_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107004107037_))))
                              (let ((_t107047_ _$hd107005107040_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107006107043_))
                                    (let* ((_$tgt107007107049_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107006107043_)))
                                           (_$hd107008107052_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107007107049_)))
                                           (_$tl107009107055_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107007107049_))))
                                      (let ((_f107059_ _$hd107008107052_))
                                        (if (let ((__tmp113901
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107009107055_))))
                                              (declare (not safe))
                                              (equal? __tmp113901 '()))
                                            (let ((__tmp113894
                                                   (let ((__tmp113895
                                                          (let ((__tmp113900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107035_)))
                        (__tmp113896
                         (let ((__tmp113899
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107047_)))
                               (__tmp113897
                                (let ((__tmp113898
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107059_))))
                                  (declare (not safe))
                                  (cons __tmp113898 '()))))
                           (declare (not safe))
                           (cons __tmp113899 __tmp113897))))
                    (declare (not safe))
                    (cons __tmp113900 __tmp113896))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp113895))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp113894
                                               _stx106993_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E106997107012_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E106997107012_)))))
                            (let () (declare (not safe)) (_$E106997107012_)))))
                    (let () (declare (not safe)) (_$E106997107012_))))
              (let () (declare (not safe)) (_$E106997107012_))))))
    (define __compile-quote%
      (lambda (_stx106955_)
        (let* ((_$e106957_ _stx106955_)
               (_$E106959106968_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106957_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106957_))
              (let* ((_$tgt106960106971_
                      (let () (declare (not safe)) (__AST-e _$e106957_)))
                     (_$hd106961106974_
                      (let () (declare (not safe)) (##car _$tgt106960106971_)))
                     (_$tl106962106977_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106960106971_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106962106977_))
                    (let* ((_$tgt106963106981_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106962106977_)))
                           (_$hd106964106984_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106963106981_)))
                           (_$tl106965106987_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106963106981_))))
                      (let ((_e106991_ _$hd106964106984_))
                        (if (let ((__tmp113905
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106965106987_))))
                              (declare (not safe))
                              (equal? __tmp113905 '()))
                            (let ((__tmp113902
                                   (let ((__tmp113903
                                          (let ((__tmp113904
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e106991_))))
                                            (declare (not safe))
                                            (cons __tmp113904 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp113903))))
                              (declare (not safe))
                              (__SRC__% __tmp113902 _stx106955_))
                            (let () (declare (not safe)) (_$E106959106968_)))))
                    (let () (declare (not safe)) (_$E106959106968_))))
              (let () (declare (not safe)) (_$E106959106968_))))))
    (define __compile-quote-syntax%
      (lambda (_stx106917_)
        (let* ((_$e106919_ _stx106917_)
               (_$E106921106930_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106919_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106919_))
              (let* ((_$tgt106922106933_
                      (let () (declare (not safe)) (__AST-e _$e106919_)))
                     (_$hd106923106936_
                      (let () (declare (not safe)) (##car _$tgt106922106933_)))
                     (_$tl106924106939_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106922106933_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106924106939_))
                    (let* ((_$tgt106925106943_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106924106939_)))
                           (_$hd106926106946_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106925106943_)))
                           (_$tl106927106949_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106925106943_))))
                      (let ((_e106953_ _$hd106926106946_))
                        (if (let ((__tmp113908
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106927106949_))))
                              (declare (not safe))
                              (equal? __tmp113908 '()))
                            (let ((__tmp113906
                                   (let ((__tmp113907
                                          (let ()
                                            (declare (not safe))
                                            (cons _e106953_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp113907))))
                              (declare (not safe))
                              (__SRC__% __tmp113906 _stx106917_))
                            (let () (declare (not safe)) (_$E106921106930_)))))
                    (let () (declare (not safe)) (_$E106921106930_))))
              (let () (declare (not safe)) (_$E106921106930_))))))
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
