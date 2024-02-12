(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707740666)
  (begin
    (define __context::t
      (let ((__tmp114727 (list))
            (__tmp114725
             (let ((__tmp114726
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114726 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114727
         '(t ns super table)
         __tmp114725
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109961_ (apply make-instance __context::t _$args109961_)))
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
      (let ((__tmp114730 (list))
            (__tmp114728
             (let ((__tmp114729
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114729 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114730
         '(id)
         __tmp114728
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109958_ (apply make-instance __runtime::t _$args109958_)))
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
      (let ((__tmp114733 (list))
            (__tmp114731
             (let ((__tmp114732
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114732 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114733
         '(e id)
         __tmp114731
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109955_ (apply make-instance __syntax::t _$args109955_)))
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
      (let ((__tmp114736 (list __syntax::t))
            (__tmp114734
             (let ((__tmp114735
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114735 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114736
         '()
         __tmp114734
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109952_ (apply make-instance __macro::t _$args109952_)))
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
      (let ((__tmp114739 (list __macro::t))
            (__tmp114737
             (let ((__tmp114738
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114738 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114739
         '()
         __tmp114737
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109949_
        (apply make-instance __special-form::t _$args109949_)))
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
      (let ((__tmp114742 (list __syntax::t))
            (__tmp114740
             (let ((__tmp114741
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114741 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114742
         '()
         __tmp114740
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109946_
        (apply make-instance __core-form::t _$args109946_)))
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
      (let ((__tmp114745 (list __core-form::t))
            (__tmp114743
             (let ((__tmp114744
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114744 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114745
         '()
         __tmp114743
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109943_
        (apply make-instance __core-expression::t _$args109943_)))
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
      (let ((__tmp114748 (list __core-form::t))
            (__tmp114746
             (let ((__tmp114747
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114747 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114748
         '()
         __tmp114746
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109940_
        (apply make-instance __core-special-form::t _$args109940_)))
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
      (let ((__tmp114751 (list __syntax::t))
            (__tmp114749
             (let ((__tmp114750
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114750 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114751
         '()
         __tmp114749
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109937_
        (apply make-instance __struct-info::t _$args109937_)))
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
      (let ((__tmp114754 (list __syntax::t))
            (__tmp114752
             (let ((__tmp114753
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114753 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114754
         '()
         __tmp114752
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109934_ (apply make-instance __feature::t _$args109934_)))
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
      (let ((__tmp114757 (list __context::t))
            (__tmp114755
             (let ((__tmp114756
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114756 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114757
         '(id path import export)
         __tmp114755
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109931_ (apply make-instance __module::t _$args109931_)))
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
      (let ((__tmp114759
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114758
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114759 __tmp114758)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109906_ _ctx109907_)
        (if _ctx109907_
            (let ((_id109909_
                   (let () (declare (not safe)) (__AST-e _id109906_))))
              (let _lp109911_ ((_ctx109913_ _ctx109907_))
                (let ((_$e109915_
                       (table-ref
                        (##structure-ref _ctx109913_ '4 __context::t '#f)
                        _id109909_
                        '#f)))
                  (if _$e109915_
                      (values _$e109915_)
                      (let ((_$e109918_
                             (##structure-ref
                              _ctx109913_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109918_
                            (let ()
                              (declare (not safe))
                              (_lp109911_ _$e109918_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109924_)
        (let ((_ctx109926_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109924_ _ctx109926_))))
    (define __core-resolve
      (lambda _g114761_
        (let ((_g114760_ (let () (declare (not safe)) (##length _g114761_))))
          (cond ((let () (declare (not safe)) (##fx= _g114760_ 1))
                 (apply (lambda (_id109924_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109924_)))
                        _g114761_))
                ((let () (declare (not safe)) (##fx= _g114760_ 2))
                 (apply (lambda (_id109928_ _ctx109929_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109928_ _ctx109929_)))
                        _g114761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114761_))))))
    (define __core-bound-id?__%
      (lambda (_id109889_ _is?109890_)
        (let ((_$e109892_
               (let () (declare (not safe)) (__core-resolve__0 _id109889_))))
          (if _$e109892_ (_is?109890_ _$e109892_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109898_)
        (let ((_is?109900_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109898_ _is?109900_))))
    (define __core-bound-id?
      (lambda _g114763_
        (let ((_g114762_ (let () (declare (not safe)) (##length _g114763_))))
          (cond ((let () (declare (not safe)) (##fx= _g114762_ 1))
                 (apply (lambda (_id109898_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109898_)))
                        _g114763_))
                ((let () (declare (not safe)) (##fx= _g114762_ 2))
                 (apply (lambda (_id109902_ _is?109903_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109902_ _is?109903_)))
                        _g114763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114763_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109872_ _eid109873_ _ctx109874_)
        (if _eid109873_
            (let ((__tmp114766
                   (##structure-ref _ctx109874_ '4 __context::t '#f))
                  (__tmp114765
                   (let () (declare (not safe)) (__AST-e _id109872_)))
                  (__tmp114764
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109873_))))
              (declare (not safe))
              (table-set! __tmp114766 __tmp114765 __tmp114764))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109879_ _eid109880_)
        (let ((_ctx109882_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109879_ _eid109880_ _ctx109882_))))
    (define __core-bind-runtime!
      (lambda _g114768_
        (let ((_g114767_ (let () (declare (not safe)) (##length _g114768_))))
          (cond ((let () (declare (not safe)) (##fx= _g114767_ 2))
                 (apply (lambda (_id109879_ _eid109880_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109879_ _eid109880_)))
                        _g114768_))
                ((let () (declare (not safe)) (##fx= _g114767_ 3))
                 (apply (lambda (_id109884_ _eid109885_ _ctx109886_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109884_
                             _eid109885_
                             _ctx109886_)))
                        _g114768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114768_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109855_ _e109856_ _make109857_)
        (let ((__tmp114769
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109856_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109856_
                   (_make109857_ _e109856_ _id109855_))))
          (declare (not safe))
          (table-set! __*core* _id109855_ __tmp114769))))
    (define __core-bind-syntax!__0
      (lambda (_id109862_ _e109863_)
        (let ((_make109865_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109862_ _e109863_ _make109865_))))
    (define __core-bind-syntax!
      (lambda _g114771_
        (let ((_g114770_ (let () (declare (not safe)) (##length _g114771_))))
          (cond ((let () (declare (not safe)) (##fx= _g114770_ 2))
                 (apply (lambda (_id109862_ _e109863_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109862_ _e109863_)))
                        _g114771_))
                ((let () (declare (not safe)) (##fx= _g114770_ 3))
                 (apply (lambda (_id109867_ _e109868_ _make109869_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109867_
                             _e109868_
                             _make109869_)))
                        _g114771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114771_))))))
    (define __core-bind-macro!
      (lambda (_id109851_ _e109852_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109851_ _e109852_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109848_ _e109849_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109848_ _e109849_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109832_ _e109833_ _ctx109834_)
        (let ((__tmp114775 (##structure-ref _ctx109834_ '4 __context::t '#f))
              (__tmp114774 (let () (declare (not safe)) (__AST-e _id109832_)))
              (__tmp114772
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109833_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109833_
                   (let ((__tmp114773
                          (let () (declare (not safe)) (__AST-e _id109832_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109833_ __tmp114773)))))
          (declare (not safe))
          (table-set! __tmp114775 __tmp114774 __tmp114772))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109839_ _e109840_)
        (let ((_ctx109842_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109839_ _e109840_ _ctx109842_))))
    (define __core-bind-user-syntax!
      (lambda _g114777_
        (let ((_g114776_ (let () (declare (not safe)) (##length _g114777_))))
          (cond ((let () (declare (not safe)) (##fx= _g114776_ 2))
                 (apply (lambda (_id109839_ _e109840_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109839_
                             _e109840_)))
                        _g114777_))
                ((let () (declare (not safe)) (##fx= _g114776_ 3))
                 (apply (lambda (_id109844_ _e109845_ _ctx109846_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109844_
                             _e109845_
                             _ctx109846_)))
                        _g114777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114777_))))))
    (define make-__runtime-id__%
      (lambda (_id109813_ _ctx109814_)
        (let ((_id109816_ (let () (declare (not safe)) (__AST-e _id109813_))))
          (if (let () (declare (not safe)) (eq? _id109816_ '_))
              '#f
              (if (uninterned-symbol? _id109816_)
                  (gensym _id109816_)
                  (if (let () (declare (not safe)) (symbol? _id109816_))
                      (let ((_$e109818_
                             (##structure-ref
                              _ctx109814_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109818_))
                            (gensym _id109816_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109818_))
                                (let ((__tmp114778
                                       (##structure-ref
                                        _ctx109814_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114778 '"#" _id109816_))
                                _id109816_)))
                      (error '"Illegal runtime identifier" _id109816_)))))))
    (define make-__runtime-id__0
      (lambda (_id109824_)
        (let ((_ctx109826_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109824_ _ctx109826_))))
    (define make-__runtime-id
      (lambda _g114780_
        (let ((_g114779_ (let () (declare (not safe)) (##length _g114780_))))
          (cond ((let () (declare (not safe)) (##fx= _g114779_ 1))
                 (apply (lambda (_id109824_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109824_)))
                        _g114780_))
                ((let () (declare (not safe)) (##fx= _g114779_ 2))
                 (apply (lambda (_id109828_ _ctx109829_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109828_ _ctx109829_)))
                        _g114780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114780_))))))
    (define make-__context-local__%
      (lambda (_super109802_)
        (let ((__tmp114781
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109802_ __tmp114781))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109808_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109808_))))
    (define make-__context-local
      (lambda _g114783_
        (let ((_g114782_ (let () (declare (not safe)) (##length _g114783_))))
          (cond ((let () (declare (not safe)) (##fx= _g114782_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114783_))
                ((let () (declare (not safe)) (##fx= _g114782_ 1))
                 (apply (lambda (_super109810_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109810_)))
                        _g114783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114783_))))))
    (define make-__context-module__%
      (lambda (_id109782_ _ns109783_ _path109784_ _super109785_)
        (let ((__tmp114784
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109783_
           _super109785_
           __tmp114784
           _id109782_
           _path109784_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109790_ _ns109791_ _path109792_)
        (let ((_super109794_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109790_
           _ns109791_
           _path109792_
           _super109794_))))
    (define make-__context-module
      (lambda _g114786_
        (let ((_g114785_ (let () (declare (not safe)) (##length _g114786_))))
          (cond ((let () (declare (not safe)) (##fx= _g114785_ 3))
                 (apply (lambda (_id109790_ _ns109791_ _path109792_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109790_
                             _ns109791_
                             _path109792_)))
                        _g114786_))
                ((let () (declare (not safe)) (##fx= _g114785_ 4))
                 (apply (lambda (_id109796_
                                 _ns109797_
                                 _path109798_
                                 _super109799_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109796_
                             _ns109797_
                             _path109798_
                             _super109799_)))
                        _g114786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114786_))))))
    (define __SRC__%
      (lambda (_e109765_ _src-stx109766_)
        (if (or (let () (declare (not safe)) (pair? _e109765_))
                (let () (declare (not safe)) (symbol? _e109765_)))
            (let ((__tmp114790
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109766_
                          'gerbil#AST::t))
                       (let ((__tmp114791
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109766_))))
                         (declare (not safe))
                         (__locat __tmp114791))
                       '#f)))
              (declare (not safe))
              (##make-source _e109765_ __tmp114790))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109765_ 'gerbil#AST::t))
                (let ((__tmp114789
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109765_ '1 AST::t '#f)))
                      (__tmp114787
                       (let ((__tmp114788
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109765_))))
                         (declare (not safe))
                         (__locat __tmp114788))))
                  (declare (not safe))
                  (##make-source __tmp114789 __tmp114787))
                (error '"BUG! Cannot sourcify object" _e109765_)))))
    (define __SRC__0
      (lambda (_e109774_)
        (let ((_src-stx109776_ '#f))
          (declare (not safe))
          (__SRC__% _e109774_ _src-stx109776_))))
    (define __SRC
      (lambda _g114793_
        (let ((_g114792_ (let () (declare (not safe)) (##length _g114793_))))
          (cond ((let () (declare (not safe)) (##fx= _g114792_ 1))
                 (apply (lambda (_e109774_)
                          (let () (declare (not safe)) (__SRC__0 _e109774_)))
                        _g114793_))
                ((let () (declare (not safe)) (##fx= _g114792_ 2))
                 (apply (lambda (_e109778_ _src-stx109779_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109778_ _src-stx109779_)))
                        _g114793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114793_))))))
    (define __locat
      (lambda (_loc109762_)
        (if (let () (declare (not safe)) (##locat? _loc109762_))
            _loc109762_
            '#f)))
    (define __check-values
      (lambda (_obj109757_ _k109758_)
        (let ((_count109760_
               (if (let () (declare (not safe)) (##values? _obj109757_))
                   (let () (declare (not safe)) (##vector-length _obj109757_))
                   '1)))
          (if (fx= _count109760_ _k109758_)
              '#!void
              (error (if (fx< _count109760_ _k109758_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109757_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109757_))
                         _obj109757_)
                     _k109758_)))))
    (define __compile
      (lambda (_stx109727_)
        (let* ((_$e109729_ _stx109727_)
               (_$E109731109737_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109729_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109729_))
              (let* ((_$tgt109732109740_
                      (let () (declare (not safe)) (__AST-e _$e109729_)))
                     (_$hd109733109743_
                      (let () (declare (not safe)) (##car _$tgt109732109740_)))
                     (_$tl109734109746_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109732109740_))))
                (let* ((_form109750_ _$hd109733109743_)
                       (_$e109752_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109750_))))
                  (if _$e109752_
                      ((lambda (_bind109755_)
                         ((##structure-ref _bind109755_ '1 __syntax::t '#f)
                          _stx109727_))
                       _$e109752_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109727_
                         _form109750_)))))
              (let () (declare (not safe)) (_$E109731109737_))))))
    (define __compile-error__%
      (lambda (_stx109714_ _detail109715_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109714_
           _detail109715_))))
    (define __compile-error__0
      (lambda (_stx109720_)
        (let ((_detail109722_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109720_ _detail109722_))))
    (define __compile-error
      (lambda _g114795_
        (let ((_g114794_ (let () (declare (not safe)) (##length _g114795_))))
          (cond ((let () (declare (not safe)) (##fx= _g114794_ 1))
                 (apply (lambda (_stx109720_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109720_)))
                        _g114795_))
                ((let () (declare (not safe)) (##fx= _g114794_ 2))
                 (apply (lambda (_stx109724_ _detail109725_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109724_ _detail109725_)))
                        _g114795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114795_))))))
    (define __compile-ignore%
      (lambda (_stx109711_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109711_))))
    (define __compile-begin%
      (lambda (_stx109686_)
        (let* ((_$e109688_ _stx109686_)
               (_$E109690109696_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109688_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109688_))
              (let* ((_$tgt109691109699_
                      (let () (declare (not safe)) (__AST-e _$e109688_)))
                     (_$hd109692109702_
                      (let () (declare (not safe)) (##car _$tgt109691109699_)))
                     (_$tl109693109705_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109691109699_))))
                (let* ((_body109709_ _$tl109693109705_)
                       (__tmp114796
                        (let ((__tmp114797 (map __compile _body109709_)))
                          (declare (not safe))
                          (cons 'begin __tmp114797))))
                  (declare (not safe))
                  (__SRC__% __tmp114796 _stx109686_)))
              (let () (declare (not safe)) (_$E109690109696_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109661_)
        (let* ((_$e109663_ _stx109661_)
               (_$E109665109671_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109663_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109663_))
              (let* ((_$tgt109666109674_
                      (let () (declare (not safe)) (__AST-e _$e109663_)))
                     (_$hd109667109677_
                      (let () (declare (not safe)) (##car _$tgt109666109674_)))
                     (_$tl109668109680_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109666109674_))))
                (let* ((_body109684_ _$tl109668109680_)
                       (__tmp114798
                        (let ((__tmp114799
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109684_))))
                          (declare (not safe))
                          (cons 'begin __tmp114799))))
                  (declare (not safe))
                  (__SRC__% __tmp114798 _stx109661_)))
              (let () (declare (not safe)) (_$E109665109671_))))))
    (define __compile-import%
      (lambda (_stx109636_)
        (let* ((_$e109638_ _stx109636_)
               (_$E109640109646_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109638_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109638_))
              (let* ((_$tgt109641109649_
                      (let () (declare (not safe)) (__AST-e _$e109638_)))
                     (_$hd109642109652_
                      (let () (declare (not safe)) (##car _$tgt109641109649_)))
                     (_$tl109643109655_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109641109649_))))
                (let* ((_body109659_ _$tl109643109655_)
                       (__tmp114800
                        (let ((__tmp114801
                               (let ((__tmp114802
                                      (let ((__tmp114803
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109659_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114803))))
                                 (declare (not safe))
                                 (cons __tmp114802 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114801))))
                  (declare (not safe))
                  (__SRC__% __tmp114800 _stx109636_)))
              (let () (declare (not safe)) (_$E109640109646_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109583_)
        (let* ((_$e109585_ _stx109583_)
               (_$E109587109599_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109585_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109585_))
              (let* ((_$tgt109588109602_
                      (let () (declare (not safe)) (__AST-e _$e109585_)))
                     (_$hd109589109605_
                      (let () (declare (not safe)) (##car _$tgt109588109602_)))
                     (_$tl109590109608_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109588109602_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109590109608_))
                    (let* ((_$tgt109591109612_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109590109608_)))
                           (_$hd109592109615_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109591109612_)))
                           (_$tl109593109618_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109591109612_))))
                      (let ((_ann109622_ _$hd109592109615_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109593109618_))
                            (let* ((_$tgt109594109624_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109593109618_)))
                                   (_$hd109595109627_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109594109624_)))
                                   (_$tl109596109630_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109594109624_))))
                              (let ((_expr109634_ _$hd109595109627_))
                                (if (let ((__tmp114804
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109596109630_))))
                                      (declare (not safe))
                                      (equal? __tmp114804 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109634_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109587109599_)))))
                            (let () (declare (not safe)) (_$E109587109599_)))))
                    (let () (declare (not safe)) (_$E109587109599_))))
              (let () (declare (not safe)) (_$E109587109599_))))))
    (define __compile-define-values%
      (lambda (_stx109474_)
        (let* ((_$e109476_ _stx109474_)
               (_$E109478109490_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109476_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109476_))
              (let* ((_$tgt109479109493_
                      (let () (declare (not safe)) (__AST-e _$e109476_)))
                     (_$hd109480109496_
                      (let () (declare (not safe)) (##car _$tgt109479109493_)))
                     (_$tl109481109499_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109479109493_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109481109499_))
                    (let* ((_$tgt109482109503_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109481109499_)))
                           (_$hd109483109506_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109482109503_)))
                           (_$tl109484109509_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109482109503_))))
                      (let ((_hd109513_ _$hd109483109506_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109484109509_))
                            (let* ((_$tgt109485109515_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109484109509_)))
                                   (_$hd109486109518_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109485109515_)))
                                   (_$tl109487109521_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109485109515_))))
                              (let ((_expr109525_ _$hd109486109518_))
                                (if (let ((__tmp114837
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109487109521_))))
                                      (declare (not safe))
                                      (equal? __tmp114837 '()))
                                    (let* ((_$e109527_ _hd109513_)
                                           (_$E109529109570_
                                            (lambda ()
                                              (let ((_$E109530109555_
                                                     (lambda ()
                                                       (let* ((_$E109531109542_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109527_))))
                      (_ids109545_ _hd109513_)
                      (_len109547_ (length _ids109545_))
                      (_tmp109549_
                       (let ((__tmp114805 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114805))))
                 (let ((__tmp114806
                        (let ((__tmp114807
                               (let ((__tmp114824
                                      (let ((__tmp114825
                                             (let ((__tmp114826
                                                    (let ((__tmp114827
                                                           (let ((__tmp114828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109525_))))
                     (declare (not safe))
                     (cons __tmp114828 '()))))
              (declare (not safe))
              (cons _tmp109549_ __tmp114827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114826))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114825 _stx109474_)))
                                     (__tmp114808
                                      (let ((__tmp114820
                                             (let ((__tmp114821
                                                    (let ((__tmp114822
                                                           (let ((__tmp114823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109547_ '()))))
                     (declare (not safe))
                     (cons _tmp109549_ __tmp114823))))
              (declare (not safe))
              (cons '__check-values __tmp114822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114821
                                                _stx109474_)))
                                            (__tmp114809
                                             (let ((__tmp114810
                                                    (let ((__tmp114812
                                                           (lambda (_id109552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109553_)
                     (if (let () (declare (not safe)) (__AST-e _id109552_))
                         (let ((__tmp114813
                                (let ((__tmp114814
                                       (let ((__tmp114819
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109552_)))
                                             (__tmp114815
                                              (let ((__tmp114816
                                                     (let ((__tmp114817
                                                            (let ((__tmp114818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109553_ '()))))
                      (declare (not safe))
                      (cons _tmp109549_ __tmp114818))))
               (declare (not safe))
               (cons '##vector-ref __tmp114817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114816 '()))))
                                         (declare (not safe))
                                         (cons __tmp114819 __tmp114815))))
                                  (declare (not safe))
                                  (cons 'define __tmp114814))))
                           (declare (not safe))
                           (__SRC__% __tmp114813 _stx109474_))
                         '#f)))
                  (__tmp114811
                   (let () (declare (not safe)) (iota _len109547_))))
              (declare (not safe))
              (filter-map2 __tmp114812 _ids109545_ __tmp114811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114810))))
                                        (declare (not safe))
                                        (cons __tmp114820 __tmp114809))))
                                 (declare (not safe))
                                 (cons __tmp114824 __tmp114808))))
                          (declare (not safe))
                          (cons 'begin __tmp114807))))
                   (declare (not safe))
                   (__SRC__% __tmp114806 _stx109474_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109527_))
                                                    (let* ((_$tgt109532109558_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109527_)))
                                                           (_$hd109533109561_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109532109558_)))
                                                           (_$tl109534109564_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109532109558_))))
                                                      (let ((_id109568_
                                                             _$hd109533109561_))
                                                        (if (let ((__tmp114834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109534109564_))))
                      (declare (not safe))
                      (equal? __tmp114834 '()))
                    (let ((__tmp114829
                           (let ((__tmp114830
                                  (let ((__tmp114833
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109568_)))
                                        (__tmp114831
                                         (let ((__tmp114832
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109525_))))
                                           (declare (not safe))
                                           (cons __tmp114832 '()))))
                                    (declare (not safe))
                                    (cons __tmp114833 __tmp114831))))
                             (declare (not safe))
                             (cons 'define __tmp114830))))
                      (declare (not safe))
                      (__SRC__% __tmp114829 _stx109474_))
                    (let () (declare (not safe)) (_$E109530109555_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109530109555_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109527_))
                                          (let* ((_$tgt109535109573_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109527_)))
                                                 (_$hd109536109576_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109535109573_)))
                                                 (_$tl109537109579_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109535109573_))))
                                            (if (let ((__tmp114836
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109536109576_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114836 '#f))
                                                (if (let ((__tmp114835
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109537109579_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114835 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109525_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109529109570_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109529109570_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109529109570_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109478109490_)))))
                            (let () (declare (not safe)) (_$E109478109490_)))))
                    (let () (declare (not safe)) (_$E109478109490_))))
              (let () (declare (not safe)) (_$E109478109490_))))))
    (define __compile-head-id
      (lambda (_e109472_)
        (let ((__tmp114838
               (if (let () (declare (not safe)) (__AST-e _e109472_))
                   _e109472_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114838))))
    (define __compile-lambda-head
      (lambda (_hd109429_)
        (let _recur109431_ ((_rest109433_ _hd109429_))
          (let* ((_$e109435_ _rest109433_)
                 (_$E109437109455_
                  (lambda ()
                    (let ((_$E109438109452_
                           (lambda ()
                             (let* ((_$E109439109447_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109435_))))
                                    (_tail109450_ _$e109435_))
                               (declare (not safe))
                               (__compile-head-id _tail109450_)))))
                      (if (let ((__tmp114839
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109435_))))
                            (declare (not safe))
                            (equal? __tmp114839 '()))
                          '()
                          (let () (declare (not safe)) (_$E109438109452_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109435_))
                (let* ((_$tgt109440109458_
                        (let () (declare (not safe)) (__AST-e _$e109435_)))
                       (_$hd109441109461_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109440109458_)))
                       (_$tl109442109464_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109440109458_))))
                  (let* ((_hd109468_ _$hd109441109461_)
                         (_rest109470_ _$tl109442109464_))
                    (let ((__tmp114841
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109468_)))
                          (__tmp114840
                           (let ()
                             (declare (not safe))
                             (_recur109431_ _rest109470_))))
                      (declare (not safe))
                      (cons __tmp114841 __tmp114840))))
                (let () (declare (not safe)) (_$E109437109455_)))))))
    (define __compile-lambda%
      (lambda (_stx109376_)
        (let* ((_$e109378_ _stx109376_)
               (_$E109380109392_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109378_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109378_))
              (let* ((_$tgt109381109395_
                      (let () (declare (not safe)) (__AST-e _$e109378_)))
                     (_$hd109382109398_
                      (let () (declare (not safe)) (##car _$tgt109381109395_)))
                     (_$tl109383109401_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109381109395_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109383109401_))
                    (let* ((_$tgt109384109405_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109383109401_)))
                           (_$hd109385109408_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109384109405_)))
                           (_$tl109386109411_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109384109405_))))
                      (let ((_hd109415_ _$hd109385109408_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109386109411_))
                            (let* ((_$tgt109387109417_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109386109411_)))
                                   (_$hd109388109420_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109387109417_)))
                                   (_$tl109389109423_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109387109417_))))
                              (let ((_body109427_ _$hd109388109420_))
                                (if (let ((__tmp114847
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109389109423_))))
                                      (declare (not safe))
                                      (equal? __tmp114847 '()))
                                    (let ((__tmp114842
                                           (let ((__tmp114843
                                                  (let ((__tmp114846
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109415_)))
                                                        (__tmp114844
                                                         (let ((__tmp114845
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109427_))))
                   (declare (not safe))
                   (cons __tmp114845 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114846
                                                          __tmp114844))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114843))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114842 _stx109376_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109380109392_)))))
                            (let () (declare (not safe)) (_$E109380109392_)))))
                    (let () (declare (not safe)) (_$E109380109392_))))
              (let () (declare (not safe)) (_$E109380109392_))))))
    (define __compile-case-lambda%
      (lambda (_stx109168_)
        (letrec ((_variadic?109170_
                  (lambda (_hd109341_)
                    (let* ((_$e109343_ _hd109341_)
                           (_$E109345109361_
                            (lambda ()
                              (let ((_$E109346109358_
                                     (lambda ()
                                       (let ((_$E109347109355_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109343_)))))
                                         '#t))))
                                (if (let ((__tmp114848
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109343_))))
                                      (declare (not safe))
                                      (equal? __tmp114848 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109346109358_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109343_))
                          (let* ((_$tgt109348109364_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109343_)))
                                 (_$hd109349109367_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109348109364_)))
                                 (_$tl109350109370_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109348109364_))))
                            (let ((_rest109374_ _$tl109350109370_))
                              (declare (not safe))
                              (_variadic?109170_ _rest109374_)))
                          (let () (declare (not safe)) (_$E109345109361_))))))
                 (_arity109171_
                  (lambda (_hd109306_)
                    (let _lp109308_ ((_rest109310_ _hd109306_) (_k109311_ '0))
                      (let* ((_$e109313_ _rest109310_)
                             (_$E109315109326_
                              (lambda ()
                                (let ((_$E109316109323_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109313_)))))
                                  _k109311_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109313_))
                            (let* ((_$tgt109317109329_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109313_)))
                                   (_$hd109318109332_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109317109329_)))
                                   (_$tl109319109335_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109317109329_))))
                              (let* ((_rest109339_ _$tl109319109335_)
                                     (__tmp114849
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109311_ '1))))
                                (declare (not safe))
                                (_lp109308_ _rest109339_ __tmp114849)))
                            (let ()
                              (declare (not safe))
                              (_$E109315109326_)))))))
                 (_generate109172_
                  (lambda (_rest109233_ _args109234_ _len109235_)
                    (let* ((_$e109237_ _rest109233_)
                           (_$E109239109250_
                            (lambda ()
                              (let* ((_$E109240109247_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109237_))))
                                     (__tmp114850
                                      (let ((__tmp114851
                                             (let ((__tmp114852
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109234_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114852))))
                                        (declare (not safe))
                                        (cons 'error __tmp114851))))
                                (declare (not safe))
                                (__SRC__% __tmp114850 _stx109168_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109237_))
                          (let* ((_$tgt109241109253_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109237_)))
                                 (_$hd109242109256_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109241109253_)))
                                 (_$tl109243109259_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109241109253_))))
                            (let* ((_clause109263_ _$hd109242109256_)
                                   (_rest109265_ _$tl109243109259_)
                                   (_$e109267_ _clause109263_)
                                   (_$E109269109278_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109267_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109267_))
                                  (let* ((_$tgt109270109281_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109267_)))
                                         (_$hd109271109284_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109270109281_)))
                                         (_$tl109272109287_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109270109281_))))
                                    (let ((_hd109291_ _$hd109271109284_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109272109287_))
                                          (let* ((_$tgt109273109293_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109272109287_)))
                                                 (_$hd109274109296_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109273109293_)))
                                                 (_$tl109275109299_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109273109293_))))
                                            (if (let ((__tmp114867
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109275109299_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114867 '()))
                                                (let ((_clen109303_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109171_
                                                          _hd109291_)))
                                                      (_cmp109304_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109170_
                                                              _hd109291_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114853
                                                         (let ((__tmp114854
                                                                (let ((__tmp114864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114865
                                      (let ((__tmp114866
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109303_ '()))))
                                        (declare (not safe))
                                        (cons _len109235_ __tmp114866))))
                                 (declare (not safe))
                                 (cons _cmp109304_ __tmp114865)))
                              (__tmp114855
                               (let ((__tmp114858
                                      (let ((__tmp114859
                                             (let ((__tmp114860
                                                    (let ((__tmp114862
                                                           (let ((__tmp114863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109263_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114863)))
                  (__tmp114861
                   (let () (declare (not safe)) (cons _args109234_ '()))))
              (declare (not safe))
              (cons __tmp114862 __tmp114861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114860))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114859 _stx109168_)))
                                     (__tmp114856
                                      (let ((__tmp114857
                                             (let ()
                                               (declare (not safe))
                                               (_generate109172_
                                                _rest109265_
                                                _args109234_
                                                _len109235_))))
                                        (declare (not safe))
                                        (cons __tmp114857 '()))))
                                 (declare (not safe))
                                 (cons __tmp114858 __tmp114856))))
                          (declare (not safe))
                          (cons __tmp114864 __tmp114855))))
                   (declare (not safe))
                   (cons 'if __tmp114854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114853
                                                     _stx109168_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109269109278_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109269109278_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109269109278_)))))
                          (let () (declare (not safe)) (_$E109239109250_)))))))
          (let* ((_$e109174_ _stx109168_)
                 (_$E109176109208_
                  (lambda ()
                    (let ((_$E109177109190_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109174_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109174_))
                          (let* ((_$tgt109178109193_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109174_)))
                                 (_$hd109179109196_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109178109193_)))
                                 (_$tl109180109199_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109178109193_))))
                            (let ((_clauses109203_ _$tl109180109199_))
                              (let ((_args109205_
                                     (let ((__tmp114868 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114868 _stx109168_)))
                                    (_len109206_
                                     (let ((__tmp114869 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114869 _stx109168_))))
                                (let ((__tmp114870
                                       (let ((__tmp114871
                                              (let ((__tmp114872
                                                     (let ((__tmp114873
                                                            (let ((__tmp114874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114875
                                  (let ((__tmp114878
                                         (let ((__tmp114879
                                                (let ((__tmp114880
                                                       (let ((__tmp114881
                                                              (let ((__tmp114882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114883
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109205_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114883))))
                        (declare (not safe))
                        (__SRC__% __tmp114882 _stx109168_))))
                 (declare (not safe))
                 (cons __tmp114881 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109206_
                                                        __tmp114880))))
                                           (declare (not safe))
                                           (cons __tmp114879 '())))
                                        (__tmp114876
                                         (let ((__tmp114877
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109172_
                                                   _clauses109203_
                                                   _args109205_
                                                   _len109206_))))
                                           (declare (not safe))
                                           (cons __tmp114877 '()))))
                                    (declare (not safe))
                                    (cons __tmp114878 __tmp114876))))
                             (declare (not safe))
                             (cons 'let __tmp114875))))
                      (declare (not safe))
                      (__SRC__% __tmp114874 _stx109168_))))
               (declare (not safe))
               (cons __tmp114873 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109205_
                                                      __tmp114872))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114871))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114870 _stx109168_)))))
                          (let () (declare (not safe)) (_$E109177109190_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109174_))
                (let* ((_$tgt109181109211_
                        (let () (declare (not safe)) (__AST-e _$e109174_)))
                       (_$hd109182109214_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109181109211_)))
                       (_$tl109183109217_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109181109211_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109183109217_))
                      (let* ((_$tgt109184109221_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109183109217_)))
                             (_$hd109185109224_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109184109221_)))
                             (_$tl109186109227_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109184109221_))))
                        (let ((_clause109231_ _$hd109185109224_))
                          (if (let ((__tmp114885
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109186109227_))))
                                (declare (not safe))
                                (equal? __tmp114885 '()))
                              (let ((__tmp114884
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109231_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114884))
                              (let ()
                                (declare (not safe))
                                (_$E109176109208_)))))
                      (let () (declare (not safe)) (_$E109176109208_))))
                (let () (declare (not safe)) (_$E109176109208_)))))))
    (define __compile-let-form
      (lambda (_stx108937_ _compile-simple108938_ _compile-values108939_)
        (letrec ((_simple-bind?108941_
                  (lambda (_hd109126_)
                    (let* ((_hd109127109137_ _hd109126_)
                           (_else109130109145_ (lambda () '#f)))
                      (let ((_K109133109158_ (lambda (_id109156_) '#t))
                            (_K109132109150_ (lambda () '#t)))
                        (let ((_try-match109129109153_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109127109137_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109132109150_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109130109145_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109127109137_))
                              (let ((_tl109135109163_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109127109137_)))
                                    (_hd109134109161_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109127109137_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109135109163_))
                                    (let ((_id109166_ _hd109134109161_))
                                      (declare (not safe))
                                      (_K109133109158_ _id109166_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109129109153_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109129109153_))))))))
                 (_car-e108942_
                  (lambda (_hd109124_)
                    (if (let () (declare (not safe)) (pair? _hd109124_))
                        (car _hd109124_)
                        _hd109124_))))
          (let* ((_$e108944_ _stx108937_)
                 (_$E108946109089_
                  (lambda ()
                    (let ((_$E108947108969_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108944_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108944_))
                          (let* ((_$tgt108948108972_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108944_)))
                                 (_$hd108949108975_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108948108972_)))
                                 (_$tl108950108978_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108948108972_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108950108978_))
                                (let* ((_$tgt108951108982_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108950108978_)))
                                       (_$hd108952108985_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108951108982_)))
                                       (_$tl108953108988_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108951108982_))))
                                  (let ((_hd108992_ _$hd108952108985_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108953108988_))
                                        (let* ((_$tgt108954108994_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108953108988_)))
                                               (_$hd108955108997_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108954108994_)))
                                               (_$tl108956109000_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108954108994_))))
                                          (let ((_body109004_
                                                 _$hd108955108997_))
                                            (if (let ((__tmp114888
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108956109000_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114888 '()))
                                                (let* ((_hd-ids109044_
                                                        (map (lambda (_bind109006_)
                                                               (let* ((_$e109008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109006_)
                              (_$E109010109019_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109008_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109008_))
                             (let* ((_$tgt109011109022_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109008_)))
                                    (_$hd109012109025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109011109022_)))
                                    (_$tl109013109028_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109011109022_))))
                               (let ((_ids109032_ _$hd109012109025_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109013109028_))
                                     (let* ((_$tgt109014109034_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109013109028_)))
                                            (_$hd109015109037_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109014109034_)))
                                            (_$tl109016109040_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109014109034_))))
                                       (if (let ((__tmp114886
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109016109040_))))
                                             (declare (not safe))
                                             (equal? __tmp114886 '()))
                                           _ids109032_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109010109019_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109010109019_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109010109019_)))))
                     _hd108992_))
               (_exprs109084_
                (map (lambda (_bind109046_)
                       (let* ((_$e109048_ _bind109046_)
                              (_$E109050109059_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109048_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109048_))
                             (let* ((_$tgt109051109062_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109048_)))
                                    (_$hd109052109065_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109051109062_)))
                                    (_$tl109053109068_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109051109062_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109053109068_))
                                   (let* ((_$tgt109054109072_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109053109068_)))
                                          (_$hd109055109075_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109054109072_)))
                                          (_$tl109056109078_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109054109072_))))
                                     (let ((_expr109082_ _$hd109055109075_))
                                       (if (let ((__tmp114887
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109056109078_))))
                                             (declare (not safe))
                                             (equal? __tmp114887 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109082_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109050109059_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109050109059_))))
                             (let ()
                               (declare (not safe))
                               (_$E109050109059_)))))
                     _hd108992_))
               (_body109086_
                (let () (declare (not safe)) (__compile _body109004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109044_))
              (_compile-simple108938_
               (map _car-e108942_ _hd-ids109044_)
               _exprs109084_
               _body109086_)
              (_compile-values108939_
               _hd-ids109044_
               _exprs109084_
               _body109086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108947108969_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108947108969_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108947108969_))))
                          (let () (declare (not safe)) (_$E108947108969_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108944_))
                (let* ((_$tgt108957109092_
                        (let () (declare (not safe)) (__AST-e _$e108944_)))
                       (_$hd108958109095_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108957109092_)))
                       (_$tl108959109098_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108957109092_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108959109098_))
                      (let* ((_$tgt108960109102_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108959109098_)))
                             (_$hd108961109105_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108960109102_)))
                             (_$tl108962109108_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108960109102_))))
                        (if (let ((__tmp114890
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108961109105_))))
                              (declare (not safe))
                              (equal? __tmp114890 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108962109108_))
                                (let* ((_$tgt108963109112_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108962109108_)))
                                       (_$hd108964109115_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108963109112_)))
                                       (_$tl108965109118_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108963109112_))))
                                  (let ((_body109122_ _$hd108964109115_))
                                    (if (let ((__tmp114889
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108965109118_))))
                                          (declare (not safe))
                                          (equal? __tmp114889 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109122_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108946109089_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108946109089_)))
                            (let () (declare (not safe)) (_$E108946109089_))))
                      (let () (declare (not safe)) (_$E108946109089_))))
                (let () (declare (not safe)) (_$E108946109089_)))))))
    (define __compile-let-values%
      (lambda (_stx108752_)
        (letrec ((_compile-simple108754_
                  (lambda (_hd-ids108933_ _exprs108934_ _body108935_)
                    (let ((__tmp114891
                           (let ((__tmp114892
                                  (let ((__tmp114894
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108933_)
                                              _exprs108934_))
                                        (__tmp114893
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108935_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114894 __tmp114893))))
                             (declare (not safe))
                             (cons 'let __tmp114892))))
                      (declare (not safe))
                      (__SRC__% __tmp114891 _stx108752_))))
                 (_compile-values108755_
                  (lambda (_hd-ids108851_ _exprs108852_ _body108853_)
                    (let _lp108855_ ((_rest108857_ _hd-ids108851_)
                                     (_exprs108858_ _exprs108852_)
                                     (_bind108859_ '())
                                     (_post108860_ '()))
                      (let* ((_rest108861108875_ _rest108857_)
                             (_else108864108883_
                              (lambda ()
                                (let ((__tmp114895
                                       (let ((__tmp114896
                                              (let ((__tmp114899
                                                     (reverse _bind108859_))
                                                    (__tmp114897
                                                     (let ((__tmp114898
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108756_
                                                               _post108860_
                                                               _body108853_))))
                                                       (declare (not safe))
                                                       (cons __tmp114898
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114899
                                                      __tmp114897))))
                                         (declare (not safe))
                                         (cons 'let __tmp114896))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114895 _stx108752_)))))
                        (let ((_K108869108916_
                               (lambda (_rest108913_ _id108914_)
                                 (let ((__tmp114905 (cdr _exprs108858_))
                                       (__tmp114900
                                        (let ((__tmp114901
                                               (let ((__tmp114904
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108914_)))
                                                     (__tmp114902
                                                      (let ((__tmp114903
                                                             (car _exprs108858_)))
                                                        (declare (not safe))
                                                        (cons __tmp114903
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114904
                                                       __tmp114902))))
                                          (declare (not safe))
                                          (cons __tmp114901 _bind108859_))))
                                   (declare (not safe))
                                   (_lp108855_
                                    _rest108913_
                                    __tmp114905
                                    __tmp114900
                                    _post108860_))))
                              (_K108866108898_
                               (lambda (_rest108887_ _hd108888_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108888_))
                                     (let ((__tmp114926 (cdr _exprs108858_))
                                           (__tmp114919
                                            (let ((__tmp114920
                                                   (let ((__tmp114925
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108888_)))
                                                         (__tmp114921
                                                          (let ((__tmp114922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114923
                                (let ((__tmp114924 (car _exprs108858_)))
                                  (declare (not safe))
                                  (cons __tmp114924 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114923))))
                    (declare (not safe))
                    (cons __tmp114922 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114925
                                                           __tmp114921))))
                                              (declare (not safe))
                                              (cons __tmp114920
                                                    _bind108859_))))
                                       (declare (not safe))
                                       (_lp108855_
                                        _rest108887_
                                        __tmp114926
                                        __tmp114919
                                        _post108860_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108888_))
                                         (let* ((_len108890_
                                                 (length _hd108888_))
                                                (_tmp108892_
                                                 (let ((__tmp114906 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114906))))
                                           (let ((__tmp114918
                                                  (cdr _exprs108858_))
                                                 (__tmp114914
                                                  (let ((__tmp114915
                                                         (let ((__tmp114916
                                                                (let ((__tmp114917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108858_)))
                          (declare (not safe))
                          (cons __tmp114917 '()))))
                   (declare (not safe))
                   (cons _tmp108892_ __tmp114916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114915
                                                          _bind108859_)))
                                                 (__tmp114907
                                                  (let ((__tmp114908
                                                         (let ((__tmp114909
                                                                (let ((__tmp114910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114912
                                      (lambda (_id108895_ _k108896_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108895_))
                                            (let ((__tmp114913
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108895_))))
                                              (declare (not safe))
                                              (cons __tmp114913 _k108896_))
                                            '#f)))
                                     (__tmp114911
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108890_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114912
                                  _hd108888_
                                  __tmp114911))))
                          (declare (not safe))
                          (cons _len108890_ __tmp114910))))
                   (declare (not safe))
                   (cons _tmp108892_ __tmp114909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114908
                                                          _post108860_))))
                                             (declare (not safe))
                                             (_lp108855_
                                              _rest108887_
                                              __tmp114918
                                              __tmp114914
                                              __tmp114907)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108752_
                                            _hd108888_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108861108875_))
                              (let ((_tl108871108921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108861108875_)))
                                    (_hd108870108919_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108861108875_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108870108919_))
                                    (let ((_tl108873108926_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108870108919_)))
                                          (_hd108872108924_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108870108919_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108873108926_))
                                          (let ((_id108929_ _hd108872108924_)
                                                (_rest108931_
                                                 _tl108871108921_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108869108916_
                                               _rest108931_
                                               _id108929_)))
                                          (let ((_hd108906_ _hd108870108919_)
                                                (_rest108908_
                                                 _tl108871108921_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108866108898_
                                               _rest108908_
                                               _hd108906_)))))
                                    (let ((_hd108906_ _hd108870108919_)
                                          (_rest108908_ _tl108871108921_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108866108898_
                                         _rest108908_
                                         _hd108906_)))))
                              (let ()
                                (declare (not safe))
                                (_else108864108883_))))))))
                 (_compile-post108756_
                  (lambda (_post108758_ _body108759_)
                    (let _lp108761_ ((_rest108763_ _post108758_)
                                     (_check108764_ '())
                                     (_bind108765_ '()))
                      (let* ((_rest108766108778_ _rest108763_)
                             (_else108768108786_
                              (lambda ()
                                (let ((__tmp114927
                                       (let ((__tmp114928
                                              (let ((__tmp114929
                                                     (let ((__tmp114930
                                                            (let ((__tmp114931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114932
                                  (let ((__tmp114933
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108759_ '()))))
                                    (declare (not safe))
                                    (cons _bind108765_ __tmp114933))))
                             (declare (not safe))
                             (cons 'let __tmp114932))))
                      (declare (not safe))
                      (__SRC__% __tmp114931 _stx108752_))))
               (declare (not safe))
               (cons __tmp114930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114929
                                                        _check108764_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114928))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114927 _stx108752_))))
                             (_K108770108825_
                              (lambda (_rest108789_
                                       _init108790_
                                       _len108791_
                                       _tmp108792_)
                                (let ((__tmp114941
                                       (let ((__tmp114942
                                              (let ((__tmp114943
                                                     (let ((__tmp114944
                                                            (let ((__tmp114945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108791_ '()))))
                      (declare (not safe))
                      (cons _tmp108792_ __tmp114945))))
               (declare (not safe))
               (cons '__check-values __tmp114944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114943
                                                 _stx108752_))))
                                         (declare (not safe))
                                         (cons __tmp114942 _check108764_)))
                                      (__tmp114934
                                       (let ((__tmp114935
                                              (lambda (_hd108794_ _r108795_)
                                                (let* ((_hd108796108803_
                                                        _hd108794_)
                                                       (_E108798108807_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108796108803_)))
               (_K108799108813_
                (lambda (_k108810_ _id108811_)
                  (let ((__tmp114936
                         (let ((__tmp114937
                                (let ((__tmp114938
                                       (let ((__tmp114939
                                              (let ((__tmp114940
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108810_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108792_
                                                      __tmp114940))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114939))))
                                  (declare (not safe))
                                  (cons __tmp114938 '()))))
                           (declare (not safe))
                           (cons _id108811_ __tmp114937))))
                    (declare (not safe))
                    (cons __tmp114936 _r108795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108796108803_))
                                                      (let ((_hd108800108816_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108796108803_)))
                    (_tl108801108818_
                     (let () (declare (not safe)) (##cdr _hd108796108803_))))
                (let* ((_id108821_ _hd108800108816_)
                       (_k108823_ _tl108801108818_))
                  (declare (not safe))
                  (_K108799108813_ _k108823_ _id108821_)))
              (let () (declare (not safe)) (_E108798108807_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114935
                                                 _bind108765_
                                                 _init108790_))))
                                  (declare (not safe))
                                  (_lp108761_
                                   _rest108789_
                                   __tmp114941
                                   __tmp114934)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108766108778_))
                            (let ((_hd108771108828_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108766108778_)))
                                  (_tl108772108830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108766108778_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108771108828_))
                                  (let ((_hd108773108833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108771108828_)))
                                        (_tl108774108835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108771108828_))))
                                    (let ((_tmp108838_ _hd108773108833_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108774108835_))
                                          (let ((_hd108775108840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108774108835_)))
                                                (_tl108776108842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108774108835_))))
                                            (let* ((_len108845_
                                                    _hd108775108840_)
                                                   (_init108847_
                                                    _tl108776108842_)
                                                   (_rest108849_
                                                    _tl108772108830_))
                                              (declare (not safe))
                                              (_K108770108825_
                                               _rest108849_
                                               _init108847_
                                               _len108845_
                                               _tmp108838_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108768108786_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108768108786_))))
                            (let ()
                              (declare (not safe))
                              (_else108768108786_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108752_
             _compile-simple108754_
             _compile-values108755_)))))
    (define __compile-letrec-values%
      (lambda (_stx108552_)
        (letrec ((_compile-simple108554_
                  (lambda (_hd-ids108748_ _exprs108749_ _body108750_)
                    (let ((__tmp114946
                           (let ((__tmp114947
                                  (let ((__tmp114949
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108748_)
                                              _exprs108749_))
                                        (__tmp114948
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108750_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114949 __tmp114948))))
                             (declare (not safe))
                             (cons 'letrec __tmp114947))))
                      (declare (not safe))
                      (__SRC__% __tmp114946 _stx108552_))))
                 (_compile-values108555_
                  (lambda (_hd-ids108662_ _exprs108663_ _body108664_)
                    (let _lp108666_ ((_rest108668_ _hd-ids108662_)
                                     (_exprs108669_ _exprs108663_)
                                     (_pre108670_ '())
                                     (_bind108671_ '())
                                     (_post108672_ '()))
                      (let* ((_rest108673108687_ _rest108668_)
                             (_else108676108695_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108556_
                                   _pre108670_
                                   _bind108671_
                                   _post108672_
                                   _body108664_)))))
                        (let ((_K108681108731_
                               (lambda (_rest108728_ _id108729_)
                                 (let ((__tmp114955 (cdr _exprs108669_))
                                       (__tmp114950
                                        (let ((__tmp114951
                                               (let ((__tmp114954
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108729_)))
                                                     (__tmp114952
                                                      (let ((__tmp114953
                                                             (car _exprs108669_)))
                                                        (declare (not safe))
                                                        (cons __tmp114953
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114954
                                                       __tmp114952))))
                                          (declare (not safe))
                                          (cons __tmp114951 _bind108671_))))
                                   (declare (not safe))
                                   (_lp108666_
                                    _rest108728_
                                    __tmp114955
                                    _pre108670_
                                    __tmp114950
                                    _post108672_))))
                              (_K108678108713_
                               (lambda (_rest108699_ _hd108700_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108700_))
                                     (let ((__tmp114983 (cdr _exprs108669_))
                                           (__tmp114976
                                            (let ((__tmp114977
                                                   (let ((__tmp114982
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108700_)))
                                                         (__tmp114978
                                                          (let ((__tmp114979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114980
                                (let ((__tmp114981 (car _exprs108669_)))
                                  (declare (not safe))
                                  (cons __tmp114981 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114980))))
                    (declare (not safe))
                    (cons __tmp114979 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114982
                                                           __tmp114978))))
                                              (declare (not safe))
                                              (cons __tmp114977
                                                    _bind108671_))))
                                       (declare (not safe))
                                       (_lp108666_
                                        _rest108699_
                                        __tmp114983
                                        _pre108670_
                                        __tmp114976
                                        _post108672_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108700_))
                                         (let* ((_len108702_
                                                 (length _hd108700_))
                                                (_tmp108704_
                                                 (let ((__tmp114956 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114956))))
                                           (let ((__tmp114975
                                                  (cdr _exprs108669_))
                                                 (__tmp114968
                                                  (let ((__tmp114969
                                                         (lambda (_id108707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108708_)
                   (if (let () (declare (not safe)) (__AST-e _id108707_))
                       (let ((__tmp114970
                              (let ((__tmp114974
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108707_)))
                                    (__tmp114971
                                     (let ((__tmp114972
                                            (let ((__tmp114973
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114973))))
                                       (declare (not safe))
                                       (cons __tmp114972 '()))))
                                (declare (not safe))
                                (cons __tmp114974 __tmp114971))))
                         (declare (not safe))
                         (cons __tmp114970 _r108708_))
                       _r108708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114969
                                                            _pre108670_
                                                            _hd108700_)))
                                                 (__tmp114964
                                                  (let ((__tmp114965
                                                         (let ((__tmp114966
                                                                (let ((__tmp114967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108669_)))
                          (declare (not safe))
                          (cons __tmp114967 '()))))
                   (declare (not safe))
                   (cons _tmp108704_ __tmp114966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114965
                                                          _bind108671_)))
                                                 (__tmp114957
                                                  (let ((__tmp114958
                                                         (let ((__tmp114959
                                                                (let ((__tmp114960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114962
                                      (lambda (_id108710_ _k108711_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108710_))
                                            (let ((__tmp114963
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108710_))))
                                              (declare (not safe))
                                              (cons __tmp114963 _k108711_))
                                            '#f)))
                                     (__tmp114961
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108702_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114962
                                  _hd108700_
                                  __tmp114961))))
                          (declare (not safe))
                          (cons _len108702_ __tmp114960))))
                   (declare (not safe))
                   (cons _tmp108704_ __tmp114959))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114958
                                                          _post108672_))))
                                             (declare (not safe))
                                             (_lp108666_
                                              _rest108699_
                                              __tmp114975
                                              __tmp114968
                                              __tmp114964
                                              __tmp114957)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108552_
                                            _hd108700_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108673108687_))
                              (let ((_tl108683108736_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108673108687_)))
                                    (_hd108682108734_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108673108687_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108682108734_))
                                    (let ((_tl108685108741_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108682108734_)))
                                          (_hd108684108739_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108682108734_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108685108741_))
                                          (let ((_id108744_ _hd108684108739_)
                                                (_rest108746_
                                                 _tl108683108736_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108681108731_
                                               _rest108746_
                                               _id108744_)))
                                          (let ((_hd108721_ _hd108682108734_)
                                                (_rest108723_
                                                 _tl108683108736_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108678108713_
                                               _rest108723_
                                               _hd108721_)))))
                                    (let ((_hd108721_ _hd108682108734_)
                                          (_rest108723_ _tl108683108736_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108678108713_
                                         _rest108723_
                                         _hd108721_)))))
                              (let ()
                                (declare (not safe))
                                (_else108676108695_))))))))
                 (_compile-inner108556_
                  (lambda (_pre108657_ _bind108658_ _post108659_ _body108660_)
                    (if (let () (declare (not safe)) (null? _pre108657_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108557_
                           _bind108658_
                           _post108659_
                           _body108660_))
                        (let ((__tmp114984
                               (let ((__tmp114985
                                      (let ((__tmp114988 (reverse _pre108657_))
                                            (__tmp114986
                                             (let ((__tmp114987
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108557_
                                                       _bind108658_
                                                       _post108659_
                                                       _body108660_))))
                                               (declare (not safe))
                                               (cons __tmp114987 '()))))
                                        (declare (not safe))
                                        (cons __tmp114988 __tmp114986))))
                                 (declare (not safe))
                                 (cons 'let __tmp114985))))
                          (declare (not safe))
                          (__SRC__% __tmp114984 _stx108552_)))))
                 (_compile-bind108557_
                  (lambda (_bind108653_ _post108654_ _body108655_)
                    (let ((__tmp114989
                           (let ((__tmp114990
                                  (let ((__tmp114993 (reverse _bind108653_))
                                        (__tmp114991
                                         (let ((__tmp114992
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108558_
                                                   _post108654_
                                                   _body108655_))))
                                           (declare (not safe))
                                           (cons __tmp114992 '()))))
                                    (declare (not safe))
                                    (cons __tmp114993 __tmp114991))))
                             (declare (not safe))
                             (cons 'letrec __tmp114990))))
                      (declare (not safe))
                      (__SRC__% __tmp114989 _stx108552_))))
                 (_compile-post108558_
                  (lambda (_post108560_ _body108561_)
                    (let _lp108563_ ((_rest108565_ _post108560_)
                                     (_check108566_ '())
                                     (_bind108567_ '()))
                      (let* ((_rest108568108580_ _rest108565_)
                             (_else108570108588_
                              (lambda ()
                                (let ((__tmp114994
                                       (let ((__tmp114995
                                              (let ((__tmp114996
                                                     (let ((__tmp114997
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114997 _bind108567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114996
                                                        _check108566_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114995))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114994 _stx108552_))))
                             (_K108572108627_
                              (lambda (_rest108591_
                                       _init108592_
                                       _len108593_
                                       _tmp108594_)
                                (let ((__tmp115006
                                       (let ((__tmp115007
                                              (let ((__tmp115008
                                                     (let ((__tmp115009
                                                            (let ((__tmp115010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108593_ '()))))
                      (declare (not safe))
                      (cons _tmp108594_ __tmp115010))))
               (declare (not safe))
               (cons '__check-values __tmp115009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115008
                                                 _stx108552_))))
                                         (declare (not safe))
                                         (cons __tmp115007 _check108566_)))
                                      (__tmp114998
                                       (let ((__tmp114999
                                              (lambda (_hd108596_ _r108597_)
                                                (let* ((_hd108598108605_
                                                        _hd108596_)
                                                       (_E108600108609_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108598108605_)))
               (_K108601108615_
                (lambda (_k108612_ _id108613_)
                  (let ((__tmp115000
                         (let ((__tmp115001
                                (let ((__tmp115002
                                       (let ((__tmp115003
                                              (let ((__tmp115004
                                                     (let ((__tmp115005
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108594_ __tmp115005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115004))))
                                         (declare (not safe))
                                         (cons __tmp115003 '()))))
                                  (declare (not safe))
                                  (cons _id108613_ __tmp115002))))
                           (declare (not safe))
                           (cons 'set! __tmp115001))))
                    (declare (not safe))
                    (cons __tmp115000 _r108597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108598108605_))
                                                      (let ((_hd108602108618_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108598108605_)))
                    (_tl108603108620_
                     (let () (declare (not safe)) (##cdr _hd108598108605_))))
                (let* ((_id108623_ _hd108602108618_)
                       (_k108625_ _tl108603108620_))
                  (declare (not safe))
                  (_K108601108615_ _k108625_ _id108623_)))
              (let () (declare (not safe)) (_E108600108609_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114999
                                                 _bind108567_
                                                 _init108592_))))
                                  (declare (not safe))
                                  (_lp108563_
                                   _rest108591_
                                   __tmp115006
                                   __tmp114998)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108568108580_))
                            (let ((_hd108573108630_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108568108580_)))
                                  (_tl108574108632_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108568108580_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108573108630_))
                                  (let ((_hd108575108635_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108573108630_)))
                                        (_tl108576108637_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108573108630_))))
                                    (let ((_tmp108640_ _hd108575108635_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108576108637_))
                                          (let ((_hd108577108642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108576108637_)))
                                                (_tl108578108644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108576108637_))))
                                            (let* ((_len108647_
                                                    _hd108577108642_)
                                                   (_init108649_
                                                    _tl108578108644_)
                                                   (_rest108651_
                                                    _tl108574108632_))
                                              (declare (not safe))
                                              (_K108572108627_
                                               _rest108651_
                                               _init108649_
                                               _len108647_
                                               _tmp108640_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108570108588_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108570108588_))))
                            (let ()
                              (declare (not safe))
                              (_else108570108588_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108552_
             _compile-simple108554_
             _compile-values108555_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108307_)
        (letrec ((_compile-simple108309_
                  (lambda (_hd-ids108548_ _exprs108549_ _body108550_)
                    (let ((__tmp115011
                           (let ((__tmp115012
                                  (let ((__tmp115014
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108548_)
                                              _exprs108549_))
                                        (__tmp115013
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108550_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115014 __tmp115013))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115012))))
                      (declare (not safe))
                      (__SRC__% __tmp115011 _stx108307_))))
                 (_compile-values108310_
                  (lambda (_hd-ids108459_ _exprs108460_ _body108461_)
                    (let _lp108463_ ((_rest108465_ _hd-ids108459_)
                                     (_exprs108466_ _exprs108460_)
                                     (_bind108467_ '())
                                     (_post108468_ '()))
                      (let* ((_rest108469108483_ _rest108465_)
                             (_else108472108491_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108311_
                                   _bind108467_
                                   _post108468_
                                   _body108461_)))))
                        (let ((_K108477108531_
                               (lambda (_rest108526_ _hd108527_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108527_))
                                     (let ((_id108529_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108527_))))
                                       (let ((__tmp115029 (cdr _exprs108466_))
                                             (__tmp115024
                                              (let ((__tmp115025
                                                     (let ((__tmp115026
                                                            (let ((__tmp115027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115028
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115028))))
                      (declare (not safe))
                      (cons __tmp115027 '()))))
               (declare (not safe))
               (cons _id108529_ __tmp115026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115025
                                                      _bind108467_)))
                                             (__tmp115020
                                              (let ((__tmp115021
                                                     (let ((__tmp115022
                                                            (let ((__tmp115023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108466_)))
                      (declare (not safe))
                      (cons __tmp115023 '()))))
               (declare (not safe))
               (cons _id108529_ __tmp115022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115021
                                                      _post108468_))))
                                         (declare (not safe))
                                         (_lp108463_
                                          _rest108526_
                                          __tmp115029
                                          __tmp115024
                                          __tmp115020)))
                                     (let ((__tmp115019 (cdr _exprs108466_))
                                           (__tmp115015
                                            (let ((__tmp115016
                                                   (let ((__tmp115017
                                                          (let ((__tmp115018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108466_)))
                    (declare (not safe))
                    (cons __tmp115018 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115017))))
                                              (declare (not safe))
                                              (cons __tmp115016
                                                    _post108468_))))
                                       (declare (not safe))
                                       (_lp108463_
                                        _rest108526_
                                        __tmp115019
                                        _bind108467_
                                        __tmp115015)))))
                              (_K108474108511_
                               (lambda (_rest108495_ _hd108496_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108496_))
                                     (let ((_id108498_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108496_))))
                                       (let ((__tmp115065 (cdr _exprs108466_))
                                             (__tmp115060
                                              (let ((__tmp115061
                                                     (let ((__tmp115062
                                                            (let ((__tmp115063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115064
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115064))))
                      (declare (not safe))
                      (cons __tmp115063 '()))))
               (declare (not safe))
               (cons _id108498_ __tmp115062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115061
                                                      _bind108467_)))
                                             (__tmp115054
                                              (let ((__tmp115055
                                                     (let ((__tmp115056
                                                            (let ((__tmp115057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115058
                                  (let ((__tmp115059 (car _exprs108466_)))
                                    (declare (not safe))
                                    (cons __tmp115059 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115058))))
                      (declare (not safe))
                      (cons __tmp115057 '()))))
               (declare (not safe))
               (cons _id108498_ __tmp115056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115055
                                                      _post108468_))))
                                         (declare (not safe))
                                         (_lp108463_
                                          _rest108495_
                                          __tmp115065
                                          __tmp115060
                                          __tmp115054)))
                                     (if (let ((__tmp115053
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108496_))))
                                           (declare (not safe))
                                           (not __tmp115053))
                                         (let ((__tmp115052
                                                (cdr _exprs108466_))
                                               (__tmp115048
                                                (let ((__tmp115049
                                                       (let ((__tmp115050
                                                              (let ((__tmp115051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108466_)))
                        (declare (not safe))
                        (cons __tmp115051 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115049
                                                        _post108468_))))
                                           (declare (not safe))
                                           (_lp108463_
                                            _rest108495_
                                            __tmp115052
                                            _bind108467_
                                            __tmp115048))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108496_))
                                             (let* ((_len108500_
                                                     (length _hd108496_))
                                                    (_tmp108502_
                                                     (let ((__tmp115030
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115030))))
                                               (let ((__tmp115047
                                                      (cdr _exprs108466_))
                                                     (__tmp115040
                                                      (let ((__tmp115041
                                                             (lambda (_id108505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108506_)
                       (if (let () (declare (not safe)) (__AST-e _id108505_))
                           (let ((__tmp115042
                                  (let ((__tmp115046
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108505_)))
                                        (__tmp115043
                                         (let ((__tmp115044
                                                (let ((__tmp115045
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115045))))
                                           (declare (not safe))
                                           (cons __tmp115044 '()))))
                                    (declare (not safe))
                                    (cons __tmp115046 __tmp115043))))
                             (declare (not safe))
                             (cons __tmp115042 _r108506_))
                           _r108506_))))
                (declare (not safe))
                (foldl1 __tmp115041 _bind108467_ _hd108496_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115031
                                                      (let ((__tmp115032
                                                             (let ((__tmp115033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115039 (car _exprs108466_))
                                  (__tmp115034
                                   (let ((__tmp115035
                                          (let ((__tmp115037
                                                 (lambda (_id108508_ _k108509_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108508_))
                                                       (let ((__tmp115038
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108508_))))
                 (declare (not safe))
                 (cons __tmp115038 _k108509_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115036
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108500_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115037
                                             _hd108496_
                                             __tmp115036))))
                                     (declare (not safe))
                                     (cons _len108500_ __tmp115035))))
                              (declare (not safe))
                              (cons __tmp115039 __tmp115034))))
                       (declare (not safe))
                       (cons _tmp108502_ __tmp115033))))
                (declare (not safe))
                (cons __tmp115032 _post108468_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108463_
                                                  _rest108495_
                                                  __tmp115047
                                                  __tmp115040
                                                  __tmp115031)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108307_
                                                _hd108496_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108469108483_))
                              (let ((_tl108479108536_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108469108483_)))
                                    (_hd108478108534_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108469108483_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108478108534_))
                                    (let ((_tl108481108541_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108478108534_)))
                                          (_hd108480108539_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108478108534_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108481108541_))
                                          (let ((_hd108544_ _hd108480108539_)
                                                (_rest108546_
                                                 _tl108479108536_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108477108531_
                                               _rest108546_
                                               _hd108544_)))
                                          (let ((_hd108519_ _hd108478108534_)
                                                (_rest108521_
                                                 _tl108479108536_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108474108511_
                                               _rest108521_
                                               _hd108519_)))))
                                    (let ((_hd108519_ _hd108478108534_)
                                          (_rest108521_ _tl108479108536_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108474108511_
                                         _rest108521_
                                         _hd108519_)))))
                              (let ()
                                (declare (not safe))
                                (_else108472108491_))))))))
                 (_compile-bind108311_
                  (lambda (_bind108455_ _post108456_ _body108457_)
                    (let ((__tmp115066
                           (let ((__tmp115067
                                  (let ((__tmp115070 (reverse _bind108455_))
                                        (__tmp115068
                                         (let ((__tmp115069
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108312_
                                                   _post108456_
                                                   _body108457_))))
                                           (declare (not safe))
                                           (cons __tmp115069 '()))))
                                    (declare (not safe))
                                    (cons __tmp115070 __tmp115068))))
                             (declare (not safe))
                             (cons 'let __tmp115067))))
                      (declare (not safe))
                      (__SRC__% __tmp115066 _stx108307_))))
                 (_compile-post108312_
                  (lambda (_post108314_ _body108315_)
                    (let ((__tmp115071
                           (let ((__tmp115072
                                  (let ((__tmp115073
                                         (let ((__tmp115075
                                                (lambda (_hd108317_ _r108318_)
                                                  (let* ((_hd108319108342_
                                                          _hd108317_)
                                                         (_E108323108346_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108319108342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108336108440_
                                                           (lambda (_expr108438_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108438_ _r108318_))))
                  (_K108331108418_
                   (lambda (_expr108415_ _id108416_)
                     (let ((__tmp115076
                            (let ((__tmp115077
                                   (let ((__tmp115078
                                          (let ((__tmp115079
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108415_ '()))))
                                            (declare (not safe))
                                            (cons _id108416_ __tmp115079))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115078))))
                              (declare (not safe))
                              (__SRC__% __tmp115077 _stx108307_))))
                       (declare (not safe))
                       (cons __tmp115076 _r108318_))))
                  (_K108324108385_
                   (lambda (_init108350_ _len108351_ _expr108352_ _tmp108353_)
                     (let ((__tmp115080
                            (let ((__tmp115081
                                   (let ((__tmp115082
                                          (let ((__tmp115096
                                                 (let ((__tmp115097
                                                        (let ((__tmp115098
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108352_ '()))))
                  (declare (not safe))
                  (cons _tmp108353_ __tmp115098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115097 '())))
                                                (__tmp115083
                                                 (let ((__tmp115092
                                                        (let ((__tmp115093
                                                               (let ((__tmp115094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115095
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108351_ '()))))
                                (declare (not safe))
                                (cons _tmp108353_ __tmp115095))))
                         (declare (not safe))
                         (cons '__check-values __tmp115094))))
                  (declare (not safe))
                  (__SRC__% __tmp115093 _stx108307_)))
               (__tmp115084
                (let ((__tmp115085
                       (map (lambda (_hd108355_)
                              (let* ((_hd108356108363_ _hd108355_)
                                     (_E108358108367_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108356108363_)))
                                     (_K108359108373_
                                      (lambda (_k108370_ _id108371_)
                                        (let ((__tmp115086
                                               (let ((__tmp115087
                                                      (let ((__tmp115088
                                                             (let ((__tmp115089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115090
                                   (let ((__tmp115091
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108370_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108353_ __tmp115091))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115090))))
                       (declare (not safe))
                       (cons __tmp115089 '()))))
                (declare (not safe))
                (cons _id108371_ __tmp115088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115087))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115086
                                           _stx108307_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108356108363_))
                                    (let ((_hd108360108376_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108356108363_)))
                                          (_tl108361108378_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108356108363_))))
                                      (let* ((_id108381_ _hd108360108376_)
                                             (_k108383_ _tl108361108378_))
                                        (declare (not safe))
                                        (_K108359108373_
                                         _k108383_
                                         _id108381_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108358108367_)))))
                            _init108350_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115092
                                                         __tmp115084))))
                                            (declare (not safe))
                                            (cons __tmp115096 __tmp115083))))
                                     (declare (not safe))
                                     (cons 'let __tmp115082))))
                              (declare (not safe))
                              (__SRC__% __tmp115081 _stx108307_))))
                       (declare (not safe))
                       (cons __tmp115080 _r108318_)))))
              (if (let () (declare (not safe)) (##pair? _hd108319108342_))
                  (let ((_tl108338108445_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108319108342_)))
                        (_hd108337108443_
                         (let ()
                           (declare (not safe))
                           (##car _hd108319108342_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108337108443_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108338108445_))
                            (let ((_tl108340108450_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108338108445_)))
                                  (_hd108339108448_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108338108445_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108340108450_))
                                  (let ((_expr108453_ _hd108339108448_))
                                    (declare (not safe))
                                    (_K108336108440_ _expr108453_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108340108450_))
                                      (let ((_tl108330108404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108340108450_)))
                                            (_hd108329108402_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108340108450_))))
                                        (let ((_tmp108393_ _hd108337108443_)
                                              (_expr108400_ _hd108339108448_)
                                              (_len108407_ _hd108329108402_)
                                              (_init108409_ _tl108330108404_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108324108385_
                                             _init108409_
                                             _len108407_
                                             _expr108400_
                                             _tmp108393_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108323108346_)))))
                            (let () (declare (not safe)) (_E108323108346_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108338108445_))
                            (let ((_tl108335108430_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108338108445_)))
                                  (_hd108334108428_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108338108445_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108335108430_))
                                  (let ((_id108426_ _hd108337108443_)
                                        (_expr108433_ _hd108334108428_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108331108418_
                                       _expr108433_
                                       _id108426_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108335108430_))
                                      (let ((_tl108330108404_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108335108430_)))
                                            (_hd108329108402_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108335108430_))))
                                        (let ((_tmp108393_ _hd108337108443_)
                                              (_expr108400_ _hd108334108428_)
                                              (_len108407_ _hd108329108402_)
                                              (_init108409_ _tl108330108404_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108324108385_
                                             _init108409_
                                             _len108407_
                                             _expr108400_
                                             _tmp108393_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108323108346_)))))
                            (let () (declare (not safe)) (_E108323108346_)))))
                  (let () (declare (not safe)) (_E108323108346_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115074
                                                (list _body108315_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115075
                                                   __tmp115074
                                                   _post108314_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115073))))
                             (declare (not safe))
                             (cons 'begin __tmp115072))))
                      (declare (not safe))
                      (__SRC__% __tmp115071 _stx108307_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108307_
             _compile-simple108309_
             _compile-values108310_)))))
    (define __compile-call%
      (lambda (_stx108267_)
        (let* ((_$e108269_ _stx108267_)
               (_$E108271108280_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108269_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108269_))
              (let* ((_$tgt108272108283_
                      (let () (declare (not safe)) (__AST-e _$e108269_)))
                     (_$hd108273108286_
                      (let () (declare (not safe)) (##car _$tgt108272108283_)))
                     (_$tl108274108289_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108272108283_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108274108289_))
                    (let* ((_$tgt108275108293_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108274108289_)))
                           (_$hd108276108296_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108275108293_)))
                           (_$tl108277108299_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108275108293_))))
                      (let* ((_rator108303_ _$hd108276108296_)
                             (_rands108305_ _$tl108277108299_)
                             (__tmp115099
                              (let ((__tmp115101
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108303_)))
                                    (__tmp115100
                                     (map __compile _rands108305_)))
                                (declare (not safe))
                                (cons __tmp115101 __tmp115100))))
                        (declare (not safe))
                        (__SRC__% __tmp115099 _stx108267_)))
                    (let () (declare (not safe)) (_$E108271108280_))))
              (let () (declare (not safe)) (_$E108271108280_))))))
    (define __compile-ref%
      (lambda (_stx108229_)
        (let* ((_$e108231_ _stx108229_)
               (_$E108233108242_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108231_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108231_))
              (let* ((_$tgt108234108245_
                      (let () (declare (not safe)) (__AST-e _$e108231_)))
                     (_$hd108235108248_
                      (let () (declare (not safe)) (##car _$tgt108234108245_)))
                     (_$tl108236108251_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108234108245_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108236108251_))
                    (let* ((_$tgt108237108255_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108236108251_)))
                           (_$hd108238108258_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108237108255_)))
                           (_$tl108239108261_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108237108255_))))
                      (let ((_id108265_ _$hd108238108258_))
                        (if (let ((__tmp115102
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108239108261_))))
                              (declare (not safe))
                              (equal? __tmp115102 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108265_ _stx108229_))
                            (let () (declare (not safe)) (_$E108233108242_)))))
                    (let () (declare (not safe)) (_$E108233108242_))))
              (let () (declare (not safe)) (_$E108233108242_))))))
    (define __compile-setq%
      (lambda (_stx108176_)
        (let* ((_$e108178_ _stx108176_)
               (_$E108180108192_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108178_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108178_))
              (let* ((_$tgt108181108195_
                      (let () (declare (not safe)) (__AST-e _$e108178_)))
                     (_$hd108182108198_
                      (let () (declare (not safe)) (##car _$tgt108181108195_)))
                     (_$tl108183108201_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108181108195_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108183108201_))
                    (let* ((_$tgt108184108205_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108183108201_)))
                           (_$hd108185108208_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108184108205_)))
                           (_$tl108186108211_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108184108205_))))
                      (let ((_id108215_ _$hd108185108208_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108186108211_))
                            (let* ((_$tgt108187108217_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108186108211_)))
                                   (_$hd108188108220_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108187108217_)))
                                   (_$tl108189108223_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108187108217_))))
                              (let ((_expr108227_ _$hd108188108220_))
                                (if (let ((__tmp115108
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108189108223_))))
                                      (declare (not safe))
                                      (equal? __tmp115108 '()))
                                    (let ((__tmp115103
                                           (let ((__tmp115104
                                                  (let ((__tmp115107
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108215_
                                                            _stx108176_)))
                                                        (__tmp115105
                                                         (let ((__tmp115106
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108227_))))
                   (declare (not safe))
                   (cons __tmp115106 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115107
                                                          __tmp115105))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115104))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115103 _stx108176_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108180108192_)))))
                            (let () (declare (not safe)) (_$E108180108192_)))))
                    (let () (declare (not safe)) (_$E108180108192_))))
              (let () (declare (not safe)) (_$E108180108192_))))))
    (define __compile-if%
      (lambda (_stx108108_)
        (let* ((_$e108110_ _stx108108_)
               (_$E108112108127_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108110_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108110_))
              (let* ((_$tgt108113108130_
                      (let () (declare (not safe)) (__AST-e _$e108110_)))
                     (_$hd108114108133_
                      (let () (declare (not safe)) (##car _$tgt108113108130_)))
                     (_$tl108115108136_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108113108130_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108115108136_))
                    (let* ((_$tgt108116108140_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108115108136_)))
                           (_$hd108117108143_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108116108140_)))
                           (_$tl108118108146_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108116108140_))))
                      (let ((_p108150_ _$hd108117108143_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108118108146_))
                            (let* ((_$tgt108119108152_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108118108146_)))
                                   (_$hd108120108155_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108119108152_)))
                                   (_$tl108121108158_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108119108152_))))
                              (let ((_t108162_ _$hd108120108155_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108121108158_))
                                    (let* ((_$tgt108122108164_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108121108158_)))
                                           (_$hd108123108167_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108122108164_)))
                                           (_$tl108124108170_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108122108164_))))
                                      (let ((_f108174_ _$hd108123108167_))
                                        (if (let ((__tmp115116
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108124108170_))))
                                              (declare (not safe))
                                              (equal? __tmp115116 '()))
                                            (let ((__tmp115109
                                                   (let ((__tmp115110
                                                          (let ((__tmp115115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108150_)))
                        (__tmp115111
                         (let ((__tmp115114
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108162_)))
                               (__tmp115112
                                (let ((__tmp115113
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108174_))))
                                  (declare (not safe))
                                  (cons __tmp115113 '()))))
                           (declare (not safe))
                           (cons __tmp115114 __tmp115112))))
                    (declare (not safe))
                    (cons __tmp115115 __tmp115111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115110))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115109
                                               _stx108108_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108112108127_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108112108127_)))))
                            (let () (declare (not safe)) (_$E108112108127_)))))
                    (let () (declare (not safe)) (_$E108112108127_))))
              (let () (declare (not safe)) (_$E108112108127_))))))
    (define __compile-quote%
      (lambda (_stx108070_)
        (let* ((_$e108072_ _stx108070_)
               (_$E108074108083_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108072_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108072_))
              (let* ((_$tgt108075108086_
                      (let () (declare (not safe)) (__AST-e _$e108072_)))
                     (_$hd108076108089_
                      (let () (declare (not safe)) (##car _$tgt108075108086_)))
                     (_$tl108077108092_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108075108086_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108077108092_))
                    (let* ((_$tgt108078108096_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108077108092_)))
                           (_$hd108079108099_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108078108096_)))
                           (_$tl108080108102_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108078108096_))))
                      (let ((_e108106_ _$hd108079108099_))
                        (if (let ((__tmp115120
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108080108102_))))
                              (declare (not safe))
                              (equal? __tmp115120 '()))
                            (let ((__tmp115117
                                   (let ((__tmp115118
                                          (let ((__tmp115119
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108106_))))
                                            (declare (not safe))
                                            (cons __tmp115119 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115118))))
                              (declare (not safe))
                              (__SRC__% __tmp115117 _stx108070_))
                            (let () (declare (not safe)) (_$E108074108083_)))))
                    (let () (declare (not safe)) (_$E108074108083_))))
              (let () (declare (not safe)) (_$E108074108083_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108032_)
        (let* ((_$e108034_ _stx108032_)
               (_$E108036108045_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108034_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108034_))
              (let* ((_$tgt108037108048_
                      (let () (declare (not safe)) (__AST-e _$e108034_)))
                     (_$hd108038108051_
                      (let () (declare (not safe)) (##car _$tgt108037108048_)))
                     (_$tl108039108054_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108037108048_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108039108054_))
                    (let* ((_$tgt108040108058_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108039108054_)))
                           (_$hd108041108061_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108040108058_)))
                           (_$tl108042108064_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108040108058_))))
                      (let ((_e108068_ _$hd108041108061_))
                        (if (let ((__tmp115123
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108042108064_))))
                              (declare (not safe))
                              (equal? __tmp115123 '()))
                            (let ((__tmp115121
                                   (let ((__tmp115122
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108068_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115122))))
                              (declare (not safe))
                              (__SRC__% __tmp115121 _stx108032_))
                            (let () (declare (not safe)) (_$E108036108045_)))))
                    (let () (declare (not safe)) (_$E108036108045_))))
              (let () (declare (not safe)) (_$E108036108045_))))))
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
