(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707573211)
  (begin
    (define __context::t
      (let ((__tmp113780
             (let ((__tmp113781
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113781 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp113780
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109116_
        (apply make-struct-instance __context::t _$args109116_)))
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
      (let ((__tmp113782
             (let ((__tmp113783
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113783 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp113782
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109113_
        (apply make-struct-instance __runtime::t _$args109113_)))
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
      (let ((__tmp113784
             (let ((__tmp113785
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113785 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp113784
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109110_
        (apply make-struct-instance __syntax::t _$args109110_)))
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
      (let ((__tmp113786
             (let ((__tmp113787
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113787 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp113786
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109107_
        (apply make-struct-instance __macro::t _$args109107_)))
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
      (let ((__tmp113788
             (let ((__tmp113789
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113789 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp113788
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109104_
        (apply make-struct-instance __special-form::t _$args109104_)))
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
      (let ((__tmp113790
             (let ((__tmp113791
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113791 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp113790
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109101_
        (apply make-struct-instance __core-form::t _$args109101_)))
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
      (let ((__tmp113792
             (let ((__tmp113793
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113793 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp113792
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109098_
        (apply make-struct-instance __core-expression::t _$args109098_)))
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
      (let ((__tmp113794
             (let ((__tmp113795
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113795 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp113794
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109095_
        (apply make-struct-instance __core-special-form::t _$args109095_)))
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
      (let ((__tmp113796
             (let ((__tmp113797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113797 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp113796
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109092_
        (apply make-struct-instance __struct-info::t _$args109092_)))
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
      (let ((__tmp113798
             (let ((__tmp113799
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113799 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp113798
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109089_
        (apply make-struct-instance __feature::t _$args109089_)))
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
      (let ((__tmp113800
             (let ((__tmp113801
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113801 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp113800
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109086_
        (apply make-struct-instance __module::t _$args109086_)))
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
      (let ((__tmp113803
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp113802
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp113803 __tmp113802)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109061_ _ctx109062_)
        (if _ctx109062_
            (let ((_id109064_
                   (let () (declare (not safe)) (__AST-e _id109061_))))
              (let _lp109066_ ((_ctx109068_ _ctx109062_))
                (let ((_$e109070_
                       (table-ref
                        (##structure-ref _ctx109068_ '4 __context::t '#f)
                        _id109064_
                        '#f)))
                  (if _$e109070_
                      (values _$e109070_)
                      (let ((_$e109073_
                             (##structure-ref
                              _ctx109068_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109073_
                            (let ()
                              (declare (not safe))
                              (_lp109066_ _$e109073_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109079_)
        (let ((_ctx109081_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109079_ _ctx109081_))))
    (define __core-resolve
      (lambda _g113805_
        (let ((_g113804_ (let () (declare (not safe)) (##length _g113805_))))
          (cond ((let () (declare (not safe)) (##fx= _g113804_ 1))
                 (apply (lambda (_id109079_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109079_)))
                        _g113805_))
                ((let () (declare (not safe)) (##fx= _g113804_ 2))
                 (apply (lambda (_id109083_ _ctx109084_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109083_ _ctx109084_)))
                        _g113805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113805_))))))
    (define __core-bound-id?__%
      (lambda (_id109044_ _is?109045_)
        (let ((_$e109047_
               (let () (declare (not safe)) (__core-resolve__0 _id109044_))))
          (if _$e109047_ (_is?109045_ _$e109047_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109053_)
        (let ((_is?109055_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109053_ _is?109055_))))
    (define __core-bound-id?
      (lambda _g113807_
        (let ((_g113806_ (let () (declare (not safe)) (##length _g113807_))))
          (cond ((let () (declare (not safe)) (##fx= _g113806_ 1))
                 (apply (lambda (_id109053_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109053_)))
                        _g113807_))
                ((let () (declare (not safe)) (##fx= _g113806_ 2))
                 (apply (lambda (_id109057_ _is?109058_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109057_ _is?109058_)))
                        _g113807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113807_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109027_ _eid109028_ _ctx109029_)
        (if _eid109028_
            (let ((__tmp113810
                   (##structure-ref _ctx109029_ '4 __context::t '#f))
                  (__tmp113809
                   (let () (declare (not safe)) (__AST-e _id109027_)))
                  (__tmp113808
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109028_))))
              (declare (not safe))
              (table-set! __tmp113810 __tmp113809 __tmp113808))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109034_ _eid109035_)
        (let ((_ctx109037_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109034_ _eid109035_ _ctx109037_))))
    (define __core-bind-runtime!
      (lambda _g113812_
        (let ((_g113811_ (let () (declare (not safe)) (##length _g113812_))))
          (cond ((let () (declare (not safe)) (##fx= _g113811_ 2))
                 (apply (lambda (_id109034_ _eid109035_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109034_ _eid109035_)))
                        _g113812_))
                ((let () (declare (not safe)) (##fx= _g113811_ 3))
                 (apply (lambda (_id109039_ _eid109040_ _ctx109041_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109039_
                             _eid109040_
                             _ctx109041_)))
                        _g113812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113812_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109010_ _e109011_ _make109012_)
        (let ((__tmp113813
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109011_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109011_
                   (_make109012_ _e109011_ _id109010_))))
          (declare (not safe))
          (table-set! __*core* _id109010_ __tmp113813))))
    (define __core-bind-syntax!__0
      (lambda (_id109017_ _e109018_)
        (let ((_make109020_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109017_ _e109018_ _make109020_))))
    (define __core-bind-syntax!
      (lambda _g113815_
        (let ((_g113814_ (let () (declare (not safe)) (##length _g113815_))))
          (cond ((let () (declare (not safe)) (##fx= _g113814_ 2))
                 (apply (lambda (_id109017_ _e109018_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109017_ _e109018_)))
                        _g113815_))
                ((let () (declare (not safe)) (##fx= _g113814_ 3))
                 (apply (lambda (_id109022_ _e109023_ _make109024_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109022_
                             _e109023_
                             _make109024_)))
                        _g113815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113815_))))))
    (define __core-bind-macro!
      (lambda (_id109006_ _e109007_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109006_ _e109007_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109003_ _e109004_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109003_ _e109004_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id108987_ _e108988_ _ctx108989_)
        (let ((__tmp113819 (##structure-ref _ctx108989_ '4 __context::t '#f))
              (__tmp113818 (let () (declare (not safe)) (__AST-e _id108987_)))
              (__tmp113816
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e108988_
                      'gerbil/runtime/eval#__syntax::t))
                   _e108988_
                   (let ((__tmp113817
                          (let () (declare (not safe)) (__AST-e _id108987_))))
                     (declare (not safe))
                     (##structure __syntax::t _e108988_ __tmp113817)))))
          (declare (not safe))
          (table-set! __tmp113819 __tmp113818 __tmp113816))))
    (define __core-bind-user-syntax!__0
      (lambda (_id108994_ _e108995_)
        (let ((_ctx108997_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id108994_ _e108995_ _ctx108997_))))
    (define __core-bind-user-syntax!
      (lambda _g113821_
        (let ((_g113820_ (let () (declare (not safe)) (##length _g113821_))))
          (cond ((let () (declare (not safe)) (##fx= _g113820_ 2))
                 (apply (lambda (_id108994_ _e108995_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id108994_
                             _e108995_)))
                        _g113821_))
                ((let () (declare (not safe)) (##fx= _g113820_ 3))
                 (apply (lambda (_id108999_ _e109000_ _ctx109001_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id108999_
                             _e109000_
                             _ctx109001_)))
                        _g113821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113821_))))))
    (define make-__runtime-id__%
      (lambda (_id108968_ _ctx108969_)
        (let ((_id108971_ (let () (declare (not safe)) (__AST-e _id108968_))))
          (if (let () (declare (not safe)) (eq? _id108971_ '_))
              '#f
              (if (uninterned-symbol? _id108971_)
                  (gensym _id108971_)
                  (if (let () (declare (not safe)) (symbol? _id108971_))
                      (let ((_$e108973_
                             (##structure-ref
                              _ctx108969_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e108973_))
                            (gensym _id108971_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e108973_))
                                (let ((__tmp113822
                                       (##structure-ref
                                        _ctx108969_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113822 '"#" _id108971_))
                                _id108971_)))
                      (error '"Illegal runtime identifier" _id108971_)))))))
    (define make-__runtime-id__0
      (lambda (_id108979_)
        (let ((_ctx108981_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id108979_ _ctx108981_))))
    (define make-__runtime-id
      (lambda _g113824_
        (let ((_g113823_ (let () (declare (not safe)) (##length _g113824_))))
          (cond ((let () (declare (not safe)) (##fx= _g113823_ 1))
                 (apply (lambda (_id108979_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id108979_)))
                        _g113824_))
                ((let () (declare (not safe)) (##fx= _g113823_ 2))
                 (apply (lambda (_id108983_ _ctx108984_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id108983_ _ctx108984_)))
                        _g113824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113824_))))))
    (define make-__context-local__%
      (lambda (_super108957_)
        (let ((__tmp113825
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super108957_ __tmp113825))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super108963_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super108963_))))
    (define make-__context-local
      (lambda _g113827_
        (let ((_g113826_ (let () (declare (not safe)) (##length _g113827_))))
          (cond ((let () (declare (not safe)) (##fx= _g113826_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g113827_))
                ((let () (declare (not safe)) (##fx= _g113826_ 1))
                 (apply (lambda (_super108965_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super108965_)))
                        _g113827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g113827_))))))
    (define make-__context-module__%
      (lambda (_id108937_ _ns108938_ _path108939_ _super108940_)
        (let ((__tmp113828
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns108938_
           _super108940_
           __tmp113828
           _id108937_
           _path108939_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id108945_ _ns108946_ _path108947_)
        (let ((_super108949_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id108945_
           _ns108946_
           _path108947_
           _super108949_))))
    (define make-__context-module
      (lambda _g113830_
        (let ((_g113829_ (let () (declare (not safe)) (##length _g113830_))))
          (cond ((let () (declare (not safe)) (##fx= _g113829_ 3))
                 (apply (lambda (_id108945_ _ns108946_ _path108947_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id108945_
                             _ns108946_
                             _path108947_)))
                        _g113830_))
                ((let () (declare (not safe)) (##fx= _g113829_ 4))
                 (apply (lambda (_id108951_
                                 _ns108952_
                                 _path108953_
                                 _super108954_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id108951_
                             _ns108952_
                             _path108953_
                             _super108954_)))
                        _g113830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g113830_))))))
    (define __SRC__%
      (lambda (_e108920_ _src-stx108921_)
        (if (or (let () (declare (not safe)) (pair? _e108920_))
                (let () (declare (not safe)) (symbol? _e108920_)))
            (let ((__tmp113834
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx108921_
                          'gerbil#AST::t))
                       (let ((__tmp113835
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx108921_))))
                         (declare (not safe))
                         (__locat __tmp113835))
                       '#f)))
              (declare (not safe))
              (##make-source _e108920_ __tmp113834))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e108920_ 'gerbil#AST::t))
                (let ((__tmp113833
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e108920_ '1 AST::t '#f)))
                      (__tmp113831
                       (let ((__tmp113832
                              (let ()
                                (declare (not safe))
                                (__AST-source _e108920_))))
                         (declare (not safe))
                         (__locat __tmp113832))))
                  (declare (not safe))
                  (##make-source __tmp113833 __tmp113831))
                (error '"BUG! Cannot sourcify object" _e108920_)))))
    (define __SRC__0
      (lambda (_e108929_)
        (let ((_src-stx108931_ '#f))
          (declare (not safe))
          (__SRC__% _e108929_ _src-stx108931_))))
    (define __SRC
      (lambda _g113837_
        (let ((_g113836_ (let () (declare (not safe)) (##length _g113837_))))
          (cond ((let () (declare (not safe)) (##fx= _g113836_ 1))
                 (apply (lambda (_e108929_)
                          (let () (declare (not safe)) (__SRC__0 _e108929_)))
                        _g113837_))
                ((let () (declare (not safe)) (##fx= _g113836_ 2))
                 (apply (lambda (_e108933_ _src-stx108934_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e108933_ _src-stx108934_)))
                        _g113837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113837_))))))
    (define __locat
      (lambda (_loc108917_)
        (if (let () (declare (not safe)) (##locat? _loc108917_))
            _loc108917_
            '#f)))
    (define __check-values
      (lambda (_obj108912_ _k108913_)
        (let ((_count108915_
               (if (let () (declare (not safe)) (##values? _obj108912_))
                   (let () (declare (not safe)) (##vector-length _obj108912_))
                   '1)))
          (if (fx= _count108915_ _k108913_)
              '#!void
              (error (if (fx< _count108915_ _k108913_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj108912_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj108912_))
                         _obj108912_)
                     _k108913_)))))
    (define __compile
      (lambda (_stx108882_)
        (let* ((_$e108884_ _stx108882_)
               (_$E108886108892_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108884_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108884_))
              (let* ((_$tgt108887108895_
                      (let () (declare (not safe)) (__AST-e _$e108884_)))
                     (_$hd108888108898_
                      (let () (declare (not safe)) (##car _$tgt108887108895_)))
                     (_$tl108889108901_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108887108895_))))
                (let* ((_form108905_ _$hd108888108898_)
                       (_$e108907_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form108905_))))
                  (if _$e108907_
                      ((lambda (_bind108910_)
                         ((##structure-ref _bind108910_ '1 __syntax::t '#f)
                          _stx108882_))
                       _$e108907_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx108882_
                         _form108905_)))))
              (let () (declare (not safe)) (_$E108886108892_))))))
    (define __compile-error__%
      (lambda (_stx108869_ _detail108870_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx108869_
           _detail108870_))))
    (define __compile-error__0
      (lambda (_stx108875_)
        (let ((_detail108877_ '#f))
          (declare (not safe))
          (__compile-error__% _stx108875_ _detail108877_))))
    (define __compile-error
      (lambda _g113839_
        (let ((_g113838_ (let () (declare (not safe)) (##length _g113839_))))
          (cond ((let () (declare (not safe)) (##fx= _g113838_ 1))
                 (apply (lambda (_stx108875_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx108875_)))
                        _g113839_))
                ((let () (declare (not safe)) (##fx= _g113838_ 2))
                 (apply (lambda (_stx108879_ _detail108880_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx108879_ _detail108880_)))
                        _g113839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113839_))))))
    (define __compile-ignore%
      (lambda (_stx108866_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx108866_))))
    (define __compile-begin%
      (lambda (_stx108841_)
        (let* ((_$e108843_ _stx108841_)
               (_$E108845108851_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108843_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108843_))
              (let* ((_$tgt108846108854_
                      (let () (declare (not safe)) (__AST-e _$e108843_)))
                     (_$hd108847108857_
                      (let () (declare (not safe)) (##car _$tgt108846108854_)))
                     (_$tl108848108860_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108846108854_))))
                (let* ((_body108864_ _$tl108848108860_)
                       (__tmp113840
                        (let ((__tmp113841 (map __compile _body108864_)))
                          (declare (not safe))
                          (cons 'begin __tmp113841))))
                  (declare (not safe))
                  (__SRC__% __tmp113840 _stx108841_)))
              (let () (declare (not safe)) (_$E108845108851_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108816_)
        (let* ((_$e108818_ _stx108816_)
               (_$E108820108826_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108818_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108818_))
              (let* ((_$tgt108821108829_
                      (let () (declare (not safe)) (__AST-e _$e108818_)))
                     (_$hd108822108832_
                      (let () (declare (not safe)) (##car _$tgt108821108829_)))
                     (_$tl108823108835_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108821108829_))))
                (let* ((_body108839_ _$tl108823108835_)
                       (__tmp113842
                        (let ((__tmp113843
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body108839_))))
                          (declare (not safe))
                          (cons 'begin __tmp113843))))
                  (declare (not safe))
                  (__SRC__% __tmp113842 _stx108816_)))
              (let () (declare (not safe)) (_$E108820108826_))))))
    (define __compile-import%
      (lambda (_stx108791_)
        (let* ((_$e108793_ _stx108791_)
               (_$E108795108801_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108793_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108793_))
              (let* ((_$tgt108796108804_
                      (let () (declare (not safe)) (__AST-e _$e108793_)))
                     (_$hd108797108807_
                      (let () (declare (not safe)) (##car _$tgt108796108804_)))
                     (_$tl108798108810_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108796108804_))))
                (let* ((_body108814_ _$tl108798108810_)
                       (__tmp113844
                        (let ((__tmp113845
                               (let ((__tmp113846
                                      (let ((__tmp113847
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108814_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp113847))))
                                 (declare (not safe))
                                 (cons __tmp113846 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp113845))))
                  (declare (not safe))
                  (__SRC__% __tmp113844 _stx108791_)))
              (let () (declare (not safe)) (_$E108795108801_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108738_)
        (let* ((_$e108740_ _stx108738_)
               (_$E108742108754_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108740_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108740_))
              (let* ((_$tgt108743108757_
                      (let () (declare (not safe)) (__AST-e _$e108740_)))
                     (_$hd108744108760_
                      (let () (declare (not safe)) (##car _$tgt108743108757_)))
                     (_$tl108745108763_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108743108757_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108745108763_))
                    (let* ((_$tgt108746108767_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108745108763_)))
                           (_$hd108747108770_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108746108767_)))
                           (_$tl108748108773_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108746108767_))))
                      (let ((_ann108777_ _$hd108747108770_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108748108773_))
                            (let* ((_$tgt108749108779_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108748108773_)))
                                   (_$hd108750108782_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108749108779_)))
                                   (_$tl108751108785_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108749108779_))))
                              (let ((_expr108789_ _$hd108750108782_))
                                (if (let ((__tmp113848
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108751108785_))))
                                      (declare (not safe))
                                      (equal? __tmp113848 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108789_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108742108754_)))))
                            (let () (declare (not safe)) (_$E108742108754_)))))
                    (let () (declare (not safe)) (_$E108742108754_))))
              (let () (declare (not safe)) (_$E108742108754_))))))
    (define __compile-define-values%
      (lambda (_stx108629_)
        (let* ((_$e108631_ _stx108629_)
               (_$E108633108645_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108631_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108631_))
              (let* ((_$tgt108634108648_
                      (let () (declare (not safe)) (__AST-e _$e108631_)))
                     (_$hd108635108651_
                      (let () (declare (not safe)) (##car _$tgt108634108648_)))
                     (_$tl108636108654_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108634108648_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108636108654_))
                    (let* ((_$tgt108637108658_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108636108654_)))
                           (_$hd108638108661_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108637108658_)))
                           (_$tl108639108664_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108637108658_))))
                      (let ((_hd108668_ _$hd108638108661_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108639108664_))
                            (let* ((_$tgt108640108670_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108639108664_)))
                                   (_$hd108641108673_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108640108670_)))
                                   (_$tl108642108676_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108640108670_))))
                              (let ((_expr108680_ _$hd108641108673_))
                                (if (let ((__tmp113881
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108642108676_))))
                                      (declare (not safe))
                                      (equal? __tmp113881 '()))
                                    (let* ((_$e108682_ _hd108668_)
                                           (_$E108684108725_
                                            (lambda ()
                                              (let ((_$E108685108710_
                                                     (lambda ()
                                                       (let* ((_$E108686108697_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108682_))))
                      (_ids108700_ _hd108668_)
                      (_len108702_ (length _ids108700_))
                      (_tmp108704_
                       (let ((__tmp113849 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp113849))))
                 (let ((__tmp113850
                        (let ((__tmp113851
                               (let ((__tmp113868
                                      (let ((__tmp113869
                                             (let ((__tmp113870
                                                    (let ((__tmp113871
                                                           (let ((__tmp113872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108680_))))
                     (declare (not safe))
                     (cons __tmp113872 '()))))
              (declare (not safe))
              (cons _tmp108704_ __tmp113871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp113870))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113869 _stx108629_)))
                                     (__tmp113852
                                      (let ((__tmp113864
                                             (let ((__tmp113865
                                                    (let ((__tmp113866
                                                           (let ((__tmp113867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108702_ '()))))
                     (declare (not safe))
                     (cons _tmp108704_ __tmp113867))))
              (declare (not safe))
              (cons '__check-values __tmp113866))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp113865
                                                _stx108629_)))
                                            (__tmp113853
                                             (let ((__tmp113854
                                                    (let ((__tmp113856
                                                           (lambda (_id108707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108708_)
                     (if (let () (declare (not safe)) (__AST-e _id108707_))
                         (let ((__tmp113857
                                (let ((__tmp113858
                                       (let ((__tmp113863
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108707_)))
                                             (__tmp113859
                                              (let ((__tmp113860
                                                     (let ((__tmp113861
                                                            (let ((__tmp113862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108708_ '()))))
                      (declare (not safe))
                      (cons _tmp108704_ __tmp113862))))
               (declare (not safe))
               (cons '##vector-ref __tmp113861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113860 '()))))
                                         (declare (not safe))
                                         (cons __tmp113863 __tmp113859))))
                                  (declare (not safe))
                                  (cons 'define __tmp113858))))
                           (declare (not safe))
                           (__SRC__% __tmp113857 _stx108629_))
                         '#f)))
                  (__tmp113855
                   (let () (declare (not safe)) (iota _len108702_))))
              (declare (not safe))
              (filter-map2 __tmp113856 _ids108700_ __tmp113855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp113854))))
                                        (declare (not safe))
                                        (cons __tmp113864 __tmp113853))))
                                 (declare (not safe))
                                 (cons __tmp113868 __tmp113852))))
                          (declare (not safe))
                          (cons 'begin __tmp113851))))
                   (declare (not safe))
                   (__SRC__% __tmp113850 _stx108629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108682_))
                                                    (let* ((_$tgt108687108713_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108682_)))
                                                           (_$hd108688108716_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108687108713_)))
                                                           (_$tl108689108719_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108687108713_))))
                                                      (let ((_id108723_
                                                             _$hd108688108716_))
                                                        (if (let ((__tmp113878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108689108719_))))
                      (declare (not safe))
                      (equal? __tmp113878 '()))
                    (let ((__tmp113873
                           (let ((__tmp113874
                                  (let ((__tmp113877
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108723_)))
                                        (__tmp113875
                                         (let ((__tmp113876
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108680_))))
                                           (declare (not safe))
                                           (cons __tmp113876 '()))))
                                    (declare (not safe))
                                    (cons __tmp113877 __tmp113875))))
                             (declare (not safe))
                             (cons 'define __tmp113874))))
                      (declare (not safe))
                      (__SRC__% __tmp113873 _stx108629_))
                    (let () (declare (not safe)) (_$E108685108710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108685108710_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108682_))
                                          (let* ((_$tgt108690108728_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108682_)))
                                                 (_$hd108691108731_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108690108728_)))
                                                 (_$tl108692108734_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108690108728_))))
                                            (if (let ((__tmp113880
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108691108731_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113880 '#f))
                                                (if (let ((__tmp113879
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108692108734_))))
                                                      (declare (not safe))
                                                      (equal? __tmp113879 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108680_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108684108725_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108684108725_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108684108725_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108633108645_)))))
                            (let () (declare (not safe)) (_$E108633108645_)))))
                    (let () (declare (not safe)) (_$E108633108645_))))
              (let () (declare (not safe)) (_$E108633108645_))))))
    (define __compile-head-id
      (lambda (_e108627_)
        (let ((__tmp113882
               (if (let () (declare (not safe)) (__AST-e _e108627_))
                   _e108627_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp113882))))
    (define __compile-lambda-head
      (lambda (_hd108584_)
        (let _recur108586_ ((_rest108588_ _hd108584_))
          (let* ((_$e108590_ _rest108588_)
                 (_$E108592108610_
                  (lambda ()
                    (let ((_$E108593108607_
                           (lambda ()
                             (let* ((_$E108594108602_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108590_))))
                                    (_tail108605_ _$e108590_))
                               (declare (not safe))
                               (__compile-head-id _tail108605_)))))
                      (if (let ((__tmp113883
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108590_))))
                            (declare (not safe))
                            (equal? __tmp113883 '()))
                          '()
                          (let () (declare (not safe)) (_$E108593108607_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108590_))
                (let* ((_$tgt108595108613_
                        (let () (declare (not safe)) (__AST-e _$e108590_)))
                       (_$hd108596108616_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108595108613_)))
                       (_$tl108597108619_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108595108613_))))
                  (let* ((_hd108623_ _$hd108596108616_)
                         (_rest108625_ _$tl108597108619_))
                    (let ((__tmp113885
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108623_)))
                          (__tmp113884
                           (let ()
                             (declare (not safe))
                             (_recur108586_ _rest108625_))))
                      (declare (not safe))
                      (cons __tmp113885 __tmp113884))))
                (let () (declare (not safe)) (_$E108592108610_)))))))
    (define __compile-lambda%
      (lambda (_stx108531_)
        (let* ((_$e108533_ _stx108531_)
               (_$E108535108547_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108533_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108533_))
              (let* ((_$tgt108536108550_
                      (let () (declare (not safe)) (__AST-e _$e108533_)))
                     (_$hd108537108553_
                      (let () (declare (not safe)) (##car _$tgt108536108550_)))
                     (_$tl108538108556_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108536108550_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108538108556_))
                    (let* ((_$tgt108539108560_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108538108556_)))
                           (_$hd108540108563_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108539108560_)))
                           (_$tl108541108566_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108539108560_))))
                      (let ((_hd108570_ _$hd108540108563_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108541108566_))
                            (let* ((_$tgt108542108572_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108541108566_)))
                                   (_$hd108543108575_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108542108572_)))
                                   (_$tl108544108578_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108542108572_))))
                              (let ((_body108582_ _$hd108543108575_))
                                (if (let ((__tmp113891
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108544108578_))))
                                      (declare (not safe))
                                      (equal? __tmp113891 '()))
                                    (let ((__tmp113886
                                           (let ((__tmp113887
                                                  (let ((__tmp113890
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108570_)))
                                                        (__tmp113888
                                                         (let ((__tmp113889
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108582_))))
                   (declare (not safe))
                   (cons __tmp113889 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113890
                                                          __tmp113888))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp113887))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113886 _stx108531_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108535108547_)))))
                            (let () (declare (not safe)) (_$E108535108547_)))))
                    (let () (declare (not safe)) (_$E108535108547_))))
              (let () (declare (not safe)) (_$E108535108547_))))))
    (define __compile-case-lambda%
      (lambda (_stx108323_)
        (letrec ((_variadic?108325_
                  (lambda (_hd108496_)
                    (let* ((_$e108498_ _hd108496_)
                           (_$E108500108516_
                            (lambda ()
                              (let ((_$E108501108513_
                                     (lambda ()
                                       (let ((_$E108502108510_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108498_)))))
                                         '#t))))
                                (if (let ((__tmp113892
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108498_))))
                                      (declare (not safe))
                                      (equal? __tmp113892 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108501108513_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108498_))
                          (let* ((_$tgt108503108519_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108498_)))
                                 (_$hd108504108522_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108503108519_)))
                                 (_$tl108505108525_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108503108519_))))
                            (let ((_rest108529_ _$tl108505108525_))
                              (declare (not safe))
                              (_variadic?108325_ _rest108529_)))
                          (let () (declare (not safe)) (_$E108500108516_))))))
                 (_arity108326_
                  (lambda (_hd108461_)
                    (let _lp108463_ ((_rest108465_ _hd108461_) (_k108466_ '0))
                      (let* ((_$e108468_ _rest108465_)
                             (_$E108470108481_
                              (lambda ()
                                (let ((_$E108471108478_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108468_)))))
                                  _k108466_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108468_))
                            (let* ((_$tgt108472108484_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108468_)))
                                   (_$hd108473108487_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108472108484_)))
                                   (_$tl108474108490_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108472108484_))))
                              (let* ((_rest108494_ _$tl108474108490_)
                                     (__tmp113893
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108466_ '1))))
                                (declare (not safe))
                                (_lp108463_ _rest108494_ __tmp113893)))
                            (let ()
                              (declare (not safe))
                              (_$E108470108481_)))))))
                 (_generate108327_
                  (lambda (_rest108388_ _args108389_ _len108390_)
                    (let* ((_$e108392_ _rest108388_)
                           (_$E108394108405_
                            (lambda ()
                              (let* ((_$E108395108402_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108392_))))
                                     (__tmp113894
                                      (let ((__tmp113895
                                             (let ((__tmp113896
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108389_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp113896))))
                                        (declare (not safe))
                                        (cons 'error __tmp113895))))
                                (declare (not safe))
                                (__SRC__% __tmp113894 _stx108323_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108392_))
                          (let* ((_$tgt108396108408_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108392_)))
                                 (_$hd108397108411_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108396108408_)))
                                 (_$tl108398108414_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108396108408_))))
                            (let* ((_clause108418_ _$hd108397108411_)
                                   (_rest108420_ _$tl108398108414_)
                                   (_$e108422_ _clause108418_)
                                   (_$E108424108433_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108422_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108422_))
                                  (let* ((_$tgt108425108436_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108422_)))
                                         (_$hd108426108439_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108425108436_)))
                                         (_$tl108427108442_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108425108436_))))
                                    (let ((_hd108446_ _$hd108426108439_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108427108442_))
                                          (let* ((_$tgt108428108448_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108427108442_)))
                                                 (_$hd108429108451_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108428108448_)))
                                                 (_$tl108430108454_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108428108448_))))
                                            (if (let ((__tmp113911
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108430108454_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113911 '()))
                                                (let ((_clen108458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108326_
                                                          _hd108446_)))
                                                      (_cmp108459_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108325_
                                                              _hd108446_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp113897
                                                         (let ((__tmp113898
                                                                (let ((__tmp113908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113909
                                      (let ((__tmp113910
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108458_ '()))))
                                        (declare (not safe))
                                        (cons _len108390_ __tmp113910))))
                                 (declare (not safe))
                                 (cons _cmp108459_ __tmp113909)))
                              (__tmp113899
                               (let ((__tmp113902
                                      (let ((__tmp113903
                                             (let ((__tmp113904
                                                    (let ((__tmp113906
                                                           (let ((__tmp113907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108418_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp113907)))
                  (__tmp113905
                   (let () (declare (not safe)) (cons _args108389_ '()))))
              (declare (not safe))
              (cons __tmp113906 __tmp113905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp113904))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113903 _stx108323_)))
                                     (__tmp113900
                                      (let ((__tmp113901
                                             (let ()
                                               (declare (not safe))
                                               (_generate108327_
                                                _rest108420_
                                                _args108389_
                                                _len108390_))))
                                        (declare (not safe))
                                        (cons __tmp113901 '()))))
                                 (declare (not safe))
                                 (cons __tmp113902 __tmp113900))))
                          (declare (not safe))
                          (cons __tmp113908 __tmp113899))))
                   (declare (not safe))
                   (cons 'if __tmp113898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp113897
                                                     _stx108323_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108424108433_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108424108433_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108424108433_)))))
                          (let () (declare (not safe)) (_$E108394108405_)))))))
          (let* ((_$e108329_ _stx108323_)
                 (_$E108331108363_
                  (lambda ()
                    (let ((_$E108332108345_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108329_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108329_))
                          (let* ((_$tgt108333108348_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108329_)))
                                 (_$hd108334108351_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108333108348_)))
                                 (_$tl108335108354_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108333108348_))))
                            (let ((_clauses108358_ _$tl108335108354_))
                              (let ((_args108360_
                                     (let ((__tmp113912 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113912 _stx108323_)))
                                    (_len108361_
                                     (let ((__tmp113913 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113913 _stx108323_))))
                                (let ((__tmp113914
                                       (let ((__tmp113915
                                              (let ((__tmp113916
                                                     (let ((__tmp113917
                                                            (let ((__tmp113918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113919
                                  (let ((__tmp113922
                                         (let ((__tmp113923
                                                (let ((__tmp113924
                                                       (let ((__tmp113925
                                                              (let ((__tmp113926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113927
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108360_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp113927))))
                        (declare (not safe))
                        (__SRC__% __tmp113926 _stx108323_))))
                 (declare (not safe))
                 (cons __tmp113925 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108361_
                                                        __tmp113924))))
                                           (declare (not safe))
                                           (cons __tmp113923 '())))
                                        (__tmp113920
                                         (let ((__tmp113921
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108327_
                                                   _clauses108358_
                                                   _args108360_
                                                   _len108361_))))
                                           (declare (not safe))
                                           (cons __tmp113921 '()))))
                                    (declare (not safe))
                                    (cons __tmp113922 __tmp113920))))
                             (declare (not safe))
                             (cons 'let __tmp113919))))
                      (declare (not safe))
                      (__SRC__% __tmp113918 _stx108323_))))
               (declare (not safe))
               (cons __tmp113917 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108360_
                                                      __tmp113916))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp113915))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113914 _stx108323_)))))
                          (let () (declare (not safe)) (_$E108332108345_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108329_))
                (let* ((_$tgt108336108366_
                        (let () (declare (not safe)) (__AST-e _$e108329_)))
                       (_$hd108337108369_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108336108366_)))
                       (_$tl108338108372_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108336108366_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108338108372_))
                      (let* ((_$tgt108339108376_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108338108372_)))
                             (_$hd108340108379_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108339108376_)))
                             (_$tl108341108382_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108339108376_))))
                        (let ((_clause108386_ _$hd108340108379_))
                          (if (let ((__tmp113929
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108341108382_))))
                                (declare (not safe))
                                (equal? __tmp113929 '()))
                              (let ((__tmp113928
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108386_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp113928))
                              (let ()
                                (declare (not safe))
                                (_$E108331108363_)))))
                      (let () (declare (not safe)) (_$E108331108363_))))
                (let () (declare (not safe)) (_$E108331108363_)))))))
    (define __compile-let-form
      (lambda (_stx108092_ _compile-simple108093_ _compile-values108094_)
        (letrec ((_simple-bind?108096_
                  (lambda (_hd108281_)
                    (let* ((_hd108282108292_ _hd108281_)
                           (_else108285108300_ (lambda () '#f)))
                      (let ((_K108288108313_ (lambda (_id108311_) '#t))
                            (_K108287108305_ (lambda () '#t)))
                        (let ((_try-match108284108308_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108282108292_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108287108305_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108285108300_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108282108292_))
                              (let ((_tl108290108318_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108282108292_)))
                                    (_hd108289108316_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108282108292_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108290108318_))
                                    (let ((_id108321_ _hd108289108316_))
                                      (declare (not safe))
                                      (_K108288108313_ _id108321_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108284108308_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108284108308_))))))))
                 (_car-e108097_
                  (lambda (_hd108279_)
                    (if (let () (declare (not safe)) (pair? _hd108279_))
                        (car _hd108279_)
                        _hd108279_))))
          (let* ((_$e108099_ _stx108092_)
                 (_$E108101108244_
                  (lambda ()
                    (let ((_$E108102108124_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108099_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108099_))
                          (let* ((_$tgt108103108127_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108099_)))
                                 (_$hd108104108130_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108103108127_)))
                                 (_$tl108105108133_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108103108127_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108105108133_))
                                (let* ((_$tgt108106108137_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108105108133_)))
                                       (_$hd108107108140_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108106108137_)))
                                       (_$tl108108108143_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108106108137_))))
                                  (let ((_hd108147_ _$hd108107108140_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108108108143_))
                                        (let* ((_$tgt108109108149_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108108108143_)))
                                               (_$hd108110108152_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108109108149_)))
                                               (_$tl108111108155_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108109108149_))))
                                          (let ((_body108159_
                                                 _$hd108110108152_))
                                            (if (let ((__tmp113932
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108111108155_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113932 '()))
                                                (let* ((_hd-ids108199_
                                                        (map (lambda (_bind108161_)
                                                               (let* ((_$e108163_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108161_)
                              (_$E108165108174_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108163_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108163_))
                             (let* ((_$tgt108166108177_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108163_)))
                                    (_$hd108167108180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108166108177_)))
                                    (_$tl108168108183_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108166108177_))))
                               (let ((_ids108187_ _$hd108167108180_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108168108183_))
                                     (let* ((_$tgt108169108189_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108168108183_)))
                                            (_$hd108170108192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108169108189_)))
                                            (_$tl108171108195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108169108189_))))
                                       (if (let ((__tmp113930
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108171108195_))))
                                             (declare (not safe))
                                             (equal? __tmp113930 '()))
                                           _ids108187_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108165108174_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108165108174_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108165108174_)))))
                     _hd108147_))
               (_exprs108239_
                (map (lambda (_bind108201_)
                       (let* ((_$e108203_ _bind108201_)
                              (_$E108205108214_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108203_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108203_))
                             (let* ((_$tgt108206108217_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108203_)))
                                    (_$hd108207108220_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108206108217_)))
                                    (_$tl108208108223_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108206108217_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108208108223_))
                                   (let* ((_$tgt108209108227_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108208108223_)))
                                          (_$hd108210108230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108209108227_)))
                                          (_$tl108211108233_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108209108227_))))
                                     (let ((_expr108237_ _$hd108210108230_))
                                       (if (let ((__tmp113931
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108211108233_))))
                                             (declare (not safe))
                                             (equal? __tmp113931 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108237_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108205108214_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108205108214_))))
                             (let ()
                               (declare (not safe))
                               (_$E108205108214_)))))
                     _hd108147_))
               (_body108241_
                (let () (declare (not safe)) (__compile _body108159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108199_))
              (_compile-simple108093_
               (map _car-e108097_ _hd-ids108199_)
               _exprs108239_
               _body108241_)
              (_compile-values108094_
               _hd-ids108199_
               _exprs108239_
               _body108241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108102108124_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108102108124_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108102108124_))))
                          (let () (declare (not safe)) (_$E108102108124_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108099_))
                (let* ((_$tgt108112108247_
                        (let () (declare (not safe)) (__AST-e _$e108099_)))
                       (_$hd108113108250_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108112108247_)))
                       (_$tl108114108253_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108112108247_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108114108253_))
                      (let* ((_$tgt108115108257_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108114108253_)))
                             (_$hd108116108260_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108115108257_)))
                             (_$tl108117108263_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108115108257_))))
                        (if (let ((__tmp113934
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108116108260_))))
                              (declare (not safe))
                              (equal? __tmp113934 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108117108263_))
                                (let* ((_$tgt108118108267_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108117108263_)))
                                       (_$hd108119108270_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108118108267_)))
                                       (_$tl108120108273_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108118108267_))))
                                  (let ((_body108277_ _$hd108119108270_))
                                    (if (let ((__tmp113933
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108120108273_))))
                                          (declare (not safe))
                                          (equal? __tmp113933 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108277_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108101108244_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108101108244_)))
                            (let () (declare (not safe)) (_$E108101108244_))))
                      (let () (declare (not safe)) (_$E108101108244_))))
                (let () (declare (not safe)) (_$E108101108244_)))))))
    (define __compile-let-values%
      (lambda (_stx107907_)
        (letrec ((_compile-simple107909_
                  (lambda (_hd-ids108088_ _exprs108089_ _body108090_)
                    (let ((__tmp113935
                           (let ((__tmp113936
                                  (let ((__tmp113938
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108088_)
                                              _exprs108089_))
                                        (__tmp113937
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108090_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113938 __tmp113937))))
                             (declare (not safe))
                             (cons 'let __tmp113936))))
                      (declare (not safe))
                      (__SRC__% __tmp113935 _stx107907_))))
                 (_compile-values107910_
                  (lambda (_hd-ids108006_ _exprs108007_ _body108008_)
                    (let _lp108010_ ((_rest108012_ _hd-ids108006_)
                                     (_exprs108013_ _exprs108007_)
                                     (_bind108014_ '())
                                     (_post108015_ '()))
                      (let* ((_rest108016108030_ _rest108012_)
                             (_else108019108038_
                              (lambda ()
                                (let ((__tmp113939
                                       (let ((__tmp113940
                                              (let ((__tmp113943
                                                     (reverse _bind108014_))
                                                    (__tmp113941
                                                     (let ((__tmp113942
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post107911_
                                                               _post108015_
                                                               _body108008_))))
                                                       (declare (not safe))
                                                       (cons __tmp113942
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp113943
                                                      __tmp113941))))
                                         (declare (not safe))
                                         (cons 'let __tmp113940))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113939 _stx107907_)))))
                        (let ((_K108024108071_
                               (lambda (_rest108068_ _id108069_)
                                 (let ((__tmp113949 (cdr _exprs108013_))
                                       (__tmp113944
                                        (let ((__tmp113945
                                               (let ((__tmp113948
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108069_)))
                                                     (__tmp113946
                                                      (let ((__tmp113947
                                                             (car _exprs108013_)))
                                                        (declare (not safe))
                                                        (cons __tmp113947
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113948
                                                       __tmp113946))))
                                          (declare (not safe))
                                          (cons __tmp113945 _bind108014_))))
                                   (declare (not safe))
                                   (_lp108010_
                                    _rest108068_
                                    __tmp113949
                                    __tmp113944
                                    _post108015_))))
                              (_K108021108053_
                               (lambda (_rest108042_ _hd108043_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108043_))
                                     (let ((__tmp113970 (cdr _exprs108013_))
                                           (__tmp113963
                                            (let ((__tmp113964
                                                   (let ((__tmp113969
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108043_)))
                                                         (__tmp113965
                                                          (let ((__tmp113966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113967
                                (let ((__tmp113968 (car _exprs108013_)))
                                  (declare (not safe))
                                  (cons __tmp113968 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113967))))
                    (declare (not safe))
                    (cons __tmp113966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113969
                                                           __tmp113965))))
                                              (declare (not safe))
                                              (cons __tmp113964
                                                    _bind108014_))))
                                       (declare (not safe))
                                       (_lp108010_
                                        _rest108042_
                                        __tmp113970
                                        __tmp113963
                                        _post108015_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108043_))
                                         (let* ((_len108045_
                                                 (length _hd108043_))
                                                (_tmp108047_
                                                 (let ((__tmp113950 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113950))))
                                           (let ((__tmp113962
                                                  (cdr _exprs108013_))
                                                 (__tmp113958
                                                  (let ((__tmp113959
                                                         (let ((__tmp113960
                                                                (let ((__tmp113961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108013_)))
                          (declare (not safe))
                          (cons __tmp113961 '()))))
                   (declare (not safe))
                   (cons _tmp108047_ __tmp113960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113959
                                                          _bind108014_)))
                                                 (__tmp113951
                                                  (let ((__tmp113952
                                                         (let ((__tmp113953
                                                                (let ((__tmp113954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113956
                                      (lambda (_id108050_ _k108051_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108050_))
                                            (let ((__tmp113957
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108050_))))
                                              (declare (not safe))
                                              (cons __tmp113957 _k108051_))
                                            '#f)))
                                     (__tmp113955
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108045_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113956
                                  _hd108043_
                                  __tmp113955))))
                          (declare (not safe))
                          (cons _len108045_ __tmp113954))))
                   (declare (not safe))
                   (cons _tmp108047_ __tmp113953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113952
                                                          _post108015_))))
                                             (declare (not safe))
                                             (_lp108010_
                                              _rest108042_
                                              __tmp113962
                                              __tmp113958
                                              __tmp113951)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107907_
                                            _hd108043_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108016108030_))
                              (let ((_tl108026108076_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108016108030_)))
                                    (_hd108025108074_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108016108030_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108025108074_))
                                    (let ((_tl108028108081_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108025108074_)))
                                          (_hd108027108079_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108025108074_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108028108081_))
                                          (let ((_id108084_ _hd108027108079_)
                                                (_rest108086_
                                                 _tl108026108076_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108024108071_
                                               _rest108086_
                                               _id108084_)))
                                          (let ((_hd108061_ _hd108025108074_)
                                                (_rest108063_
                                                 _tl108026108076_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108021108053_
                                               _rest108063_
                                               _hd108061_)))))
                                    (let ((_hd108061_ _hd108025108074_)
                                          (_rest108063_ _tl108026108076_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108021108053_
                                         _rest108063_
                                         _hd108061_)))))
                              (let ()
                                (declare (not safe))
                                (_else108019108038_))))))))
                 (_compile-post107911_
                  (lambda (_post107913_ _body107914_)
                    (let _lp107916_ ((_rest107918_ _post107913_)
                                     (_check107919_ '())
                                     (_bind107920_ '()))
                      (let* ((_rest107921107933_ _rest107918_)
                             (_else107923107941_
                              (lambda ()
                                (let ((__tmp113971
                                       (let ((__tmp113972
                                              (let ((__tmp113973
                                                     (let ((__tmp113974
                                                            (let ((__tmp113975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113976
                                  (let ((__tmp113977
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107914_ '()))))
                                    (declare (not safe))
                                    (cons _bind107920_ __tmp113977))))
                             (declare (not safe))
                             (cons 'let __tmp113976))))
                      (declare (not safe))
                      (__SRC__% __tmp113975 _stx107907_))))
               (declare (not safe))
               (cons __tmp113974 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113973
                                                        _check107919_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113972))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113971 _stx107907_))))
                             (_K107925107980_
                              (lambda (_rest107944_
                                       _init107945_
                                       _len107946_
                                       _tmp107947_)
                                (let ((__tmp113985
                                       (let ((__tmp113986
                                              (let ((__tmp113987
                                                     (let ((__tmp113988
                                                            (let ((__tmp113989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107946_ '()))))
                      (declare (not safe))
                      (cons _tmp107947_ __tmp113989))))
               (declare (not safe))
               (cons '__check-values __tmp113988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113987
                                                 _stx107907_))))
                                         (declare (not safe))
                                         (cons __tmp113986 _check107919_)))
                                      (__tmp113978
                                       (let ((__tmp113979
                                              (lambda (_hd107949_ _r107950_)
                                                (let* ((_hd107951107958_
                                                        _hd107949_)
                                                       (_E107953107962_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107951107958_)))
               (_K107954107968_
                (lambda (_k107965_ _id107966_)
                  (let ((__tmp113980
                         (let ((__tmp113981
                                (let ((__tmp113982
                                       (let ((__tmp113983
                                              (let ((__tmp113984
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k107965_ '()))))
                                                (declare (not safe))
                                                (cons _tmp107947_
                                                      __tmp113984))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp113983))))
                                  (declare (not safe))
                                  (cons __tmp113982 '()))))
                           (declare (not safe))
                           (cons _id107966_ __tmp113981))))
                    (declare (not safe))
                    (cons __tmp113980 _r107950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107951107958_))
                                                      (let ((_hd107955107971_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107951107958_)))
                    (_tl107956107973_
                     (let () (declare (not safe)) (##cdr _hd107951107958_))))
                (let* ((_id107976_ _hd107955107971_)
                       (_k107978_ _tl107956107973_))
                  (declare (not safe))
                  (_K107954107968_ _k107978_ _id107976_)))
              (let () (declare (not safe)) (_E107953107962_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113979
                                                 _bind107920_
                                                 _init107945_))))
                                  (declare (not safe))
                                  (_lp107916_
                                   _rest107944_
                                   __tmp113985
                                   __tmp113978)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107921107933_))
                            (let ((_hd107926107983_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107921107933_)))
                                  (_tl107927107985_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107921107933_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107926107983_))
                                  (let ((_hd107928107988_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107926107983_)))
                                        (_tl107929107990_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107926107983_))))
                                    (let ((_tmp107993_ _hd107928107988_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107929107990_))
                                          (let ((_hd107930107995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107929107990_)))
                                                (_tl107931107997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107929107990_))))
                                            (let* ((_len108000_
                                                    _hd107930107995_)
                                                   (_init108002_
                                                    _tl107931107997_)
                                                   (_rest108004_
                                                    _tl107927107985_))
                                              (declare (not safe))
                                              (_K107925107980_
                                               _rest108004_
                                               _init108002_
                                               _len108000_
                                               _tmp107993_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107923107941_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107923107941_))))
                            (let ()
                              (declare (not safe))
                              (_else107923107941_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107907_
             _compile-simple107909_
             _compile-values107910_)))))
    (define __compile-letrec-values%
      (lambda (_stx107707_)
        (letrec ((_compile-simple107709_
                  (lambda (_hd-ids107903_ _exprs107904_ _body107905_)
                    (let ((__tmp113990
                           (let ((__tmp113991
                                  (let ((__tmp113993
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107903_)
                                              _exprs107904_))
                                        (__tmp113992
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107905_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113993 __tmp113992))))
                             (declare (not safe))
                             (cons 'letrec __tmp113991))))
                      (declare (not safe))
                      (__SRC__% __tmp113990 _stx107707_))))
                 (_compile-values107710_
                  (lambda (_hd-ids107817_ _exprs107818_ _body107819_)
                    (let _lp107821_ ((_rest107823_ _hd-ids107817_)
                                     (_exprs107824_ _exprs107818_)
                                     (_pre107825_ '())
                                     (_bind107826_ '())
                                     (_post107827_ '()))
                      (let* ((_rest107828107842_ _rest107823_)
                             (_else107831107850_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107711_
                                   _pre107825_
                                   _bind107826_
                                   _post107827_
                                   _body107819_)))))
                        (let ((_K107836107886_
                               (lambda (_rest107883_ _id107884_)
                                 (let ((__tmp113999 (cdr _exprs107824_))
                                       (__tmp113994
                                        (let ((__tmp113995
                                               (let ((__tmp113998
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107884_)))
                                                     (__tmp113996
                                                      (let ((__tmp113997
                                                             (car _exprs107824_)))
                                                        (declare (not safe))
                                                        (cons __tmp113997
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113998
                                                       __tmp113996))))
                                          (declare (not safe))
                                          (cons __tmp113995 _bind107826_))))
                                   (declare (not safe))
                                   (_lp107821_
                                    _rest107883_
                                    __tmp113999
                                    _pre107825_
                                    __tmp113994
                                    _post107827_))))
                              (_K107833107868_
                               (lambda (_rest107854_ _hd107855_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107855_))
                                     (let ((__tmp114027 (cdr _exprs107824_))
                                           (__tmp114020
                                            (let ((__tmp114021
                                                   (let ((__tmp114026
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107855_)))
                                                         (__tmp114022
                                                          (let ((__tmp114023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114024
                                (let ((__tmp114025 (car _exprs107824_)))
                                  (declare (not safe))
                                  (cons __tmp114025 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114024))))
                    (declare (not safe))
                    (cons __tmp114023 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114026
                                                           __tmp114022))))
                                              (declare (not safe))
                                              (cons __tmp114021
                                                    _bind107826_))))
                                       (declare (not safe))
                                       (_lp107821_
                                        _rest107854_
                                        __tmp114027
                                        _pre107825_
                                        __tmp114020
                                        _post107827_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107855_))
                                         (let* ((_len107857_
                                                 (length _hd107855_))
                                                (_tmp107859_
                                                 (let ((__tmp114000 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114000))))
                                           (let ((__tmp114019
                                                  (cdr _exprs107824_))
                                                 (__tmp114012
                                                  (let ((__tmp114013
                                                         (lambda (_id107862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r107863_)
                   (if (let () (declare (not safe)) (__AST-e _id107862_))
                       (let ((__tmp114014
                              (let ((__tmp114018
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id107862_)))
                                    (__tmp114015
                                     (let ((__tmp114016
                                            (let ((__tmp114017
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114017))))
                                       (declare (not safe))
                                       (cons __tmp114016 '()))))
                                (declare (not safe))
                                (cons __tmp114018 __tmp114015))))
                         (declare (not safe))
                         (cons __tmp114014 _r107863_))
                       _r107863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114013
                                                            _pre107825_
                                                            _hd107855_)))
                                                 (__tmp114008
                                                  (let ((__tmp114009
                                                         (let ((__tmp114010
                                                                (let ((__tmp114011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107824_)))
                          (declare (not safe))
                          (cons __tmp114011 '()))))
                   (declare (not safe))
                   (cons _tmp107859_ __tmp114010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114009
                                                          _bind107826_)))
                                                 (__tmp114001
                                                  (let ((__tmp114002
                                                         (let ((__tmp114003
                                                                (let ((__tmp114004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114006
                                      (lambda (_id107865_ _k107866_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107865_))
                                            (let ((__tmp114007
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107865_))))
                                              (declare (not safe))
                                              (cons __tmp114007 _k107866_))
                                            '#f)))
                                     (__tmp114005
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107857_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114006
                                  _hd107855_
                                  __tmp114005))))
                          (declare (not safe))
                          (cons _len107857_ __tmp114004))))
                   (declare (not safe))
                   (cons _tmp107859_ __tmp114003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114002
                                                          _post107827_))))
                                             (declare (not safe))
                                             (_lp107821_
                                              _rest107854_
                                              __tmp114019
                                              __tmp114012
                                              __tmp114008
                                              __tmp114001)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107707_
                                            _hd107855_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107828107842_))
                              (let ((_tl107838107891_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107828107842_)))
                                    (_hd107837107889_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107828107842_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107837107889_))
                                    (let ((_tl107840107896_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107837107889_)))
                                          (_hd107839107894_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107837107889_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107840107896_))
                                          (let ((_id107899_ _hd107839107894_)
                                                (_rest107901_
                                                 _tl107838107891_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107836107886_
                                               _rest107901_
                                               _id107899_)))
                                          (let ((_hd107876_ _hd107837107889_)
                                                (_rest107878_
                                                 _tl107838107891_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107833107868_
                                               _rest107878_
                                               _hd107876_)))))
                                    (let ((_hd107876_ _hd107837107889_)
                                          (_rest107878_ _tl107838107891_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107833107868_
                                         _rest107878_
                                         _hd107876_)))))
                              (let ()
                                (declare (not safe))
                                (_else107831107850_))))))))
                 (_compile-inner107711_
                  (lambda (_pre107812_ _bind107813_ _post107814_ _body107815_)
                    (if (let () (declare (not safe)) (null? _pre107812_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107712_
                           _bind107813_
                           _post107814_
                           _body107815_))
                        (let ((__tmp114028
                               (let ((__tmp114029
                                      (let ((__tmp114032 (reverse _pre107812_))
                                            (__tmp114030
                                             (let ((__tmp114031
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107712_
                                                       _bind107813_
                                                       _post107814_
                                                       _body107815_))))
                                               (declare (not safe))
                                               (cons __tmp114031 '()))))
                                        (declare (not safe))
                                        (cons __tmp114032 __tmp114030))))
                                 (declare (not safe))
                                 (cons 'let __tmp114029))))
                          (declare (not safe))
                          (__SRC__% __tmp114028 _stx107707_)))))
                 (_compile-bind107712_
                  (lambda (_bind107808_ _post107809_ _body107810_)
                    (let ((__tmp114033
                           (let ((__tmp114034
                                  (let ((__tmp114037 (reverse _bind107808_))
                                        (__tmp114035
                                         (let ((__tmp114036
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107713_
                                                   _post107809_
                                                   _body107810_))))
                                           (declare (not safe))
                                           (cons __tmp114036 '()))))
                                    (declare (not safe))
                                    (cons __tmp114037 __tmp114035))))
                             (declare (not safe))
                             (cons 'letrec __tmp114034))))
                      (declare (not safe))
                      (__SRC__% __tmp114033 _stx107707_))))
                 (_compile-post107713_
                  (lambda (_post107715_ _body107716_)
                    (let _lp107718_ ((_rest107720_ _post107715_)
                                     (_check107721_ '())
                                     (_bind107722_ '()))
                      (let* ((_rest107723107735_ _rest107720_)
                             (_else107725107743_
                              (lambda ()
                                (let ((__tmp114038
                                       (let ((__tmp114039
                                              (let ((__tmp114040
                                                     (let ((__tmp114041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114041 _bind107722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114040
                                                        _check107721_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114039))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114038 _stx107707_))))
                             (_K107727107782_
                              (lambda (_rest107746_
                                       _init107747_
                                       _len107748_
                                       _tmp107749_)
                                (let ((__tmp114050
                                       (let ((__tmp114051
                                              (let ((__tmp114052
                                                     (let ((__tmp114053
                                                            (let ((__tmp114054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107748_ '()))))
                      (declare (not safe))
                      (cons _tmp107749_ __tmp114054))))
               (declare (not safe))
               (cons '__check-values __tmp114053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114052
                                                 _stx107707_))))
                                         (declare (not safe))
                                         (cons __tmp114051 _check107721_)))
                                      (__tmp114042
                                       (let ((__tmp114043
                                              (lambda (_hd107751_ _r107752_)
                                                (let* ((_hd107753107760_
                                                        _hd107751_)
                                                       (_E107755107764_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107753107760_)))
               (_K107756107770_
                (lambda (_k107767_ _id107768_)
                  (let ((__tmp114044
                         (let ((__tmp114045
                                (let ((__tmp114046
                                       (let ((__tmp114047
                                              (let ((__tmp114048
                                                     (let ((__tmp114049
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107749_ __tmp114049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114048))))
                                         (declare (not safe))
                                         (cons __tmp114047 '()))))
                                  (declare (not safe))
                                  (cons _id107768_ __tmp114046))))
                           (declare (not safe))
                           (cons 'set! __tmp114045))))
                    (declare (not safe))
                    (cons __tmp114044 _r107752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107753107760_))
                                                      (let ((_hd107757107773_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107753107760_)))
                    (_tl107758107775_
                     (let () (declare (not safe)) (##cdr _hd107753107760_))))
                (let* ((_id107778_ _hd107757107773_)
                       (_k107780_ _tl107758107775_))
                  (declare (not safe))
                  (_K107756107770_ _k107780_ _id107778_)))
              (let () (declare (not safe)) (_E107755107764_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114043
                                                 _bind107722_
                                                 _init107747_))))
                                  (declare (not safe))
                                  (_lp107718_
                                   _rest107746_
                                   __tmp114050
                                   __tmp114042)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107723107735_))
                            (let ((_hd107728107785_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107723107735_)))
                                  (_tl107729107787_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107723107735_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107728107785_))
                                  (let ((_hd107730107790_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107728107785_)))
                                        (_tl107731107792_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107728107785_))))
                                    (let ((_tmp107795_ _hd107730107790_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107731107792_))
                                          (let ((_hd107732107797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107731107792_)))
                                                (_tl107733107799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107731107792_))))
                                            (let* ((_len107802_
                                                    _hd107732107797_)
                                                   (_init107804_
                                                    _tl107733107799_)
                                                   (_rest107806_
                                                    _tl107729107787_))
                                              (declare (not safe))
                                              (_K107727107782_
                                               _rest107806_
                                               _init107804_
                                               _len107802_
                                               _tmp107795_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107725107743_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107725107743_))))
                            (let ()
                              (declare (not safe))
                              (_else107725107743_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107707_
             _compile-simple107709_
             _compile-values107710_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107462_)
        (letrec ((_compile-simple107464_
                  (lambda (_hd-ids107703_ _exprs107704_ _body107705_)
                    (let ((__tmp114055
                           (let ((__tmp114056
                                  (let ((__tmp114058
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107703_)
                                              _exprs107704_))
                                        (__tmp114057
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107705_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114058 __tmp114057))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114056))))
                      (declare (not safe))
                      (__SRC__% __tmp114055 _stx107462_))))
                 (_compile-values107465_
                  (lambda (_hd-ids107614_ _exprs107615_ _body107616_)
                    (let _lp107618_ ((_rest107620_ _hd-ids107614_)
                                     (_exprs107621_ _exprs107615_)
                                     (_bind107622_ '())
                                     (_post107623_ '()))
                      (let* ((_rest107624107638_ _rest107620_)
                             (_else107627107646_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107466_
                                   _bind107622_
                                   _post107623_
                                   _body107616_)))))
                        (let ((_K107632107686_
                               (lambda (_rest107681_ _hd107682_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107682_))
                                     (let ((_id107684_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107682_))))
                                       (let ((__tmp114073 (cdr _exprs107621_))
                                             (__tmp114068
                                              (let ((__tmp114069
                                                     (let ((__tmp114070
                                                            (let ((__tmp114071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114072
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114072))))
                      (declare (not safe))
                      (cons __tmp114071 '()))))
               (declare (not safe))
               (cons _id107684_ __tmp114070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114069
                                                      _bind107622_)))
                                             (__tmp114064
                                              (let ((__tmp114065
                                                     (let ((__tmp114066
                                                            (let ((__tmp114067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107621_)))
                      (declare (not safe))
                      (cons __tmp114067 '()))))
               (declare (not safe))
               (cons _id107684_ __tmp114066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114065
                                                      _post107623_))))
                                         (declare (not safe))
                                         (_lp107618_
                                          _rest107681_
                                          __tmp114073
                                          __tmp114068
                                          __tmp114064)))
                                     (let ((__tmp114063 (cdr _exprs107621_))
                                           (__tmp114059
                                            (let ((__tmp114060
                                                   (let ((__tmp114061
                                                          (let ((__tmp114062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107621_)))
                    (declare (not safe))
                    (cons __tmp114062 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114061))))
                                              (declare (not safe))
                                              (cons __tmp114060
                                                    _post107623_))))
                                       (declare (not safe))
                                       (_lp107618_
                                        _rest107681_
                                        __tmp114063
                                        _bind107622_
                                        __tmp114059)))))
                              (_K107629107666_
                               (lambda (_rest107650_ _hd107651_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107651_))
                                     (let ((_id107653_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107651_))))
                                       (let ((__tmp114109 (cdr _exprs107621_))
                                             (__tmp114104
                                              (let ((__tmp114105
                                                     (let ((__tmp114106
                                                            (let ((__tmp114107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114108
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114108))))
                      (declare (not safe))
                      (cons __tmp114107 '()))))
               (declare (not safe))
               (cons _id107653_ __tmp114106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114105
                                                      _bind107622_)))
                                             (__tmp114098
                                              (let ((__tmp114099
                                                     (let ((__tmp114100
                                                            (let ((__tmp114101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114102
                                  (let ((__tmp114103 (car _exprs107621_)))
                                    (declare (not safe))
                                    (cons __tmp114103 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114102))))
                      (declare (not safe))
                      (cons __tmp114101 '()))))
               (declare (not safe))
               (cons _id107653_ __tmp114100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114099
                                                      _post107623_))))
                                         (declare (not safe))
                                         (_lp107618_
                                          _rest107650_
                                          __tmp114109
                                          __tmp114104
                                          __tmp114098)))
                                     (if (let ((__tmp114097
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107651_))))
                                           (declare (not safe))
                                           (not __tmp114097))
                                         (let ((__tmp114096
                                                (cdr _exprs107621_))
                                               (__tmp114092
                                                (let ((__tmp114093
                                                       (let ((__tmp114094
                                                              (let ((__tmp114095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107621_)))
                        (declare (not safe))
                        (cons __tmp114095 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114093
                                                        _post107623_))))
                                           (declare (not safe))
                                           (_lp107618_
                                            _rest107650_
                                            __tmp114096
                                            _bind107622_
                                            __tmp114092))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107651_))
                                             (let* ((_len107655_
                                                     (length _hd107651_))
                                                    (_tmp107657_
                                                     (let ((__tmp114074
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114074))))
                                               (let ((__tmp114091
                                                      (cdr _exprs107621_))
                                                     (__tmp114084
                                                      (let ((__tmp114085
                                                             (lambda (_id107660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107661_)
                       (if (let () (declare (not safe)) (__AST-e _id107660_))
                           (let ((__tmp114086
                                  (let ((__tmp114090
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107660_)))
                                        (__tmp114087
                                         (let ((__tmp114088
                                                (let ((__tmp114089
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114089))))
                                           (declare (not safe))
                                           (cons __tmp114088 '()))))
                                    (declare (not safe))
                                    (cons __tmp114090 __tmp114087))))
                             (declare (not safe))
                             (cons __tmp114086 _r107661_))
                           _r107661_))))
                (declare (not safe))
                (foldl1 __tmp114085 _bind107622_ _hd107651_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114075
                                                      (let ((__tmp114076
                                                             (let ((__tmp114077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114083 (car _exprs107621_))
                                  (__tmp114078
                                   (let ((__tmp114079
                                          (let ((__tmp114081
                                                 (lambda (_id107663_ _k107664_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107663_))
                                                       (let ((__tmp114082
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107663_))))
                 (declare (not safe))
                 (cons __tmp114082 _k107664_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114080
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107655_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114081
                                             _hd107651_
                                             __tmp114080))))
                                     (declare (not safe))
                                     (cons _len107655_ __tmp114079))))
                              (declare (not safe))
                              (cons __tmp114083 __tmp114078))))
                       (declare (not safe))
                       (cons _tmp107657_ __tmp114077))))
                (declare (not safe))
                (cons __tmp114076 _post107623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107618_
                                                  _rest107650_
                                                  __tmp114091
                                                  __tmp114084
                                                  __tmp114075)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107462_
                                                _hd107651_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107624107638_))
                              (let ((_tl107634107691_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107624107638_)))
                                    (_hd107633107689_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107624107638_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107633107689_))
                                    (let ((_tl107636107696_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107633107689_)))
                                          (_hd107635107694_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107633107689_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107636107696_))
                                          (let ((_hd107699_ _hd107635107694_)
                                                (_rest107701_
                                                 _tl107634107691_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107632107686_
                                               _rest107701_
                                               _hd107699_)))
                                          (let ((_hd107674_ _hd107633107689_)
                                                (_rest107676_
                                                 _tl107634107691_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107629107666_
                                               _rest107676_
                                               _hd107674_)))))
                                    (let ((_hd107674_ _hd107633107689_)
                                          (_rest107676_ _tl107634107691_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107629107666_
                                         _rest107676_
                                         _hd107674_)))))
                              (let ()
                                (declare (not safe))
                                (_else107627107646_))))))))
                 (_compile-bind107466_
                  (lambda (_bind107610_ _post107611_ _body107612_)
                    (let ((__tmp114110
                           (let ((__tmp114111
                                  (let ((__tmp114114 (reverse _bind107610_))
                                        (__tmp114112
                                         (let ((__tmp114113
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107467_
                                                   _post107611_
                                                   _body107612_))))
                                           (declare (not safe))
                                           (cons __tmp114113 '()))))
                                    (declare (not safe))
                                    (cons __tmp114114 __tmp114112))))
                             (declare (not safe))
                             (cons 'let __tmp114111))))
                      (declare (not safe))
                      (__SRC__% __tmp114110 _stx107462_))))
                 (_compile-post107467_
                  (lambda (_post107469_ _body107470_)
                    (let ((__tmp114115
                           (let ((__tmp114116
                                  (let ((__tmp114117
                                         (let ((__tmp114119
                                                (lambda (_hd107472_ _r107473_)
                                                  (let* ((_hd107474107497_
                                                          _hd107472_)
                                                         (_E107478107501_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107474107497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107491107595_
                                                           (lambda (_expr107593_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107593_ _r107473_))))
                  (_K107486107573_
                   (lambda (_expr107570_ _id107571_)
                     (let ((__tmp114120
                            (let ((__tmp114121
                                   (let ((__tmp114122
                                          (let ((__tmp114123
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107570_ '()))))
                                            (declare (not safe))
                                            (cons _id107571_ __tmp114123))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114122))))
                              (declare (not safe))
                              (__SRC__% __tmp114121 _stx107462_))))
                       (declare (not safe))
                       (cons __tmp114120 _r107473_))))
                  (_K107479107540_
                   (lambda (_init107505_ _len107506_ _expr107507_ _tmp107508_)
                     (let ((__tmp114124
                            (let ((__tmp114125
                                   (let ((__tmp114126
                                          (let ((__tmp114140
                                                 (let ((__tmp114141
                                                        (let ((__tmp114142
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107507_ '()))))
                  (declare (not safe))
                  (cons _tmp107508_ __tmp114142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114141 '())))
                                                (__tmp114127
                                                 (let ((__tmp114136
                                                        (let ((__tmp114137
                                                               (let ((__tmp114138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114139
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107506_ '()))))
                                (declare (not safe))
                                (cons _tmp107508_ __tmp114139))))
                         (declare (not safe))
                         (cons '__check-values __tmp114138))))
                  (declare (not safe))
                  (__SRC__% __tmp114137 _stx107462_)))
               (__tmp114128
                (let ((__tmp114129
                       (map (lambda (_hd107510_)
                              (let* ((_hd107511107518_ _hd107510_)
                                     (_E107513107522_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107511107518_)))
                                     (_K107514107528_
                                      (lambda (_k107525_ _id107526_)
                                        (let ((__tmp114130
                                               (let ((__tmp114131
                                                      (let ((__tmp114132
                                                             (let ((__tmp114133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114134
                                   (let ((__tmp114135
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107525_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107508_ __tmp114135))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114134))))
                       (declare (not safe))
                       (cons __tmp114133 '()))))
                (declare (not safe))
                (cons _id107526_ __tmp114132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114131))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114130
                                           _stx107462_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107511107518_))
                                    (let ((_hd107515107531_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107511107518_)))
                                          (_tl107516107533_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107511107518_))))
                                      (let* ((_id107536_ _hd107515107531_)
                                             (_k107538_ _tl107516107533_))
                                        (declare (not safe))
                                        (_K107514107528_
                                         _k107538_
                                         _id107536_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107513107522_)))))
                            _init107505_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114136
                                                         __tmp114128))))
                                            (declare (not safe))
                                            (cons __tmp114140 __tmp114127))))
                                     (declare (not safe))
                                     (cons 'let __tmp114126))))
                              (declare (not safe))
                              (__SRC__% __tmp114125 _stx107462_))))
                       (declare (not safe))
                       (cons __tmp114124 _r107473_)))))
              (if (let () (declare (not safe)) (##pair? _hd107474107497_))
                  (let ((_tl107493107600_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107474107497_)))
                        (_hd107492107598_
                         (let ()
                           (declare (not safe))
                           (##car _hd107474107497_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107492107598_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107493107600_))
                            (let ((_tl107495107605_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107493107600_)))
                                  (_hd107494107603_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107493107600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107495107605_))
                                  (let ((_expr107608_ _hd107494107603_))
                                    (declare (not safe))
                                    (_K107491107595_ _expr107608_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107495107605_))
                                      (let ((_tl107485107559_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107495107605_)))
                                            (_hd107484107557_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107495107605_))))
                                        (let ((_tmp107548_ _hd107492107598_)
                                              (_expr107555_ _hd107494107603_)
                                              (_len107562_ _hd107484107557_)
                                              (_init107564_ _tl107485107559_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107479107540_
                                             _init107564_
                                             _len107562_
                                             _expr107555_
                                             _tmp107548_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107478107501_)))))
                            (let () (declare (not safe)) (_E107478107501_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107493107600_))
                            (let ((_tl107490107585_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107493107600_)))
                                  (_hd107489107583_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107493107600_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107490107585_))
                                  (let ((_id107581_ _hd107492107598_)
                                        (_expr107588_ _hd107489107583_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107486107573_
                                       _expr107588_
                                       _id107581_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107490107585_))
                                      (let ((_tl107485107559_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107490107585_)))
                                            (_hd107484107557_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107490107585_))))
                                        (let ((_tmp107548_ _hd107492107598_)
                                              (_expr107555_ _hd107489107583_)
                                              (_len107562_ _hd107484107557_)
                                              (_init107564_ _tl107485107559_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107479107540_
                                             _init107564_
                                             _len107562_
                                             _expr107555_
                                             _tmp107548_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107478107501_)))))
                            (let () (declare (not safe)) (_E107478107501_)))))
                  (let () (declare (not safe)) (_E107478107501_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114118
                                                (list _body107470_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114119
                                                   __tmp114118
                                                   _post107469_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114117))))
                             (declare (not safe))
                             (cons 'begin __tmp114116))))
                      (declare (not safe))
                      (__SRC__% __tmp114115 _stx107462_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107462_
             _compile-simple107464_
             _compile-values107465_)))))
    (define __compile-call%
      (lambda (_stx107422_)
        (let* ((_$e107424_ _stx107422_)
               (_$E107426107435_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107424_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107424_))
              (let* ((_$tgt107427107438_
                      (let () (declare (not safe)) (__AST-e _$e107424_)))
                     (_$hd107428107441_
                      (let () (declare (not safe)) (##car _$tgt107427107438_)))
                     (_$tl107429107444_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107427107438_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107429107444_))
                    (let* ((_$tgt107430107448_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107429107444_)))
                           (_$hd107431107451_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107430107448_)))
                           (_$tl107432107454_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107430107448_))))
                      (let* ((_rator107458_ _$hd107431107451_)
                             (_rands107460_ _$tl107432107454_)
                             (__tmp114143
                              (let ((__tmp114145
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107458_)))
                                    (__tmp114144
                                     (map __compile _rands107460_)))
                                (declare (not safe))
                                (cons __tmp114145 __tmp114144))))
                        (declare (not safe))
                        (__SRC__% __tmp114143 _stx107422_)))
                    (let () (declare (not safe)) (_$E107426107435_))))
              (let () (declare (not safe)) (_$E107426107435_))))))
    (define __compile-ref%
      (lambda (_stx107384_)
        (let* ((_$e107386_ _stx107384_)
               (_$E107388107397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107386_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107386_))
              (let* ((_$tgt107389107400_
                      (let () (declare (not safe)) (__AST-e _$e107386_)))
                     (_$hd107390107403_
                      (let () (declare (not safe)) (##car _$tgt107389107400_)))
                     (_$tl107391107406_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107389107400_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107391107406_))
                    (let* ((_$tgt107392107410_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107391107406_)))
                           (_$hd107393107413_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107392107410_)))
                           (_$tl107394107416_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107392107410_))))
                      (let ((_id107420_ _$hd107393107413_))
                        (if (let ((__tmp114146
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107394107416_))))
                              (declare (not safe))
                              (equal? __tmp114146 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107420_ _stx107384_))
                            (let () (declare (not safe)) (_$E107388107397_)))))
                    (let () (declare (not safe)) (_$E107388107397_))))
              (let () (declare (not safe)) (_$E107388107397_))))))
    (define __compile-setq%
      (lambda (_stx107331_)
        (let* ((_$e107333_ _stx107331_)
               (_$E107335107347_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107333_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107333_))
              (let* ((_$tgt107336107350_
                      (let () (declare (not safe)) (__AST-e _$e107333_)))
                     (_$hd107337107353_
                      (let () (declare (not safe)) (##car _$tgt107336107350_)))
                     (_$tl107338107356_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107336107350_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107338107356_))
                    (let* ((_$tgt107339107360_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107338107356_)))
                           (_$hd107340107363_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107339107360_)))
                           (_$tl107341107366_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107339107360_))))
                      (let ((_id107370_ _$hd107340107363_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107341107366_))
                            (let* ((_$tgt107342107372_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107341107366_)))
                                   (_$hd107343107375_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107342107372_)))
                                   (_$tl107344107378_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107342107372_))))
                              (let ((_expr107382_ _$hd107343107375_))
                                (if (let ((__tmp114152
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107344107378_))))
                                      (declare (not safe))
                                      (equal? __tmp114152 '()))
                                    (let ((__tmp114147
                                           (let ((__tmp114148
                                                  (let ((__tmp114151
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107370_
                                                            _stx107331_)))
                                                        (__tmp114149
                                                         (let ((__tmp114150
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107382_))))
                   (declare (not safe))
                   (cons __tmp114150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114151
                                                          __tmp114149))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114148))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114147 _stx107331_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107335107347_)))))
                            (let () (declare (not safe)) (_$E107335107347_)))))
                    (let () (declare (not safe)) (_$E107335107347_))))
              (let () (declare (not safe)) (_$E107335107347_))))))
    (define __compile-if%
      (lambda (_stx107263_)
        (let* ((_$e107265_ _stx107263_)
               (_$E107267107282_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107265_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107265_))
              (let* ((_$tgt107268107285_
                      (let () (declare (not safe)) (__AST-e _$e107265_)))
                     (_$hd107269107288_
                      (let () (declare (not safe)) (##car _$tgt107268107285_)))
                     (_$tl107270107291_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107268107285_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107270107291_))
                    (let* ((_$tgt107271107295_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107270107291_)))
                           (_$hd107272107298_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107271107295_)))
                           (_$tl107273107301_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107271107295_))))
                      (let ((_p107305_ _$hd107272107298_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107273107301_))
                            (let* ((_$tgt107274107307_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107273107301_)))
                                   (_$hd107275107310_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107274107307_)))
                                   (_$tl107276107313_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107274107307_))))
                              (let ((_t107317_ _$hd107275107310_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107276107313_))
                                    (let* ((_$tgt107277107319_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107276107313_)))
                                           (_$hd107278107322_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107277107319_)))
                                           (_$tl107279107325_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107277107319_))))
                                      (let ((_f107329_ _$hd107278107322_))
                                        (if (let ((__tmp114160
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107279107325_))))
                                              (declare (not safe))
                                              (equal? __tmp114160 '()))
                                            (let ((__tmp114153
                                                   (let ((__tmp114154
                                                          (let ((__tmp114159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107305_)))
                        (__tmp114155
                         (let ((__tmp114158
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107317_)))
                               (__tmp114156
                                (let ((__tmp114157
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107329_))))
                                  (declare (not safe))
                                  (cons __tmp114157 '()))))
                           (declare (not safe))
                           (cons __tmp114158 __tmp114156))))
                    (declare (not safe))
                    (cons __tmp114159 __tmp114155))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114154))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114153
                                               _stx107263_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107267107282_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107267107282_)))))
                            (let () (declare (not safe)) (_$E107267107282_)))))
                    (let () (declare (not safe)) (_$E107267107282_))))
              (let () (declare (not safe)) (_$E107267107282_))))))
    (define __compile-quote%
      (lambda (_stx107225_)
        (let* ((_$e107227_ _stx107225_)
               (_$E107229107238_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107227_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107227_))
              (let* ((_$tgt107230107241_
                      (let () (declare (not safe)) (__AST-e _$e107227_)))
                     (_$hd107231107244_
                      (let () (declare (not safe)) (##car _$tgt107230107241_)))
                     (_$tl107232107247_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107230107241_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107232107247_))
                    (let* ((_$tgt107233107251_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107232107247_)))
                           (_$hd107234107254_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107233107251_)))
                           (_$tl107235107257_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107233107251_))))
                      (let ((_e107261_ _$hd107234107254_))
                        (if (let ((__tmp114164
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107235107257_))))
                              (declare (not safe))
                              (equal? __tmp114164 '()))
                            (let ((__tmp114161
                                   (let ((__tmp114162
                                          (let ((__tmp114163
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107261_))))
                                            (declare (not safe))
                                            (cons __tmp114163 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114162))))
                              (declare (not safe))
                              (__SRC__% __tmp114161 _stx107225_))
                            (let () (declare (not safe)) (_$E107229107238_)))))
                    (let () (declare (not safe)) (_$E107229107238_))))
              (let () (declare (not safe)) (_$E107229107238_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107187_)
        (let* ((_$e107189_ _stx107187_)
               (_$E107191107200_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107189_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107189_))
              (let* ((_$tgt107192107203_
                      (let () (declare (not safe)) (__AST-e _$e107189_)))
                     (_$hd107193107206_
                      (let () (declare (not safe)) (##car _$tgt107192107203_)))
                     (_$tl107194107209_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107192107203_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107194107209_))
                    (let* ((_$tgt107195107213_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107194107209_)))
                           (_$hd107196107216_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107195107213_)))
                           (_$tl107197107219_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107195107213_))))
                      (let ((_e107223_ _$hd107196107216_))
                        (if (let ((__tmp114167
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107197107219_))))
                              (declare (not safe))
                              (equal? __tmp114167 '()))
                            (let ((__tmp114165
                                   (let ((__tmp114166
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107223_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114166))))
                              (declare (not safe))
                              (__SRC__% __tmp114165 _stx107187_))
                            (let () (declare (not safe)) (_$E107191107200_)))))
                    (let () (declare (not safe)) (_$E107191107200_))))
              (let () (declare (not safe)) (_$E107191107200_))))))
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
