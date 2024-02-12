(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707742539)
  (begin
    (define __context::t
      (let ((__tmp114725 (list))
            (__tmp114723
             (let ((__tmp114724
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114724 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114725
         '(t ns super table)
         __tmp114723
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109959_ (apply make-instance __context::t _$args109959_)))
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
      (let ((__tmp114728 (list))
            (__tmp114726
             (let ((__tmp114727
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114727 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114728
         '(id)
         __tmp114726
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109956_ (apply make-instance __runtime::t _$args109956_)))
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
      (let ((__tmp114731 (list))
            (__tmp114729
             (let ((__tmp114730
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114730 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114731
         '(e id)
         __tmp114729
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109953_ (apply make-instance __syntax::t _$args109953_)))
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
      (let ((__tmp114734 (list __syntax::t))
            (__tmp114732
             (let ((__tmp114733
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114733 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114734
         '()
         __tmp114732
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109950_ (apply make-instance __macro::t _$args109950_)))
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
      (let ((__tmp114737 (list __macro::t))
            (__tmp114735
             (let ((__tmp114736
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114736 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114737
         '()
         __tmp114735
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109947_
        (apply make-instance __special-form::t _$args109947_)))
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
      (let ((__tmp114740 (list __syntax::t))
            (__tmp114738
             (let ((__tmp114739
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114739 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114740
         '()
         __tmp114738
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109944_
        (apply make-instance __core-form::t _$args109944_)))
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
      (let ((__tmp114743 (list __core-form::t))
            (__tmp114741
             (let ((__tmp114742
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114742 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114743
         '()
         __tmp114741
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109941_
        (apply make-instance __core-expression::t _$args109941_)))
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
      (let ((__tmp114746 (list __core-form::t))
            (__tmp114744
             (let ((__tmp114745
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114745 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114746
         '()
         __tmp114744
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109938_
        (apply make-instance __core-special-form::t _$args109938_)))
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
      (let ((__tmp114749 (list __syntax::t))
            (__tmp114747
             (let ((__tmp114748
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114748 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114749
         '()
         __tmp114747
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109935_
        (apply make-instance __struct-info::t _$args109935_)))
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
      (let ((__tmp114752 (list __syntax::t))
            (__tmp114750
             (let ((__tmp114751
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114751 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114752
         '()
         __tmp114750
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109932_ (apply make-instance __feature::t _$args109932_)))
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
      (let ((__tmp114755 (list __context::t))
            (__tmp114753
             (let ((__tmp114754
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114754 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114755
         '(id path import export)
         __tmp114753
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109929_ (apply make-instance __module::t _$args109929_)))
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
      (let ((__tmp114757
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114756
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114757 __tmp114756)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109904_ _ctx109905_)
        (if _ctx109905_
            (let ((_id109907_
                   (let () (declare (not safe)) (__AST-e _id109904_))))
              (let _lp109909_ ((_ctx109911_ _ctx109905_))
                (let ((_$e109913_
                       (table-ref
                        (##structure-ref _ctx109911_ '4 __context::t '#f)
                        _id109907_
                        '#f)))
                  (if _$e109913_
                      (values _$e109913_)
                      (let ((_$e109916_
                             (##structure-ref
                              _ctx109911_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109916_
                            (let ()
                              (declare (not safe))
                              (_lp109909_ _$e109916_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109922_)
        (let ((_ctx109924_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109922_ _ctx109924_))))
    (define __core-resolve
      (lambda _g114759_
        (let ((_g114758_ (let () (declare (not safe)) (##length _g114759_))))
          (cond ((let () (declare (not safe)) (##fx= _g114758_ 1))
                 (apply (lambda (_id109922_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109922_)))
                        _g114759_))
                ((let () (declare (not safe)) (##fx= _g114758_ 2))
                 (apply (lambda (_id109926_ _ctx109927_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109926_ _ctx109927_)))
                        _g114759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114759_))))))
    (define __core-bound-id?__%
      (lambda (_id109887_ _is?109888_)
        (let ((_$e109890_
               (let () (declare (not safe)) (__core-resolve__0 _id109887_))))
          (if _$e109890_ (_is?109888_ _$e109890_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109896_)
        (let ((_is?109898_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109896_ _is?109898_))))
    (define __core-bound-id?
      (lambda _g114761_
        (let ((_g114760_ (let () (declare (not safe)) (##length _g114761_))))
          (cond ((let () (declare (not safe)) (##fx= _g114760_ 1))
                 (apply (lambda (_id109896_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109896_)))
                        _g114761_))
                ((let () (declare (not safe)) (##fx= _g114760_ 2))
                 (apply (lambda (_id109900_ _is?109901_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109900_ _is?109901_)))
                        _g114761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114761_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109870_ _eid109871_ _ctx109872_)
        (if _eid109871_
            (let ((__tmp114764
                   (##structure-ref _ctx109872_ '4 __context::t '#f))
                  (__tmp114763
                   (let () (declare (not safe)) (__AST-e _id109870_)))
                  (__tmp114762
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109871_))))
              (declare (not safe))
              (table-set! __tmp114764 __tmp114763 __tmp114762))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109877_ _eid109878_)
        (let ((_ctx109880_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109877_ _eid109878_ _ctx109880_))))
    (define __core-bind-runtime!
      (lambda _g114766_
        (let ((_g114765_ (let () (declare (not safe)) (##length _g114766_))))
          (cond ((let () (declare (not safe)) (##fx= _g114765_ 2))
                 (apply (lambda (_id109877_ _eid109878_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109877_ _eid109878_)))
                        _g114766_))
                ((let () (declare (not safe)) (##fx= _g114765_ 3))
                 (apply (lambda (_id109882_ _eid109883_ _ctx109884_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109882_
                             _eid109883_
                             _ctx109884_)))
                        _g114766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114766_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109853_ _e109854_ _make109855_)
        (let ((__tmp114767
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109854_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109854_
                   (_make109855_ _e109854_ _id109853_))))
          (declare (not safe))
          (table-set! __*core* _id109853_ __tmp114767))))
    (define __core-bind-syntax!__0
      (lambda (_id109860_ _e109861_)
        (let ((_make109863_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109860_ _e109861_ _make109863_))))
    (define __core-bind-syntax!
      (lambda _g114769_
        (let ((_g114768_ (let () (declare (not safe)) (##length _g114769_))))
          (cond ((let () (declare (not safe)) (##fx= _g114768_ 2))
                 (apply (lambda (_id109860_ _e109861_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109860_ _e109861_)))
                        _g114769_))
                ((let () (declare (not safe)) (##fx= _g114768_ 3))
                 (apply (lambda (_id109865_ _e109866_ _make109867_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109865_
                             _e109866_
                             _make109867_)))
                        _g114769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114769_))))))
    (define __core-bind-macro!
      (lambda (_id109849_ _e109850_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109849_ _e109850_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109846_ _e109847_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109846_ _e109847_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109830_ _e109831_ _ctx109832_)
        (let ((__tmp114773 (##structure-ref _ctx109832_ '4 __context::t '#f))
              (__tmp114772 (let () (declare (not safe)) (__AST-e _id109830_)))
              (__tmp114770
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109831_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109831_
                   (let ((__tmp114771
                          (let () (declare (not safe)) (__AST-e _id109830_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109831_ __tmp114771)))))
          (declare (not safe))
          (table-set! __tmp114773 __tmp114772 __tmp114770))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109837_ _e109838_)
        (let ((_ctx109840_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109837_ _e109838_ _ctx109840_))))
    (define __core-bind-user-syntax!
      (lambda _g114775_
        (let ((_g114774_ (let () (declare (not safe)) (##length _g114775_))))
          (cond ((let () (declare (not safe)) (##fx= _g114774_ 2))
                 (apply (lambda (_id109837_ _e109838_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109837_
                             _e109838_)))
                        _g114775_))
                ((let () (declare (not safe)) (##fx= _g114774_ 3))
                 (apply (lambda (_id109842_ _e109843_ _ctx109844_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109842_
                             _e109843_
                             _ctx109844_)))
                        _g114775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114775_))))))
    (define make-__runtime-id__%
      (lambda (_id109811_ _ctx109812_)
        (let ((_id109814_ (let () (declare (not safe)) (__AST-e _id109811_))))
          (if (let () (declare (not safe)) (eq? _id109814_ '_))
              '#f
              (if (uninterned-symbol? _id109814_)
                  (gensym _id109814_)
                  (if (let () (declare (not safe)) (symbol? _id109814_))
                      (let ((_$e109816_
                             (##structure-ref
                              _ctx109812_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109816_))
                            (gensym _id109814_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109816_))
                                (let ((__tmp114776
                                       (##structure-ref
                                        _ctx109812_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114776 '"#" _id109814_))
                                _id109814_)))
                      (error '"Illegal runtime identifier" _id109814_)))))))
    (define make-__runtime-id__0
      (lambda (_id109822_)
        (let ((_ctx109824_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109822_ _ctx109824_))))
    (define make-__runtime-id
      (lambda _g114778_
        (let ((_g114777_ (let () (declare (not safe)) (##length _g114778_))))
          (cond ((let () (declare (not safe)) (##fx= _g114777_ 1))
                 (apply (lambda (_id109822_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109822_)))
                        _g114778_))
                ((let () (declare (not safe)) (##fx= _g114777_ 2))
                 (apply (lambda (_id109826_ _ctx109827_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109826_ _ctx109827_)))
                        _g114778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114778_))))))
    (define make-__context-local__%
      (lambda (_super109800_)
        (let ((__tmp114779
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109800_ __tmp114779))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109806_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109806_))))
    (define make-__context-local
      (lambda _g114781_
        (let ((_g114780_ (let () (declare (not safe)) (##length _g114781_))))
          (cond ((let () (declare (not safe)) (##fx= _g114780_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114781_))
                ((let () (declare (not safe)) (##fx= _g114780_ 1))
                 (apply (lambda (_super109808_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109808_)))
                        _g114781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114781_))))))
    (define make-__context-module__%
      (lambda (_id109780_ _ns109781_ _path109782_ _super109783_)
        (let ((__tmp114782
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109781_
           _super109783_
           __tmp114782
           _id109780_
           _path109782_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109788_ _ns109789_ _path109790_)
        (let ((_super109792_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109788_
           _ns109789_
           _path109790_
           _super109792_))))
    (define make-__context-module
      (lambda _g114784_
        (let ((_g114783_ (let () (declare (not safe)) (##length _g114784_))))
          (cond ((let () (declare (not safe)) (##fx= _g114783_ 3))
                 (apply (lambda (_id109788_ _ns109789_ _path109790_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109788_
                             _ns109789_
                             _path109790_)))
                        _g114784_))
                ((let () (declare (not safe)) (##fx= _g114783_ 4))
                 (apply (lambda (_id109794_
                                 _ns109795_
                                 _path109796_
                                 _super109797_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109794_
                             _ns109795_
                             _path109796_
                             _super109797_)))
                        _g114784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114784_))))))
    (define __SRC__%
      (lambda (_e109763_ _src-stx109764_)
        (if (or (let () (declare (not safe)) (pair? _e109763_))
                (let () (declare (not safe)) (symbol? _e109763_)))
            (let ((__tmp114788
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109764_
                          'gerbil#AST::t))
                       (let ((__tmp114789
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109764_))))
                         (declare (not safe))
                         (__locat __tmp114789))
                       '#f)))
              (declare (not safe))
              (##make-source _e109763_ __tmp114788))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109763_ 'gerbil#AST::t))
                (let ((__tmp114787
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109763_ '1 AST::t '#f)))
                      (__tmp114785
                       (let ((__tmp114786
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109763_))))
                         (declare (not safe))
                         (__locat __tmp114786))))
                  (declare (not safe))
                  (##make-source __tmp114787 __tmp114785))
                (error '"BUG! Cannot sourcify object" _e109763_)))))
    (define __SRC__0
      (lambda (_e109772_)
        (let ((_src-stx109774_ '#f))
          (declare (not safe))
          (__SRC__% _e109772_ _src-stx109774_))))
    (define __SRC
      (lambda _g114791_
        (let ((_g114790_ (let () (declare (not safe)) (##length _g114791_))))
          (cond ((let () (declare (not safe)) (##fx= _g114790_ 1))
                 (apply (lambda (_e109772_)
                          (let () (declare (not safe)) (__SRC__0 _e109772_)))
                        _g114791_))
                ((let () (declare (not safe)) (##fx= _g114790_ 2))
                 (apply (lambda (_e109776_ _src-stx109777_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109776_ _src-stx109777_)))
                        _g114791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114791_))))))
    (define __locat
      (lambda (_loc109760_)
        (if (let () (declare (not safe)) (##locat? _loc109760_))
            _loc109760_
            '#f)))
    (define __check-values
      (lambda (_obj109755_ _k109756_)
        (let ((_count109758_
               (if (let () (declare (not safe)) (##values? _obj109755_))
                   (let () (declare (not safe)) (##vector-length _obj109755_))
                   '1)))
          (if (fx= _count109758_ _k109756_)
              '#!void
              (error (if (fx< _count109758_ _k109756_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109755_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109755_))
                         _obj109755_)
                     _k109756_)))))
    (define __compile
      (lambda (_stx109725_)
        (let* ((_$e109727_ _stx109725_)
               (_$E109729109735_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109727_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109727_))
              (let* ((_$tgt109730109738_
                      (let () (declare (not safe)) (__AST-e _$e109727_)))
                     (_$hd109731109741_
                      (let () (declare (not safe)) (##car _$tgt109730109738_)))
                     (_$tl109732109744_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109730109738_))))
                (let* ((_form109748_ _$hd109731109741_)
                       (_$e109750_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109748_))))
                  (if _$e109750_
                      ((lambda (_bind109753_)
                         ((##structure-ref _bind109753_ '1 __syntax::t '#f)
                          _stx109725_))
                       _$e109750_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109725_
                         _form109748_)))))
              (let () (declare (not safe)) (_$E109729109735_))))))
    (define __compile-error__%
      (lambda (_stx109712_ _detail109713_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109712_
           _detail109713_))))
    (define __compile-error__0
      (lambda (_stx109718_)
        (let ((_detail109720_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109718_ _detail109720_))))
    (define __compile-error
      (lambda _g114793_
        (let ((_g114792_ (let () (declare (not safe)) (##length _g114793_))))
          (cond ((let () (declare (not safe)) (##fx= _g114792_ 1))
                 (apply (lambda (_stx109718_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109718_)))
                        _g114793_))
                ((let () (declare (not safe)) (##fx= _g114792_ 2))
                 (apply (lambda (_stx109722_ _detail109723_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109722_ _detail109723_)))
                        _g114793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114793_))))))
    (define __compile-ignore%
      (lambda (_stx109709_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109709_))))
    (define __compile-begin%
      (lambda (_stx109684_)
        (let* ((_$e109686_ _stx109684_)
               (_$E109688109694_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109686_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109686_))
              (let* ((_$tgt109689109697_
                      (let () (declare (not safe)) (__AST-e _$e109686_)))
                     (_$hd109690109700_
                      (let () (declare (not safe)) (##car _$tgt109689109697_)))
                     (_$tl109691109703_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109689109697_))))
                (let* ((_body109707_ _$tl109691109703_)
                       (__tmp114794
                        (let ((__tmp114795 (map __compile _body109707_)))
                          (declare (not safe))
                          (cons 'begin __tmp114795))))
                  (declare (not safe))
                  (__SRC__% __tmp114794 _stx109684_)))
              (let () (declare (not safe)) (_$E109688109694_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109659_)
        (let* ((_$e109661_ _stx109659_)
               (_$E109663109669_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109661_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109661_))
              (let* ((_$tgt109664109672_
                      (let () (declare (not safe)) (__AST-e _$e109661_)))
                     (_$hd109665109675_
                      (let () (declare (not safe)) (##car _$tgt109664109672_)))
                     (_$tl109666109678_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109664109672_))))
                (let* ((_body109682_ _$tl109666109678_)
                       (__tmp114796
                        (let ((__tmp114797
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109682_))))
                          (declare (not safe))
                          (cons 'begin __tmp114797))))
                  (declare (not safe))
                  (__SRC__% __tmp114796 _stx109659_)))
              (let () (declare (not safe)) (_$E109663109669_))))))
    (define __compile-import%
      (lambda (_stx109634_)
        (let* ((_$e109636_ _stx109634_)
               (_$E109638109644_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109636_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109636_))
              (let* ((_$tgt109639109647_
                      (let () (declare (not safe)) (__AST-e _$e109636_)))
                     (_$hd109640109650_
                      (let () (declare (not safe)) (##car _$tgt109639109647_)))
                     (_$tl109641109653_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109639109647_))))
                (let* ((_body109657_ _$tl109641109653_)
                       (__tmp114798
                        (let ((__tmp114799
                               (let ((__tmp114800
                                      (let ((__tmp114801
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109657_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114801))))
                                 (declare (not safe))
                                 (cons __tmp114800 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114799))))
                  (declare (not safe))
                  (__SRC__% __tmp114798 _stx109634_)))
              (let () (declare (not safe)) (_$E109638109644_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109581_)
        (let* ((_$e109583_ _stx109581_)
               (_$E109585109597_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109583_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109583_))
              (let* ((_$tgt109586109600_
                      (let () (declare (not safe)) (__AST-e _$e109583_)))
                     (_$hd109587109603_
                      (let () (declare (not safe)) (##car _$tgt109586109600_)))
                     (_$tl109588109606_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109586109600_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109588109606_))
                    (let* ((_$tgt109589109610_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109588109606_)))
                           (_$hd109590109613_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109589109610_)))
                           (_$tl109591109616_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109589109610_))))
                      (let ((_ann109620_ _$hd109590109613_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109591109616_))
                            (let* ((_$tgt109592109622_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109591109616_)))
                                   (_$hd109593109625_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109592109622_)))
                                   (_$tl109594109628_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109592109622_))))
                              (let ((_expr109632_ _$hd109593109625_))
                                (if (let ((__tmp114802
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109594109628_))))
                                      (declare (not safe))
                                      (equal? __tmp114802 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109632_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109585109597_)))))
                            (let () (declare (not safe)) (_$E109585109597_)))))
                    (let () (declare (not safe)) (_$E109585109597_))))
              (let () (declare (not safe)) (_$E109585109597_))))))
    (define __compile-define-values%
      (lambda (_stx109472_)
        (let* ((_$e109474_ _stx109472_)
               (_$E109476109488_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109474_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109474_))
              (let* ((_$tgt109477109491_
                      (let () (declare (not safe)) (__AST-e _$e109474_)))
                     (_$hd109478109494_
                      (let () (declare (not safe)) (##car _$tgt109477109491_)))
                     (_$tl109479109497_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109477109491_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109479109497_))
                    (let* ((_$tgt109480109501_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109479109497_)))
                           (_$hd109481109504_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109480109501_)))
                           (_$tl109482109507_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109480109501_))))
                      (let ((_hd109511_ _$hd109481109504_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109482109507_))
                            (let* ((_$tgt109483109513_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109482109507_)))
                                   (_$hd109484109516_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109483109513_)))
                                   (_$tl109485109519_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109483109513_))))
                              (let ((_expr109523_ _$hd109484109516_))
                                (if (let ((__tmp114835
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109485109519_))))
                                      (declare (not safe))
                                      (equal? __tmp114835 '()))
                                    (let* ((_$e109525_ _hd109511_)
                                           (_$E109527109568_
                                            (lambda ()
                                              (let ((_$E109528109553_
                                                     (lambda ()
                                                       (let* ((_$E109529109540_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109525_))))
                      (_ids109543_ _hd109511_)
                      (_len109545_ (length _ids109543_))
                      (_tmp109547_
                       (let ((__tmp114803 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114803))))
                 (let ((__tmp114804
                        (let ((__tmp114805
                               (let ((__tmp114822
                                      (let ((__tmp114823
                                             (let ((__tmp114824
                                                    (let ((__tmp114825
                                                           (let ((__tmp114826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109523_))))
                     (declare (not safe))
                     (cons __tmp114826 '()))))
              (declare (not safe))
              (cons _tmp109547_ __tmp114825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114824))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114823 _stx109472_)))
                                     (__tmp114806
                                      (let ((__tmp114818
                                             (let ((__tmp114819
                                                    (let ((__tmp114820
                                                           (let ((__tmp114821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109545_ '()))))
                     (declare (not safe))
                     (cons _tmp109547_ __tmp114821))))
              (declare (not safe))
              (cons '__check-values __tmp114820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114819
                                                _stx109472_)))
                                            (__tmp114807
                                             (let ((__tmp114808
                                                    (let ((__tmp114810
                                                           (lambda (_id109550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109551_)
                     (if (let () (declare (not safe)) (__AST-e _id109550_))
                         (let ((__tmp114811
                                (let ((__tmp114812
                                       (let ((__tmp114817
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109550_)))
                                             (__tmp114813
                                              (let ((__tmp114814
                                                     (let ((__tmp114815
                                                            (let ((__tmp114816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109551_ '()))))
                      (declare (not safe))
                      (cons _tmp109547_ __tmp114816))))
               (declare (not safe))
               (cons '##vector-ref __tmp114815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114814 '()))))
                                         (declare (not safe))
                                         (cons __tmp114817 __tmp114813))))
                                  (declare (not safe))
                                  (cons 'define __tmp114812))))
                           (declare (not safe))
                           (__SRC__% __tmp114811 _stx109472_))
                         '#f)))
                  (__tmp114809
                   (let () (declare (not safe)) (iota _len109545_))))
              (declare (not safe))
              (filter-map2 __tmp114810 _ids109543_ __tmp114809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114808))))
                                        (declare (not safe))
                                        (cons __tmp114818 __tmp114807))))
                                 (declare (not safe))
                                 (cons __tmp114822 __tmp114806))))
                          (declare (not safe))
                          (cons 'begin __tmp114805))))
                   (declare (not safe))
                   (__SRC__% __tmp114804 _stx109472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109525_))
                                                    (let* ((_$tgt109530109556_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109525_)))
                                                           (_$hd109531109559_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109530109556_)))
                                                           (_$tl109532109562_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109530109556_))))
                                                      (let ((_id109566_
                                                             _$hd109531109559_))
                                                        (if (let ((__tmp114832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109532109562_))))
                      (declare (not safe))
                      (equal? __tmp114832 '()))
                    (let ((__tmp114827
                           (let ((__tmp114828
                                  (let ((__tmp114831
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109566_)))
                                        (__tmp114829
                                         (let ((__tmp114830
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109523_))))
                                           (declare (not safe))
                                           (cons __tmp114830 '()))))
                                    (declare (not safe))
                                    (cons __tmp114831 __tmp114829))))
                             (declare (not safe))
                             (cons 'define __tmp114828))))
                      (declare (not safe))
                      (__SRC__% __tmp114827 _stx109472_))
                    (let () (declare (not safe)) (_$E109528109553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109528109553_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109525_))
                                          (let* ((_$tgt109533109571_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109525_)))
                                                 (_$hd109534109574_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109533109571_)))
                                                 (_$tl109535109577_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109533109571_))))
                                            (if (let ((__tmp114834
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109534109574_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114834 '#f))
                                                (if (let ((__tmp114833
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109535109577_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114833 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109523_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109527109568_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109527109568_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109527109568_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109476109488_)))))
                            (let () (declare (not safe)) (_$E109476109488_)))))
                    (let () (declare (not safe)) (_$E109476109488_))))
              (let () (declare (not safe)) (_$E109476109488_))))))
    (define __compile-head-id
      (lambda (_e109470_)
        (let ((__tmp114836
               (if (let () (declare (not safe)) (__AST-e _e109470_))
                   _e109470_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114836))))
    (define __compile-lambda-head
      (lambda (_hd109427_)
        (let _recur109429_ ((_rest109431_ _hd109427_))
          (let* ((_$e109433_ _rest109431_)
                 (_$E109435109453_
                  (lambda ()
                    (let ((_$E109436109450_
                           (lambda ()
                             (let* ((_$E109437109445_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109433_))))
                                    (_tail109448_ _$e109433_))
                               (declare (not safe))
                               (__compile-head-id _tail109448_)))))
                      (if (let ((__tmp114837
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109433_))))
                            (declare (not safe))
                            (equal? __tmp114837 '()))
                          '()
                          (let () (declare (not safe)) (_$E109436109450_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109433_))
                (let* ((_$tgt109438109456_
                        (let () (declare (not safe)) (__AST-e _$e109433_)))
                       (_$hd109439109459_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109438109456_)))
                       (_$tl109440109462_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109438109456_))))
                  (let* ((_hd109466_ _$hd109439109459_)
                         (_rest109468_ _$tl109440109462_))
                    (let ((__tmp114839
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109466_)))
                          (__tmp114838
                           (let ()
                             (declare (not safe))
                             (_recur109429_ _rest109468_))))
                      (declare (not safe))
                      (cons __tmp114839 __tmp114838))))
                (let () (declare (not safe)) (_$E109435109453_)))))))
    (define __compile-lambda%
      (lambda (_stx109374_)
        (let* ((_$e109376_ _stx109374_)
               (_$E109378109390_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109376_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109376_))
              (let* ((_$tgt109379109393_
                      (let () (declare (not safe)) (__AST-e _$e109376_)))
                     (_$hd109380109396_
                      (let () (declare (not safe)) (##car _$tgt109379109393_)))
                     (_$tl109381109399_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109379109393_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109381109399_))
                    (let* ((_$tgt109382109403_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109381109399_)))
                           (_$hd109383109406_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109382109403_)))
                           (_$tl109384109409_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109382109403_))))
                      (let ((_hd109413_ _$hd109383109406_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109384109409_))
                            (let* ((_$tgt109385109415_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109384109409_)))
                                   (_$hd109386109418_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109385109415_)))
                                   (_$tl109387109421_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109385109415_))))
                              (let ((_body109425_ _$hd109386109418_))
                                (if (let ((__tmp114845
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109387109421_))))
                                      (declare (not safe))
                                      (equal? __tmp114845 '()))
                                    (let ((__tmp114840
                                           (let ((__tmp114841
                                                  (let ((__tmp114844
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109413_)))
                                                        (__tmp114842
                                                         (let ((__tmp114843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109425_))))
                   (declare (not safe))
                   (cons __tmp114843 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114844
                                                          __tmp114842))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114841))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114840 _stx109374_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109378109390_)))))
                            (let () (declare (not safe)) (_$E109378109390_)))))
                    (let () (declare (not safe)) (_$E109378109390_))))
              (let () (declare (not safe)) (_$E109378109390_))))))
    (define __compile-case-lambda%
      (lambda (_stx109166_)
        (letrec ((_variadic?109168_
                  (lambda (_hd109339_)
                    (let* ((_$e109341_ _hd109339_)
                           (_$E109343109359_
                            (lambda ()
                              (let ((_$E109344109356_
                                     (lambda ()
                                       (let ((_$E109345109353_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109341_)))))
                                         '#t))))
                                (if (let ((__tmp114846
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109341_))))
                                      (declare (not safe))
                                      (equal? __tmp114846 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109344109356_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109341_))
                          (let* ((_$tgt109346109362_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109341_)))
                                 (_$hd109347109365_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109346109362_)))
                                 (_$tl109348109368_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109346109362_))))
                            (let ((_rest109372_ _$tl109348109368_))
                              (declare (not safe))
                              (_variadic?109168_ _rest109372_)))
                          (let () (declare (not safe)) (_$E109343109359_))))))
                 (_arity109169_
                  (lambda (_hd109304_)
                    (let _lp109306_ ((_rest109308_ _hd109304_) (_k109309_ '0))
                      (let* ((_$e109311_ _rest109308_)
                             (_$E109313109324_
                              (lambda ()
                                (let ((_$E109314109321_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109311_)))))
                                  _k109309_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109311_))
                            (let* ((_$tgt109315109327_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109311_)))
                                   (_$hd109316109330_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109315109327_)))
                                   (_$tl109317109333_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109315109327_))))
                              (let* ((_rest109337_ _$tl109317109333_)
                                     (__tmp114847
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109309_ '1))))
                                (declare (not safe))
                                (_lp109306_ _rest109337_ __tmp114847)))
                            (let ()
                              (declare (not safe))
                              (_$E109313109324_)))))))
                 (_generate109170_
                  (lambda (_rest109231_ _args109232_ _len109233_)
                    (let* ((_$e109235_ _rest109231_)
                           (_$E109237109248_
                            (lambda ()
                              (let* ((_$E109238109245_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109235_))))
                                     (__tmp114848
                                      (let ((__tmp114849
                                             (let ((__tmp114850
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109232_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114850))))
                                        (declare (not safe))
                                        (cons 'error __tmp114849))))
                                (declare (not safe))
                                (__SRC__% __tmp114848 _stx109166_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109235_))
                          (let* ((_$tgt109239109251_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109235_)))
                                 (_$hd109240109254_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109239109251_)))
                                 (_$tl109241109257_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109239109251_))))
                            (let* ((_clause109261_ _$hd109240109254_)
                                   (_rest109263_ _$tl109241109257_)
                                   (_$e109265_ _clause109261_)
                                   (_$E109267109276_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109265_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109265_))
                                  (let* ((_$tgt109268109279_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109265_)))
                                         (_$hd109269109282_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109268109279_)))
                                         (_$tl109270109285_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109268109279_))))
                                    (let ((_hd109289_ _$hd109269109282_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109270109285_))
                                          (let* ((_$tgt109271109291_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109270109285_)))
                                                 (_$hd109272109294_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109271109291_)))
                                                 (_$tl109273109297_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109271109291_))))
                                            (if (let ((__tmp114865
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109273109297_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114865 '()))
                                                (let ((_clen109301_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109169_
                                                          _hd109289_)))
                                                      (_cmp109302_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109168_
                                                              _hd109289_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114851
                                                         (let ((__tmp114852
                                                                (let ((__tmp114862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114863
                                      (let ((__tmp114864
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109301_ '()))))
                                        (declare (not safe))
                                        (cons _len109233_ __tmp114864))))
                                 (declare (not safe))
                                 (cons _cmp109302_ __tmp114863)))
                              (__tmp114853
                               (let ((__tmp114856
                                      (let ((__tmp114857
                                             (let ((__tmp114858
                                                    (let ((__tmp114860
                                                           (let ((__tmp114861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109261_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114861)))
                  (__tmp114859
                   (let () (declare (not safe)) (cons _args109232_ '()))))
              (declare (not safe))
              (cons __tmp114860 __tmp114859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114858))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114857 _stx109166_)))
                                     (__tmp114854
                                      (let ((__tmp114855
                                             (let ()
                                               (declare (not safe))
                                               (_generate109170_
                                                _rest109263_
                                                _args109232_
                                                _len109233_))))
                                        (declare (not safe))
                                        (cons __tmp114855 '()))))
                                 (declare (not safe))
                                 (cons __tmp114856 __tmp114854))))
                          (declare (not safe))
                          (cons __tmp114862 __tmp114853))))
                   (declare (not safe))
                   (cons 'if __tmp114852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114851
                                                     _stx109166_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109267109276_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109267109276_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109267109276_)))))
                          (let () (declare (not safe)) (_$E109237109248_)))))))
          (let* ((_$e109172_ _stx109166_)
                 (_$E109174109206_
                  (lambda ()
                    (let ((_$E109175109188_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109172_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109172_))
                          (let* ((_$tgt109176109191_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109172_)))
                                 (_$hd109177109194_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109176109191_)))
                                 (_$tl109178109197_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109176109191_))))
                            (let ((_clauses109201_ _$tl109178109197_))
                              (let ((_args109203_
                                     (let ((__tmp114866 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114866 _stx109166_)))
                                    (_len109204_
                                     (let ((__tmp114867 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114867 _stx109166_))))
                                (let ((__tmp114868
                                       (let ((__tmp114869
                                              (let ((__tmp114870
                                                     (let ((__tmp114871
                                                            (let ((__tmp114872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114873
                                  (let ((__tmp114876
                                         (let ((__tmp114877
                                                (let ((__tmp114878
                                                       (let ((__tmp114879
                                                              (let ((__tmp114880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114881
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109203_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114881))))
                        (declare (not safe))
                        (__SRC__% __tmp114880 _stx109166_))))
                 (declare (not safe))
                 (cons __tmp114879 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109204_
                                                        __tmp114878))))
                                           (declare (not safe))
                                           (cons __tmp114877 '())))
                                        (__tmp114874
                                         (let ((__tmp114875
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109170_
                                                   _clauses109201_
                                                   _args109203_
                                                   _len109204_))))
                                           (declare (not safe))
                                           (cons __tmp114875 '()))))
                                    (declare (not safe))
                                    (cons __tmp114876 __tmp114874))))
                             (declare (not safe))
                             (cons 'let __tmp114873))))
                      (declare (not safe))
                      (__SRC__% __tmp114872 _stx109166_))))
               (declare (not safe))
               (cons __tmp114871 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109203_
                                                      __tmp114870))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114869))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114868 _stx109166_)))))
                          (let () (declare (not safe)) (_$E109175109188_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109172_))
                (let* ((_$tgt109179109209_
                        (let () (declare (not safe)) (__AST-e _$e109172_)))
                       (_$hd109180109212_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109179109209_)))
                       (_$tl109181109215_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109179109209_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109181109215_))
                      (let* ((_$tgt109182109219_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109181109215_)))
                             (_$hd109183109222_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109182109219_)))
                             (_$tl109184109225_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109182109219_))))
                        (let ((_clause109229_ _$hd109183109222_))
                          (if (let ((__tmp114883
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109184109225_))))
                                (declare (not safe))
                                (equal? __tmp114883 '()))
                              (let ((__tmp114882
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109229_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114882))
                              (let ()
                                (declare (not safe))
                                (_$E109174109206_)))))
                      (let () (declare (not safe)) (_$E109174109206_))))
                (let () (declare (not safe)) (_$E109174109206_)))))))
    (define __compile-let-form
      (lambda (_stx108935_ _compile-simple108936_ _compile-values108937_)
        (letrec ((_simple-bind?108939_
                  (lambda (_hd109124_)
                    (let* ((_hd109125109135_ _hd109124_)
                           (_else109128109143_ (lambda () '#f)))
                      (let ((_K109131109156_ (lambda (_id109154_) '#t))
                            (_K109130109148_ (lambda () '#t)))
                        (let ((_try-match109127109151_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109125109135_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109130109148_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109128109143_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109125109135_))
                              (let ((_tl109133109161_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109125109135_)))
                                    (_hd109132109159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109125109135_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109133109161_))
                                    (let ((_id109164_ _hd109132109159_))
                                      (declare (not safe))
                                      (_K109131109156_ _id109164_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109127109151_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109127109151_))))))))
                 (_car-e108940_
                  (lambda (_hd109122_)
                    (if (let () (declare (not safe)) (pair? _hd109122_))
                        (car _hd109122_)
                        _hd109122_))))
          (let* ((_$e108942_ _stx108935_)
                 (_$E108944109087_
                  (lambda ()
                    (let ((_$E108945108967_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108942_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108942_))
                          (let* ((_$tgt108946108970_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108942_)))
                                 (_$hd108947108973_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108946108970_)))
                                 (_$tl108948108976_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108946108970_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108948108976_))
                                (let* ((_$tgt108949108980_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108948108976_)))
                                       (_$hd108950108983_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108949108980_)))
                                       (_$tl108951108986_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108949108980_))))
                                  (let ((_hd108990_ _$hd108950108983_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108951108986_))
                                        (let* ((_$tgt108952108992_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108951108986_)))
                                               (_$hd108953108995_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108952108992_)))
                                               (_$tl108954108998_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108952108992_))))
                                          (let ((_body109002_
                                                 _$hd108953108995_))
                                            (if (let ((__tmp114886
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108954108998_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114886 '()))
                                                (let* ((_hd-ids109042_
                                                        (map (lambda (_bind109004_)
                                                               (let* ((_$e109006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109004_)
                              (_$E109008109017_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109006_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109006_))
                             (let* ((_$tgt109009109020_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109006_)))
                                    (_$hd109010109023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109009109020_)))
                                    (_$tl109011109026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109009109020_))))
                               (let ((_ids109030_ _$hd109010109023_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109011109026_))
                                     (let* ((_$tgt109012109032_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109011109026_)))
                                            (_$hd109013109035_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109012109032_)))
                                            (_$tl109014109038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109012109032_))))
                                       (if (let ((__tmp114884
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109014109038_))))
                                             (declare (not safe))
                                             (equal? __tmp114884 '()))
                                           _ids109030_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109008109017_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109008109017_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109008109017_)))))
                     _hd108990_))
               (_exprs109082_
                (map (lambda (_bind109044_)
                       (let* ((_$e109046_ _bind109044_)
                              (_$E109048109057_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109046_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109046_))
                             (let* ((_$tgt109049109060_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109046_)))
                                    (_$hd109050109063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109049109060_)))
                                    (_$tl109051109066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109049109060_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109051109066_))
                                   (let* ((_$tgt109052109070_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109051109066_)))
                                          (_$hd109053109073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109052109070_)))
                                          (_$tl109054109076_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109052109070_))))
                                     (let ((_expr109080_ _$hd109053109073_))
                                       (if (let ((__tmp114885
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109054109076_))))
                                             (declare (not safe))
                                             (equal? __tmp114885 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109080_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109048109057_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109048109057_))))
                             (let ()
                               (declare (not safe))
                               (_$E109048109057_)))))
                     _hd108990_))
               (_body109084_
                (let () (declare (not safe)) (__compile _body109002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109042_))
              (_compile-simple108936_
               (map _car-e108940_ _hd-ids109042_)
               _exprs109082_
               _body109084_)
              (_compile-values108937_
               _hd-ids109042_
               _exprs109082_
               _body109084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108945108967_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108945108967_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108945108967_))))
                          (let () (declare (not safe)) (_$E108945108967_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108942_))
                (let* ((_$tgt108955109090_
                        (let () (declare (not safe)) (__AST-e _$e108942_)))
                       (_$hd108956109093_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108955109090_)))
                       (_$tl108957109096_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108955109090_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108957109096_))
                      (let* ((_$tgt108958109100_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108957109096_)))
                             (_$hd108959109103_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108958109100_)))
                             (_$tl108960109106_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108958109100_))))
                        (if (let ((__tmp114888
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108959109103_))))
                              (declare (not safe))
                              (equal? __tmp114888 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108960109106_))
                                (let* ((_$tgt108961109110_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108960109106_)))
                                       (_$hd108962109113_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108961109110_)))
                                       (_$tl108963109116_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108961109110_))))
                                  (let ((_body109120_ _$hd108962109113_))
                                    (if (let ((__tmp114887
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108963109116_))))
                                          (declare (not safe))
                                          (equal? __tmp114887 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109120_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108944109087_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108944109087_)))
                            (let () (declare (not safe)) (_$E108944109087_))))
                      (let () (declare (not safe)) (_$E108944109087_))))
                (let () (declare (not safe)) (_$E108944109087_)))))))
    (define __compile-let-values%
      (lambda (_stx108750_)
        (letrec ((_compile-simple108752_
                  (lambda (_hd-ids108931_ _exprs108932_ _body108933_)
                    (let ((__tmp114889
                           (let ((__tmp114890
                                  (let ((__tmp114892
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108931_)
                                              _exprs108932_))
                                        (__tmp114891
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108933_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114892 __tmp114891))))
                             (declare (not safe))
                             (cons 'let __tmp114890))))
                      (declare (not safe))
                      (__SRC__% __tmp114889 _stx108750_))))
                 (_compile-values108753_
                  (lambda (_hd-ids108849_ _exprs108850_ _body108851_)
                    (let _lp108853_ ((_rest108855_ _hd-ids108849_)
                                     (_exprs108856_ _exprs108850_)
                                     (_bind108857_ '())
                                     (_post108858_ '()))
                      (let* ((_rest108859108873_ _rest108855_)
                             (_else108862108881_
                              (lambda ()
                                (let ((__tmp114893
                                       (let ((__tmp114894
                                              (let ((__tmp114897
                                                     (reverse _bind108857_))
                                                    (__tmp114895
                                                     (let ((__tmp114896
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108754_
                                                               _post108858_
                                                               _body108851_))))
                                                       (declare (not safe))
                                                       (cons __tmp114896
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114897
                                                      __tmp114895))))
                                         (declare (not safe))
                                         (cons 'let __tmp114894))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114893 _stx108750_)))))
                        (let ((_K108867108914_
                               (lambda (_rest108911_ _id108912_)
                                 (let ((__tmp114903 (cdr _exprs108856_))
                                       (__tmp114898
                                        (let ((__tmp114899
                                               (let ((__tmp114902
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108912_)))
                                                     (__tmp114900
                                                      (let ((__tmp114901
                                                             (car _exprs108856_)))
                                                        (declare (not safe))
                                                        (cons __tmp114901
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114902
                                                       __tmp114900))))
                                          (declare (not safe))
                                          (cons __tmp114899 _bind108857_))))
                                   (declare (not safe))
                                   (_lp108853_
                                    _rest108911_
                                    __tmp114903
                                    __tmp114898
                                    _post108858_))))
                              (_K108864108896_
                               (lambda (_rest108885_ _hd108886_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108886_))
                                     (let ((__tmp114924 (cdr _exprs108856_))
                                           (__tmp114917
                                            (let ((__tmp114918
                                                   (let ((__tmp114923
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108886_)))
                                                         (__tmp114919
                                                          (let ((__tmp114920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114921
                                (let ((__tmp114922 (car _exprs108856_)))
                                  (declare (not safe))
                                  (cons __tmp114922 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114921))))
                    (declare (not safe))
                    (cons __tmp114920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114923
                                                           __tmp114919))))
                                              (declare (not safe))
                                              (cons __tmp114918
                                                    _bind108857_))))
                                       (declare (not safe))
                                       (_lp108853_
                                        _rest108885_
                                        __tmp114924
                                        __tmp114917
                                        _post108858_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108886_))
                                         (let* ((_len108888_
                                                 (length _hd108886_))
                                                (_tmp108890_
                                                 (let ((__tmp114904 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114904))))
                                           (let ((__tmp114916
                                                  (cdr _exprs108856_))
                                                 (__tmp114912
                                                  (let ((__tmp114913
                                                         (let ((__tmp114914
                                                                (let ((__tmp114915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108856_)))
                          (declare (not safe))
                          (cons __tmp114915 '()))))
                   (declare (not safe))
                   (cons _tmp108890_ __tmp114914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114913
                                                          _bind108857_)))
                                                 (__tmp114905
                                                  (let ((__tmp114906
                                                         (let ((__tmp114907
                                                                (let ((__tmp114908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114910
                                      (lambda (_id108893_ _k108894_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108893_))
                                            (let ((__tmp114911
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108893_))))
                                              (declare (not safe))
                                              (cons __tmp114911 _k108894_))
                                            '#f)))
                                     (__tmp114909
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108888_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114910
                                  _hd108886_
                                  __tmp114909))))
                          (declare (not safe))
                          (cons _len108888_ __tmp114908))))
                   (declare (not safe))
                   (cons _tmp108890_ __tmp114907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114906
                                                          _post108858_))))
                                             (declare (not safe))
                                             (_lp108853_
                                              _rest108885_
                                              __tmp114916
                                              __tmp114912
                                              __tmp114905)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108750_
                                            _hd108886_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108859108873_))
                              (let ((_tl108869108919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108859108873_)))
                                    (_hd108868108917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108859108873_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108868108917_))
                                    (let ((_tl108871108924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108868108917_)))
                                          (_hd108870108922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108868108917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108871108924_))
                                          (let ((_id108927_ _hd108870108922_)
                                                (_rest108929_
                                                 _tl108869108919_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108867108914_
                                               _rest108929_
                                               _id108927_)))
                                          (let ((_hd108904_ _hd108868108917_)
                                                (_rest108906_
                                                 _tl108869108919_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108864108896_
                                               _rest108906_
                                               _hd108904_)))))
                                    (let ((_hd108904_ _hd108868108917_)
                                          (_rest108906_ _tl108869108919_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108864108896_
                                         _rest108906_
                                         _hd108904_)))))
                              (let ()
                                (declare (not safe))
                                (_else108862108881_))))))))
                 (_compile-post108754_
                  (lambda (_post108756_ _body108757_)
                    (let _lp108759_ ((_rest108761_ _post108756_)
                                     (_check108762_ '())
                                     (_bind108763_ '()))
                      (let* ((_rest108764108776_ _rest108761_)
                             (_else108766108784_
                              (lambda ()
                                (let ((__tmp114925
                                       (let ((__tmp114926
                                              (let ((__tmp114927
                                                     (let ((__tmp114928
                                                            (let ((__tmp114929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114930
                                  (let ((__tmp114931
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108757_ '()))))
                                    (declare (not safe))
                                    (cons _bind108763_ __tmp114931))))
                             (declare (not safe))
                             (cons 'let __tmp114930))))
                      (declare (not safe))
                      (__SRC__% __tmp114929 _stx108750_))))
               (declare (not safe))
               (cons __tmp114928 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114927
                                                        _check108762_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114926))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114925 _stx108750_))))
                             (_K108768108823_
                              (lambda (_rest108787_
                                       _init108788_
                                       _len108789_
                                       _tmp108790_)
                                (let ((__tmp114939
                                       (let ((__tmp114940
                                              (let ((__tmp114941
                                                     (let ((__tmp114942
                                                            (let ((__tmp114943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108789_ '()))))
                      (declare (not safe))
                      (cons _tmp108790_ __tmp114943))))
               (declare (not safe))
               (cons '__check-values __tmp114942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114941
                                                 _stx108750_))))
                                         (declare (not safe))
                                         (cons __tmp114940 _check108762_)))
                                      (__tmp114932
                                       (let ((__tmp114933
                                              (lambda (_hd108792_ _r108793_)
                                                (let* ((_hd108794108801_
                                                        _hd108792_)
                                                       (_E108796108805_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108794108801_)))
               (_K108797108811_
                (lambda (_k108808_ _id108809_)
                  (let ((__tmp114934
                         (let ((__tmp114935
                                (let ((__tmp114936
                                       (let ((__tmp114937
                                              (let ((__tmp114938
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108808_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108790_
                                                      __tmp114938))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114937))))
                                  (declare (not safe))
                                  (cons __tmp114936 '()))))
                           (declare (not safe))
                           (cons _id108809_ __tmp114935))))
                    (declare (not safe))
                    (cons __tmp114934 _r108793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108794108801_))
                                                      (let ((_hd108798108814_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108794108801_)))
                    (_tl108799108816_
                     (let () (declare (not safe)) (##cdr _hd108794108801_))))
                (let* ((_id108819_ _hd108798108814_)
                       (_k108821_ _tl108799108816_))
                  (declare (not safe))
                  (_K108797108811_ _k108821_ _id108819_)))
              (let () (declare (not safe)) (_E108796108805_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114933
                                                 _bind108763_
                                                 _init108788_))))
                                  (declare (not safe))
                                  (_lp108759_
                                   _rest108787_
                                   __tmp114939
                                   __tmp114932)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108764108776_))
                            (let ((_hd108769108826_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108764108776_)))
                                  (_tl108770108828_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108764108776_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108769108826_))
                                  (let ((_hd108771108831_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108769108826_)))
                                        (_tl108772108833_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108769108826_))))
                                    (let ((_tmp108836_ _hd108771108831_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108772108833_))
                                          (let ((_hd108773108838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108772108833_)))
                                                (_tl108774108840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108772108833_))))
                                            (let* ((_len108843_
                                                    _hd108773108838_)
                                                   (_init108845_
                                                    _tl108774108840_)
                                                   (_rest108847_
                                                    _tl108770108828_))
                                              (declare (not safe))
                                              (_K108768108823_
                                               _rest108847_
                                               _init108845_
                                               _len108843_
                                               _tmp108836_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108766108784_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108766108784_))))
                            (let ()
                              (declare (not safe))
                              (_else108766108784_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108750_
             _compile-simple108752_
             _compile-values108753_)))))
    (define __compile-letrec-values%
      (lambda (_stx108550_)
        (letrec ((_compile-simple108552_
                  (lambda (_hd-ids108746_ _exprs108747_ _body108748_)
                    (let ((__tmp114944
                           (let ((__tmp114945
                                  (let ((__tmp114947
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108746_)
                                              _exprs108747_))
                                        (__tmp114946
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108748_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114947 __tmp114946))))
                             (declare (not safe))
                             (cons 'letrec __tmp114945))))
                      (declare (not safe))
                      (__SRC__% __tmp114944 _stx108550_))))
                 (_compile-values108553_
                  (lambda (_hd-ids108660_ _exprs108661_ _body108662_)
                    (let _lp108664_ ((_rest108666_ _hd-ids108660_)
                                     (_exprs108667_ _exprs108661_)
                                     (_pre108668_ '())
                                     (_bind108669_ '())
                                     (_post108670_ '()))
                      (let* ((_rest108671108685_ _rest108666_)
                             (_else108674108693_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108554_
                                   _pre108668_
                                   _bind108669_
                                   _post108670_
                                   _body108662_)))))
                        (let ((_K108679108729_
                               (lambda (_rest108726_ _id108727_)
                                 (let ((__tmp114953 (cdr _exprs108667_))
                                       (__tmp114948
                                        (let ((__tmp114949
                                               (let ((__tmp114952
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108727_)))
                                                     (__tmp114950
                                                      (let ((__tmp114951
                                                             (car _exprs108667_)))
                                                        (declare (not safe))
                                                        (cons __tmp114951
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114952
                                                       __tmp114950))))
                                          (declare (not safe))
                                          (cons __tmp114949 _bind108669_))))
                                   (declare (not safe))
                                   (_lp108664_
                                    _rest108726_
                                    __tmp114953
                                    _pre108668_
                                    __tmp114948
                                    _post108670_))))
                              (_K108676108711_
                               (lambda (_rest108697_ _hd108698_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108698_))
                                     (let ((__tmp114981 (cdr _exprs108667_))
                                           (__tmp114974
                                            (let ((__tmp114975
                                                   (let ((__tmp114980
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108698_)))
                                                         (__tmp114976
                                                          (let ((__tmp114977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114978
                                (let ((__tmp114979 (car _exprs108667_)))
                                  (declare (not safe))
                                  (cons __tmp114979 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114978))))
                    (declare (not safe))
                    (cons __tmp114977 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114980
                                                           __tmp114976))))
                                              (declare (not safe))
                                              (cons __tmp114975
                                                    _bind108669_))))
                                       (declare (not safe))
                                       (_lp108664_
                                        _rest108697_
                                        __tmp114981
                                        _pre108668_
                                        __tmp114974
                                        _post108670_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108698_))
                                         (let* ((_len108700_
                                                 (length _hd108698_))
                                                (_tmp108702_
                                                 (let ((__tmp114954 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114954))))
                                           (let ((__tmp114973
                                                  (cdr _exprs108667_))
                                                 (__tmp114966
                                                  (let ((__tmp114967
                                                         (lambda (_id108705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108706_)
                   (if (let () (declare (not safe)) (__AST-e _id108705_))
                       (let ((__tmp114968
                              (let ((__tmp114972
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108705_)))
                                    (__tmp114969
                                     (let ((__tmp114970
                                            (let ((__tmp114971
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114971))))
                                       (declare (not safe))
                                       (cons __tmp114970 '()))))
                                (declare (not safe))
                                (cons __tmp114972 __tmp114969))))
                         (declare (not safe))
                         (cons __tmp114968 _r108706_))
                       _r108706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114967
                                                            _pre108668_
                                                            _hd108698_)))
                                                 (__tmp114962
                                                  (let ((__tmp114963
                                                         (let ((__tmp114964
                                                                (let ((__tmp114965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108667_)))
                          (declare (not safe))
                          (cons __tmp114965 '()))))
                   (declare (not safe))
                   (cons _tmp108702_ __tmp114964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114963
                                                          _bind108669_)))
                                                 (__tmp114955
                                                  (let ((__tmp114956
                                                         (let ((__tmp114957
                                                                (let ((__tmp114958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114960
                                      (lambda (_id108708_ _k108709_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108708_))
                                            (let ((__tmp114961
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108708_))))
                                              (declare (not safe))
                                              (cons __tmp114961 _k108709_))
                                            '#f)))
                                     (__tmp114959
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108700_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114960
                                  _hd108698_
                                  __tmp114959))))
                          (declare (not safe))
                          (cons _len108700_ __tmp114958))))
                   (declare (not safe))
                   (cons _tmp108702_ __tmp114957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114956
                                                          _post108670_))))
                                             (declare (not safe))
                                             (_lp108664_
                                              _rest108697_
                                              __tmp114973
                                              __tmp114966
                                              __tmp114962
                                              __tmp114955)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108550_
                                            _hd108698_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108671108685_))
                              (let ((_tl108681108734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108671108685_)))
                                    (_hd108680108732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108671108685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108680108732_))
                                    (let ((_tl108683108739_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108680108732_)))
                                          (_hd108682108737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108680108732_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108683108739_))
                                          (let ((_id108742_ _hd108682108737_)
                                                (_rest108744_
                                                 _tl108681108734_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108679108729_
                                               _rest108744_
                                               _id108742_)))
                                          (let ((_hd108719_ _hd108680108732_)
                                                (_rest108721_
                                                 _tl108681108734_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108676108711_
                                               _rest108721_
                                               _hd108719_)))))
                                    (let ((_hd108719_ _hd108680108732_)
                                          (_rest108721_ _tl108681108734_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108676108711_
                                         _rest108721_
                                         _hd108719_)))))
                              (let ()
                                (declare (not safe))
                                (_else108674108693_))))))))
                 (_compile-inner108554_
                  (lambda (_pre108655_ _bind108656_ _post108657_ _body108658_)
                    (if (let () (declare (not safe)) (null? _pre108655_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108555_
                           _bind108656_
                           _post108657_
                           _body108658_))
                        (let ((__tmp114982
                               (let ((__tmp114983
                                      (let ((__tmp114986 (reverse _pre108655_))
                                            (__tmp114984
                                             (let ((__tmp114985
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108555_
                                                       _bind108656_
                                                       _post108657_
                                                       _body108658_))))
                                               (declare (not safe))
                                               (cons __tmp114985 '()))))
                                        (declare (not safe))
                                        (cons __tmp114986 __tmp114984))))
                                 (declare (not safe))
                                 (cons 'let __tmp114983))))
                          (declare (not safe))
                          (__SRC__% __tmp114982 _stx108550_)))))
                 (_compile-bind108555_
                  (lambda (_bind108651_ _post108652_ _body108653_)
                    (let ((__tmp114987
                           (let ((__tmp114988
                                  (let ((__tmp114991 (reverse _bind108651_))
                                        (__tmp114989
                                         (let ((__tmp114990
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108556_
                                                   _post108652_
                                                   _body108653_))))
                                           (declare (not safe))
                                           (cons __tmp114990 '()))))
                                    (declare (not safe))
                                    (cons __tmp114991 __tmp114989))))
                             (declare (not safe))
                             (cons 'letrec __tmp114988))))
                      (declare (not safe))
                      (__SRC__% __tmp114987 _stx108550_))))
                 (_compile-post108556_
                  (lambda (_post108558_ _body108559_)
                    (let _lp108561_ ((_rest108563_ _post108558_)
                                     (_check108564_ '())
                                     (_bind108565_ '()))
                      (let* ((_rest108566108578_ _rest108563_)
                             (_else108568108586_
                              (lambda ()
                                (let ((__tmp114992
                                       (let ((__tmp114993
                                              (let ((__tmp114994
                                                     (let ((__tmp114995
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114995 _bind108565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114994
                                                        _check108564_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114993))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114992 _stx108550_))))
                             (_K108570108625_
                              (lambda (_rest108589_
                                       _init108590_
                                       _len108591_
                                       _tmp108592_)
                                (let ((__tmp115004
                                       (let ((__tmp115005
                                              (let ((__tmp115006
                                                     (let ((__tmp115007
                                                            (let ((__tmp115008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108591_ '()))))
                      (declare (not safe))
                      (cons _tmp108592_ __tmp115008))))
               (declare (not safe))
               (cons '__check-values __tmp115007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115006
                                                 _stx108550_))))
                                         (declare (not safe))
                                         (cons __tmp115005 _check108564_)))
                                      (__tmp114996
                                       (let ((__tmp114997
                                              (lambda (_hd108594_ _r108595_)
                                                (let* ((_hd108596108603_
                                                        _hd108594_)
                                                       (_E108598108607_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108596108603_)))
               (_K108599108613_
                (lambda (_k108610_ _id108611_)
                  (let ((__tmp114998
                         (let ((__tmp114999
                                (let ((__tmp115000
                                       (let ((__tmp115001
                                              (let ((__tmp115002
                                                     (let ((__tmp115003
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108592_ __tmp115003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115002))))
                                         (declare (not safe))
                                         (cons __tmp115001 '()))))
                                  (declare (not safe))
                                  (cons _id108611_ __tmp115000))))
                           (declare (not safe))
                           (cons 'set! __tmp114999))))
                    (declare (not safe))
                    (cons __tmp114998 _r108595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108596108603_))
                                                      (let ((_hd108600108616_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108596108603_)))
                    (_tl108601108618_
                     (let () (declare (not safe)) (##cdr _hd108596108603_))))
                (let* ((_id108621_ _hd108600108616_)
                       (_k108623_ _tl108601108618_))
                  (declare (not safe))
                  (_K108599108613_ _k108623_ _id108621_)))
              (let () (declare (not safe)) (_E108598108607_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114997
                                                 _bind108565_
                                                 _init108590_))))
                                  (declare (not safe))
                                  (_lp108561_
                                   _rest108589_
                                   __tmp115004
                                   __tmp114996)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108566108578_))
                            (let ((_hd108571108628_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108566108578_)))
                                  (_tl108572108630_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108566108578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108571108628_))
                                  (let ((_hd108573108633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108571108628_)))
                                        (_tl108574108635_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108571108628_))))
                                    (let ((_tmp108638_ _hd108573108633_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108574108635_))
                                          (let ((_hd108575108640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108574108635_)))
                                                (_tl108576108642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108574108635_))))
                                            (let* ((_len108645_
                                                    _hd108575108640_)
                                                   (_init108647_
                                                    _tl108576108642_)
                                                   (_rest108649_
                                                    _tl108572108630_))
                                              (declare (not safe))
                                              (_K108570108625_
                                               _rest108649_
                                               _init108647_
                                               _len108645_
                                               _tmp108638_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108568108586_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108568108586_))))
                            (let ()
                              (declare (not safe))
                              (_else108568108586_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108550_
             _compile-simple108552_
             _compile-values108553_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108305_)
        (letrec ((_compile-simple108307_
                  (lambda (_hd-ids108546_ _exprs108547_ _body108548_)
                    (let ((__tmp115009
                           (let ((__tmp115010
                                  (let ((__tmp115012
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108546_)
                                              _exprs108547_))
                                        (__tmp115011
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108548_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115012 __tmp115011))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115010))))
                      (declare (not safe))
                      (__SRC__% __tmp115009 _stx108305_))))
                 (_compile-values108308_
                  (lambda (_hd-ids108457_ _exprs108458_ _body108459_)
                    (let _lp108461_ ((_rest108463_ _hd-ids108457_)
                                     (_exprs108464_ _exprs108458_)
                                     (_bind108465_ '())
                                     (_post108466_ '()))
                      (let* ((_rest108467108481_ _rest108463_)
                             (_else108470108489_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108309_
                                   _bind108465_
                                   _post108466_
                                   _body108459_)))))
                        (let ((_K108475108529_
                               (lambda (_rest108524_ _hd108525_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108525_))
                                     (let ((_id108527_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108525_))))
                                       (let ((__tmp115027 (cdr _exprs108464_))
                                             (__tmp115022
                                              (let ((__tmp115023
                                                     (let ((__tmp115024
                                                            (let ((__tmp115025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115026
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115026))))
                      (declare (not safe))
                      (cons __tmp115025 '()))))
               (declare (not safe))
               (cons _id108527_ __tmp115024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115023
                                                      _bind108465_)))
                                             (__tmp115018
                                              (let ((__tmp115019
                                                     (let ((__tmp115020
                                                            (let ((__tmp115021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108464_)))
                      (declare (not safe))
                      (cons __tmp115021 '()))))
               (declare (not safe))
               (cons _id108527_ __tmp115020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115019
                                                      _post108466_))))
                                         (declare (not safe))
                                         (_lp108461_
                                          _rest108524_
                                          __tmp115027
                                          __tmp115022
                                          __tmp115018)))
                                     (let ((__tmp115017 (cdr _exprs108464_))
                                           (__tmp115013
                                            (let ((__tmp115014
                                                   (let ((__tmp115015
                                                          (let ((__tmp115016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108464_)))
                    (declare (not safe))
                    (cons __tmp115016 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115015))))
                                              (declare (not safe))
                                              (cons __tmp115014
                                                    _post108466_))))
                                       (declare (not safe))
                                       (_lp108461_
                                        _rest108524_
                                        __tmp115017
                                        _bind108465_
                                        __tmp115013)))))
                              (_K108472108509_
                               (lambda (_rest108493_ _hd108494_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108494_))
                                     (let ((_id108496_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108494_))))
                                       (let ((__tmp115063 (cdr _exprs108464_))
                                             (__tmp115058
                                              (let ((__tmp115059
                                                     (let ((__tmp115060
                                                            (let ((__tmp115061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115062
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115062))))
                      (declare (not safe))
                      (cons __tmp115061 '()))))
               (declare (not safe))
               (cons _id108496_ __tmp115060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115059
                                                      _bind108465_)))
                                             (__tmp115052
                                              (let ((__tmp115053
                                                     (let ((__tmp115054
                                                            (let ((__tmp115055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115056
                                  (let ((__tmp115057 (car _exprs108464_)))
                                    (declare (not safe))
                                    (cons __tmp115057 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115056))))
                      (declare (not safe))
                      (cons __tmp115055 '()))))
               (declare (not safe))
               (cons _id108496_ __tmp115054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115053
                                                      _post108466_))))
                                         (declare (not safe))
                                         (_lp108461_
                                          _rest108493_
                                          __tmp115063
                                          __tmp115058
                                          __tmp115052)))
                                     (if (let ((__tmp115051
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108494_))))
                                           (declare (not safe))
                                           (not __tmp115051))
                                         (let ((__tmp115050
                                                (cdr _exprs108464_))
                                               (__tmp115046
                                                (let ((__tmp115047
                                                       (let ((__tmp115048
                                                              (let ((__tmp115049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108464_)))
                        (declare (not safe))
                        (cons __tmp115049 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115047
                                                        _post108466_))))
                                           (declare (not safe))
                                           (_lp108461_
                                            _rest108493_
                                            __tmp115050
                                            _bind108465_
                                            __tmp115046))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108494_))
                                             (let* ((_len108498_
                                                     (length _hd108494_))
                                                    (_tmp108500_
                                                     (let ((__tmp115028
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115028))))
                                               (let ((__tmp115045
                                                      (cdr _exprs108464_))
                                                     (__tmp115038
                                                      (let ((__tmp115039
                                                             (lambda (_id108503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108504_)
                       (if (let () (declare (not safe)) (__AST-e _id108503_))
                           (let ((__tmp115040
                                  (let ((__tmp115044
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108503_)))
                                        (__tmp115041
                                         (let ((__tmp115042
                                                (let ((__tmp115043
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115043))))
                                           (declare (not safe))
                                           (cons __tmp115042 '()))))
                                    (declare (not safe))
                                    (cons __tmp115044 __tmp115041))))
                             (declare (not safe))
                             (cons __tmp115040 _r108504_))
                           _r108504_))))
                (declare (not safe))
                (foldl1 __tmp115039 _bind108465_ _hd108494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115029
                                                      (let ((__tmp115030
                                                             (let ((__tmp115031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115037 (car _exprs108464_))
                                  (__tmp115032
                                   (let ((__tmp115033
                                          (let ((__tmp115035
                                                 (lambda (_id108506_ _k108507_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108506_))
                                                       (let ((__tmp115036
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108506_))))
                 (declare (not safe))
                 (cons __tmp115036 _k108507_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115034
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108498_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115035
                                             _hd108494_
                                             __tmp115034))))
                                     (declare (not safe))
                                     (cons _len108498_ __tmp115033))))
                              (declare (not safe))
                              (cons __tmp115037 __tmp115032))))
                       (declare (not safe))
                       (cons _tmp108500_ __tmp115031))))
                (declare (not safe))
                (cons __tmp115030 _post108466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108461_
                                                  _rest108493_
                                                  __tmp115045
                                                  __tmp115038
                                                  __tmp115029)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108305_
                                                _hd108494_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108467108481_))
                              (let ((_tl108477108534_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108467108481_)))
                                    (_hd108476108532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108467108481_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108476108532_))
                                    (let ((_tl108479108539_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108476108532_)))
                                          (_hd108478108537_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108476108532_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108479108539_))
                                          (let ((_hd108542_ _hd108478108537_)
                                                (_rest108544_
                                                 _tl108477108534_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108475108529_
                                               _rest108544_
                                               _hd108542_)))
                                          (let ((_hd108517_ _hd108476108532_)
                                                (_rest108519_
                                                 _tl108477108534_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108472108509_
                                               _rest108519_
                                               _hd108517_)))))
                                    (let ((_hd108517_ _hd108476108532_)
                                          (_rest108519_ _tl108477108534_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108472108509_
                                         _rest108519_
                                         _hd108517_)))))
                              (let ()
                                (declare (not safe))
                                (_else108470108489_))))))))
                 (_compile-bind108309_
                  (lambda (_bind108453_ _post108454_ _body108455_)
                    (let ((__tmp115064
                           (let ((__tmp115065
                                  (let ((__tmp115068 (reverse _bind108453_))
                                        (__tmp115066
                                         (let ((__tmp115067
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108310_
                                                   _post108454_
                                                   _body108455_))))
                                           (declare (not safe))
                                           (cons __tmp115067 '()))))
                                    (declare (not safe))
                                    (cons __tmp115068 __tmp115066))))
                             (declare (not safe))
                             (cons 'let __tmp115065))))
                      (declare (not safe))
                      (__SRC__% __tmp115064 _stx108305_))))
                 (_compile-post108310_
                  (lambda (_post108312_ _body108313_)
                    (let ((__tmp115069
                           (let ((__tmp115070
                                  (let ((__tmp115071
                                         (let ((__tmp115073
                                                (lambda (_hd108315_ _r108316_)
                                                  (let* ((_hd108317108340_
                                                          _hd108315_)
                                                         (_E108321108344_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108317108340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108334108438_
                                                           (lambda (_expr108436_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108436_ _r108316_))))
                  (_K108329108416_
                   (lambda (_expr108413_ _id108414_)
                     (let ((__tmp115074
                            (let ((__tmp115075
                                   (let ((__tmp115076
                                          (let ((__tmp115077
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108413_ '()))))
                                            (declare (not safe))
                                            (cons _id108414_ __tmp115077))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115076))))
                              (declare (not safe))
                              (__SRC__% __tmp115075 _stx108305_))))
                       (declare (not safe))
                       (cons __tmp115074 _r108316_))))
                  (_K108322108383_
                   (lambda (_init108348_ _len108349_ _expr108350_ _tmp108351_)
                     (let ((__tmp115078
                            (let ((__tmp115079
                                   (let ((__tmp115080
                                          (let ((__tmp115094
                                                 (let ((__tmp115095
                                                        (let ((__tmp115096
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108350_ '()))))
                  (declare (not safe))
                  (cons _tmp108351_ __tmp115096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115095 '())))
                                                (__tmp115081
                                                 (let ((__tmp115090
                                                        (let ((__tmp115091
                                                               (let ((__tmp115092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115093
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108349_ '()))))
                                (declare (not safe))
                                (cons _tmp108351_ __tmp115093))))
                         (declare (not safe))
                         (cons '__check-values __tmp115092))))
                  (declare (not safe))
                  (__SRC__% __tmp115091 _stx108305_)))
               (__tmp115082
                (let ((__tmp115083
                       (map (lambda (_hd108353_)
                              (let* ((_hd108354108361_ _hd108353_)
                                     (_E108356108365_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108354108361_)))
                                     (_K108357108371_
                                      (lambda (_k108368_ _id108369_)
                                        (let ((__tmp115084
                                               (let ((__tmp115085
                                                      (let ((__tmp115086
                                                             (let ((__tmp115087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115088
                                   (let ((__tmp115089
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108368_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108351_ __tmp115089))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115088))))
                       (declare (not safe))
                       (cons __tmp115087 '()))))
                (declare (not safe))
                (cons _id108369_ __tmp115086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115085))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115084
                                           _stx108305_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108354108361_))
                                    (let ((_hd108358108374_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108354108361_)))
                                          (_tl108359108376_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108354108361_))))
                                      (let* ((_id108379_ _hd108358108374_)
                                             (_k108381_ _tl108359108376_))
                                        (declare (not safe))
                                        (_K108357108371_
                                         _k108381_
                                         _id108379_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108356108365_)))))
                            _init108348_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115090
                                                         __tmp115082))))
                                            (declare (not safe))
                                            (cons __tmp115094 __tmp115081))))
                                     (declare (not safe))
                                     (cons 'let __tmp115080))))
                              (declare (not safe))
                              (__SRC__% __tmp115079 _stx108305_))))
                       (declare (not safe))
                       (cons __tmp115078 _r108316_)))))
              (if (let () (declare (not safe)) (##pair? _hd108317108340_))
                  (let ((_tl108336108443_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108317108340_)))
                        (_hd108335108441_
                         (let ()
                           (declare (not safe))
                           (##car _hd108317108340_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108335108441_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108336108443_))
                            (let ((_tl108338108448_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108336108443_)))
                                  (_hd108337108446_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108336108443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108338108448_))
                                  (let ((_expr108451_ _hd108337108446_))
                                    (declare (not safe))
                                    (_K108334108438_ _expr108451_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108338108448_))
                                      (let ((_tl108328108402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108338108448_)))
                                            (_hd108327108400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108338108448_))))
                                        (let ((_tmp108391_ _hd108335108441_)
                                              (_expr108398_ _hd108337108446_)
                                              (_len108405_ _hd108327108400_)
                                              (_init108407_ _tl108328108402_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108322108383_
                                             _init108407_
                                             _len108405_
                                             _expr108398_
                                             _tmp108391_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108321108344_)))))
                            (let () (declare (not safe)) (_E108321108344_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108336108443_))
                            (let ((_tl108333108428_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108336108443_)))
                                  (_hd108332108426_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108336108443_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108333108428_))
                                  (let ((_id108424_ _hd108335108441_)
                                        (_expr108431_ _hd108332108426_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108329108416_
                                       _expr108431_
                                       _id108424_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108333108428_))
                                      (let ((_tl108328108402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108333108428_)))
                                            (_hd108327108400_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108333108428_))))
                                        (let ((_tmp108391_ _hd108335108441_)
                                              (_expr108398_ _hd108332108426_)
                                              (_len108405_ _hd108327108400_)
                                              (_init108407_ _tl108328108402_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108322108383_
                                             _init108407_
                                             _len108405_
                                             _expr108398_
                                             _tmp108391_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108321108344_)))))
                            (let () (declare (not safe)) (_E108321108344_)))))
                  (let () (declare (not safe)) (_E108321108344_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115072
                                                (list _body108313_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115073
                                                   __tmp115072
                                                   _post108312_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115071))))
                             (declare (not safe))
                             (cons 'begin __tmp115070))))
                      (declare (not safe))
                      (__SRC__% __tmp115069 _stx108305_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108305_
             _compile-simple108307_
             _compile-values108308_)))))
    (define __compile-call%
      (lambda (_stx108265_)
        (let* ((_$e108267_ _stx108265_)
               (_$E108269108278_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108267_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108267_))
              (let* ((_$tgt108270108281_
                      (let () (declare (not safe)) (__AST-e _$e108267_)))
                     (_$hd108271108284_
                      (let () (declare (not safe)) (##car _$tgt108270108281_)))
                     (_$tl108272108287_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108270108281_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108272108287_))
                    (let* ((_$tgt108273108291_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108272108287_)))
                           (_$hd108274108294_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108273108291_)))
                           (_$tl108275108297_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108273108291_))))
                      (let* ((_rator108301_ _$hd108274108294_)
                             (_rands108303_ _$tl108275108297_)
                             (__tmp115097
                              (let ((__tmp115099
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108301_)))
                                    (__tmp115098
                                     (map __compile _rands108303_)))
                                (declare (not safe))
                                (cons __tmp115099 __tmp115098))))
                        (declare (not safe))
                        (__SRC__% __tmp115097 _stx108265_)))
                    (let () (declare (not safe)) (_$E108269108278_))))
              (let () (declare (not safe)) (_$E108269108278_))))))
    (define __compile-ref%
      (lambda (_stx108227_)
        (let* ((_$e108229_ _stx108227_)
               (_$E108231108240_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108229_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108229_))
              (let* ((_$tgt108232108243_
                      (let () (declare (not safe)) (__AST-e _$e108229_)))
                     (_$hd108233108246_
                      (let () (declare (not safe)) (##car _$tgt108232108243_)))
                     (_$tl108234108249_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108232108243_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108234108249_))
                    (let* ((_$tgt108235108253_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108234108249_)))
                           (_$hd108236108256_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108235108253_)))
                           (_$tl108237108259_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108235108253_))))
                      (let ((_id108263_ _$hd108236108256_))
                        (if (let ((__tmp115100
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108237108259_))))
                              (declare (not safe))
                              (equal? __tmp115100 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108263_ _stx108227_))
                            (let () (declare (not safe)) (_$E108231108240_)))))
                    (let () (declare (not safe)) (_$E108231108240_))))
              (let () (declare (not safe)) (_$E108231108240_))))))
    (define __compile-setq%
      (lambda (_stx108174_)
        (let* ((_$e108176_ _stx108174_)
               (_$E108178108190_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108176_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108176_))
              (let* ((_$tgt108179108193_
                      (let () (declare (not safe)) (__AST-e _$e108176_)))
                     (_$hd108180108196_
                      (let () (declare (not safe)) (##car _$tgt108179108193_)))
                     (_$tl108181108199_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108179108193_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108181108199_))
                    (let* ((_$tgt108182108203_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108181108199_)))
                           (_$hd108183108206_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108182108203_)))
                           (_$tl108184108209_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108182108203_))))
                      (let ((_id108213_ _$hd108183108206_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108184108209_))
                            (let* ((_$tgt108185108215_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108184108209_)))
                                   (_$hd108186108218_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108185108215_)))
                                   (_$tl108187108221_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108185108215_))))
                              (let ((_expr108225_ _$hd108186108218_))
                                (if (let ((__tmp115106
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108187108221_))))
                                      (declare (not safe))
                                      (equal? __tmp115106 '()))
                                    (let ((__tmp115101
                                           (let ((__tmp115102
                                                  (let ((__tmp115105
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108213_
                                                            _stx108174_)))
                                                        (__tmp115103
                                                         (let ((__tmp115104
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108225_))))
                   (declare (not safe))
                   (cons __tmp115104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115105
                                                          __tmp115103))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115102))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115101 _stx108174_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108178108190_)))))
                            (let () (declare (not safe)) (_$E108178108190_)))))
                    (let () (declare (not safe)) (_$E108178108190_))))
              (let () (declare (not safe)) (_$E108178108190_))))))
    (define __compile-if%
      (lambda (_stx108106_)
        (let* ((_$e108108_ _stx108106_)
               (_$E108110108125_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108108_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108108_))
              (let* ((_$tgt108111108128_
                      (let () (declare (not safe)) (__AST-e _$e108108_)))
                     (_$hd108112108131_
                      (let () (declare (not safe)) (##car _$tgt108111108128_)))
                     (_$tl108113108134_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108111108128_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108113108134_))
                    (let* ((_$tgt108114108138_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108113108134_)))
                           (_$hd108115108141_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108114108138_)))
                           (_$tl108116108144_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108114108138_))))
                      (let ((_p108148_ _$hd108115108141_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108116108144_))
                            (let* ((_$tgt108117108150_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108116108144_)))
                                   (_$hd108118108153_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108117108150_)))
                                   (_$tl108119108156_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108117108150_))))
                              (let ((_t108160_ _$hd108118108153_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108119108156_))
                                    (let* ((_$tgt108120108162_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108119108156_)))
                                           (_$hd108121108165_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108120108162_)))
                                           (_$tl108122108168_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108120108162_))))
                                      (let ((_f108172_ _$hd108121108165_))
                                        (if (let ((__tmp115114
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108122108168_))))
                                              (declare (not safe))
                                              (equal? __tmp115114 '()))
                                            (let ((__tmp115107
                                                   (let ((__tmp115108
                                                          (let ((__tmp115113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108148_)))
                        (__tmp115109
                         (let ((__tmp115112
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108160_)))
                               (__tmp115110
                                (let ((__tmp115111
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108172_))))
                                  (declare (not safe))
                                  (cons __tmp115111 '()))))
                           (declare (not safe))
                           (cons __tmp115112 __tmp115110))))
                    (declare (not safe))
                    (cons __tmp115113 __tmp115109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115108))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115107
                                               _stx108106_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108110108125_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108110108125_)))))
                            (let () (declare (not safe)) (_$E108110108125_)))))
                    (let () (declare (not safe)) (_$E108110108125_))))
              (let () (declare (not safe)) (_$E108110108125_))))))
    (define __compile-quote%
      (lambda (_stx108068_)
        (let* ((_$e108070_ _stx108068_)
               (_$E108072108081_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108070_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108070_))
              (let* ((_$tgt108073108084_
                      (let () (declare (not safe)) (__AST-e _$e108070_)))
                     (_$hd108074108087_
                      (let () (declare (not safe)) (##car _$tgt108073108084_)))
                     (_$tl108075108090_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108073108084_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108075108090_))
                    (let* ((_$tgt108076108094_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108075108090_)))
                           (_$hd108077108097_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108076108094_)))
                           (_$tl108078108100_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108076108094_))))
                      (let ((_e108104_ _$hd108077108097_))
                        (if (let ((__tmp115118
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108078108100_))))
                              (declare (not safe))
                              (equal? __tmp115118 '()))
                            (let ((__tmp115115
                                   (let ((__tmp115116
                                          (let ((__tmp115117
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108104_))))
                                            (declare (not safe))
                                            (cons __tmp115117 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115116))))
                              (declare (not safe))
                              (__SRC__% __tmp115115 _stx108068_))
                            (let () (declare (not safe)) (_$E108072108081_)))))
                    (let () (declare (not safe)) (_$E108072108081_))))
              (let () (declare (not safe)) (_$E108072108081_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108030_)
        (let* ((_$e108032_ _stx108030_)
               (_$E108034108043_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108032_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108032_))
              (let* ((_$tgt108035108046_
                      (let () (declare (not safe)) (__AST-e _$e108032_)))
                     (_$hd108036108049_
                      (let () (declare (not safe)) (##car _$tgt108035108046_)))
                     (_$tl108037108052_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108035108046_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108037108052_))
                    (let* ((_$tgt108038108056_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108037108052_)))
                           (_$hd108039108059_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108038108056_)))
                           (_$tl108040108062_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108038108056_))))
                      (let ((_e108066_ _$hd108039108059_))
                        (if (let ((__tmp115121
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108040108062_))))
                              (declare (not safe))
                              (equal? __tmp115121 '()))
                            (let ((__tmp115119
                                   (let ((__tmp115120
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108066_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115120))))
                              (declare (not safe))
                              (__SRC__% __tmp115119 _stx108030_))
                            (let () (declare (not safe)) (_$E108034108043_)))))
                    (let () (declare (not safe)) (_$E108034108043_))))
              (let () (declare (not safe)) (_$E108034108043_))))))
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
