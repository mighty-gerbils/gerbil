(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707738031)
  (begin
    (define __context::t
      (let ((__tmp114726 (list))
            (__tmp114724
             (let ((__tmp114725
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114725 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114726
         '(t ns super table)
         __tmp114724
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109960_ (apply make-instance __context::t _$args109960_)))
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
      (let ((__tmp114729 (list))
            (__tmp114727
             (let ((__tmp114728
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114728 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114729
         '(id)
         __tmp114727
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109957_ (apply make-instance __runtime::t _$args109957_)))
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
      (let ((__tmp114732 (list))
            (__tmp114730
             (let ((__tmp114731
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114731 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114732
         '(e id)
         __tmp114730
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109954_ (apply make-instance __syntax::t _$args109954_)))
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
      (let ((__tmp114735 (list __syntax::t))
            (__tmp114733
             (let ((__tmp114734
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114734 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114735
         '()
         __tmp114733
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109951_ (apply make-instance __macro::t _$args109951_)))
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
      (let ((__tmp114738 (list __macro::t))
            (__tmp114736
             (let ((__tmp114737
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114737 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114738
         '()
         __tmp114736
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109948_
        (apply make-instance __special-form::t _$args109948_)))
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
      (let ((__tmp114741 (list __syntax::t))
            (__tmp114739
             (let ((__tmp114740
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114740 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114741
         '()
         __tmp114739
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109945_
        (apply make-instance __core-form::t _$args109945_)))
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
      (let ((__tmp114744 (list __core-form::t))
            (__tmp114742
             (let ((__tmp114743
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114743 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114744
         '()
         __tmp114742
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109942_
        (apply make-instance __core-expression::t _$args109942_)))
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
      (let ((__tmp114747 (list __core-form::t))
            (__tmp114745
             (let ((__tmp114746
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114746 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114747
         '()
         __tmp114745
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109939_
        (apply make-instance __core-special-form::t _$args109939_)))
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
      (let ((__tmp114750 (list __syntax::t))
            (__tmp114748
             (let ((__tmp114749
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114749 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114750
         '()
         __tmp114748
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109936_
        (apply make-instance __struct-info::t _$args109936_)))
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
      (let ((__tmp114753 (list __syntax::t))
            (__tmp114751
             (let ((__tmp114752
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114752 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114753
         '()
         __tmp114751
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109933_ (apply make-instance __feature::t _$args109933_)))
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
      (let ((__tmp114756 (list __context::t))
            (__tmp114754
             (let ((__tmp114755
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114755 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114756
         '(id path import export)
         __tmp114754
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109930_ (apply make-instance __module::t _$args109930_)))
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
      (let ((__tmp114758
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114757
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114758 __tmp114757)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109905_ _ctx109906_)
        (if _ctx109906_
            (let ((_id109908_
                   (let () (declare (not safe)) (__AST-e _id109905_))))
              (let _lp109910_ ((_ctx109912_ _ctx109906_))
                (let ((_$e109914_
                       (table-ref
                        (##structure-ref _ctx109912_ '4 __context::t '#f)
                        _id109908_
                        '#f)))
                  (if _$e109914_
                      (values _$e109914_)
                      (let ((_$e109917_
                             (##structure-ref
                              _ctx109912_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109917_
                            (let ()
                              (declare (not safe))
                              (_lp109910_ _$e109917_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109923_)
        (let ((_ctx109925_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109923_ _ctx109925_))))
    (define __core-resolve
      (lambda _g114760_
        (let ((_g114759_ (let () (declare (not safe)) (##length _g114760_))))
          (cond ((let () (declare (not safe)) (##fx= _g114759_ 1))
                 (apply (lambda (_id109923_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109923_)))
                        _g114760_))
                ((let () (declare (not safe)) (##fx= _g114759_ 2))
                 (apply (lambda (_id109927_ _ctx109928_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109927_ _ctx109928_)))
                        _g114760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114760_))))))
    (define __core-bound-id?__%
      (lambda (_id109888_ _is?109889_)
        (let ((_$e109891_
               (let () (declare (not safe)) (__core-resolve__0 _id109888_))))
          (if _$e109891_ (_is?109889_ _$e109891_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109897_)
        (let ((_is?109899_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109897_ _is?109899_))))
    (define __core-bound-id?
      (lambda _g114762_
        (let ((_g114761_ (let () (declare (not safe)) (##length _g114762_))))
          (cond ((let () (declare (not safe)) (##fx= _g114761_ 1))
                 (apply (lambda (_id109897_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109897_)))
                        _g114762_))
                ((let () (declare (not safe)) (##fx= _g114761_ 2))
                 (apply (lambda (_id109901_ _is?109902_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109901_ _is?109902_)))
                        _g114762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114762_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109871_ _eid109872_ _ctx109873_)
        (if _eid109872_
            (let ((__tmp114765
                   (##structure-ref _ctx109873_ '4 __context::t '#f))
                  (__tmp114764
                   (let () (declare (not safe)) (__AST-e _id109871_)))
                  (__tmp114763
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109872_))))
              (declare (not safe))
              (table-set! __tmp114765 __tmp114764 __tmp114763))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109878_ _eid109879_)
        (let ((_ctx109881_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109878_ _eid109879_ _ctx109881_))))
    (define __core-bind-runtime!
      (lambda _g114767_
        (let ((_g114766_ (let () (declare (not safe)) (##length _g114767_))))
          (cond ((let () (declare (not safe)) (##fx= _g114766_ 2))
                 (apply (lambda (_id109878_ _eid109879_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109878_ _eid109879_)))
                        _g114767_))
                ((let () (declare (not safe)) (##fx= _g114766_ 3))
                 (apply (lambda (_id109883_ _eid109884_ _ctx109885_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109883_
                             _eid109884_
                             _ctx109885_)))
                        _g114767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114767_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109854_ _e109855_ _make109856_)
        (let ((__tmp114768
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109855_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109855_
                   (_make109856_ _e109855_ _id109854_))))
          (declare (not safe))
          (table-set! __*core* _id109854_ __tmp114768))))
    (define __core-bind-syntax!__0
      (lambda (_id109861_ _e109862_)
        (let ((_make109864_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109861_ _e109862_ _make109864_))))
    (define __core-bind-syntax!
      (lambda _g114770_
        (let ((_g114769_ (let () (declare (not safe)) (##length _g114770_))))
          (cond ((let () (declare (not safe)) (##fx= _g114769_ 2))
                 (apply (lambda (_id109861_ _e109862_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109861_ _e109862_)))
                        _g114770_))
                ((let () (declare (not safe)) (##fx= _g114769_ 3))
                 (apply (lambda (_id109866_ _e109867_ _make109868_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109866_
                             _e109867_
                             _make109868_)))
                        _g114770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114770_))))))
    (define __core-bind-macro!
      (lambda (_id109850_ _e109851_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109850_ _e109851_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109847_ _e109848_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109847_ _e109848_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109831_ _e109832_ _ctx109833_)
        (let ((__tmp114774 (##structure-ref _ctx109833_ '4 __context::t '#f))
              (__tmp114773 (let () (declare (not safe)) (__AST-e _id109831_)))
              (__tmp114771
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109832_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109832_
                   (let ((__tmp114772
                          (let () (declare (not safe)) (__AST-e _id109831_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109832_ __tmp114772)))))
          (declare (not safe))
          (table-set! __tmp114774 __tmp114773 __tmp114771))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109838_ _e109839_)
        (let ((_ctx109841_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109838_ _e109839_ _ctx109841_))))
    (define __core-bind-user-syntax!
      (lambda _g114776_
        (let ((_g114775_ (let () (declare (not safe)) (##length _g114776_))))
          (cond ((let () (declare (not safe)) (##fx= _g114775_ 2))
                 (apply (lambda (_id109838_ _e109839_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109838_
                             _e109839_)))
                        _g114776_))
                ((let () (declare (not safe)) (##fx= _g114775_ 3))
                 (apply (lambda (_id109843_ _e109844_ _ctx109845_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109843_
                             _e109844_
                             _ctx109845_)))
                        _g114776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114776_))))))
    (define make-__runtime-id__%
      (lambda (_id109812_ _ctx109813_)
        (let ((_id109815_ (let () (declare (not safe)) (__AST-e _id109812_))))
          (if (let () (declare (not safe)) (eq? _id109815_ '_))
              '#f
              (if (uninterned-symbol? _id109815_)
                  (gensym _id109815_)
                  (if (let () (declare (not safe)) (symbol? _id109815_))
                      (let ((_$e109817_
                             (##structure-ref
                              _ctx109813_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109817_))
                            (gensym _id109815_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109817_))
                                (let ((__tmp114777
                                       (##structure-ref
                                        _ctx109813_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114777 '"#" _id109815_))
                                _id109815_)))
                      (error '"Illegal runtime identifier" _id109815_)))))))
    (define make-__runtime-id__0
      (lambda (_id109823_)
        (let ((_ctx109825_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109823_ _ctx109825_))))
    (define make-__runtime-id
      (lambda _g114779_
        (let ((_g114778_ (let () (declare (not safe)) (##length _g114779_))))
          (cond ((let () (declare (not safe)) (##fx= _g114778_ 1))
                 (apply (lambda (_id109823_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109823_)))
                        _g114779_))
                ((let () (declare (not safe)) (##fx= _g114778_ 2))
                 (apply (lambda (_id109827_ _ctx109828_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109827_ _ctx109828_)))
                        _g114779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114779_))))))
    (define make-__context-local__%
      (lambda (_super109801_)
        (let ((__tmp114780
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109801_ __tmp114780))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109807_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109807_))))
    (define make-__context-local
      (lambda _g114782_
        (let ((_g114781_ (let () (declare (not safe)) (##length _g114782_))))
          (cond ((let () (declare (not safe)) (##fx= _g114781_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114782_))
                ((let () (declare (not safe)) (##fx= _g114781_ 1))
                 (apply (lambda (_super109809_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109809_)))
                        _g114782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114782_))))))
    (define make-__context-module__%
      (lambda (_id109781_ _ns109782_ _path109783_ _super109784_)
        (let ((__tmp114783
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109782_
           _super109784_
           __tmp114783
           _id109781_
           _path109783_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109789_ _ns109790_ _path109791_)
        (let ((_super109793_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109789_
           _ns109790_
           _path109791_
           _super109793_))))
    (define make-__context-module
      (lambda _g114785_
        (let ((_g114784_ (let () (declare (not safe)) (##length _g114785_))))
          (cond ((let () (declare (not safe)) (##fx= _g114784_ 3))
                 (apply (lambda (_id109789_ _ns109790_ _path109791_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109789_
                             _ns109790_
                             _path109791_)))
                        _g114785_))
                ((let () (declare (not safe)) (##fx= _g114784_ 4))
                 (apply (lambda (_id109795_
                                 _ns109796_
                                 _path109797_
                                 _super109798_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109795_
                             _ns109796_
                             _path109797_
                             _super109798_)))
                        _g114785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114785_))))))
    (define __SRC__%
      (lambda (_e109764_ _src-stx109765_)
        (if (or (let () (declare (not safe)) (pair? _e109764_))
                (let () (declare (not safe)) (symbol? _e109764_)))
            (let ((__tmp114789
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109765_
                          'gerbil#AST::t))
                       (let ((__tmp114790
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109765_))))
                         (declare (not safe))
                         (__locat __tmp114790))
                       '#f)))
              (declare (not safe))
              (##make-source _e109764_ __tmp114789))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109764_ 'gerbil#AST::t))
                (let ((__tmp114788
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109764_ '1 AST::t '#f)))
                      (__tmp114786
                       (let ((__tmp114787
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109764_))))
                         (declare (not safe))
                         (__locat __tmp114787))))
                  (declare (not safe))
                  (##make-source __tmp114788 __tmp114786))
                (error '"BUG! Cannot sourcify object" _e109764_)))))
    (define __SRC__0
      (lambda (_e109773_)
        (let ((_src-stx109775_ '#f))
          (declare (not safe))
          (__SRC__% _e109773_ _src-stx109775_))))
    (define __SRC
      (lambda _g114792_
        (let ((_g114791_ (let () (declare (not safe)) (##length _g114792_))))
          (cond ((let () (declare (not safe)) (##fx= _g114791_ 1))
                 (apply (lambda (_e109773_)
                          (let () (declare (not safe)) (__SRC__0 _e109773_)))
                        _g114792_))
                ((let () (declare (not safe)) (##fx= _g114791_ 2))
                 (apply (lambda (_e109777_ _src-stx109778_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109777_ _src-stx109778_)))
                        _g114792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114792_))))))
    (define __locat
      (lambda (_loc109761_)
        (if (let () (declare (not safe)) (##locat? _loc109761_))
            _loc109761_
            '#f)))
    (define __check-values
      (lambda (_obj109756_ _k109757_)
        (let ((_count109759_
               (if (let () (declare (not safe)) (##values? _obj109756_))
                   (let () (declare (not safe)) (##vector-length _obj109756_))
                   '1)))
          (if (fx= _count109759_ _k109757_)
              '#!void
              (error (if (fx< _count109759_ _k109757_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109756_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109756_))
                         _obj109756_)
                     _k109757_)))))
    (define __compile
      (lambda (_stx109726_)
        (let* ((_$e109728_ _stx109726_)
               (_$E109730109736_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109728_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109728_))
              (let* ((_$tgt109731109739_
                      (let () (declare (not safe)) (__AST-e _$e109728_)))
                     (_$hd109732109742_
                      (let () (declare (not safe)) (##car _$tgt109731109739_)))
                     (_$tl109733109745_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109731109739_))))
                (let* ((_form109749_ _$hd109732109742_)
                       (_$e109751_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109749_))))
                  (if _$e109751_
                      ((lambda (_bind109754_)
                         ((##structure-ref _bind109754_ '1 __syntax::t '#f)
                          _stx109726_))
                       _$e109751_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109726_
                         _form109749_)))))
              (let () (declare (not safe)) (_$E109730109736_))))))
    (define __compile-error__%
      (lambda (_stx109713_ _detail109714_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109713_
           _detail109714_))))
    (define __compile-error__0
      (lambda (_stx109719_)
        (let ((_detail109721_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109719_ _detail109721_))))
    (define __compile-error
      (lambda _g114794_
        (let ((_g114793_ (let () (declare (not safe)) (##length _g114794_))))
          (cond ((let () (declare (not safe)) (##fx= _g114793_ 1))
                 (apply (lambda (_stx109719_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109719_)))
                        _g114794_))
                ((let () (declare (not safe)) (##fx= _g114793_ 2))
                 (apply (lambda (_stx109723_ _detail109724_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109723_ _detail109724_)))
                        _g114794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114794_))))))
    (define __compile-ignore%
      (lambda (_stx109710_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109710_))))
    (define __compile-begin%
      (lambda (_stx109685_)
        (let* ((_$e109687_ _stx109685_)
               (_$E109689109695_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109687_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109687_))
              (let* ((_$tgt109690109698_
                      (let () (declare (not safe)) (__AST-e _$e109687_)))
                     (_$hd109691109701_
                      (let () (declare (not safe)) (##car _$tgt109690109698_)))
                     (_$tl109692109704_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109690109698_))))
                (let* ((_body109708_ _$tl109692109704_)
                       (__tmp114795
                        (let ((__tmp114796 (map __compile _body109708_)))
                          (declare (not safe))
                          (cons 'begin __tmp114796))))
                  (declare (not safe))
                  (__SRC__% __tmp114795 _stx109685_)))
              (let () (declare (not safe)) (_$E109689109695_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109660_)
        (let* ((_$e109662_ _stx109660_)
               (_$E109664109670_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109662_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109662_))
              (let* ((_$tgt109665109673_
                      (let () (declare (not safe)) (__AST-e _$e109662_)))
                     (_$hd109666109676_
                      (let () (declare (not safe)) (##car _$tgt109665109673_)))
                     (_$tl109667109679_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109665109673_))))
                (let* ((_body109683_ _$tl109667109679_)
                       (__tmp114797
                        (let ((__tmp114798
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109683_))))
                          (declare (not safe))
                          (cons 'begin __tmp114798))))
                  (declare (not safe))
                  (__SRC__% __tmp114797 _stx109660_)))
              (let () (declare (not safe)) (_$E109664109670_))))))
    (define __compile-import%
      (lambda (_stx109635_)
        (let* ((_$e109637_ _stx109635_)
               (_$E109639109645_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109637_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109637_))
              (let* ((_$tgt109640109648_
                      (let () (declare (not safe)) (__AST-e _$e109637_)))
                     (_$hd109641109651_
                      (let () (declare (not safe)) (##car _$tgt109640109648_)))
                     (_$tl109642109654_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109640109648_))))
                (let* ((_body109658_ _$tl109642109654_)
                       (__tmp114799
                        (let ((__tmp114800
                               (let ((__tmp114801
                                      (let ((__tmp114802
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109658_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114802))))
                                 (declare (not safe))
                                 (cons __tmp114801 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114800))))
                  (declare (not safe))
                  (__SRC__% __tmp114799 _stx109635_)))
              (let () (declare (not safe)) (_$E109639109645_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109582_)
        (let* ((_$e109584_ _stx109582_)
               (_$E109586109598_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109584_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109584_))
              (let* ((_$tgt109587109601_
                      (let () (declare (not safe)) (__AST-e _$e109584_)))
                     (_$hd109588109604_
                      (let () (declare (not safe)) (##car _$tgt109587109601_)))
                     (_$tl109589109607_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109587109601_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109589109607_))
                    (let* ((_$tgt109590109611_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109589109607_)))
                           (_$hd109591109614_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109590109611_)))
                           (_$tl109592109617_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109590109611_))))
                      (let ((_ann109621_ _$hd109591109614_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109592109617_))
                            (let* ((_$tgt109593109623_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109592109617_)))
                                   (_$hd109594109626_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109593109623_)))
                                   (_$tl109595109629_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109593109623_))))
                              (let ((_expr109633_ _$hd109594109626_))
                                (if (let ((__tmp114803
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109595109629_))))
                                      (declare (not safe))
                                      (equal? __tmp114803 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109633_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109586109598_)))))
                            (let () (declare (not safe)) (_$E109586109598_)))))
                    (let () (declare (not safe)) (_$E109586109598_))))
              (let () (declare (not safe)) (_$E109586109598_))))))
    (define __compile-define-values%
      (lambda (_stx109473_)
        (let* ((_$e109475_ _stx109473_)
               (_$E109477109489_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109475_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109475_))
              (let* ((_$tgt109478109492_
                      (let () (declare (not safe)) (__AST-e _$e109475_)))
                     (_$hd109479109495_
                      (let () (declare (not safe)) (##car _$tgt109478109492_)))
                     (_$tl109480109498_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109478109492_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109480109498_))
                    (let* ((_$tgt109481109502_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109480109498_)))
                           (_$hd109482109505_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109481109502_)))
                           (_$tl109483109508_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109481109502_))))
                      (let ((_hd109512_ _$hd109482109505_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109483109508_))
                            (let* ((_$tgt109484109514_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109483109508_)))
                                   (_$hd109485109517_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109484109514_)))
                                   (_$tl109486109520_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109484109514_))))
                              (let ((_expr109524_ _$hd109485109517_))
                                (if (let ((__tmp114836
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109486109520_))))
                                      (declare (not safe))
                                      (equal? __tmp114836 '()))
                                    (let* ((_$e109526_ _hd109512_)
                                           (_$E109528109569_
                                            (lambda ()
                                              (let ((_$E109529109554_
                                                     (lambda ()
                                                       (let* ((_$E109530109541_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109526_))))
                      (_ids109544_ _hd109512_)
                      (_len109546_ (length _ids109544_))
                      (_tmp109548_
                       (let ((__tmp114804 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114804))))
                 (let ((__tmp114805
                        (let ((__tmp114806
                               (let ((__tmp114823
                                      (let ((__tmp114824
                                             (let ((__tmp114825
                                                    (let ((__tmp114826
                                                           (let ((__tmp114827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109524_))))
                     (declare (not safe))
                     (cons __tmp114827 '()))))
              (declare (not safe))
              (cons _tmp109548_ __tmp114826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114825))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114824 _stx109473_)))
                                     (__tmp114807
                                      (let ((__tmp114819
                                             (let ((__tmp114820
                                                    (let ((__tmp114821
                                                           (let ((__tmp114822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109546_ '()))))
                     (declare (not safe))
                     (cons _tmp109548_ __tmp114822))))
              (declare (not safe))
              (cons '__check-values __tmp114821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114820
                                                _stx109473_)))
                                            (__tmp114808
                                             (let ((__tmp114809
                                                    (let ((__tmp114811
                                                           (lambda (_id109551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109552_)
                     (if (let () (declare (not safe)) (__AST-e _id109551_))
                         (let ((__tmp114812
                                (let ((__tmp114813
                                       (let ((__tmp114818
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109551_)))
                                             (__tmp114814
                                              (let ((__tmp114815
                                                     (let ((__tmp114816
                                                            (let ((__tmp114817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109552_ '()))))
                      (declare (not safe))
                      (cons _tmp109548_ __tmp114817))))
               (declare (not safe))
               (cons '##vector-ref __tmp114816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114815 '()))))
                                         (declare (not safe))
                                         (cons __tmp114818 __tmp114814))))
                                  (declare (not safe))
                                  (cons 'define __tmp114813))))
                           (declare (not safe))
                           (__SRC__% __tmp114812 _stx109473_))
                         '#f)))
                  (__tmp114810
                   (let () (declare (not safe)) (iota _len109546_))))
              (declare (not safe))
              (filter-map2 __tmp114811 _ids109544_ __tmp114810))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114809))))
                                        (declare (not safe))
                                        (cons __tmp114819 __tmp114808))))
                                 (declare (not safe))
                                 (cons __tmp114823 __tmp114807))))
                          (declare (not safe))
                          (cons 'begin __tmp114806))))
                   (declare (not safe))
                   (__SRC__% __tmp114805 _stx109473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109526_))
                                                    (let* ((_$tgt109531109557_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109526_)))
                                                           (_$hd109532109560_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109531109557_)))
                                                           (_$tl109533109563_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109531109557_))))
                                                      (let ((_id109567_
                                                             _$hd109532109560_))
                                                        (if (let ((__tmp114833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109533109563_))))
                      (declare (not safe))
                      (equal? __tmp114833 '()))
                    (let ((__tmp114828
                           (let ((__tmp114829
                                  (let ((__tmp114832
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109567_)))
                                        (__tmp114830
                                         (let ((__tmp114831
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109524_))))
                                           (declare (not safe))
                                           (cons __tmp114831 '()))))
                                    (declare (not safe))
                                    (cons __tmp114832 __tmp114830))))
                             (declare (not safe))
                             (cons 'define __tmp114829))))
                      (declare (not safe))
                      (__SRC__% __tmp114828 _stx109473_))
                    (let () (declare (not safe)) (_$E109529109554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109529109554_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109526_))
                                          (let* ((_$tgt109534109572_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109526_)))
                                                 (_$hd109535109575_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109534109572_)))
                                                 (_$tl109536109578_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109534109572_))))
                                            (if (let ((__tmp114835
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109535109575_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114835 '#f))
                                                (if (let ((__tmp114834
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109536109578_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114834 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109524_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109528109569_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109528109569_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109528109569_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109477109489_)))))
                            (let () (declare (not safe)) (_$E109477109489_)))))
                    (let () (declare (not safe)) (_$E109477109489_))))
              (let () (declare (not safe)) (_$E109477109489_))))))
    (define __compile-head-id
      (lambda (_e109471_)
        (let ((__tmp114837
               (if (let () (declare (not safe)) (__AST-e _e109471_))
                   _e109471_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114837))))
    (define __compile-lambda-head
      (lambda (_hd109428_)
        (let _recur109430_ ((_rest109432_ _hd109428_))
          (let* ((_$e109434_ _rest109432_)
                 (_$E109436109454_
                  (lambda ()
                    (let ((_$E109437109451_
                           (lambda ()
                             (let* ((_$E109438109446_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109434_))))
                                    (_tail109449_ _$e109434_))
                               (declare (not safe))
                               (__compile-head-id _tail109449_)))))
                      (if (let ((__tmp114838
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109434_))))
                            (declare (not safe))
                            (equal? __tmp114838 '()))
                          '()
                          (let () (declare (not safe)) (_$E109437109451_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109434_))
                (let* ((_$tgt109439109457_
                        (let () (declare (not safe)) (__AST-e _$e109434_)))
                       (_$hd109440109460_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109439109457_)))
                       (_$tl109441109463_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109439109457_))))
                  (let* ((_hd109467_ _$hd109440109460_)
                         (_rest109469_ _$tl109441109463_))
                    (let ((__tmp114840
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109467_)))
                          (__tmp114839
                           (let ()
                             (declare (not safe))
                             (_recur109430_ _rest109469_))))
                      (declare (not safe))
                      (cons __tmp114840 __tmp114839))))
                (let () (declare (not safe)) (_$E109436109454_)))))))
    (define __compile-lambda%
      (lambda (_stx109375_)
        (let* ((_$e109377_ _stx109375_)
               (_$E109379109391_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109377_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109377_))
              (let* ((_$tgt109380109394_
                      (let () (declare (not safe)) (__AST-e _$e109377_)))
                     (_$hd109381109397_
                      (let () (declare (not safe)) (##car _$tgt109380109394_)))
                     (_$tl109382109400_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109380109394_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109382109400_))
                    (let* ((_$tgt109383109404_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109382109400_)))
                           (_$hd109384109407_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109383109404_)))
                           (_$tl109385109410_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109383109404_))))
                      (let ((_hd109414_ _$hd109384109407_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109385109410_))
                            (let* ((_$tgt109386109416_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109385109410_)))
                                   (_$hd109387109419_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109386109416_)))
                                   (_$tl109388109422_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109386109416_))))
                              (let ((_body109426_ _$hd109387109419_))
                                (if (let ((__tmp114846
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109388109422_))))
                                      (declare (not safe))
                                      (equal? __tmp114846 '()))
                                    (let ((__tmp114841
                                           (let ((__tmp114842
                                                  (let ((__tmp114845
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109414_)))
                                                        (__tmp114843
                                                         (let ((__tmp114844
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109426_))))
                   (declare (not safe))
                   (cons __tmp114844 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114845
                                                          __tmp114843))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114842))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114841 _stx109375_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109379109391_)))))
                            (let () (declare (not safe)) (_$E109379109391_)))))
                    (let () (declare (not safe)) (_$E109379109391_))))
              (let () (declare (not safe)) (_$E109379109391_))))))
    (define __compile-case-lambda%
      (lambda (_stx109167_)
        (letrec ((_variadic?109169_
                  (lambda (_hd109340_)
                    (let* ((_$e109342_ _hd109340_)
                           (_$E109344109360_
                            (lambda ()
                              (let ((_$E109345109357_
                                     (lambda ()
                                       (let ((_$E109346109354_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109342_)))))
                                         '#t))))
                                (if (let ((__tmp114847
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109342_))))
                                      (declare (not safe))
                                      (equal? __tmp114847 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109345109357_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109342_))
                          (let* ((_$tgt109347109363_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109342_)))
                                 (_$hd109348109366_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109347109363_)))
                                 (_$tl109349109369_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109347109363_))))
                            (let ((_rest109373_ _$tl109349109369_))
                              (declare (not safe))
                              (_variadic?109169_ _rest109373_)))
                          (let () (declare (not safe)) (_$E109344109360_))))))
                 (_arity109170_
                  (lambda (_hd109305_)
                    (let _lp109307_ ((_rest109309_ _hd109305_) (_k109310_ '0))
                      (let* ((_$e109312_ _rest109309_)
                             (_$E109314109325_
                              (lambda ()
                                (let ((_$E109315109322_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109312_)))))
                                  _k109310_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109312_))
                            (let* ((_$tgt109316109328_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109312_)))
                                   (_$hd109317109331_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109316109328_)))
                                   (_$tl109318109334_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109316109328_))))
                              (let* ((_rest109338_ _$tl109318109334_)
                                     (__tmp114848
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109310_ '1))))
                                (declare (not safe))
                                (_lp109307_ _rest109338_ __tmp114848)))
                            (let ()
                              (declare (not safe))
                              (_$E109314109325_)))))))
                 (_generate109171_
                  (lambda (_rest109232_ _args109233_ _len109234_)
                    (let* ((_$e109236_ _rest109232_)
                           (_$E109238109249_
                            (lambda ()
                              (let* ((_$E109239109246_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109236_))))
                                     (__tmp114849
                                      (let ((__tmp114850
                                             (let ((__tmp114851
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109233_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114851))))
                                        (declare (not safe))
                                        (cons 'error __tmp114850))))
                                (declare (not safe))
                                (__SRC__% __tmp114849 _stx109167_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109236_))
                          (let* ((_$tgt109240109252_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109236_)))
                                 (_$hd109241109255_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109240109252_)))
                                 (_$tl109242109258_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109240109252_))))
                            (let* ((_clause109262_ _$hd109241109255_)
                                   (_rest109264_ _$tl109242109258_)
                                   (_$e109266_ _clause109262_)
                                   (_$E109268109277_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109266_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109266_))
                                  (let* ((_$tgt109269109280_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109266_)))
                                         (_$hd109270109283_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109269109280_)))
                                         (_$tl109271109286_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109269109280_))))
                                    (let ((_hd109290_ _$hd109270109283_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109271109286_))
                                          (let* ((_$tgt109272109292_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109271109286_)))
                                                 (_$hd109273109295_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109272109292_)))
                                                 (_$tl109274109298_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109272109292_))))
                                            (if (let ((__tmp114866
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109274109298_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114866 '()))
                                                (let ((_clen109302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109170_
                                                          _hd109290_)))
                                                      (_cmp109303_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109169_
                                                              _hd109290_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114852
                                                         (let ((__tmp114853
                                                                (let ((__tmp114863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114864
                                      (let ((__tmp114865
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109302_ '()))))
                                        (declare (not safe))
                                        (cons _len109234_ __tmp114865))))
                                 (declare (not safe))
                                 (cons _cmp109303_ __tmp114864)))
                              (__tmp114854
                               (let ((__tmp114857
                                      (let ((__tmp114858
                                             (let ((__tmp114859
                                                    (let ((__tmp114861
                                                           (let ((__tmp114862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109262_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114862)))
                  (__tmp114860
                   (let () (declare (not safe)) (cons _args109233_ '()))))
              (declare (not safe))
              (cons __tmp114861 __tmp114860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114859))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114858 _stx109167_)))
                                     (__tmp114855
                                      (let ((__tmp114856
                                             (let ()
                                               (declare (not safe))
                                               (_generate109171_
                                                _rest109264_
                                                _args109233_
                                                _len109234_))))
                                        (declare (not safe))
                                        (cons __tmp114856 '()))))
                                 (declare (not safe))
                                 (cons __tmp114857 __tmp114855))))
                          (declare (not safe))
                          (cons __tmp114863 __tmp114854))))
                   (declare (not safe))
                   (cons 'if __tmp114853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114852
                                                     _stx109167_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109268109277_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109268109277_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109268109277_)))))
                          (let () (declare (not safe)) (_$E109238109249_)))))))
          (let* ((_$e109173_ _stx109167_)
                 (_$E109175109207_
                  (lambda ()
                    (let ((_$E109176109189_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109173_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109173_))
                          (let* ((_$tgt109177109192_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109173_)))
                                 (_$hd109178109195_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109177109192_)))
                                 (_$tl109179109198_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109177109192_))))
                            (let ((_clauses109202_ _$tl109179109198_))
                              (let ((_args109204_
                                     (let ((__tmp114867 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114867 _stx109167_)))
                                    (_len109205_
                                     (let ((__tmp114868 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114868 _stx109167_))))
                                (let ((__tmp114869
                                       (let ((__tmp114870
                                              (let ((__tmp114871
                                                     (let ((__tmp114872
                                                            (let ((__tmp114873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114874
                                  (let ((__tmp114877
                                         (let ((__tmp114878
                                                (let ((__tmp114879
                                                       (let ((__tmp114880
                                                              (let ((__tmp114881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114882
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109204_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114882))))
                        (declare (not safe))
                        (__SRC__% __tmp114881 _stx109167_))))
                 (declare (not safe))
                 (cons __tmp114880 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109205_
                                                        __tmp114879))))
                                           (declare (not safe))
                                           (cons __tmp114878 '())))
                                        (__tmp114875
                                         (let ((__tmp114876
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109171_
                                                   _clauses109202_
                                                   _args109204_
                                                   _len109205_))))
                                           (declare (not safe))
                                           (cons __tmp114876 '()))))
                                    (declare (not safe))
                                    (cons __tmp114877 __tmp114875))))
                             (declare (not safe))
                             (cons 'let __tmp114874))))
                      (declare (not safe))
                      (__SRC__% __tmp114873 _stx109167_))))
               (declare (not safe))
               (cons __tmp114872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109204_
                                                      __tmp114871))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114870))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114869 _stx109167_)))))
                          (let () (declare (not safe)) (_$E109176109189_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109173_))
                (let* ((_$tgt109180109210_
                        (let () (declare (not safe)) (__AST-e _$e109173_)))
                       (_$hd109181109213_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109180109210_)))
                       (_$tl109182109216_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109180109210_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109182109216_))
                      (let* ((_$tgt109183109220_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109182109216_)))
                             (_$hd109184109223_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109183109220_)))
                             (_$tl109185109226_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109183109220_))))
                        (let ((_clause109230_ _$hd109184109223_))
                          (if (let ((__tmp114884
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109185109226_))))
                                (declare (not safe))
                                (equal? __tmp114884 '()))
                              (let ((__tmp114883
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109230_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114883))
                              (let ()
                                (declare (not safe))
                                (_$E109175109207_)))))
                      (let () (declare (not safe)) (_$E109175109207_))))
                (let () (declare (not safe)) (_$E109175109207_)))))))
    (define __compile-let-form
      (lambda (_stx108936_ _compile-simple108937_ _compile-values108938_)
        (letrec ((_simple-bind?108940_
                  (lambda (_hd109125_)
                    (let* ((_hd109126109136_ _hd109125_)
                           (_else109129109144_ (lambda () '#f)))
                      (let ((_K109132109157_ (lambda (_id109155_) '#t))
                            (_K109131109149_ (lambda () '#t)))
                        (let ((_try-match109128109152_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109126109136_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109131109149_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109129109144_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109126109136_))
                              (let ((_tl109134109162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109126109136_)))
                                    (_hd109133109160_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109126109136_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109134109162_))
                                    (let ((_id109165_ _hd109133109160_))
                                      (declare (not safe))
                                      (_K109132109157_ _id109165_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109128109152_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109128109152_))))))))
                 (_car-e108941_
                  (lambda (_hd109123_)
                    (if (let () (declare (not safe)) (pair? _hd109123_))
                        (car _hd109123_)
                        _hd109123_))))
          (let* ((_$e108943_ _stx108936_)
                 (_$E108945109088_
                  (lambda ()
                    (let ((_$E108946108968_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108943_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108943_))
                          (let* ((_$tgt108947108971_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108943_)))
                                 (_$hd108948108974_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108947108971_)))
                                 (_$tl108949108977_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108947108971_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108949108977_))
                                (let* ((_$tgt108950108981_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108949108977_)))
                                       (_$hd108951108984_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108950108981_)))
                                       (_$tl108952108987_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108950108981_))))
                                  (let ((_hd108991_ _$hd108951108984_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108952108987_))
                                        (let* ((_$tgt108953108993_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108952108987_)))
                                               (_$hd108954108996_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108953108993_)))
                                               (_$tl108955108999_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108953108993_))))
                                          (let ((_body109003_
                                                 _$hd108954108996_))
                                            (if (let ((__tmp114887
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108955108999_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114887 '()))
                                                (let* ((_hd-ids109043_
                                                        (map (lambda (_bind109005_)
                                                               (let* ((_$e109007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109005_)
                              (_$E109009109018_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109007_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109007_))
                             (let* ((_$tgt109010109021_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109007_)))
                                    (_$hd109011109024_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109010109021_)))
                                    (_$tl109012109027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109010109021_))))
                               (let ((_ids109031_ _$hd109011109024_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109012109027_))
                                     (let* ((_$tgt109013109033_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109012109027_)))
                                            (_$hd109014109036_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109013109033_)))
                                            (_$tl109015109039_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109013109033_))))
                                       (if (let ((__tmp114885
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109015109039_))))
                                             (declare (not safe))
                                             (equal? __tmp114885 '()))
                                           _ids109031_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109009109018_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109009109018_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109009109018_)))))
                     _hd108991_))
               (_exprs109083_
                (map (lambda (_bind109045_)
                       (let* ((_$e109047_ _bind109045_)
                              (_$E109049109058_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109047_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109047_))
                             (let* ((_$tgt109050109061_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109047_)))
                                    (_$hd109051109064_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109050109061_)))
                                    (_$tl109052109067_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109050109061_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109052109067_))
                                   (let* ((_$tgt109053109071_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109052109067_)))
                                          (_$hd109054109074_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109053109071_)))
                                          (_$tl109055109077_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109053109071_))))
                                     (let ((_expr109081_ _$hd109054109074_))
                                       (if (let ((__tmp114886
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109055109077_))))
                                             (declare (not safe))
                                             (equal? __tmp114886 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109081_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109049109058_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109049109058_))))
                             (let ()
                               (declare (not safe))
                               (_$E109049109058_)))))
                     _hd108991_))
               (_body109085_
                (let () (declare (not safe)) (__compile _body109003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109043_))
              (_compile-simple108937_
               (map _car-e108941_ _hd-ids109043_)
               _exprs109083_
               _body109085_)
              (_compile-values108938_
               _hd-ids109043_
               _exprs109083_
               _body109085_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108946108968_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108946108968_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108946108968_))))
                          (let () (declare (not safe)) (_$E108946108968_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108943_))
                (let* ((_$tgt108956109091_
                        (let () (declare (not safe)) (__AST-e _$e108943_)))
                       (_$hd108957109094_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108956109091_)))
                       (_$tl108958109097_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108956109091_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108958109097_))
                      (let* ((_$tgt108959109101_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108958109097_)))
                             (_$hd108960109104_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108959109101_)))
                             (_$tl108961109107_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108959109101_))))
                        (if (let ((__tmp114889
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108960109104_))))
                              (declare (not safe))
                              (equal? __tmp114889 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108961109107_))
                                (let* ((_$tgt108962109111_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108961109107_)))
                                       (_$hd108963109114_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108962109111_)))
                                       (_$tl108964109117_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108962109111_))))
                                  (let ((_body109121_ _$hd108963109114_))
                                    (if (let ((__tmp114888
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108964109117_))))
                                          (declare (not safe))
                                          (equal? __tmp114888 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109121_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108945109088_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108945109088_)))
                            (let () (declare (not safe)) (_$E108945109088_))))
                      (let () (declare (not safe)) (_$E108945109088_))))
                (let () (declare (not safe)) (_$E108945109088_)))))))
    (define __compile-let-values%
      (lambda (_stx108751_)
        (letrec ((_compile-simple108753_
                  (lambda (_hd-ids108932_ _exprs108933_ _body108934_)
                    (let ((__tmp114890
                           (let ((__tmp114891
                                  (let ((__tmp114893
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108932_)
                                              _exprs108933_))
                                        (__tmp114892
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108934_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114893 __tmp114892))))
                             (declare (not safe))
                             (cons 'let __tmp114891))))
                      (declare (not safe))
                      (__SRC__% __tmp114890 _stx108751_))))
                 (_compile-values108754_
                  (lambda (_hd-ids108850_ _exprs108851_ _body108852_)
                    (let _lp108854_ ((_rest108856_ _hd-ids108850_)
                                     (_exprs108857_ _exprs108851_)
                                     (_bind108858_ '())
                                     (_post108859_ '()))
                      (let* ((_rest108860108874_ _rest108856_)
                             (_else108863108882_
                              (lambda ()
                                (let ((__tmp114894
                                       (let ((__tmp114895
                                              (let ((__tmp114898
                                                     (reverse _bind108858_))
                                                    (__tmp114896
                                                     (let ((__tmp114897
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108755_
                                                               _post108859_
                                                               _body108852_))))
                                                       (declare (not safe))
                                                       (cons __tmp114897
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114898
                                                      __tmp114896))))
                                         (declare (not safe))
                                         (cons 'let __tmp114895))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114894 _stx108751_)))))
                        (let ((_K108868108915_
                               (lambda (_rest108912_ _id108913_)
                                 (let ((__tmp114904 (cdr _exprs108857_))
                                       (__tmp114899
                                        (let ((__tmp114900
                                               (let ((__tmp114903
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108913_)))
                                                     (__tmp114901
                                                      (let ((__tmp114902
                                                             (car _exprs108857_)))
                                                        (declare (not safe))
                                                        (cons __tmp114902
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114903
                                                       __tmp114901))))
                                          (declare (not safe))
                                          (cons __tmp114900 _bind108858_))))
                                   (declare (not safe))
                                   (_lp108854_
                                    _rest108912_
                                    __tmp114904
                                    __tmp114899
                                    _post108859_))))
                              (_K108865108897_
                               (lambda (_rest108886_ _hd108887_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108887_))
                                     (let ((__tmp114925 (cdr _exprs108857_))
                                           (__tmp114918
                                            (let ((__tmp114919
                                                   (let ((__tmp114924
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108887_)))
                                                         (__tmp114920
                                                          (let ((__tmp114921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114922
                                (let ((__tmp114923 (car _exprs108857_)))
                                  (declare (not safe))
                                  (cons __tmp114923 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114922))))
                    (declare (not safe))
                    (cons __tmp114921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114924
                                                           __tmp114920))))
                                              (declare (not safe))
                                              (cons __tmp114919
                                                    _bind108858_))))
                                       (declare (not safe))
                                       (_lp108854_
                                        _rest108886_
                                        __tmp114925
                                        __tmp114918
                                        _post108859_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108887_))
                                         (let* ((_len108889_
                                                 (length _hd108887_))
                                                (_tmp108891_
                                                 (let ((__tmp114905 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114905))))
                                           (let ((__tmp114917
                                                  (cdr _exprs108857_))
                                                 (__tmp114913
                                                  (let ((__tmp114914
                                                         (let ((__tmp114915
                                                                (let ((__tmp114916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108857_)))
                          (declare (not safe))
                          (cons __tmp114916 '()))))
                   (declare (not safe))
                   (cons _tmp108891_ __tmp114915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114914
                                                          _bind108858_)))
                                                 (__tmp114906
                                                  (let ((__tmp114907
                                                         (let ((__tmp114908
                                                                (let ((__tmp114909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114911
                                      (lambda (_id108894_ _k108895_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108894_))
                                            (let ((__tmp114912
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108894_))))
                                              (declare (not safe))
                                              (cons __tmp114912 _k108895_))
                                            '#f)))
                                     (__tmp114910
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108889_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114911
                                  _hd108887_
                                  __tmp114910))))
                          (declare (not safe))
                          (cons _len108889_ __tmp114909))))
                   (declare (not safe))
                   (cons _tmp108891_ __tmp114908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114907
                                                          _post108859_))))
                                             (declare (not safe))
                                             (_lp108854_
                                              _rest108886_
                                              __tmp114917
                                              __tmp114913
                                              __tmp114906)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108751_
                                            _hd108887_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108860108874_))
                              (let ((_tl108870108920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108860108874_)))
                                    (_hd108869108918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108860108874_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108869108918_))
                                    (let ((_tl108872108925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108869108918_)))
                                          (_hd108871108923_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108869108918_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108872108925_))
                                          (let ((_id108928_ _hd108871108923_)
                                                (_rest108930_
                                                 _tl108870108920_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108868108915_
                                               _rest108930_
                                               _id108928_)))
                                          (let ((_hd108905_ _hd108869108918_)
                                                (_rest108907_
                                                 _tl108870108920_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108865108897_
                                               _rest108907_
                                               _hd108905_)))))
                                    (let ((_hd108905_ _hd108869108918_)
                                          (_rest108907_ _tl108870108920_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108865108897_
                                         _rest108907_
                                         _hd108905_)))))
                              (let ()
                                (declare (not safe))
                                (_else108863108882_))))))))
                 (_compile-post108755_
                  (lambda (_post108757_ _body108758_)
                    (let _lp108760_ ((_rest108762_ _post108757_)
                                     (_check108763_ '())
                                     (_bind108764_ '()))
                      (let* ((_rest108765108777_ _rest108762_)
                             (_else108767108785_
                              (lambda ()
                                (let ((__tmp114926
                                       (let ((__tmp114927
                                              (let ((__tmp114928
                                                     (let ((__tmp114929
                                                            (let ((__tmp114930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114931
                                  (let ((__tmp114932
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108758_ '()))))
                                    (declare (not safe))
                                    (cons _bind108764_ __tmp114932))))
                             (declare (not safe))
                             (cons 'let __tmp114931))))
                      (declare (not safe))
                      (__SRC__% __tmp114930 _stx108751_))))
               (declare (not safe))
               (cons __tmp114929 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114928
                                                        _check108763_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114927))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114926 _stx108751_))))
                             (_K108769108824_
                              (lambda (_rest108788_
                                       _init108789_
                                       _len108790_
                                       _tmp108791_)
                                (let ((__tmp114940
                                       (let ((__tmp114941
                                              (let ((__tmp114942
                                                     (let ((__tmp114943
                                                            (let ((__tmp114944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108790_ '()))))
                      (declare (not safe))
                      (cons _tmp108791_ __tmp114944))))
               (declare (not safe))
               (cons '__check-values __tmp114943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114942
                                                 _stx108751_))))
                                         (declare (not safe))
                                         (cons __tmp114941 _check108763_)))
                                      (__tmp114933
                                       (let ((__tmp114934
                                              (lambda (_hd108793_ _r108794_)
                                                (let* ((_hd108795108802_
                                                        _hd108793_)
                                                       (_E108797108806_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108795108802_)))
               (_K108798108812_
                (lambda (_k108809_ _id108810_)
                  (let ((__tmp114935
                         (let ((__tmp114936
                                (let ((__tmp114937
                                       (let ((__tmp114938
                                              (let ((__tmp114939
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108809_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108791_
                                                      __tmp114939))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114938))))
                                  (declare (not safe))
                                  (cons __tmp114937 '()))))
                           (declare (not safe))
                           (cons _id108810_ __tmp114936))))
                    (declare (not safe))
                    (cons __tmp114935 _r108794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108795108802_))
                                                      (let ((_hd108799108815_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108795108802_)))
                    (_tl108800108817_
                     (let () (declare (not safe)) (##cdr _hd108795108802_))))
                (let* ((_id108820_ _hd108799108815_)
                       (_k108822_ _tl108800108817_))
                  (declare (not safe))
                  (_K108798108812_ _k108822_ _id108820_)))
              (let () (declare (not safe)) (_E108797108806_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114934
                                                 _bind108764_
                                                 _init108789_))))
                                  (declare (not safe))
                                  (_lp108760_
                                   _rest108788_
                                   __tmp114940
                                   __tmp114933)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108765108777_))
                            (let ((_hd108770108827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108765108777_)))
                                  (_tl108771108829_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108765108777_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108770108827_))
                                  (let ((_hd108772108832_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108770108827_)))
                                        (_tl108773108834_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108770108827_))))
                                    (let ((_tmp108837_ _hd108772108832_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108773108834_))
                                          (let ((_hd108774108839_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108773108834_)))
                                                (_tl108775108841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108773108834_))))
                                            (let* ((_len108844_
                                                    _hd108774108839_)
                                                   (_init108846_
                                                    _tl108775108841_)
                                                   (_rest108848_
                                                    _tl108771108829_))
                                              (declare (not safe))
                                              (_K108769108824_
                                               _rest108848_
                                               _init108846_
                                               _len108844_
                                               _tmp108837_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108767108785_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108767108785_))))
                            (let ()
                              (declare (not safe))
                              (_else108767108785_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108751_
             _compile-simple108753_
             _compile-values108754_)))))
    (define __compile-letrec-values%
      (lambda (_stx108551_)
        (letrec ((_compile-simple108553_
                  (lambda (_hd-ids108747_ _exprs108748_ _body108749_)
                    (let ((__tmp114945
                           (let ((__tmp114946
                                  (let ((__tmp114948
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108747_)
                                              _exprs108748_))
                                        (__tmp114947
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108749_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114948 __tmp114947))))
                             (declare (not safe))
                             (cons 'letrec __tmp114946))))
                      (declare (not safe))
                      (__SRC__% __tmp114945 _stx108551_))))
                 (_compile-values108554_
                  (lambda (_hd-ids108661_ _exprs108662_ _body108663_)
                    (let _lp108665_ ((_rest108667_ _hd-ids108661_)
                                     (_exprs108668_ _exprs108662_)
                                     (_pre108669_ '())
                                     (_bind108670_ '())
                                     (_post108671_ '()))
                      (let* ((_rest108672108686_ _rest108667_)
                             (_else108675108694_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108555_
                                   _pre108669_
                                   _bind108670_
                                   _post108671_
                                   _body108663_)))))
                        (let ((_K108680108730_
                               (lambda (_rest108727_ _id108728_)
                                 (let ((__tmp114954 (cdr _exprs108668_))
                                       (__tmp114949
                                        (let ((__tmp114950
                                               (let ((__tmp114953
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108728_)))
                                                     (__tmp114951
                                                      (let ((__tmp114952
                                                             (car _exprs108668_)))
                                                        (declare (not safe))
                                                        (cons __tmp114952
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114953
                                                       __tmp114951))))
                                          (declare (not safe))
                                          (cons __tmp114950 _bind108670_))))
                                   (declare (not safe))
                                   (_lp108665_
                                    _rest108727_
                                    __tmp114954
                                    _pre108669_
                                    __tmp114949
                                    _post108671_))))
                              (_K108677108712_
                               (lambda (_rest108698_ _hd108699_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108699_))
                                     (let ((__tmp114982 (cdr _exprs108668_))
                                           (__tmp114975
                                            (let ((__tmp114976
                                                   (let ((__tmp114981
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108699_)))
                                                         (__tmp114977
                                                          (let ((__tmp114978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114979
                                (let ((__tmp114980 (car _exprs108668_)))
                                  (declare (not safe))
                                  (cons __tmp114980 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114979))))
                    (declare (not safe))
                    (cons __tmp114978 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114981
                                                           __tmp114977))))
                                              (declare (not safe))
                                              (cons __tmp114976
                                                    _bind108670_))))
                                       (declare (not safe))
                                       (_lp108665_
                                        _rest108698_
                                        __tmp114982
                                        _pre108669_
                                        __tmp114975
                                        _post108671_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108699_))
                                         (let* ((_len108701_
                                                 (length _hd108699_))
                                                (_tmp108703_
                                                 (let ((__tmp114955 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114955))))
                                           (let ((__tmp114974
                                                  (cdr _exprs108668_))
                                                 (__tmp114967
                                                  (let ((__tmp114968
                                                         (lambda (_id108706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108707_)
                   (if (let () (declare (not safe)) (__AST-e _id108706_))
                       (let ((__tmp114969
                              (let ((__tmp114973
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108706_)))
                                    (__tmp114970
                                     (let ((__tmp114971
                                            (let ((__tmp114972
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114972))))
                                       (declare (not safe))
                                       (cons __tmp114971 '()))))
                                (declare (not safe))
                                (cons __tmp114973 __tmp114970))))
                         (declare (not safe))
                         (cons __tmp114969 _r108707_))
                       _r108707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114968
                                                            _pre108669_
                                                            _hd108699_)))
                                                 (__tmp114963
                                                  (let ((__tmp114964
                                                         (let ((__tmp114965
                                                                (let ((__tmp114966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108668_)))
                          (declare (not safe))
                          (cons __tmp114966 '()))))
                   (declare (not safe))
                   (cons _tmp108703_ __tmp114965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114964
                                                          _bind108670_)))
                                                 (__tmp114956
                                                  (let ((__tmp114957
                                                         (let ((__tmp114958
                                                                (let ((__tmp114959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114961
                                      (lambda (_id108709_ _k108710_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108709_))
                                            (let ((__tmp114962
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108709_))))
                                              (declare (not safe))
                                              (cons __tmp114962 _k108710_))
                                            '#f)))
                                     (__tmp114960
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108701_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114961
                                  _hd108699_
                                  __tmp114960))))
                          (declare (not safe))
                          (cons _len108701_ __tmp114959))))
                   (declare (not safe))
                   (cons _tmp108703_ __tmp114958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114957
                                                          _post108671_))))
                                             (declare (not safe))
                                             (_lp108665_
                                              _rest108698_
                                              __tmp114974
                                              __tmp114967
                                              __tmp114963
                                              __tmp114956)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108551_
                                            _hd108699_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108672108686_))
                              (let ((_tl108682108735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108672108686_)))
                                    (_hd108681108733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108672108686_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108681108733_))
                                    (let ((_tl108684108740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108681108733_)))
                                          (_hd108683108738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108681108733_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108684108740_))
                                          (let ((_id108743_ _hd108683108738_)
                                                (_rest108745_
                                                 _tl108682108735_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108680108730_
                                               _rest108745_
                                               _id108743_)))
                                          (let ((_hd108720_ _hd108681108733_)
                                                (_rest108722_
                                                 _tl108682108735_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108677108712_
                                               _rest108722_
                                               _hd108720_)))))
                                    (let ((_hd108720_ _hd108681108733_)
                                          (_rest108722_ _tl108682108735_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108677108712_
                                         _rest108722_
                                         _hd108720_)))))
                              (let ()
                                (declare (not safe))
                                (_else108675108694_))))))))
                 (_compile-inner108555_
                  (lambda (_pre108656_ _bind108657_ _post108658_ _body108659_)
                    (if (let () (declare (not safe)) (null? _pre108656_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108556_
                           _bind108657_
                           _post108658_
                           _body108659_))
                        (let ((__tmp114983
                               (let ((__tmp114984
                                      (let ((__tmp114987 (reverse _pre108656_))
                                            (__tmp114985
                                             (let ((__tmp114986
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108556_
                                                       _bind108657_
                                                       _post108658_
                                                       _body108659_))))
                                               (declare (not safe))
                                               (cons __tmp114986 '()))))
                                        (declare (not safe))
                                        (cons __tmp114987 __tmp114985))))
                                 (declare (not safe))
                                 (cons 'let __tmp114984))))
                          (declare (not safe))
                          (__SRC__% __tmp114983 _stx108551_)))))
                 (_compile-bind108556_
                  (lambda (_bind108652_ _post108653_ _body108654_)
                    (let ((__tmp114988
                           (let ((__tmp114989
                                  (let ((__tmp114992 (reverse _bind108652_))
                                        (__tmp114990
                                         (let ((__tmp114991
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108557_
                                                   _post108653_
                                                   _body108654_))))
                                           (declare (not safe))
                                           (cons __tmp114991 '()))))
                                    (declare (not safe))
                                    (cons __tmp114992 __tmp114990))))
                             (declare (not safe))
                             (cons 'letrec __tmp114989))))
                      (declare (not safe))
                      (__SRC__% __tmp114988 _stx108551_))))
                 (_compile-post108557_
                  (lambda (_post108559_ _body108560_)
                    (let _lp108562_ ((_rest108564_ _post108559_)
                                     (_check108565_ '())
                                     (_bind108566_ '()))
                      (let* ((_rest108567108579_ _rest108564_)
                             (_else108569108587_
                              (lambda ()
                                (let ((__tmp114993
                                       (let ((__tmp114994
                                              (let ((__tmp114995
                                                     (let ((__tmp114996
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114996 _bind108566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114995
                                                        _check108565_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114994))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114993 _stx108551_))))
                             (_K108571108626_
                              (lambda (_rest108590_
                                       _init108591_
                                       _len108592_
                                       _tmp108593_)
                                (let ((__tmp115005
                                       (let ((__tmp115006
                                              (let ((__tmp115007
                                                     (let ((__tmp115008
                                                            (let ((__tmp115009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108592_ '()))))
                      (declare (not safe))
                      (cons _tmp108593_ __tmp115009))))
               (declare (not safe))
               (cons '__check-values __tmp115008))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115007
                                                 _stx108551_))))
                                         (declare (not safe))
                                         (cons __tmp115006 _check108565_)))
                                      (__tmp114997
                                       (let ((__tmp114998
                                              (lambda (_hd108595_ _r108596_)
                                                (let* ((_hd108597108604_
                                                        _hd108595_)
                                                       (_E108599108608_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108597108604_)))
               (_K108600108614_
                (lambda (_k108611_ _id108612_)
                  (let ((__tmp114999
                         (let ((__tmp115000
                                (let ((__tmp115001
                                       (let ((__tmp115002
                                              (let ((__tmp115003
                                                     (let ((__tmp115004
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108593_ __tmp115004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115003))))
                                         (declare (not safe))
                                         (cons __tmp115002 '()))))
                                  (declare (not safe))
                                  (cons _id108612_ __tmp115001))))
                           (declare (not safe))
                           (cons 'set! __tmp115000))))
                    (declare (not safe))
                    (cons __tmp114999 _r108596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108597108604_))
                                                      (let ((_hd108601108617_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108597108604_)))
                    (_tl108602108619_
                     (let () (declare (not safe)) (##cdr _hd108597108604_))))
                (let* ((_id108622_ _hd108601108617_)
                       (_k108624_ _tl108602108619_))
                  (declare (not safe))
                  (_K108600108614_ _k108624_ _id108622_)))
              (let () (declare (not safe)) (_E108599108608_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114998
                                                 _bind108566_
                                                 _init108591_))))
                                  (declare (not safe))
                                  (_lp108562_
                                   _rest108590_
                                   __tmp115005
                                   __tmp114997)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108567108579_))
                            (let ((_hd108572108629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108567108579_)))
                                  (_tl108573108631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108567108579_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108572108629_))
                                  (let ((_hd108574108634_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108572108629_)))
                                        (_tl108575108636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108572108629_))))
                                    (let ((_tmp108639_ _hd108574108634_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108575108636_))
                                          (let ((_hd108576108641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108575108636_)))
                                                (_tl108577108643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108575108636_))))
                                            (let* ((_len108646_
                                                    _hd108576108641_)
                                                   (_init108648_
                                                    _tl108577108643_)
                                                   (_rest108650_
                                                    _tl108573108631_))
                                              (declare (not safe))
                                              (_K108571108626_
                                               _rest108650_
                                               _init108648_
                                               _len108646_
                                               _tmp108639_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108569108587_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108569108587_))))
                            (let ()
                              (declare (not safe))
                              (_else108569108587_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108551_
             _compile-simple108553_
             _compile-values108554_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108306_)
        (letrec ((_compile-simple108308_
                  (lambda (_hd-ids108547_ _exprs108548_ _body108549_)
                    (let ((__tmp115010
                           (let ((__tmp115011
                                  (let ((__tmp115013
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108547_)
                                              _exprs108548_))
                                        (__tmp115012
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108549_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115013 __tmp115012))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115011))))
                      (declare (not safe))
                      (__SRC__% __tmp115010 _stx108306_))))
                 (_compile-values108309_
                  (lambda (_hd-ids108458_ _exprs108459_ _body108460_)
                    (let _lp108462_ ((_rest108464_ _hd-ids108458_)
                                     (_exprs108465_ _exprs108459_)
                                     (_bind108466_ '())
                                     (_post108467_ '()))
                      (let* ((_rest108468108482_ _rest108464_)
                             (_else108471108490_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108310_
                                   _bind108466_
                                   _post108467_
                                   _body108460_)))))
                        (let ((_K108476108530_
                               (lambda (_rest108525_ _hd108526_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108526_))
                                     (let ((_id108528_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108526_))))
                                       (let ((__tmp115028 (cdr _exprs108465_))
                                             (__tmp115023
                                              (let ((__tmp115024
                                                     (let ((__tmp115025
                                                            (let ((__tmp115026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115027
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115027))))
                      (declare (not safe))
                      (cons __tmp115026 '()))))
               (declare (not safe))
               (cons _id108528_ __tmp115025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115024
                                                      _bind108466_)))
                                             (__tmp115019
                                              (let ((__tmp115020
                                                     (let ((__tmp115021
                                                            (let ((__tmp115022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108465_)))
                      (declare (not safe))
                      (cons __tmp115022 '()))))
               (declare (not safe))
               (cons _id108528_ __tmp115021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115020
                                                      _post108467_))))
                                         (declare (not safe))
                                         (_lp108462_
                                          _rest108525_
                                          __tmp115028
                                          __tmp115023
                                          __tmp115019)))
                                     (let ((__tmp115018 (cdr _exprs108465_))
                                           (__tmp115014
                                            (let ((__tmp115015
                                                   (let ((__tmp115016
                                                          (let ((__tmp115017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108465_)))
                    (declare (not safe))
                    (cons __tmp115017 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115016))))
                                              (declare (not safe))
                                              (cons __tmp115015
                                                    _post108467_))))
                                       (declare (not safe))
                                       (_lp108462_
                                        _rest108525_
                                        __tmp115018
                                        _bind108466_
                                        __tmp115014)))))
                              (_K108473108510_
                               (lambda (_rest108494_ _hd108495_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108495_))
                                     (let ((_id108497_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108495_))))
                                       (let ((__tmp115064 (cdr _exprs108465_))
                                             (__tmp115059
                                              (let ((__tmp115060
                                                     (let ((__tmp115061
                                                            (let ((__tmp115062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115063
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115063))))
                      (declare (not safe))
                      (cons __tmp115062 '()))))
               (declare (not safe))
               (cons _id108497_ __tmp115061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115060
                                                      _bind108466_)))
                                             (__tmp115053
                                              (let ((__tmp115054
                                                     (let ((__tmp115055
                                                            (let ((__tmp115056
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115057
                                  (let ((__tmp115058 (car _exprs108465_)))
                                    (declare (not safe))
                                    (cons __tmp115058 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115057))))
                      (declare (not safe))
                      (cons __tmp115056 '()))))
               (declare (not safe))
               (cons _id108497_ __tmp115055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115054
                                                      _post108467_))))
                                         (declare (not safe))
                                         (_lp108462_
                                          _rest108494_
                                          __tmp115064
                                          __tmp115059
                                          __tmp115053)))
                                     (if (let ((__tmp115052
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108495_))))
                                           (declare (not safe))
                                           (not __tmp115052))
                                         (let ((__tmp115051
                                                (cdr _exprs108465_))
                                               (__tmp115047
                                                (let ((__tmp115048
                                                       (let ((__tmp115049
                                                              (let ((__tmp115050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108465_)))
                        (declare (not safe))
                        (cons __tmp115050 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115048
                                                        _post108467_))))
                                           (declare (not safe))
                                           (_lp108462_
                                            _rest108494_
                                            __tmp115051
                                            _bind108466_
                                            __tmp115047))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108495_))
                                             (let* ((_len108499_
                                                     (length _hd108495_))
                                                    (_tmp108501_
                                                     (let ((__tmp115029
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115029))))
                                               (let ((__tmp115046
                                                      (cdr _exprs108465_))
                                                     (__tmp115039
                                                      (let ((__tmp115040
                                                             (lambda (_id108504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108505_)
                       (if (let () (declare (not safe)) (__AST-e _id108504_))
                           (let ((__tmp115041
                                  (let ((__tmp115045
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108504_)))
                                        (__tmp115042
                                         (let ((__tmp115043
                                                (let ((__tmp115044
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115044))))
                                           (declare (not safe))
                                           (cons __tmp115043 '()))))
                                    (declare (not safe))
                                    (cons __tmp115045 __tmp115042))))
                             (declare (not safe))
                             (cons __tmp115041 _r108505_))
                           _r108505_))))
                (declare (not safe))
                (foldl1 __tmp115040 _bind108466_ _hd108495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115030
                                                      (let ((__tmp115031
                                                             (let ((__tmp115032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115038 (car _exprs108465_))
                                  (__tmp115033
                                   (let ((__tmp115034
                                          (let ((__tmp115036
                                                 (lambda (_id108507_ _k108508_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108507_))
                                                       (let ((__tmp115037
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108507_))))
                 (declare (not safe))
                 (cons __tmp115037 _k108508_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115035
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108499_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115036
                                             _hd108495_
                                             __tmp115035))))
                                     (declare (not safe))
                                     (cons _len108499_ __tmp115034))))
                              (declare (not safe))
                              (cons __tmp115038 __tmp115033))))
                       (declare (not safe))
                       (cons _tmp108501_ __tmp115032))))
                (declare (not safe))
                (cons __tmp115031 _post108467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108462_
                                                  _rest108494_
                                                  __tmp115046
                                                  __tmp115039
                                                  __tmp115030)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108306_
                                                _hd108495_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108468108482_))
                              (let ((_tl108478108535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108468108482_)))
                                    (_hd108477108533_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108468108482_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108477108533_))
                                    (let ((_tl108480108540_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108477108533_)))
                                          (_hd108479108538_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108477108533_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108480108540_))
                                          (let ((_hd108543_ _hd108479108538_)
                                                (_rest108545_
                                                 _tl108478108535_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108476108530_
                                               _rest108545_
                                               _hd108543_)))
                                          (let ((_hd108518_ _hd108477108533_)
                                                (_rest108520_
                                                 _tl108478108535_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108473108510_
                                               _rest108520_
                                               _hd108518_)))))
                                    (let ((_hd108518_ _hd108477108533_)
                                          (_rest108520_ _tl108478108535_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108473108510_
                                         _rest108520_
                                         _hd108518_)))))
                              (let ()
                                (declare (not safe))
                                (_else108471108490_))))))))
                 (_compile-bind108310_
                  (lambda (_bind108454_ _post108455_ _body108456_)
                    (let ((__tmp115065
                           (let ((__tmp115066
                                  (let ((__tmp115069 (reverse _bind108454_))
                                        (__tmp115067
                                         (let ((__tmp115068
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108311_
                                                   _post108455_
                                                   _body108456_))))
                                           (declare (not safe))
                                           (cons __tmp115068 '()))))
                                    (declare (not safe))
                                    (cons __tmp115069 __tmp115067))))
                             (declare (not safe))
                             (cons 'let __tmp115066))))
                      (declare (not safe))
                      (__SRC__% __tmp115065 _stx108306_))))
                 (_compile-post108311_
                  (lambda (_post108313_ _body108314_)
                    (let ((__tmp115070
                           (let ((__tmp115071
                                  (let ((__tmp115072
                                         (let ((__tmp115074
                                                (lambda (_hd108316_ _r108317_)
                                                  (let* ((_hd108318108341_
                                                          _hd108316_)
                                                         (_E108322108345_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108318108341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108335108439_
                                                           (lambda (_expr108437_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108437_ _r108317_))))
                  (_K108330108417_
                   (lambda (_expr108414_ _id108415_)
                     (let ((__tmp115075
                            (let ((__tmp115076
                                   (let ((__tmp115077
                                          (let ((__tmp115078
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108414_ '()))))
                                            (declare (not safe))
                                            (cons _id108415_ __tmp115078))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115077))))
                              (declare (not safe))
                              (__SRC__% __tmp115076 _stx108306_))))
                       (declare (not safe))
                       (cons __tmp115075 _r108317_))))
                  (_K108323108384_
                   (lambda (_init108349_ _len108350_ _expr108351_ _tmp108352_)
                     (let ((__tmp115079
                            (let ((__tmp115080
                                   (let ((__tmp115081
                                          (let ((__tmp115095
                                                 (let ((__tmp115096
                                                        (let ((__tmp115097
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108351_ '()))))
                  (declare (not safe))
                  (cons _tmp108352_ __tmp115097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115096 '())))
                                                (__tmp115082
                                                 (let ((__tmp115091
                                                        (let ((__tmp115092
                                                               (let ((__tmp115093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115094
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108350_ '()))))
                                (declare (not safe))
                                (cons _tmp108352_ __tmp115094))))
                         (declare (not safe))
                         (cons '__check-values __tmp115093))))
                  (declare (not safe))
                  (__SRC__% __tmp115092 _stx108306_)))
               (__tmp115083
                (let ((__tmp115084
                       (map (lambda (_hd108354_)
                              (let* ((_hd108355108362_ _hd108354_)
                                     (_E108357108366_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108355108362_)))
                                     (_K108358108372_
                                      (lambda (_k108369_ _id108370_)
                                        (let ((__tmp115085
                                               (let ((__tmp115086
                                                      (let ((__tmp115087
                                                             (let ((__tmp115088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115089
                                   (let ((__tmp115090
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108369_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108352_ __tmp115090))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115089))))
                       (declare (not safe))
                       (cons __tmp115088 '()))))
                (declare (not safe))
                (cons _id108370_ __tmp115087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115086))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115085
                                           _stx108306_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108355108362_))
                                    (let ((_hd108359108375_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108355108362_)))
                                          (_tl108360108377_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108355108362_))))
                                      (let* ((_id108380_ _hd108359108375_)
                                             (_k108382_ _tl108360108377_))
                                        (declare (not safe))
                                        (_K108358108372_
                                         _k108382_
                                         _id108380_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108357108366_)))))
                            _init108349_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115091
                                                         __tmp115083))))
                                            (declare (not safe))
                                            (cons __tmp115095 __tmp115082))))
                                     (declare (not safe))
                                     (cons 'let __tmp115081))))
                              (declare (not safe))
                              (__SRC__% __tmp115080 _stx108306_))))
                       (declare (not safe))
                       (cons __tmp115079 _r108317_)))))
              (if (let () (declare (not safe)) (##pair? _hd108318108341_))
                  (let ((_tl108337108444_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108318108341_)))
                        (_hd108336108442_
                         (let ()
                           (declare (not safe))
                           (##car _hd108318108341_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108336108442_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108337108444_))
                            (let ((_tl108339108449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108337108444_)))
                                  (_hd108338108447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108337108444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108339108449_))
                                  (let ((_expr108452_ _hd108338108447_))
                                    (declare (not safe))
                                    (_K108335108439_ _expr108452_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108339108449_))
                                      (let ((_tl108329108403_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108339108449_)))
                                            (_hd108328108401_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108339108449_))))
                                        (let ((_tmp108392_ _hd108336108442_)
                                              (_expr108399_ _hd108338108447_)
                                              (_len108406_ _hd108328108401_)
                                              (_init108408_ _tl108329108403_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108323108384_
                                             _init108408_
                                             _len108406_
                                             _expr108399_
                                             _tmp108392_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108322108345_)))))
                            (let () (declare (not safe)) (_E108322108345_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108337108444_))
                            (let ((_tl108334108429_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108337108444_)))
                                  (_hd108333108427_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108337108444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108334108429_))
                                  (let ((_id108425_ _hd108336108442_)
                                        (_expr108432_ _hd108333108427_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108330108417_
                                       _expr108432_
                                       _id108425_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108334108429_))
                                      (let ((_tl108329108403_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108334108429_)))
                                            (_hd108328108401_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108334108429_))))
                                        (let ((_tmp108392_ _hd108336108442_)
                                              (_expr108399_ _hd108333108427_)
                                              (_len108406_ _hd108328108401_)
                                              (_init108408_ _tl108329108403_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108323108384_
                                             _init108408_
                                             _len108406_
                                             _expr108399_
                                             _tmp108392_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108322108345_)))))
                            (let () (declare (not safe)) (_E108322108345_)))))
                  (let () (declare (not safe)) (_E108322108345_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115073
                                                (list _body108314_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115074
                                                   __tmp115073
                                                   _post108313_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115072))))
                             (declare (not safe))
                             (cons 'begin __tmp115071))))
                      (declare (not safe))
                      (__SRC__% __tmp115070 _stx108306_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108306_
             _compile-simple108308_
             _compile-values108309_)))))
    (define __compile-call%
      (lambda (_stx108266_)
        (let* ((_$e108268_ _stx108266_)
               (_$E108270108279_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108268_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108268_))
              (let* ((_$tgt108271108282_
                      (let () (declare (not safe)) (__AST-e _$e108268_)))
                     (_$hd108272108285_
                      (let () (declare (not safe)) (##car _$tgt108271108282_)))
                     (_$tl108273108288_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108271108282_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108273108288_))
                    (let* ((_$tgt108274108292_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108273108288_)))
                           (_$hd108275108295_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108274108292_)))
                           (_$tl108276108298_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108274108292_))))
                      (let* ((_rator108302_ _$hd108275108295_)
                             (_rands108304_ _$tl108276108298_)
                             (__tmp115098
                              (let ((__tmp115100
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108302_)))
                                    (__tmp115099
                                     (map __compile _rands108304_)))
                                (declare (not safe))
                                (cons __tmp115100 __tmp115099))))
                        (declare (not safe))
                        (__SRC__% __tmp115098 _stx108266_)))
                    (let () (declare (not safe)) (_$E108270108279_))))
              (let () (declare (not safe)) (_$E108270108279_))))))
    (define __compile-ref%
      (lambda (_stx108228_)
        (let* ((_$e108230_ _stx108228_)
               (_$E108232108241_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108230_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108230_))
              (let* ((_$tgt108233108244_
                      (let () (declare (not safe)) (__AST-e _$e108230_)))
                     (_$hd108234108247_
                      (let () (declare (not safe)) (##car _$tgt108233108244_)))
                     (_$tl108235108250_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108233108244_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108235108250_))
                    (let* ((_$tgt108236108254_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108235108250_)))
                           (_$hd108237108257_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108236108254_)))
                           (_$tl108238108260_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108236108254_))))
                      (let ((_id108264_ _$hd108237108257_))
                        (if (let ((__tmp115101
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108238108260_))))
                              (declare (not safe))
                              (equal? __tmp115101 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108264_ _stx108228_))
                            (let () (declare (not safe)) (_$E108232108241_)))))
                    (let () (declare (not safe)) (_$E108232108241_))))
              (let () (declare (not safe)) (_$E108232108241_))))))
    (define __compile-setq%
      (lambda (_stx108175_)
        (let* ((_$e108177_ _stx108175_)
               (_$E108179108191_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108177_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108177_))
              (let* ((_$tgt108180108194_
                      (let () (declare (not safe)) (__AST-e _$e108177_)))
                     (_$hd108181108197_
                      (let () (declare (not safe)) (##car _$tgt108180108194_)))
                     (_$tl108182108200_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108180108194_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108182108200_))
                    (let* ((_$tgt108183108204_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108182108200_)))
                           (_$hd108184108207_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108183108204_)))
                           (_$tl108185108210_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108183108204_))))
                      (let ((_id108214_ _$hd108184108207_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108185108210_))
                            (let* ((_$tgt108186108216_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108185108210_)))
                                   (_$hd108187108219_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108186108216_)))
                                   (_$tl108188108222_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108186108216_))))
                              (let ((_expr108226_ _$hd108187108219_))
                                (if (let ((__tmp115107
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108188108222_))))
                                      (declare (not safe))
                                      (equal? __tmp115107 '()))
                                    (let ((__tmp115102
                                           (let ((__tmp115103
                                                  (let ((__tmp115106
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108214_
                                                            _stx108175_)))
                                                        (__tmp115104
                                                         (let ((__tmp115105
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108226_))))
                   (declare (not safe))
                   (cons __tmp115105 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115106
                                                          __tmp115104))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115103))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115102 _stx108175_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108179108191_)))))
                            (let () (declare (not safe)) (_$E108179108191_)))))
                    (let () (declare (not safe)) (_$E108179108191_))))
              (let () (declare (not safe)) (_$E108179108191_))))))
    (define __compile-if%
      (lambda (_stx108107_)
        (let* ((_$e108109_ _stx108107_)
               (_$E108111108126_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108109_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108109_))
              (let* ((_$tgt108112108129_
                      (let () (declare (not safe)) (__AST-e _$e108109_)))
                     (_$hd108113108132_
                      (let () (declare (not safe)) (##car _$tgt108112108129_)))
                     (_$tl108114108135_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108112108129_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108114108135_))
                    (let* ((_$tgt108115108139_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108114108135_)))
                           (_$hd108116108142_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108115108139_)))
                           (_$tl108117108145_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108115108139_))))
                      (let ((_p108149_ _$hd108116108142_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108117108145_))
                            (let* ((_$tgt108118108151_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108117108145_)))
                                   (_$hd108119108154_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108118108151_)))
                                   (_$tl108120108157_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108118108151_))))
                              (let ((_t108161_ _$hd108119108154_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108120108157_))
                                    (let* ((_$tgt108121108163_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108120108157_)))
                                           (_$hd108122108166_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108121108163_)))
                                           (_$tl108123108169_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108121108163_))))
                                      (let ((_f108173_ _$hd108122108166_))
                                        (if (let ((__tmp115115
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108123108169_))))
                                              (declare (not safe))
                                              (equal? __tmp115115 '()))
                                            (let ((__tmp115108
                                                   (let ((__tmp115109
                                                          (let ((__tmp115114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108149_)))
                        (__tmp115110
                         (let ((__tmp115113
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108161_)))
                               (__tmp115111
                                (let ((__tmp115112
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108173_))))
                                  (declare (not safe))
                                  (cons __tmp115112 '()))))
                           (declare (not safe))
                           (cons __tmp115113 __tmp115111))))
                    (declare (not safe))
                    (cons __tmp115114 __tmp115110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115109))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115108
                                               _stx108107_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108111108126_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108111108126_)))))
                            (let () (declare (not safe)) (_$E108111108126_)))))
                    (let () (declare (not safe)) (_$E108111108126_))))
              (let () (declare (not safe)) (_$E108111108126_))))))
    (define __compile-quote%
      (lambda (_stx108069_)
        (let* ((_$e108071_ _stx108069_)
               (_$E108073108082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108071_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108071_))
              (let* ((_$tgt108074108085_
                      (let () (declare (not safe)) (__AST-e _$e108071_)))
                     (_$hd108075108088_
                      (let () (declare (not safe)) (##car _$tgt108074108085_)))
                     (_$tl108076108091_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108074108085_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108076108091_))
                    (let* ((_$tgt108077108095_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108076108091_)))
                           (_$hd108078108098_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108077108095_)))
                           (_$tl108079108101_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108077108095_))))
                      (let ((_e108105_ _$hd108078108098_))
                        (if (let ((__tmp115119
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108079108101_))))
                              (declare (not safe))
                              (equal? __tmp115119 '()))
                            (let ((__tmp115116
                                   (let ((__tmp115117
                                          (let ((__tmp115118
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108105_))))
                                            (declare (not safe))
                                            (cons __tmp115118 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115117))))
                              (declare (not safe))
                              (__SRC__% __tmp115116 _stx108069_))
                            (let () (declare (not safe)) (_$E108073108082_)))))
                    (let () (declare (not safe)) (_$E108073108082_))))
              (let () (declare (not safe)) (_$E108073108082_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108031_)
        (let* ((_$e108033_ _stx108031_)
               (_$E108035108044_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108033_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108033_))
              (let* ((_$tgt108036108047_
                      (let () (declare (not safe)) (__AST-e _$e108033_)))
                     (_$hd108037108050_
                      (let () (declare (not safe)) (##car _$tgt108036108047_)))
                     (_$tl108038108053_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108036108047_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108038108053_))
                    (let* ((_$tgt108039108057_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108038108053_)))
                           (_$hd108040108060_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108039108057_)))
                           (_$tl108041108063_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108039108057_))))
                      (let ((_e108067_ _$hd108040108060_))
                        (if (let ((__tmp115122
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108041108063_))))
                              (declare (not safe))
                              (equal? __tmp115122 '()))
                            (let ((__tmp115120
                                   (let ((__tmp115121
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108067_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115121))))
                              (declare (not safe))
                              (__SRC__% __tmp115120 _stx108031_))
                            (let () (declare (not safe)) (_$E108035108044_)))))
                    (let () (declare (not safe)) (_$E108035108044_))))
              (let () (declare (not safe)) (_$E108035108044_))))))
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
