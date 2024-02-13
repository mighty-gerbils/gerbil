(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707830010)
  (begin
    (define __context::t
      (let ((__tmp115459 (list))
            (__tmp115457
             (let ((__tmp115458
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115458 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp115459
         '(t ns super table)
         __tmp115457
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args110693_ (apply make-instance __context::t _$args110693_)))
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
      (let ((__tmp115462 (list))
            (__tmp115460
             (let ((__tmp115461
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115461 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp115462
         '(id)
         __tmp115460
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args110690_ (apply make-instance __runtime::t _$args110690_)))
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
      (let ((__tmp115465 (list))
            (__tmp115463
             (let ((__tmp115464
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115464 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp115465
         '(e id)
         __tmp115463
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args110687_ (apply make-instance __syntax::t _$args110687_)))
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
      (let ((__tmp115468 (list __syntax::t))
            (__tmp115466
             (let ((__tmp115467
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115467 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp115468
         '()
         __tmp115466
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args110684_ (apply make-instance __macro::t _$args110684_)))
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
      (let ((__tmp115471 (list __macro::t))
            (__tmp115469
             (let ((__tmp115470
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115470 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp115471
         '()
         __tmp115469
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args110681_
        (apply make-instance __special-form::t _$args110681_)))
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
      (let ((__tmp115474 (list __syntax::t))
            (__tmp115472
             (let ((__tmp115473
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115473 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp115474
         '()
         __tmp115472
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args110678_
        (apply make-instance __core-form::t _$args110678_)))
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
      (let ((__tmp115477 (list __core-form::t))
            (__tmp115475
             (let ((__tmp115476
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115476 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp115477
         '()
         __tmp115475
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args110675_
        (apply make-instance __core-expression::t _$args110675_)))
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
      (let ((__tmp115480 (list __core-form::t))
            (__tmp115478
             (let ((__tmp115479
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115479 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp115480
         '()
         __tmp115478
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args110672_
        (apply make-instance __core-special-form::t _$args110672_)))
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
      (let ((__tmp115483 (list __syntax::t))
            (__tmp115481
             (let ((__tmp115482
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115482 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp115483
         '()
         __tmp115481
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args110669_
        (apply make-instance __struct-info::t _$args110669_)))
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
      (let ((__tmp115486 (list __syntax::t))
            (__tmp115484
             (let ((__tmp115485
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115485 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp115486
         '()
         __tmp115484
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args110666_ (apply make-instance __feature::t _$args110666_)))
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
      (let ((__tmp115489 (list __context::t))
            (__tmp115487
             (let ((__tmp115488
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115488 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp115489
         '(id path import export)
         __tmp115487
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args110663_ (apply make-instance __module::t _$args110663_)))
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
      (let ((__tmp115491
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp115490
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp115491 __tmp115490)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id110638_ _ctx110639_)
        (if _ctx110639_
            (let ((_id110641_
                   (let () (declare (not safe)) (__AST-e _id110638_))))
              (let _lp110643_ ((_ctx110645_ _ctx110639_))
                (let ((_$e110647_
                       (table-ref
                        (##structure-ref _ctx110645_ '4 __context::t '#f)
                        _id110641_
                        '#f)))
                  (if _$e110647_
                      (values _$e110647_)
                      (let ((_$e110650_
                             (##structure-ref
                              _ctx110645_
                              '3
                              __context::t
                              '#f)))
                        (if _$e110650_
                            (let ()
                              (declare (not safe))
                              (_lp110643_ _$e110650_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id110656_)
        (let ((_ctx110658_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id110656_ _ctx110658_))))
    (define __core-resolve
      (lambda _g115493_
        (let ((_g115492_ (let () (declare (not safe)) (##length _g115493_))))
          (cond ((let () (declare (not safe)) (##fx= _g115492_ 1))
                 (apply (lambda (_id110656_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id110656_)))
                        _g115493_))
                ((let () (declare (not safe)) (##fx= _g115492_ 2))
                 (apply (lambda (_id110660_ _ctx110661_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id110660_ _ctx110661_)))
                        _g115493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g115493_))))))
    (define __core-bound-id?__%
      (lambda (_id110621_ _is?110622_)
        (let ((_$e110624_
               (let () (declare (not safe)) (__core-resolve__0 _id110621_))))
          (if _$e110624_ (_is?110622_ _$e110624_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id110630_)
        (let ((_is?110632_ true))
          (declare (not safe))
          (__core-bound-id?__% _id110630_ _is?110632_))))
    (define __core-bound-id?
      (lambda _g115495_
        (let ((_g115494_ (let () (declare (not safe)) (##length _g115495_))))
          (cond ((let () (declare (not safe)) (##fx= _g115494_ 1))
                 (apply (lambda (_id110630_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id110630_)))
                        _g115495_))
                ((let () (declare (not safe)) (##fx= _g115494_ 2))
                 (apply (lambda (_id110634_ _is?110635_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id110634_ _is?110635_)))
                        _g115495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g115495_))))))
    (define __core-bind-runtime!__%
      (lambda (_id110604_ _eid110605_ _ctx110606_)
        (if _eid110605_
            (let ((__tmp115498
                   (##structure-ref _ctx110606_ '4 __context::t '#f))
                  (__tmp115497
                   (let () (declare (not safe)) (__AST-e _id110604_)))
                  (__tmp115496
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid110605_))))
              (declare (not safe))
              (table-set! __tmp115498 __tmp115497 __tmp115496))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id110611_ _eid110612_)
        (let ((_ctx110614_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id110611_ _eid110612_ _ctx110614_))))
    (define __core-bind-runtime!
      (lambda _g115500_
        (let ((_g115499_ (let () (declare (not safe)) (##length _g115500_))))
          (cond ((let () (declare (not safe)) (##fx= _g115499_ 2))
                 (apply (lambda (_id110611_ _eid110612_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id110611_ _eid110612_)))
                        _g115500_))
                ((let () (declare (not safe)) (##fx= _g115499_ 3))
                 (apply (lambda (_id110616_ _eid110617_ _ctx110618_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id110616_
                             _eid110617_
                             _ctx110618_)))
                        _g115500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g115500_))))))
    (define __core-bind-syntax!__%
      (lambda (_id110587_ _e110588_ _make110589_)
        (let ((__tmp115501
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e110588_
                      'gerbil/runtime/eval#__syntax::t))
                   _e110588_
                   (_make110589_ _e110588_ _id110587_))))
          (declare (not safe))
          (table-set! __*core* _id110587_ __tmp115501))))
    (define __core-bind-syntax!__0
      (lambda (_id110594_ _e110595_)
        (let ((_make110597_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id110594_ _e110595_ _make110597_))))
    (define __core-bind-syntax!
      (lambda _g115503_
        (let ((_g115502_ (let () (declare (not safe)) (##length _g115503_))))
          (cond ((let () (declare (not safe)) (##fx= _g115502_ 2))
                 (apply (lambda (_id110594_ _e110595_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id110594_ _e110595_)))
                        _g115503_))
                ((let () (declare (not safe)) (##fx= _g115502_ 3))
                 (apply (lambda (_id110599_ _e110600_ _make110601_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id110599_
                             _e110600_
                             _make110601_)))
                        _g115503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g115503_))))))
    (define __core-bind-macro!
      (lambda (_id110583_ _e110584_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id110583_ _e110584_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id110580_ _e110581_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id110580_ _e110581_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id110564_ _e110565_ _ctx110566_)
        (let ((__tmp115507 (##structure-ref _ctx110566_ '4 __context::t '#f))
              (__tmp115506 (let () (declare (not safe)) (__AST-e _id110564_)))
              (__tmp115504
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e110565_
                      'gerbil/runtime/eval#__syntax::t))
                   _e110565_
                   (let ((__tmp115505
                          (let () (declare (not safe)) (__AST-e _id110564_))))
                     (declare (not safe))
                     (##structure __syntax::t _e110565_ __tmp115505)))))
          (declare (not safe))
          (table-set! __tmp115507 __tmp115506 __tmp115504))))
    (define __core-bind-user-syntax!__0
      (lambda (_id110571_ _e110572_)
        (let ((_ctx110574_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id110571_ _e110572_ _ctx110574_))))
    (define __core-bind-user-syntax!
      (lambda _g115509_
        (let ((_g115508_ (let () (declare (not safe)) (##length _g115509_))))
          (cond ((let () (declare (not safe)) (##fx= _g115508_ 2))
                 (apply (lambda (_id110571_ _e110572_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id110571_
                             _e110572_)))
                        _g115509_))
                ((let () (declare (not safe)) (##fx= _g115508_ 3))
                 (apply (lambda (_id110576_ _e110577_ _ctx110578_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id110576_
                             _e110577_
                             _ctx110578_)))
                        _g115509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g115509_))))))
    (define make-__runtime-id__%
      (lambda (_id110545_ _ctx110546_)
        (let ((_id110548_ (let () (declare (not safe)) (__AST-e _id110545_))))
          (if (let () (declare (not safe)) (eq? _id110548_ '_))
              '#f
              (if (uninterned-symbol? _id110548_)
                  (gensym _id110548_)
                  (if (let () (declare (not safe)) (symbol? _id110548_))
                      (let ((_$e110550_
                             (##structure-ref
                              _ctx110546_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e110550_))
                            (gensym _id110548_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e110550_))
                                (let ((__tmp115510
                                       (##structure-ref
                                        _ctx110546_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp115510 '"#" _id110548_))
                                _id110548_)))
                      (error '"Illegal runtime identifier" _id110548_)))))))
    (define make-__runtime-id__0
      (lambda (_id110556_)
        (let ((_ctx110558_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id110556_ _ctx110558_))))
    (define make-__runtime-id
      (lambda _g115512_
        (let ((_g115511_ (let () (declare (not safe)) (##length _g115512_))))
          (cond ((let () (declare (not safe)) (##fx= _g115511_ 1))
                 (apply (lambda (_id110556_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id110556_)))
                        _g115512_))
                ((let () (declare (not safe)) (##fx= _g115511_ 2))
                 (apply (lambda (_id110560_ _ctx110561_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id110560_ _ctx110561_)))
                        _g115512_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g115512_))))))
    (define make-__context-local__%
      (lambda (_super110534_)
        (let ((__tmp115513
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super110534_ __tmp115513))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super110540_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super110540_))))
    (define make-__context-local
      (lambda _g115515_
        (let ((_g115514_ (let () (declare (not safe)) (##length _g115515_))))
          (cond ((let () (declare (not safe)) (##fx= _g115514_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g115515_))
                ((let () (declare (not safe)) (##fx= _g115514_ 1))
                 (apply (lambda (_super110542_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super110542_)))
                        _g115515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g115515_))))))
    (define make-__context-module__%
      (lambda (_id110514_ _ns110515_ _path110516_ _super110517_)
        (let ((__tmp115516
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns110515_
           _super110517_
           __tmp115516
           _id110514_
           _path110516_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id110522_ _ns110523_ _path110524_)
        (let ((_super110526_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id110522_
           _ns110523_
           _path110524_
           _super110526_))))
    (define make-__context-module
      (lambda _g115518_
        (let ((_g115517_ (let () (declare (not safe)) (##length _g115518_))))
          (cond ((let () (declare (not safe)) (##fx= _g115517_ 3))
                 (apply (lambda (_id110522_ _ns110523_ _path110524_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id110522_
                             _ns110523_
                             _path110524_)))
                        _g115518_))
                ((let () (declare (not safe)) (##fx= _g115517_ 4))
                 (apply (lambda (_id110528_
                                 _ns110529_
                                 _path110530_
                                 _super110531_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id110528_
                             _ns110529_
                             _path110530_
                             _super110531_)))
                        _g115518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g115518_))))))
    (define __SRC__%
      (lambda (_e110497_ _src-stx110498_)
        (if (or (let () (declare (not safe)) (pair? _e110497_))
                (let () (declare (not safe)) (symbol? _e110497_)))
            (let ((__tmp115519
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx110498_
                          'gerbil#AST::t))
                       (let ((__tmp115520
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx110498_))))
                         (declare (not safe))
                         (__locat __tmp115520))
                       '#f)))
              (declare (not safe))
              (##make-source _e110497_ __tmp115519))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e110497_ 'gerbil#AST::t))
                (let ((__tmp115523
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e110497_ '1 AST::t '#f)))
                      (__tmp115521
                       (let ((__tmp115522
                              (let ()
                                (declare (not safe))
                                (__AST-source _e110497_))))
                         (declare (not safe))
                         (__locat __tmp115522))))
                  (declare (not safe))
                  (##make-source __tmp115523 __tmp115521))
                (error '"BUG! Cannot sourcify object" _e110497_)))))
    (define __SRC__0
      (lambda (_e110506_)
        (let ((_src-stx110508_ '#f))
          (declare (not safe))
          (__SRC__% _e110506_ _src-stx110508_))))
    (define __SRC
      (lambda _g115525_
        (let ((_g115524_ (let () (declare (not safe)) (##length _g115525_))))
          (cond ((let () (declare (not safe)) (##fx= _g115524_ 1))
                 (apply (lambda (_e110506_)
                          (let () (declare (not safe)) (__SRC__0 _e110506_)))
                        _g115525_))
                ((let () (declare (not safe)) (##fx= _g115524_ 2))
                 (apply (lambda (_e110510_ _src-stx110511_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e110510_ _src-stx110511_)))
                        _g115525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g115525_))))))
    (define __locat
      (lambda (_loc110494_)
        (if (let () (declare (not safe)) (##locat? _loc110494_))
            _loc110494_
            '#f)))
    (define __check-values
      (lambda (_obj110489_ _k110490_)
        (let ((_count110492_
               (if (let () (declare (not safe)) (##values? _obj110489_))
                   (let () (declare (not safe)) (##vector-length _obj110489_))
                   '1)))
          (if (fx= _count110492_ _k110490_)
              '#!void
              (error (if (fx< _count110492_ _k110490_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj110489_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj110489_))
                         _obj110489_)
                     _k110490_)))))
    (define __compile
      (lambda (_stx110459_)
        (let* ((_$e110461_ _stx110459_)
               (_$E110463110469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110461_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110461_))
              (let* ((_$tgt110464110472_
                      (let () (declare (not safe)) (__AST-e _$e110461_)))
                     (_$hd110465110475_
                      (let () (declare (not safe)) (##car _$tgt110464110472_)))
                     (_$tl110466110478_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110464110472_))))
                (let* ((_form110482_ _$hd110465110475_)
                       (_$e110484_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form110482_))))
                  (if _$e110484_
                      ((lambda (_bind110487_)
                         ((##structure-ref _bind110487_ '1 __syntax::t '#f)
                          _stx110459_))
                       _$e110484_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx110459_
                         _form110482_)))))
              (let () (declare (not safe)) (_$E110463110469_))))))
    (define __compile-error__%
      (lambda (_stx110446_ _detail110447_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx110446_
           _detail110447_))))
    (define __compile-error__0
      (lambda (_stx110452_)
        (let ((_detail110454_ '#f))
          (declare (not safe))
          (__compile-error__% _stx110452_ _detail110454_))))
    (define __compile-error
      (lambda _g115527_
        (let ((_g115526_ (let () (declare (not safe)) (##length _g115527_))))
          (cond ((let () (declare (not safe)) (##fx= _g115526_ 1))
                 (apply (lambda (_stx110452_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx110452_)))
                        _g115527_))
                ((let () (declare (not safe)) (##fx= _g115526_ 2))
                 (apply (lambda (_stx110456_ _detail110457_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx110456_ _detail110457_)))
                        _g115527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g115527_))))))
    (define __compile-ignore%
      (lambda (_stx110443_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx110443_))))
    (define __compile-begin%
      (lambda (_stx110418_)
        (let* ((_$e110420_ _stx110418_)
               (_$E110422110428_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110420_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110420_))
              (let* ((_$tgt110423110431_
                      (let () (declare (not safe)) (__AST-e _$e110420_)))
                     (_$hd110424110434_
                      (let () (declare (not safe)) (##car _$tgt110423110431_)))
                     (_$tl110425110437_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110423110431_))))
                (let* ((_body110441_ _$tl110425110437_)
                       (__tmp115528
                        (let ((__tmp115529 (map __compile _body110441_)))
                          (declare (not safe))
                          (cons 'begin __tmp115529))))
                  (declare (not safe))
                  (__SRC__% __tmp115528 _stx110418_)))
              (let () (declare (not safe)) (_$E110422110428_))))))
    (define __compile-begin-foreign%
      (lambda (_stx110393_)
        (let* ((_$e110395_ _stx110393_)
               (_$E110397110403_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110395_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110395_))
              (let* ((_$tgt110398110406_
                      (let () (declare (not safe)) (__AST-e _$e110395_)))
                     (_$hd110399110409_
                      (let () (declare (not safe)) (##car _$tgt110398110406_)))
                     (_$tl110400110412_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110398110406_))))
                (let* ((_body110416_ _$tl110400110412_)
                       (__tmp115530
                        (let ((__tmp115531
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body110416_))))
                          (declare (not safe))
                          (cons 'begin __tmp115531))))
                  (declare (not safe))
                  (__SRC__% __tmp115530 _stx110393_)))
              (let () (declare (not safe)) (_$E110397110403_))))))
    (define __compile-import%
      (lambda (_stx110368_)
        (let* ((_$e110370_ _stx110368_)
               (_$E110372110378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110370_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110370_))
              (let* ((_$tgt110373110381_
                      (let () (declare (not safe)) (__AST-e _$e110370_)))
                     (_$hd110374110384_
                      (let () (declare (not safe)) (##car _$tgt110373110381_)))
                     (_$tl110375110387_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110373110381_))))
                (let* ((_body110391_ _$tl110375110387_)
                       (__tmp115532
                        (let ((__tmp115533
                               (let ((__tmp115534
                                      (let ((__tmp115535
                                             (let ()
                                               (declare (not safe))
                                               (cons _body110391_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp115535))))
                                 (declare (not safe))
                                 (cons __tmp115534 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp115533))))
                  (declare (not safe))
                  (__SRC__% __tmp115532 _stx110368_)))
              (let () (declare (not safe)) (_$E110372110378_))))))
    (define __compile-begin-annotation%
      (lambda (_stx110315_)
        (let* ((_$e110317_ _stx110315_)
               (_$E110319110331_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110317_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110317_))
              (let* ((_$tgt110320110334_
                      (let () (declare (not safe)) (__AST-e _$e110317_)))
                     (_$hd110321110337_
                      (let () (declare (not safe)) (##car _$tgt110320110334_)))
                     (_$tl110322110340_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110320110334_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110322110340_))
                    (let* ((_$tgt110323110344_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110322110340_)))
                           (_$hd110324110347_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110323110344_)))
                           (_$tl110325110350_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110323110344_))))
                      (let ((_ann110354_ _$hd110324110347_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110325110350_))
                            (let* ((_$tgt110326110356_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110325110350_)))
                                   (_$hd110327110359_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110326110356_)))
                                   (_$tl110328110362_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110326110356_))))
                              (let ((_expr110366_ _$hd110327110359_))
                                (if (let ((__tmp115536
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110328110362_))))
                                      (declare (not safe))
                                      (equal? __tmp115536 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr110366_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110319110331_)))))
                            (let () (declare (not safe)) (_$E110319110331_)))))
                    (let () (declare (not safe)) (_$E110319110331_))))
              (let () (declare (not safe)) (_$E110319110331_))))))
    (define __compile-define-values%
      (lambda (_stx110206_)
        (let* ((_$e110208_ _stx110206_)
               (_$E110210110222_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110208_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110208_))
              (let* ((_$tgt110211110225_
                      (let () (declare (not safe)) (__AST-e _$e110208_)))
                     (_$hd110212110228_
                      (let () (declare (not safe)) (##car _$tgt110211110225_)))
                     (_$tl110213110231_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110211110225_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110213110231_))
                    (let* ((_$tgt110214110235_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110213110231_)))
                           (_$hd110215110238_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110214110235_)))
                           (_$tl110216110241_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110214110235_))))
                      (let ((_hd110245_ _$hd110215110238_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110216110241_))
                            (let* ((_$tgt110217110247_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110216110241_)))
                                   (_$hd110218110250_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110217110247_)))
                                   (_$tl110219110253_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110217110247_))))
                              (let ((_expr110257_ _$hd110218110250_))
                                (if (let ((__tmp115537
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110219110253_))))
                                      (declare (not safe))
                                      (equal? __tmp115537 '()))
                                    (let* ((_$e110259_ _hd110245_)
                                           (_$E110261110302_
                                            (lambda ()
                                              (let ((_$E110262110287_
                                                     (lambda ()
                                                       (let* ((_$E110263110274_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e110259_))))
                      (_ids110277_ _hd110245_)
                      (_len110279_ (length _ids110277_))
                      (_tmp110281_
                       (let ((__tmp115538 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp115538))))
                 (let ((__tmp115539
                        (let ((__tmp115540
                               (let ((__tmp115557
                                      (let ((__tmp115558
                                             (let ((__tmp115559
                                                    (let ((__tmp115560
                                                           (let ((__tmp115561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr110257_))))
                     (declare (not safe))
                     (cons __tmp115561 '()))))
              (declare (not safe))
              (cons _tmp110281_ __tmp115560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp115559))))
                                        (declare (not safe))
                                        (__SRC__% __tmp115558 _stx110206_)))
                                     (__tmp115541
                                      (let ((__tmp115553
                                             (let ((__tmp115554
                                                    (let ((__tmp115555
                                                           (let ((__tmp115556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len110279_ '()))))
                     (declare (not safe))
                     (cons _tmp110281_ __tmp115556))))
              (declare (not safe))
              (cons '__check-values __tmp115555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp115554
                                                _stx110206_)))
                                            (__tmp115542
                                             (let ((__tmp115543
                                                    (let ((__tmp115545
                                                           (lambda (_id110284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k110285_)
                     (if (let () (declare (not safe)) (__AST-e _id110284_))
                         (let ((__tmp115546
                                (let ((__tmp115547
                                       (let ((__tmp115552
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id110284_)))
                                             (__tmp115548
                                              (let ((__tmp115549
                                                     (let ((__tmp115550
                                                            (let ((__tmp115551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k110285_ '()))))
                      (declare (not safe))
                      (cons _tmp110281_ __tmp115551))))
               (declare (not safe))
               (cons '##vector-ref __tmp115550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115549 '()))))
                                         (declare (not safe))
                                         (cons __tmp115552 __tmp115548))))
                                  (declare (not safe))
                                  (cons 'define __tmp115547))))
                           (declare (not safe))
                           (__SRC__% __tmp115546 _stx110206_))
                         '#f)))
                  (__tmp115544
                   (let () (declare (not safe)) (iota _len110279_))))
              (declare (not safe))
              (filter-map2 __tmp115545 _ids110277_ __tmp115544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp115543))))
                                        (declare (not safe))
                                        (cons __tmp115553 __tmp115542))))
                                 (declare (not safe))
                                 (cons __tmp115557 __tmp115541))))
                          (declare (not safe))
                          (cons 'begin __tmp115540))))
                   (declare (not safe))
                   (__SRC__% __tmp115539 _stx110206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e110259_))
                                                    (let* ((_$tgt110264110290_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e110259_)))
                                                           (_$hd110265110293_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt110264110290_)))
                                                           (_$tl110266110296_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt110264110290_))))
                                                      (let ((_id110300_
                                                             _$hd110265110293_))
                                                        (if (let ((__tmp115562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl110266110296_))))
                      (declare (not safe))
                      (equal? __tmp115562 '()))
                    (let ((__tmp115563
                           (let ((__tmp115564
                                  (let ((__tmp115567
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id110300_)))
                                        (__tmp115565
                                         (let ((__tmp115566
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr110257_))))
                                           (declare (not safe))
                                           (cons __tmp115566 '()))))
                                    (declare (not safe))
                                    (cons __tmp115567 __tmp115565))))
                             (declare (not safe))
                             (cons 'define __tmp115564))))
                      (declare (not safe))
                      (__SRC__% __tmp115563 _stx110206_))
                    (let () (declare (not safe)) (_$E110262110287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110262110287_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e110259_))
                                          (let* ((_$tgt110267110305_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e110259_)))
                                                 (_$hd110268110308_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110267110305_)))
                                                 (_$tl110269110311_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110267110305_))))
                                            (if (let ((__tmp115568
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd110268110308_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115568 '#f))
                                                (if (let ((__tmp115569
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl110269110311_))))
                                                      (declare (not safe))
                                                      (equal? __tmp115569 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr110257_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110261110302_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110261110302_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110261110302_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110210110222_)))))
                            (let () (declare (not safe)) (_$E110210110222_)))))
                    (let () (declare (not safe)) (_$E110210110222_))))
              (let () (declare (not safe)) (_$E110210110222_))))))
    (define __compile-head-id
      (lambda (_e110204_)
        (let ((__tmp115570
               (if (let () (declare (not safe)) (__AST-e _e110204_))
                   _e110204_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp115570))))
    (define __compile-lambda-head
      (lambda (_hd110161_)
        (let _recur110163_ ((_rest110165_ _hd110161_))
          (let* ((_$e110167_ _rest110165_)
                 (_$E110169110187_
                  (lambda ()
                    (let ((_$E110170110184_
                           (lambda ()
                             (let* ((_$E110171110179_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e110167_))))
                                    (_tail110182_ _$e110167_))
                               (declare (not safe))
                               (__compile-head-id _tail110182_)))))
                      (if (let ((__tmp115571
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e110167_))))
                            (declare (not safe))
                            (equal? __tmp115571 '()))
                          '()
                          (let () (declare (not safe)) (_$E110170110184_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110167_))
                (let* ((_$tgt110172110190_
                        (let () (declare (not safe)) (__AST-e _$e110167_)))
                       (_$hd110173110193_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110172110190_)))
                       (_$tl110174110196_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110172110190_))))
                  (let* ((_hd110200_ _$hd110173110193_)
                         (_rest110202_ _$tl110174110196_))
                    (let ((__tmp115573
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd110200_)))
                          (__tmp115572
                           (let ()
                             (declare (not safe))
                             (_recur110163_ _rest110202_))))
                      (declare (not safe))
                      (cons __tmp115573 __tmp115572))))
                (let () (declare (not safe)) (_$E110169110187_)))))))
    (define __compile-lambda%
      (lambda (_stx110108_)
        (let* ((_$e110110_ _stx110108_)
               (_$E110112110124_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110110_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110110_))
              (let* ((_$tgt110113110127_
                      (let () (declare (not safe)) (__AST-e _$e110110_)))
                     (_$hd110114110130_
                      (let () (declare (not safe)) (##car _$tgt110113110127_)))
                     (_$tl110115110133_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110113110127_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110115110133_))
                    (let* ((_$tgt110116110137_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110115110133_)))
                           (_$hd110117110140_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110116110137_)))
                           (_$tl110118110143_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110116110137_))))
                      (let ((_hd110147_ _$hd110117110140_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110118110143_))
                            (let* ((_$tgt110119110149_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110118110143_)))
                                   (_$hd110120110152_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110119110149_)))
                                   (_$tl110121110155_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110119110149_))))
                              (let ((_body110159_ _$hd110120110152_))
                                (if (let ((__tmp115574
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110121110155_))))
                                      (declare (not safe))
                                      (equal? __tmp115574 '()))
                                    (let ((__tmp115575
                                           (let ((__tmp115576
                                                  (let ((__tmp115579
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd110147_)))
                                                        (__tmp115577
                                                         (let ((__tmp115578
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body110159_))))
                   (declare (not safe))
                   (cons __tmp115578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115579
                                                          __tmp115577))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp115576))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115575 _stx110108_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110112110124_)))))
                            (let () (declare (not safe)) (_$E110112110124_)))))
                    (let () (declare (not safe)) (_$E110112110124_))))
              (let () (declare (not safe)) (_$E110112110124_))))))
    (define __compile-case-lambda%
      (lambda (_stx109900_)
        (letrec ((_variadic?109902_
                  (lambda (_hd110073_)
                    (let* ((_$e110075_ _hd110073_)
                           (_$E110077110093_
                            (lambda ()
                              (let ((_$E110078110090_
                                     (lambda ()
                                       (let ((_$E110079110087_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e110075_)))))
                                         '#t))))
                                (if (let ((__tmp115580
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e110075_))))
                                      (declare (not safe))
                                      (equal? __tmp115580 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E110078110090_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110075_))
                          (let* ((_$tgt110080110096_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110075_)))
                                 (_$hd110081110099_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110080110096_)))
                                 (_$tl110082110102_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110080110096_))))
                            (let ((_rest110106_ _$tl110082110102_))
                              (declare (not safe))
                              (_variadic?109902_ _rest110106_)))
                          (let () (declare (not safe)) (_$E110077110093_))))))
                 (_arity109903_
                  (lambda (_hd110038_)
                    (let _lp110040_ ((_rest110042_ _hd110038_) (_k110043_ '0))
                      (let* ((_$e110045_ _rest110042_)
                             (_$E110047110058_
                              (lambda ()
                                (let ((_$E110048110055_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e110045_)))))
                                  _k110043_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e110045_))
                            (let* ((_$tgt110049110061_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e110045_)))
                                   (_$hd110050110064_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110049110061_)))
                                   (_$tl110051110067_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110049110061_))))
                              (let* ((_rest110071_ _$tl110051110067_)
                                     (__tmp115581
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k110043_ '1))))
                                (declare (not safe))
                                (_lp110040_ _rest110071_ __tmp115581)))
                            (let ()
                              (declare (not safe))
                              (_$E110047110058_)))))))
                 (_generate109904_
                  (lambda (_rest109965_ _args109966_ _len109967_)
                    (let* ((_$e109969_ _rest109965_)
                           (_$E109971109982_
                            (lambda ()
                              (let* ((_$E109972109979_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109969_))))
                                     (__tmp115582
                                      (let ((__tmp115583
                                             (let ((__tmp115584
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109966_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp115584))))
                                        (declare (not safe))
                                        (cons 'error __tmp115583))))
                                (declare (not safe))
                                (__SRC__% __tmp115582 _stx109900_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109969_))
                          (let* ((_$tgt109973109985_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109969_)))
                                 (_$hd109974109988_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109973109985_)))
                                 (_$tl109975109991_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109973109985_))))
                            (let* ((_clause109995_ _$hd109974109988_)
                                   (_rest109997_ _$tl109975109991_)
                                   (_$e109999_ _clause109995_)
                                   (_$E110001110010_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109999_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109999_))
                                  (let* ((_$tgt110002110013_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109999_)))
                                         (_$hd110003110016_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt110002110013_)))
                                         (_$tl110004110019_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt110002110013_))))
                                    (let ((_hd110023_ _$hd110003110016_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl110004110019_))
                                          (let* ((_$tgt110005110025_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110004110019_)))
                                                 (_$hd110006110028_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110005110025_)))
                                                 (_$tl110007110031_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110005110025_))))
                                            (if (let ((__tmp115585
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110007110031_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115585 '()))
                                                (let ((_clen110035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109903_
                                                          _hd110023_)))
                                                      (_cmp110036_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109902_
                                                              _hd110023_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp115586
                                                         (let ((__tmp115587
                                                                (let ((__tmp115597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115598
                                      (let ((__tmp115599
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen110035_ '()))))
                                        (declare (not safe))
                                        (cons _len109967_ __tmp115599))))
                                 (declare (not safe))
                                 (cons _cmp110036_ __tmp115598)))
                              (__tmp115588
                               (let ((__tmp115591
                                      (let ((__tmp115592
                                             (let ((__tmp115593
                                                    (let ((__tmp115595
                                                           (let ((__tmp115596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109995_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp115596)))
                  (__tmp115594
                   (let () (declare (not safe)) (cons _args109966_ '()))))
              (declare (not safe))
              (cons __tmp115595 __tmp115594))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp115593))))
                                        (declare (not safe))
                                        (__SRC__% __tmp115592 _stx109900_)))
                                     (__tmp115589
                                      (let ((__tmp115590
                                             (let ()
                                               (declare (not safe))
                                               (_generate109904_
                                                _rest109997_
                                                _args109966_
                                                _len109967_))))
                                        (declare (not safe))
                                        (cons __tmp115590 '()))))
                                 (declare (not safe))
                                 (cons __tmp115591 __tmp115589))))
                          (declare (not safe))
                          (cons __tmp115597 __tmp115588))))
                   (declare (not safe))
                   (cons 'if __tmp115587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp115586
                                                     _stx109900_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110001110010_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110001110010_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E110001110010_)))))
                          (let () (declare (not safe)) (_$E109971109982_)))))))
          (let* ((_$e109906_ _stx109900_)
                 (_$E109908109940_
                  (lambda ()
                    (let ((_$E109909109922_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109906_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109906_))
                          (let* ((_$tgt109910109925_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109906_)))
                                 (_$hd109911109928_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109910109925_)))
                                 (_$tl109912109931_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109910109925_))))
                            (let ((_clauses109935_ _$tl109912109931_))
                              (let ((_args109937_
                                     (let ((__tmp115600 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp115600 _stx109900_)))
                                    (_len109938_
                                     (let ((__tmp115601 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp115601 _stx109900_))))
                                (let ((__tmp115602
                                       (let ((__tmp115603
                                              (let ((__tmp115604
                                                     (let ((__tmp115605
                                                            (let ((__tmp115606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115607
                                  (let ((__tmp115610
                                         (let ((__tmp115611
                                                (let ((__tmp115612
                                                       (let ((__tmp115613
                                                              (let ((__tmp115614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp115615
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109937_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp115615))))
                        (declare (not safe))
                        (__SRC__% __tmp115614 _stx109900_))))
                 (declare (not safe))
                 (cons __tmp115613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109938_
                                                        __tmp115612))))
                                           (declare (not safe))
                                           (cons __tmp115611 '())))
                                        (__tmp115608
                                         (let ((__tmp115609
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109904_
                                                   _clauses109935_
                                                   _args109937_
                                                   _len109938_))))
                                           (declare (not safe))
                                           (cons __tmp115609 '()))))
                                    (declare (not safe))
                                    (cons __tmp115610 __tmp115608))))
                             (declare (not safe))
                             (cons 'let __tmp115607))))
                      (declare (not safe))
                      (__SRC__% __tmp115606 _stx109900_))))
               (declare (not safe))
               (cons __tmp115605 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109937_
                                                      __tmp115604))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp115603))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115602 _stx109900_)))))
                          (let () (declare (not safe)) (_$E109909109922_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109906_))
                (let* ((_$tgt109913109943_
                        (let () (declare (not safe)) (__AST-e _$e109906_)))
                       (_$hd109914109946_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109913109943_)))
                       (_$tl109915109949_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109913109943_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109915109949_))
                      (let* ((_$tgt109916109953_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109915109949_)))
                             (_$hd109917109956_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109916109953_)))
                             (_$tl109918109959_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109916109953_))))
                        (let ((_clause109963_ _$hd109917109956_))
                          (if (let ((__tmp115616
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109918109959_))))
                                (declare (not safe))
                                (equal? __tmp115616 '()))
                              (let ((__tmp115617
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109963_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp115617))
                              (let ()
                                (declare (not safe))
                                (_$E109908109940_)))))
                      (let () (declare (not safe)) (_$E109908109940_))))
                (let () (declare (not safe)) (_$E109908109940_)))))))
    (define __compile-let-form
      (lambda (_stx109669_ _compile-simple109670_ _compile-values109671_)
        (letrec ((_simple-bind?109673_
                  (lambda (_hd109858_)
                    (let* ((_hd109859109869_ _hd109858_)
                           (_else109862109877_ (lambda () '#f)))
                      (let ((_K109865109890_ (lambda (_id109888_) '#t))
                            (_K109864109882_ (lambda () '#t)))
                        (let ((_try-match109861109885_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109859109869_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109864109882_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109862109877_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109859109869_))
                              (let ((_tl109867109895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109859109869_)))
                                    (_hd109866109893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109859109869_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109867109895_))
                                    (let ((_id109898_ _hd109866109893_))
                                      (declare (not safe))
                                      (_K109865109890_ _id109898_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109861109885_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109861109885_))))))))
                 (_car-e109674_
                  (lambda (_hd109856_)
                    (if (let () (declare (not safe)) (pair? _hd109856_))
                        (car _hd109856_)
                        _hd109856_))))
          (let* ((_$e109676_ _stx109669_)
                 (_$E109678109821_
                  (lambda ()
                    (let ((_$E109679109701_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109676_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109676_))
                          (let* ((_$tgt109680109704_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109676_)))
                                 (_$hd109681109707_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109680109704_)))
                                 (_$tl109682109710_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109680109704_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl109682109710_))
                                (let* ((_$tgt109683109714_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl109682109710_)))
                                       (_$hd109684109717_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt109683109714_)))
                                       (_$tl109685109720_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt109683109714_))))
                                  (let ((_hd109724_ _$hd109684109717_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl109685109720_))
                                        (let* ((_$tgt109686109726_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl109685109720_)))
                                               (_$hd109687109729_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt109686109726_)))
                                               (_$tl109688109732_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt109686109726_))))
                                          (let ((_body109736_
                                                 _$hd109687109729_))
                                            (if (let ((__tmp115618
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109688109732_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115618 '()))
                                                (let* ((_hd-ids109776_
                                                        (map (lambda (_bind109738_)
                                                               (let* ((_$e109740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109738_)
                              (_$E109742109751_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109740_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109740_))
                             (let* ((_$tgt109743109754_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109740_)))
                                    (_$hd109744109757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109743109754_)))
                                    (_$tl109745109760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109743109754_))))
                               (let ((_ids109764_ _$hd109744109757_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109745109760_))
                                     (let* ((_$tgt109746109766_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109745109760_)))
                                            (_$hd109747109769_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109746109766_)))
                                            (_$tl109748109772_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109746109766_))))
                                       (if (let ((__tmp115619
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109748109772_))))
                                             (declare (not safe))
                                             (equal? __tmp115619 '()))
                                           _ids109764_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109742109751_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109742109751_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109742109751_)))))
                     _hd109724_))
               (_exprs109816_
                (map (lambda (_bind109778_)
                       (let* ((_$e109780_ _bind109778_)
                              (_$E109782109791_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109780_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109780_))
                             (let* ((_$tgt109783109794_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109780_)))
                                    (_$hd109784109797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109783109794_)))
                                    (_$tl109785109800_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109783109794_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109785109800_))
                                   (let* ((_$tgt109786109804_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109785109800_)))
                                          (_$hd109787109807_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109786109804_)))
                                          (_$tl109788109810_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109786109804_))))
                                     (let ((_expr109814_ _$hd109787109807_))
                                       (if (let ((__tmp115620
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109788109810_))))
                                             (declare (not safe))
                                             (equal? __tmp115620 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109814_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109782109791_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109782109791_))))
                             (let ()
                               (declare (not safe))
                               (_$E109782109791_)))))
                     _hd109724_))
               (_body109818_
                (let () (declare (not safe)) (__compile _body109736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?109673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109776_))
              (_compile-simple109670_
               (map _car-e109674_ _hd-ids109776_)
               _exprs109816_
               _body109818_)
              (_compile-values109671_
               _hd-ids109776_
               _exprs109816_
               _body109818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109679109701_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E109679109701_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E109679109701_))))
                          (let () (declare (not safe)) (_$E109679109701_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109676_))
                (let* ((_$tgt109689109824_
                        (let () (declare (not safe)) (__AST-e _$e109676_)))
                       (_$hd109690109827_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109689109824_)))
                       (_$tl109691109830_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109689109824_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109691109830_))
                      (let* ((_$tgt109692109834_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109691109830_)))
                             (_$hd109693109837_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109692109834_)))
                             (_$tl109694109840_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109692109834_))))
                        (if (let ((__tmp115621
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd109693109837_))))
                              (declare (not safe))
                              (equal? __tmp115621 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl109694109840_))
                                (let* ((_$tgt109695109844_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl109694109840_)))
                                       (_$hd109696109847_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt109695109844_)))
                                       (_$tl109697109850_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt109695109844_))))
                                  (let ((_body109854_ _$hd109696109847_))
                                    (if (let ((__tmp115622
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl109697109850_))))
                                          (declare (not safe))
                                          (equal? __tmp115622 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109854_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E109678109821_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E109678109821_)))
                            (let () (declare (not safe)) (_$E109678109821_))))
                      (let () (declare (not safe)) (_$E109678109821_))))
                (let () (declare (not safe)) (_$E109678109821_)))))))
    (define __compile-let-values%
      (lambda (_stx109484_)
        (letrec ((_compile-simple109486_
                  (lambda (_hd-ids109665_ _exprs109666_ _body109667_)
                    (let ((__tmp115623
                           (let ((__tmp115624
                                  (let ((__tmp115626
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109665_)
                                              _exprs109666_))
                                        (__tmp115625
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109667_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115626 __tmp115625))))
                             (declare (not safe))
                             (cons 'let __tmp115624))))
                      (declare (not safe))
                      (__SRC__% __tmp115623 _stx109484_))))
                 (_compile-values109487_
                  (lambda (_hd-ids109583_ _exprs109584_ _body109585_)
                    (let _lp109587_ ((_rest109589_ _hd-ids109583_)
                                     (_exprs109590_ _exprs109584_)
                                     (_bind109591_ '())
                                     (_post109592_ '()))
                      (let* ((_rest109593109607_ _rest109589_)
                             (_else109596109615_
                              (lambda ()
                                (let ((__tmp115627
                                       (let ((__tmp115628
                                              (let ((__tmp115631
                                                     (reverse _bind109591_))
                                                    (__tmp115629
                                                     (let ((__tmp115630
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post109488_
                                                               _post109592_
                                                               _body109585_))))
                                                       (declare (not safe))
                                                       (cons __tmp115630
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp115631
                                                      __tmp115629))))
                                         (declare (not safe))
                                         (cons 'let __tmp115628))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115627 _stx109484_)))))
                        (let ((_K109601109648_
                               (lambda (_rest109645_ _id109646_)
                                 (let ((__tmp115637 (cdr _exprs109590_))
                                       (__tmp115632
                                        (let ((__tmp115633
                                               (let ((__tmp115636
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id109646_)))
                                                     (__tmp115634
                                                      (let ((__tmp115635
                                                             (car _exprs109590_)))
                                                        (declare (not safe))
                                                        (cons __tmp115635
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp115636
                                                       __tmp115634))))
                                          (declare (not safe))
                                          (cons __tmp115633 _bind109591_))))
                                   (declare (not safe))
                                   (_lp109587_
                                    _rest109645_
                                    __tmp115637
                                    __tmp115632
                                    _post109592_))))
                              (_K109598109630_
                               (lambda (_rest109619_ _hd109620_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109620_))
                                     (let ((__tmp115645 (cdr _exprs109590_))
                                           (__tmp115638
                                            (let ((__tmp115639
                                                   (let ((__tmp115644
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd109620_)))
                                                         (__tmp115640
                                                          (let ((__tmp115641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115642
                                (let ((__tmp115643 (car _exprs109590_)))
                                  (declare (not safe))
                                  (cons __tmp115643 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp115642))))
                    (declare (not safe))
                    (cons __tmp115641 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115644
                                                           __tmp115640))))
                                              (declare (not safe))
                                              (cons __tmp115639
                                                    _bind109591_))))
                                       (declare (not safe))
                                       (_lp109587_
                                        _rest109619_
                                        __tmp115645
                                        __tmp115638
                                        _post109592_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd109620_))
                                         (let* ((_len109622_
                                                 (length _hd109620_))
                                                (_tmp109624_
                                                 (let ((__tmp115646 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp115646))))
                                           (let ((__tmp115658
                                                  (cdr _exprs109590_))
                                                 (__tmp115654
                                                  (let ((__tmp115655
                                                         (let ((__tmp115656
                                                                (let ((__tmp115657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs109590_)))
                          (declare (not safe))
                          (cons __tmp115657 '()))))
                   (declare (not safe))
                   (cons _tmp109624_ __tmp115656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115655
                                                          _bind109591_)))
                                                 (__tmp115647
                                                  (let ((__tmp115648
                                                         (let ((__tmp115649
                                                                (let ((__tmp115650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115652
                                      (lambda (_id109627_ _k109628_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id109627_))
                                            (let ((__tmp115653
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id109627_))))
                                              (declare (not safe))
                                              (cons __tmp115653 _k109628_))
                                            '#f)))
                                     (__tmp115651
                                      (let ()
                                        (declare (not safe))
                                        (iota _len109622_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp115652
                                  _hd109620_
                                  __tmp115651))))
                          (declare (not safe))
                          (cons _len109622_ __tmp115650))))
                   (declare (not safe))
                   (cons _tmp109624_ __tmp115649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115648
                                                          _post109592_))))
                                             (declare (not safe))
                                             (_lp109587_
                                              _rest109619_
                                              __tmp115658
                                              __tmp115654
                                              __tmp115647)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx109484_
                                            _hd109620_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109593109607_))
                              (let ((_tl109603109653_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109593109607_)))
                                    (_hd109602109651_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109593109607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109602109651_))
                                    (let ((_tl109605109658_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109602109651_)))
                                          (_hd109604109656_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109602109651_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109605109658_))
                                          (let ((_id109661_ _hd109604109656_)
                                                (_rest109663_
                                                 _tl109603109653_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109601109648_
                                               _rest109663_
                                               _id109661_)))
                                          (let ((_hd109638_ _hd109602109651_)
                                                (_rest109640_
                                                 _tl109603109653_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109598109630_
                                               _rest109640_
                                               _hd109638_)))))
                                    (let ((_hd109638_ _hd109602109651_)
                                          (_rest109640_ _tl109603109653_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109598109630_
                                         _rest109640_
                                         _hd109638_)))))
                              (let ()
                                (declare (not safe))
                                (_else109596109615_))))))))
                 (_compile-post109488_
                  (lambda (_post109490_ _body109491_)
                    (let _lp109493_ ((_rest109495_ _post109490_)
                                     (_check109496_ '())
                                     (_bind109497_ '()))
                      (let* ((_rest109498109510_ _rest109495_)
                             (_else109500109518_
                              (lambda ()
                                (let ((__tmp115659
                                       (let ((__tmp115660
                                              (let ((__tmp115661
                                                     (let ((__tmp115662
                                                            (let ((__tmp115663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115664
                                  (let ((__tmp115665
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109491_ '()))))
                                    (declare (not safe))
                                    (cons _bind109497_ __tmp115665))))
                             (declare (not safe))
                             (cons 'let __tmp115664))))
                      (declare (not safe))
                      (__SRC__% __tmp115663 _stx109484_))))
               (declare (not safe))
               (cons __tmp115662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp115661
                                                        _check109496_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp115660))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115659 _stx109484_))))
                             (_K109502109557_
                              (lambda (_rest109521_
                                       _init109522_
                                       _len109523_
                                       _tmp109524_)
                                (let ((__tmp115673
                                       (let ((__tmp115674
                                              (let ((__tmp115675
                                                     (let ((__tmp115676
                                                            (let ((__tmp115677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109523_ '()))))
                      (declare (not safe))
                      (cons _tmp109524_ __tmp115677))))
               (declare (not safe))
               (cons '__check-values __tmp115676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115675
                                                 _stx109484_))))
                                         (declare (not safe))
                                         (cons __tmp115674 _check109496_)))
                                      (__tmp115666
                                       (let ((__tmp115667
                                              (lambda (_hd109526_ _r109527_)
                                                (let* ((_hd109528109535_
                                                        _hd109526_)
                                                       (_E109530109539_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109528109535_)))
               (_K109531109545_
                (lambda (_k109542_ _id109543_)
                  (let ((__tmp115668
                         (let ((__tmp115669
                                (let ((__tmp115670
                                       (let ((__tmp115671
                                              (let ((__tmp115672
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k109542_ '()))))
                                                (declare (not safe))
                                                (cons _tmp109524_
                                                      __tmp115672))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp115671))))
                                  (declare (not safe))
                                  (cons __tmp115670 '()))))
                           (declare (not safe))
                           (cons _id109543_ __tmp115669))))
                    (declare (not safe))
                    (cons __tmp115668 _r109527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109528109535_))
                                                      (let ((_hd109532109548_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109528109535_)))
                    (_tl109533109550_
                     (let () (declare (not safe)) (##cdr _hd109528109535_))))
                (let* ((_id109553_ _hd109532109548_)
                       (_k109555_ _tl109533109550_))
                  (declare (not safe))
                  (_K109531109545_ _k109555_ _id109553_)))
              (let () (declare (not safe)) (_E109530109539_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp115667
                                                 _bind109497_
                                                 _init109522_))))
                                  (declare (not safe))
                                  (_lp109493_
                                   _rest109521_
                                   __tmp115673
                                   __tmp115666)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109498109510_))
                            (let ((_hd109503109560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109498109510_)))
                                  (_tl109504109562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109498109510_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd109503109560_))
                                  (let ((_hd109505109565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd109503109560_)))
                                        (_tl109506109567_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd109503109560_))))
                                    (let ((_tmp109570_ _hd109505109565_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl109506109567_))
                                          (let ((_hd109507109572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl109506109567_)))
                                                (_tl109508109574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl109506109567_))))
                                            (let* ((_len109577_
                                                    _hd109507109572_)
                                                   (_init109579_
                                                    _tl109508109574_)
                                                   (_rest109581_
                                                    _tl109504109562_))
                                              (declare (not safe))
                                              (_K109502109557_
                                               _rest109581_
                                               _init109579_
                                               _len109577_
                                               _tmp109570_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109500109518_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else109500109518_))))
                            (let ()
                              (declare (not safe))
                              (_else109500109518_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109484_
             _compile-simple109486_
             _compile-values109487_)))))
    (define __compile-letrec-values%
      (lambda (_stx109284_)
        (letrec ((_compile-simple109286_
                  (lambda (_hd-ids109480_ _exprs109481_ _body109482_)
                    (let ((__tmp115678
                           (let ((__tmp115679
                                  (let ((__tmp115681
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109480_)
                                              _exprs109481_))
                                        (__tmp115680
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109482_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115681 __tmp115680))))
                             (declare (not safe))
                             (cons 'letrec __tmp115679))))
                      (declare (not safe))
                      (__SRC__% __tmp115678 _stx109284_))))
                 (_compile-values109287_
                  (lambda (_hd-ids109394_ _exprs109395_ _body109396_)
                    (let _lp109398_ ((_rest109400_ _hd-ids109394_)
                                     (_exprs109401_ _exprs109395_)
                                     (_pre109402_ '())
                                     (_bind109403_ '())
                                     (_post109404_ '()))
                      (let* ((_rest109405109419_ _rest109400_)
                             (_else109408109427_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner109288_
                                   _pre109402_
                                   _bind109403_
                                   _post109404_
                                   _body109396_)))))
                        (let ((_K109413109463_
                               (lambda (_rest109460_ _id109461_)
                                 (let ((__tmp115687 (cdr _exprs109401_))
                                       (__tmp115682
                                        (let ((__tmp115683
                                               (let ((__tmp115686
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id109461_)))
                                                     (__tmp115684
                                                      (let ((__tmp115685
                                                             (car _exprs109401_)))
                                                        (declare (not safe))
                                                        (cons __tmp115685
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp115686
                                                       __tmp115684))))
                                          (declare (not safe))
                                          (cons __tmp115683 _bind109403_))))
                                   (declare (not safe))
                                   (_lp109398_
                                    _rest109460_
                                    __tmp115687
                                    _pre109402_
                                    __tmp115682
                                    _post109404_))))
                              (_K109410109445_
                               (lambda (_rest109431_ _hd109432_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109432_))
                                     (let ((__tmp115695 (cdr _exprs109401_))
                                           (__tmp115688
                                            (let ((__tmp115689
                                                   (let ((__tmp115694
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd109432_)))
                                                         (__tmp115690
                                                          (let ((__tmp115691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115692
                                (let ((__tmp115693 (car _exprs109401_)))
                                  (declare (not safe))
                                  (cons __tmp115693 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp115692))))
                    (declare (not safe))
                    (cons __tmp115691 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115694
                                                           __tmp115690))))
                                              (declare (not safe))
                                              (cons __tmp115689
                                                    _bind109403_))))
                                       (declare (not safe))
                                       (_lp109398_
                                        _rest109431_
                                        __tmp115695
                                        _pre109402_
                                        __tmp115688
                                        _post109404_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd109432_))
                                         (let* ((_len109434_
                                                 (length _hd109432_))
                                                (_tmp109436_
                                                 (let ((__tmp115696 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp115696))))
                                           (let ((__tmp115715
                                                  (cdr _exprs109401_))
                                                 (__tmp115708
                                                  (let ((__tmp115709
                                                         (lambda (_id109439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r109440_)
                   (if (let () (declare (not safe)) (__AST-e _id109439_))
                       (let ((__tmp115710
                              (let ((__tmp115714
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id109439_)))
                                    (__tmp115711
                                     (let ((__tmp115712
                                            (let ((__tmp115713
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp115713))))
                                       (declare (not safe))
                                       (cons __tmp115712 '()))))
                                (declare (not safe))
                                (cons __tmp115714 __tmp115711))))
                         (declare (not safe))
                         (cons __tmp115710 _r109440_))
                       _r109440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp115709
                                                            _pre109402_
                                                            _hd109432_)))
                                                 (__tmp115704
                                                  (let ((__tmp115705
                                                         (let ((__tmp115706
                                                                (let ((__tmp115707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs109401_)))
                          (declare (not safe))
                          (cons __tmp115707 '()))))
                   (declare (not safe))
                   (cons _tmp109436_ __tmp115706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115705
                                                          _bind109403_)))
                                                 (__tmp115697
                                                  (let ((__tmp115698
                                                         (let ((__tmp115699
                                                                (let ((__tmp115700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115702
                                      (lambda (_id109442_ _k109443_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id109442_))
                                            (let ((__tmp115703
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id109442_))))
                                              (declare (not safe))
                                              (cons __tmp115703 _k109443_))
                                            '#f)))
                                     (__tmp115701
                                      (let ()
                                        (declare (not safe))
                                        (iota _len109434_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp115702
                                  _hd109432_
                                  __tmp115701))))
                          (declare (not safe))
                          (cons _len109434_ __tmp115700))))
                   (declare (not safe))
                   (cons _tmp109436_ __tmp115699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115698
                                                          _post109404_))))
                                             (declare (not safe))
                                             (_lp109398_
                                              _rest109431_
                                              __tmp115715
                                              __tmp115708
                                              __tmp115704
                                              __tmp115697)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx109284_
                                            _hd109432_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109405109419_))
                              (let ((_tl109415109468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109405109419_)))
                                    (_hd109414109466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109405109419_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109414109466_))
                                    (let ((_tl109417109473_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109414109466_)))
                                          (_hd109416109471_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109414109466_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109417109473_))
                                          (let ((_id109476_ _hd109416109471_)
                                                (_rest109478_
                                                 _tl109415109468_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109413109463_
                                               _rest109478_
                                               _id109476_)))
                                          (let ((_hd109453_ _hd109414109466_)
                                                (_rest109455_
                                                 _tl109415109468_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109410109445_
                                               _rest109455_
                                               _hd109453_)))))
                                    (let ((_hd109453_ _hd109414109466_)
                                          (_rest109455_ _tl109415109468_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109410109445_
                                         _rest109455_
                                         _hd109453_)))))
                              (let ()
                                (declare (not safe))
                                (_else109408109427_))))))))
                 (_compile-inner109288_
                  (lambda (_pre109389_ _bind109390_ _post109391_ _body109392_)
                    (if (let () (declare (not safe)) (null? _pre109389_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind109289_
                           _bind109390_
                           _post109391_
                           _body109392_))
                        (let ((__tmp115716
                               (let ((__tmp115717
                                      (let ((__tmp115720 (reverse _pre109389_))
                                            (__tmp115718
                                             (let ((__tmp115719
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind109289_
                                                       _bind109390_
                                                       _post109391_
                                                       _body109392_))))
                                               (declare (not safe))
                                               (cons __tmp115719 '()))))
                                        (declare (not safe))
                                        (cons __tmp115720 __tmp115718))))
                                 (declare (not safe))
                                 (cons 'let __tmp115717))))
                          (declare (not safe))
                          (__SRC__% __tmp115716 _stx109284_)))))
                 (_compile-bind109289_
                  (lambda (_bind109385_ _post109386_ _body109387_)
                    (let ((__tmp115721
                           (let ((__tmp115722
                                  (let ((__tmp115725 (reverse _bind109385_))
                                        (__tmp115723
                                         (let ((__tmp115724
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109290_
                                                   _post109386_
                                                   _body109387_))))
                                           (declare (not safe))
                                           (cons __tmp115724 '()))))
                                    (declare (not safe))
                                    (cons __tmp115725 __tmp115723))))
                             (declare (not safe))
                             (cons 'letrec __tmp115722))))
                      (declare (not safe))
                      (__SRC__% __tmp115721 _stx109284_))))
                 (_compile-post109290_
                  (lambda (_post109292_ _body109293_)
                    (let _lp109295_ ((_rest109297_ _post109292_)
                                     (_check109298_ '())
                                     (_bind109299_ '()))
                      (let* ((_rest109300109312_ _rest109297_)
                             (_else109302109320_
                              (lambda ()
                                (let ((__tmp115726
                                       (let ((__tmp115727
                                              (let ((__tmp115728
                                                     (let ((__tmp115729
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body109293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp115729 _bind109299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp115728
                                                        _check109298_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp115727))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115726 _stx109284_))))
                             (_K109304109359_
                              (lambda (_rest109323_
                                       _init109324_
                                       _len109325_
                                       _tmp109326_)
                                (let ((__tmp115738
                                       (let ((__tmp115739
                                              (let ((__tmp115740
                                                     (let ((__tmp115741
                                                            (let ((__tmp115742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109325_ '()))))
                      (declare (not safe))
                      (cons _tmp109326_ __tmp115742))))
               (declare (not safe))
               (cons '__check-values __tmp115741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115740
                                                 _stx109284_))))
                                         (declare (not safe))
                                         (cons __tmp115739 _check109298_)))
                                      (__tmp115730
                                       (let ((__tmp115731
                                              (lambda (_hd109328_ _r109329_)
                                                (let* ((_hd109330109337_
                                                        _hd109328_)
                                                       (_E109332109341_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109330109337_)))
               (_K109333109347_
                (lambda (_k109344_ _id109345_)
                  (let ((__tmp115732
                         (let ((__tmp115733
                                (let ((__tmp115734
                                       (let ((__tmp115735
                                              (let ((__tmp115736
                                                     (let ((__tmp115737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k109344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp109326_ __tmp115737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115736))))
                                         (declare (not safe))
                                         (cons __tmp115735 '()))))
                                  (declare (not safe))
                                  (cons _id109345_ __tmp115734))))
                           (declare (not safe))
                           (cons 'set! __tmp115733))))
                    (declare (not safe))
                    (cons __tmp115732 _r109329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109330109337_))
                                                      (let ((_hd109334109350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109330109337_)))
                    (_tl109335109352_
                     (let () (declare (not safe)) (##cdr _hd109330109337_))))
                (let* ((_id109355_ _hd109334109350_)
                       (_k109357_ _tl109335109352_))
                  (declare (not safe))
                  (_K109333109347_ _k109357_ _id109355_)))
              (let () (declare (not safe)) (_E109332109341_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp115731
                                                 _bind109299_
                                                 _init109324_))))
                                  (declare (not safe))
                                  (_lp109295_
                                   _rest109323_
                                   __tmp115738
                                   __tmp115730)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109300109312_))
                            (let ((_hd109305109362_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109300109312_)))
                                  (_tl109306109364_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109300109312_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd109305109362_))
                                  (let ((_hd109307109367_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd109305109362_)))
                                        (_tl109308109369_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd109305109362_))))
                                    (let ((_tmp109372_ _hd109307109367_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl109308109369_))
                                          (let ((_hd109309109374_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl109308109369_)))
                                                (_tl109310109376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl109308109369_))))
                                            (let* ((_len109379_
                                                    _hd109309109374_)
                                                   (_init109381_
                                                    _tl109310109376_)
                                                   (_rest109383_
                                                    _tl109306109364_))
                                              (declare (not safe))
                                              (_K109304109359_
                                               _rest109383_
                                               _init109381_
                                               _len109379_
                                               _tmp109372_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109302109320_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else109302109320_))))
                            (let ()
                              (declare (not safe))
                              (_else109302109320_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109284_
             _compile-simple109286_
             _compile-values109287_)))))
    (define __compile-letrec*-values%
      (lambda (_stx109039_)
        (letrec ((_compile-simple109041_
                  (lambda (_hd-ids109280_ _exprs109281_ _body109282_)
                    (let ((__tmp115743
                           (let ((__tmp115744
                                  (let ((__tmp115746
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109280_)
                                              _exprs109281_))
                                        (__tmp115745
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109282_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115746 __tmp115745))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115744))))
                      (declare (not safe))
                      (__SRC__% __tmp115743 _stx109039_))))
                 (_compile-values109042_
                  (lambda (_hd-ids109191_ _exprs109192_ _body109193_)
                    (let _lp109195_ ((_rest109197_ _hd-ids109191_)
                                     (_exprs109198_ _exprs109192_)
                                     (_bind109199_ '())
                                     (_post109200_ '()))
                      (let* ((_rest109201109215_ _rest109197_)
                             (_else109204109223_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind109043_
                                   _bind109199_
                                   _post109200_
                                   _body109193_)))))
                        (let ((_K109209109263_
                               (lambda (_rest109258_ _hd109259_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109259_))
                                     (let ((_id109261_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109259_))))
                                       (let ((__tmp115756 (cdr _exprs109198_))
                                             (__tmp115751
                                              (let ((__tmp115752
                                                     (let ((__tmp115753
                                                            (let ((__tmp115754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115755
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115755))))
                      (declare (not safe))
                      (cons __tmp115754 '()))))
               (declare (not safe))
               (cons _id109261_ __tmp115753))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115752
                                                      _bind109199_)))
                                             (__tmp115747
                                              (let ((__tmp115748
                                                     (let ((__tmp115749
                                                            (let ((__tmp115750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs109198_)))
                      (declare (not safe))
                      (cons __tmp115750 '()))))
               (declare (not safe))
               (cons _id109261_ __tmp115749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115748
                                                      _post109200_))))
                                         (declare (not safe))
                                         (_lp109195_
                                          _rest109258_
                                          __tmp115756
                                          __tmp115751
                                          __tmp115747)))
                                     (let ((__tmp115761 (cdr _exprs109198_))
                                           (__tmp115757
                                            (let ((__tmp115758
                                                   (let ((__tmp115759
                                                          (let ((__tmp115760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs109198_)))
                    (declare (not safe))
                    (cons __tmp115760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115759))))
                                              (declare (not safe))
                                              (cons __tmp115758
                                                    _post109200_))))
                                       (declare (not safe))
                                       (_lp109195_
                                        _rest109258_
                                        __tmp115761
                                        _bind109199_
                                        __tmp115757)))))
                              (_K109206109243_
                               (lambda (_rest109227_ _hd109228_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109228_))
                                     (let ((_id109230_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109228_))))
                                       (let ((__tmp115773 (cdr _exprs109198_))
                                             (__tmp115768
                                              (let ((__tmp115769
                                                     (let ((__tmp115770
                                                            (let ((__tmp115771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115772
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115772))))
                      (declare (not safe))
                      (cons __tmp115771 '()))))
               (declare (not safe))
               (cons _id109230_ __tmp115770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115769
                                                      _bind109199_)))
                                             (__tmp115762
                                              (let ((__tmp115763
                                                     (let ((__tmp115764
                                                            (let ((__tmp115765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115766
                                  (let ((__tmp115767 (car _exprs109198_)))
                                    (declare (not safe))
                                    (cons __tmp115767 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115766))))
                      (declare (not safe))
                      (cons __tmp115765 '()))))
               (declare (not safe))
               (cons _id109230_ __tmp115764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115763
                                                      _post109200_))))
                                         (declare (not safe))
                                         (_lp109195_
                                          _rest109227_
                                          __tmp115773
                                          __tmp115768
                                          __tmp115762)))
                                     (if (let ((__tmp115774
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd109228_))))
                                           (declare (not safe))
                                           (not __tmp115774))
                                         (let ((__tmp115779
                                                (cdr _exprs109198_))
                                               (__tmp115775
                                                (let ((__tmp115776
                                                       (let ((__tmp115777
                                                              (let ((__tmp115778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs109198_)))
                        (declare (not safe))
                        (cons __tmp115778 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115777))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115776
                                                        _post109200_))))
                                           (declare (not safe))
                                           (_lp109195_
                                            _rest109227_
                                            __tmp115779
                                            _bind109199_
                                            __tmp115775))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd109228_))
                                             (let* ((_len109232_
                                                     (length _hd109228_))
                                                    (_tmp109234_
                                                     (let ((__tmp115780
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115780))))
                                               (let ((__tmp115797
                                                      (cdr _exprs109198_))
                                                     (__tmp115790
                                                      (let ((__tmp115791
                                                             (lambda (_id109237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r109238_)
                       (if (let () (declare (not safe)) (__AST-e _id109237_))
                           (let ((__tmp115792
                                  (let ((__tmp115796
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109237_)))
                                        (__tmp115793
                                         (let ((__tmp115794
                                                (let ((__tmp115795
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115795))))
                                           (declare (not safe))
                                           (cons __tmp115794 '()))))
                                    (declare (not safe))
                                    (cons __tmp115796 __tmp115793))))
                             (declare (not safe))
                             (cons __tmp115792 _r109238_))
                           _r109238_))))
                (declare (not safe))
                (foldl1 __tmp115791 _bind109199_ _hd109228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115781
                                                      (let ((__tmp115782
                                                             (let ((__tmp115783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115789 (car _exprs109198_))
                                  (__tmp115784
                                   (let ((__tmp115785
                                          (let ((__tmp115787
                                                 (lambda (_id109240_ _k109241_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id109240_))
                                                       (let ((__tmp115788
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id109240_))))
                 (declare (not safe))
                 (cons __tmp115788 _k109241_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115786
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len109232_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115787
                                             _hd109228_
                                             __tmp115786))))
                                     (declare (not safe))
                                     (cons _len109232_ __tmp115785))))
                              (declare (not safe))
                              (cons __tmp115789 __tmp115784))))
                       (declare (not safe))
                       (cons _tmp109234_ __tmp115783))))
                (declare (not safe))
                (cons __tmp115782 _post109200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp109195_
                                                  _rest109227_
                                                  __tmp115797
                                                  __tmp115790
                                                  __tmp115781)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx109039_
                                                _hd109228_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109201109215_))
                              (let ((_tl109211109268_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109201109215_)))
                                    (_hd109210109266_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109201109215_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109210109266_))
                                    (let ((_tl109213109273_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109210109266_)))
                                          (_hd109212109271_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109210109266_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109213109273_))
                                          (let ((_hd109276_ _hd109212109271_)
                                                (_rest109278_
                                                 _tl109211109268_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109209109263_
                                               _rest109278_
                                               _hd109276_)))
                                          (let ((_hd109251_ _hd109210109266_)
                                                (_rest109253_
                                                 _tl109211109268_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109206109243_
                                               _rest109253_
                                               _hd109251_)))))
                                    (let ((_hd109251_ _hd109210109266_)
                                          (_rest109253_ _tl109211109268_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109206109243_
                                         _rest109253_
                                         _hd109251_)))))
                              (let ()
                                (declare (not safe))
                                (_else109204109223_))))))))
                 (_compile-bind109043_
                  (lambda (_bind109187_ _post109188_ _body109189_)
                    (let ((__tmp115798
                           (let ((__tmp115799
                                  (let ((__tmp115802 (reverse _bind109187_))
                                        (__tmp115800
                                         (let ((__tmp115801
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109044_
                                                   _post109188_
                                                   _body109189_))))
                                           (declare (not safe))
                                           (cons __tmp115801 '()))))
                                    (declare (not safe))
                                    (cons __tmp115802 __tmp115800))))
                             (declare (not safe))
                             (cons 'let __tmp115799))))
                      (declare (not safe))
                      (__SRC__% __tmp115798 _stx109039_))))
                 (_compile-post109044_
                  (lambda (_post109046_ _body109047_)
                    (let ((__tmp115803
                           (let ((__tmp115804
                                  (let ((__tmp115805
                                         (let ((__tmp115807
                                                (lambda (_hd109049_ _r109050_)
                                                  (let* ((_hd109051109074_
                                                          _hd109049_)
                                                         (_E109055109078_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd109051109074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K109068109172_
                                                           (lambda (_expr109170_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr109170_ _r109050_))))
                  (_K109063109150_
                   (lambda (_expr109147_ _id109148_)
                     (let ((__tmp115808
                            (let ((__tmp115809
                                   (let ((__tmp115810
                                          (let ((__tmp115811
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr109147_ '()))))
                                            (declare (not safe))
                                            (cons _id109148_ __tmp115811))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115810))))
                              (declare (not safe))
                              (__SRC__% __tmp115809 _stx109039_))))
                       (declare (not safe))
                       (cons __tmp115808 _r109050_))))
                  (_K109056109117_
                   (lambda (_init109082_ _len109083_ _expr109084_ _tmp109085_)
                     (let ((__tmp115812
                            (let ((__tmp115813
                                   (let ((__tmp115814
                                          (let ((__tmp115828
                                                 (let ((__tmp115829
                                                        (let ((__tmp115830
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr109084_ '()))))
                  (declare (not safe))
                  (cons _tmp109085_ __tmp115830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115829 '())))
                                                (__tmp115815
                                                 (let ((__tmp115824
                                                        (let ((__tmp115825
                                                               (let ((__tmp115826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115827
                                     (let ()
                                       (declare (not safe))
                                       (cons _len109083_ '()))))
                                (declare (not safe))
                                (cons _tmp109085_ __tmp115827))))
                         (declare (not safe))
                         (cons '__check-values __tmp115826))))
                  (declare (not safe))
                  (__SRC__% __tmp115825 _stx109039_)))
               (__tmp115816
                (let ((__tmp115817
                       (map (lambda (_hd109087_)
                              (let* ((_hd109088109095_ _hd109087_)
                                     (_E109090109099_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd109088109095_)))
                                     (_K109091109105_
                                      (lambda (_k109102_ _id109103_)
                                        (let ((__tmp115818
                                               (let ((__tmp115819
                                                      (let ((__tmp115820
                                                             (let ((__tmp115821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115822
                                   (let ((__tmp115823
                                          (let ()
                                            (declare (not safe))
                                            (cons _k109102_ '()))))
                                     (declare (not safe))
                                     (cons _tmp109085_ __tmp115823))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115822))))
                       (declare (not safe))
                       (cons __tmp115821 '()))))
                (declare (not safe))
                (cons _id109103_ __tmp115820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115819))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115818
                                           _stx109039_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109088109095_))
                                    (let ((_hd109092109108_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109088109095_)))
                                          (_tl109093109110_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109088109095_))))
                                      (let* ((_id109113_ _hd109092109108_)
                                             (_k109115_ _tl109093109110_))
                                        (declare (not safe))
                                        (_K109091109105_
                                         _k109115_
                                         _id109113_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E109090109099_)))))
                            _init109082_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115824
                                                         __tmp115816))))
                                            (declare (not safe))
                                            (cons __tmp115828 __tmp115815))))
                                     (declare (not safe))
                                     (cons 'let __tmp115814))))
                              (declare (not safe))
                              (__SRC__% __tmp115813 _stx109039_))))
                       (declare (not safe))
                       (cons __tmp115812 _r109050_)))))
              (if (let () (declare (not safe)) (##pair? _hd109051109074_))
                  (let ((_tl109070109177_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd109051109074_)))
                        (_hd109069109175_
                         (let ()
                           (declare (not safe))
                           (##car _hd109051109074_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd109069109175_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109070109177_))
                            (let ((_tl109072109182_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109070109177_)))
                                  (_hd109071109180_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109070109177_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109072109182_))
                                  (let ((_expr109185_ _hd109071109180_))
                                    (declare (not safe))
                                    (_K109068109172_ _expr109185_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109072109182_))
                                      (let ((_tl109062109136_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109072109182_)))
                                            (_hd109061109134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109072109182_))))
                                        (let ((_tmp109125_ _hd109069109175_)
                                              (_expr109132_ _hd109071109180_)
                                              (_len109139_ _hd109061109134_)
                                              (_init109141_ _tl109062109136_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109056109117_
                                             _init109141_
                                             _len109139_
                                             _expr109132_
                                             _tmp109125_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109055109078_)))))
                            (let () (declare (not safe)) (_E109055109078_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109070109177_))
                            (let ((_tl109067109162_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109070109177_)))
                                  (_hd109066109160_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109070109177_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109067109162_))
                                  (let ((_id109158_ _hd109069109175_)
                                        (_expr109165_ _hd109066109160_))
                                    (let ()
                                      (declare (not safe))
                                      (_K109063109150_
                                       _expr109165_
                                       _id109158_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109067109162_))
                                      (let ((_tl109062109136_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109067109162_)))
                                            (_hd109061109134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109067109162_))))
                                        (let ((_tmp109125_ _hd109069109175_)
                                              (_expr109132_ _hd109066109160_)
                                              (_len109139_ _hd109061109134_)
                                              (_init109141_ _tl109062109136_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109056109117_
                                             _init109141_
                                             _len109139_
                                             _expr109132_
                                             _tmp109125_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109055109078_)))))
                            (let () (declare (not safe)) (_E109055109078_)))))
                  (let () (declare (not safe)) (_E109055109078_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115806
                                                (list _body109047_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115807
                                                   __tmp115806
                                                   _post109046_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115805))))
                             (declare (not safe))
                             (cons 'begin __tmp115804))))
                      (declare (not safe))
                      (__SRC__% __tmp115803 _stx109039_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109039_
             _compile-simple109041_
             _compile-values109042_)))))
    (define __compile-call%
      (lambda (_stx108999_)
        (let* ((_$e109001_ _stx108999_)
               (_$E109003109012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109001_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109001_))
              (let* ((_$tgt109004109015_
                      (let () (declare (not safe)) (__AST-e _$e109001_)))
                     (_$hd109005109018_
                      (let () (declare (not safe)) (##car _$tgt109004109015_)))
                     (_$tl109006109021_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109004109015_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109006109021_))
                    (let* ((_$tgt109007109025_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109006109021_)))
                           (_$hd109008109028_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109007109025_)))
                           (_$tl109009109031_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109007109025_))))
                      (let* ((_rator109035_ _$hd109008109028_)
                             (_rands109037_ _$tl109009109031_)
                             (__tmp115831
                              (let ((__tmp115833
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator109035_)))
                                    (__tmp115832
                                     (map __compile _rands109037_)))
                                (declare (not safe))
                                (cons __tmp115833 __tmp115832))))
                        (declare (not safe))
                        (__SRC__% __tmp115831 _stx108999_)))
                    (let () (declare (not safe)) (_$E109003109012_))))
              (let () (declare (not safe)) (_$E109003109012_))))))
    (define __compile-ref%
      (lambda (_stx108961_)
        (let* ((_$e108963_ _stx108961_)
               (_$E108965108974_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108963_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108963_))
              (let* ((_$tgt108966108977_
                      (let () (declare (not safe)) (__AST-e _$e108963_)))
                     (_$hd108967108980_
                      (let () (declare (not safe)) (##car _$tgt108966108977_)))
                     (_$tl108968108983_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108966108977_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108968108983_))
                    (let* ((_$tgt108969108987_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108968108983_)))
                           (_$hd108970108990_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108969108987_)))
                           (_$tl108971108993_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108969108987_))))
                      (let ((_id108997_ _$hd108970108990_))
                        (if (let ((__tmp115834
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108971108993_))))
                              (declare (not safe))
                              (equal? __tmp115834 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108997_ _stx108961_))
                            (let () (declare (not safe)) (_$E108965108974_)))))
                    (let () (declare (not safe)) (_$E108965108974_))))
              (let () (declare (not safe)) (_$E108965108974_))))))
    (define __compile-setq%
      (lambda (_stx108908_)
        (let* ((_$e108910_ _stx108908_)
               (_$E108912108924_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108910_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108910_))
              (let* ((_$tgt108913108927_
                      (let () (declare (not safe)) (__AST-e _$e108910_)))
                     (_$hd108914108930_
                      (let () (declare (not safe)) (##car _$tgt108913108927_)))
                     (_$tl108915108933_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108913108927_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108915108933_))
                    (let* ((_$tgt108916108937_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108915108933_)))
                           (_$hd108917108940_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108916108937_)))
                           (_$tl108918108943_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108916108937_))))
                      (let ((_id108947_ _$hd108917108940_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108918108943_))
                            (let* ((_$tgt108919108949_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108918108943_)))
                                   (_$hd108920108952_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108919108949_)))
                                   (_$tl108921108955_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108919108949_))))
                              (let ((_expr108959_ _$hd108920108952_))
                                (if (let ((__tmp115835
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108921108955_))))
                                      (declare (not safe))
                                      (equal? __tmp115835 '()))
                                    (let ((__tmp115836
                                           (let ((__tmp115837
                                                  (let ((__tmp115840
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108947_
                                                            _stx108908_)))
                                                        (__tmp115838
                                                         (let ((__tmp115839
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108959_))))
                   (declare (not safe))
                   (cons __tmp115839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115840
                                                          __tmp115838))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115837))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115836 _stx108908_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108912108924_)))))
                            (let () (declare (not safe)) (_$E108912108924_)))))
                    (let () (declare (not safe)) (_$E108912108924_))))
              (let () (declare (not safe)) (_$E108912108924_))))))
    (define __compile-if%
      (lambda (_stx108840_)
        (let* ((_$e108842_ _stx108840_)
               (_$E108844108859_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108842_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108842_))
              (let* ((_$tgt108845108862_
                      (let () (declare (not safe)) (__AST-e _$e108842_)))
                     (_$hd108846108865_
                      (let () (declare (not safe)) (##car _$tgt108845108862_)))
                     (_$tl108847108868_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108845108862_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108847108868_))
                    (let* ((_$tgt108848108872_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108847108868_)))
                           (_$hd108849108875_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108848108872_)))
                           (_$tl108850108878_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108848108872_))))
                      (let ((_p108882_ _$hd108849108875_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108850108878_))
                            (let* ((_$tgt108851108884_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108850108878_)))
                                   (_$hd108852108887_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108851108884_)))
                                   (_$tl108853108890_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108851108884_))))
                              (let ((_t108894_ _$hd108852108887_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108853108890_))
                                    (let* ((_$tgt108854108896_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108853108890_)))
                                           (_$hd108855108899_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108854108896_)))
                                           (_$tl108856108902_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108854108896_))))
                                      (let ((_f108906_ _$hd108855108899_))
                                        (if (let ((__tmp115841
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108856108902_))))
                                              (declare (not safe))
                                              (equal? __tmp115841 '()))
                                            (let ((__tmp115842
                                                   (let ((__tmp115843
                                                          (let ((__tmp115848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108882_)))
                        (__tmp115844
                         (let ((__tmp115847
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108894_)))
                               (__tmp115845
                                (let ((__tmp115846
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108906_))))
                                  (declare (not safe))
                                  (cons __tmp115846 '()))))
                           (declare (not safe))
                           (cons __tmp115847 __tmp115845))))
                    (declare (not safe))
                    (cons __tmp115848 __tmp115844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115843))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115842
                                               _stx108840_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108844108859_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108844108859_)))))
                            (let () (declare (not safe)) (_$E108844108859_)))))
                    (let () (declare (not safe)) (_$E108844108859_))))
              (let () (declare (not safe)) (_$E108844108859_))))))
    (define __compile-quote%
      (lambda (_stx108802_)
        (let* ((_$e108804_ _stx108802_)
               (_$E108806108815_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108804_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108804_))
              (let* ((_$tgt108807108818_
                      (let () (declare (not safe)) (__AST-e _$e108804_)))
                     (_$hd108808108821_
                      (let () (declare (not safe)) (##car _$tgt108807108818_)))
                     (_$tl108809108824_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108807108818_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108809108824_))
                    (let* ((_$tgt108810108828_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108809108824_)))
                           (_$hd108811108831_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108810108828_)))
                           (_$tl108812108834_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108810108828_))))
                      (let ((_e108838_ _$hd108811108831_))
                        (if (let ((__tmp115849
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108812108834_))))
                              (declare (not safe))
                              (equal? __tmp115849 '()))
                            (let ((__tmp115850
                                   (let ((__tmp115851
                                          (let ((__tmp115852
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108838_))))
                                            (declare (not safe))
                                            (cons __tmp115852 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115851))))
                              (declare (not safe))
                              (__SRC__% __tmp115850 _stx108802_))
                            (let () (declare (not safe)) (_$E108806108815_)))))
                    (let () (declare (not safe)) (_$E108806108815_))))
              (let () (declare (not safe)) (_$E108806108815_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108764_)
        (let* ((_$e108766_ _stx108764_)
               (_$E108768108777_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108766_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108766_))
              (let* ((_$tgt108769108780_
                      (let () (declare (not safe)) (__AST-e _$e108766_)))
                     (_$hd108770108783_
                      (let () (declare (not safe)) (##car _$tgt108769108780_)))
                     (_$tl108771108786_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108769108780_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108771108786_))
                    (let* ((_$tgt108772108790_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108771108786_)))
                           (_$hd108773108793_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108772108790_)))
                           (_$tl108774108796_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108772108790_))))
                      (let ((_e108800_ _$hd108773108793_))
                        (if (let ((__tmp115853
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108774108796_))))
                              (declare (not safe))
                              (equal? __tmp115853 '()))
                            (let ((__tmp115854
                                   (let ((__tmp115855
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108800_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115855))))
                              (declare (not safe))
                              (__SRC__% __tmp115854 _stx108764_))
                            (let () (declare (not safe)) (_$E108768108777_)))))
                    (let () (declare (not safe)) (_$E108768108777_))))
              (let () (declare (not safe)) (_$E108768108777_))))))
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
