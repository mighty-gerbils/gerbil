(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707601715)
  (begin
    (define __context::t
      (let ((__tmp113955
             (let ((__tmp113956
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113956 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp113955
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109291_
        (apply make-struct-instance __context::t _$args109291_)))
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
      (let ((__tmp113957
             (let ((__tmp113958
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113958 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp113957
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109288_
        (apply make-struct-instance __runtime::t _$args109288_)))
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
      (let ((__tmp113959
             (let ((__tmp113960
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113960 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp113959
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109285_
        (apply make-struct-instance __syntax::t _$args109285_)))
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
      (let ((__tmp113961
             (let ((__tmp113962
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113962 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp113961
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109282_
        (apply make-struct-instance __macro::t _$args109282_)))
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
      (let ((__tmp113963
             (let ((__tmp113964
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113964 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp113963
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109279_
        (apply make-struct-instance __special-form::t _$args109279_)))
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
      (let ((__tmp113965
             (let ((__tmp113966
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113966 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp113965
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109276_
        (apply make-struct-instance __core-form::t _$args109276_)))
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
      (let ((__tmp113967
             (let ((__tmp113968
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113968 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp113967
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109273_
        (apply make-struct-instance __core-expression::t _$args109273_)))
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
      (let ((__tmp113969
             (let ((__tmp113970
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113970 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp113969
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109270_
        (apply make-struct-instance __core-special-form::t _$args109270_)))
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
      (let ((__tmp113971
             (let ((__tmp113972
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113972 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp113971
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109267_
        (apply make-struct-instance __struct-info::t _$args109267_)))
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
      (let ((__tmp113973
             (let ((__tmp113974
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113974 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp113973
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109264_
        (apply make-struct-instance __feature::t _$args109264_)))
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
      (let ((__tmp113975
             (let ((__tmp113976
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113976 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp113975
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109261_
        (apply make-struct-instance __module::t _$args109261_)))
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
      (let ((__tmp113978
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp113977
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp113978 __tmp113977)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109236_ _ctx109237_)
        (if _ctx109237_
            (let ((_id109239_
                   (let () (declare (not safe)) (__AST-e _id109236_))))
              (let _lp109241_ ((_ctx109243_ _ctx109237_))
                (let ((_$e109245_
                       (table-ref
                        (##structure-ref _ctx109243_ '4 __context::t '#f)
                        _id109239_
                        '#f)))
                  (if _$e109245_
                      (values _$e109245_)
                      (let ((_$e109248_
                             (##structure-ref
                              _ctx109243_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109248_
                            (let ()
                              (declare (not safe))
                              (_lp109241_ _$e109248_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109254_)
        (let ((_ctx109256_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109254_ _ctx109256_))))
    (define __core-resolve
      (lambda _g113980_
        (let ((_g113979_ (let () (declare (not safe)) (##length _g113980_))))
          (cond ((let () (declare (not safe)) (##fx= _g113979_ 1))
                 (apply (lambda (_id109254_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109254_)))
                        _g113980_))
                ((let () (declare (not safe)) (##fx= _g113979_ 2))
                 (apply (lambda (_id109258_ _ctx109259_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109258_ _ctx109259_)))
                        _g113980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113980_))))))
    (define __core-bound-id?__%
      (lambda (_id109219_ _is?109220_)
        (let ((_$e109222_
               (let () (declare (not safe)) (__core-resolve__0 _id109219_))))
          (if _$e109222_ (_is?109220_ _$e109222_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109228_)
        (let ((_is?109230_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109228_ _is?109230_))))
    (define __core-bound-id?
      (lambda _g113982_
        (let ((_g113981_ (let () (declare (not safe)) (##length _g113982_))))
          (cond ((let () (declare (not safe)) (##fx= _g113981_ 1))
                 (apply (lambda (_id109228_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109228_)))
                        _g113982_))
                ((let () (declare (not safe)) (##fx= _g113981_ 2))
                 (apply (lambda (_id109232_ _is?109233_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109232_ _is?109233_)))
                        _g113982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113982_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109202_ _eid109203_ _ctx109204_)
        (if _eid109203_
            (let ((__tmp113985
                   (##structure-ref _ctx109204_ '4 __context::t '#f))
                  (__tmp113984
                   (let () (declare (not safe)) (__AST-e _id109202_)))
                  (__tmp113983
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109203_))))
              (declare (not safe))
              (table-set! __tmp113985 __tmp113984 __tmp113983))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109209_ _eid109210_)
        (let ((_ctx109212_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109209_ _eid109210_ _ctx109212_))))
    (define __core-bind-runtime!
      (lambda _g113987_
        (let ((_g113986_ (let () (declare (not safe)) (##length _g113987_))))
          (cond ((let () (declare (not safe)) (##fx= _g113986_ 2))
                 (apply (lambda (_id109209_ _eid109210_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109209_ _eid109210_)))
                        _g113987_))
                ((let () (declare (not safe)) (##fx= _g113986_ 3))
                 (apply (lambda (_id109214_ _eid109215_ _ctx109216_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109214_
                             _eid109215_
                             _ctx109216_)))
                        _g113987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113987_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109185_ _e109186_ _make109187_)
        (let ((__tmp113988
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109186_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109186_
                   (_make109187_ _e109186_ _id109185_))))
          (declare (not safe))
          (table-set! __*core* _id109185_ __tmp113988))))
    (define __core-bind-syntax!__0
      (lambda (_id109192_ _e109193_)
        (let ((_make109195_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109192_ _e109193_ _make109195_))))
    (define __core-bind-syntax!
      (lambda _g113990_
        (let ((_g113989_ (let () (declare (not safe)) (##length _g113990_))))
          (cond ((let () (declare (not safe)) (##fx= _g113989_ 2))
                 (apply (lambda (_id109192_ _e109193_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109192_ _e109193_)))
                        _g113990_))
                ((let () (declare (not safe)) (##fx= _g113989_ 3))
                 (apply (lambda (_id109197_ _e109198_ _make109199_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109197_
                             _e109198_
                             _make109199_)))
                        _g113990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113990_))))))
    (define __core-bind-macro!
      (lambda (_id109181_ _e109182_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109181_ _e109182_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109178_ _e109179_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109178_ _e109179_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109162_ _e109163_ _ctx109164_)
        (let ((__tmp113994 (##structure-ref _ctx109164_ '4 __context::t '#f))
              (__tmp113993 (let () (declare (not safe)) (__AST-e _id109162_)))
              (__tmp113991
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109163_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109163_
                   (let ((__tmp113992
                          (let () (declare (not safe)) (__AST-e _id109162_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109163_ __tmp113992)))))
          (declare (not safe))
          (table-set! __tmp113994 __tmp113993 __tmp113991))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109169_ _e109170_)
        (let ((_ctx109172_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109169_ _e109170_ _ctx109172_))))
    (define __core-bind-user-syntax!
      (lambda _g113996_
        (let ((_g113995_ (let () (declare (not safe)) (##length _g113996_))))
          (cond ((let () (declare (not safe)) (##fx= _g113995_ 2))
                 (apply (lambda (_id109169_ _e109170_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109169_
                             _e109170_)))
                        _g113996_))
                ((let () (declare (not safe)) (##fx= _g113995_ 3))
                 (apply (lambda (_id109174_ _e109175_ _ctx109176_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109174_
                             _e109175_
                             _ctx109176_)))
                        _g113996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113996_))))))
    (define make-__runtime-id__%
      (lambda (_id109143_ _ctx109144_)
        (let ((_id109146_ (let () (declare (not safe)) (__AST-e _id109143_))))
          (if (let () (declare (not safe)) (eq? _id109146_ '_))
              '#f
              (if (uninterned-symbol? _id109146_)
                  (gensym _id109146_)
                  (if (let () (declare (not safe)) (symbol? _id109146_))
                      (let ((_$e109148_
                             (##structure-ref
                              _ctx109144_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109148_))
                            (gensym _id109146_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109148_))
                                (let ((__tmp113997
                                       (##structure-ref
                                        _ctx109144_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113997 '"#" _id109146_))
                                _id109146_)))
                      (error '"Illegal runtime identifier" _id109146_)))))))
    (define make-__runtime-id__0
      (lambda (_id109154_)
        (let ((_ctx109156_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109154_ _ctx109156_))))
    (define make-__runtime-id
      (lambda _g113999_
        (let ((_g113998_ (let () (declare (not safe)) (##length _g113999_))))
          (cond ((let () (declare (not safe)) (##fx= _g113998_ 1))
                 (apply (lambda (_id109154_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109154_)))
                        _g113999_))
                ((let () (declare (not safe)) (##fx= _g113998_ 2))
                 (apply (lambda (_id109158_ _ctx109159_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109158_ _ctx109159_)))
                        _g113999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113999_))))))
    (define make-__context-local__%
      (lambda (_super109132_)
        (let ((__tmp114000
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109132_ __tmp114000))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109138_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109138_))))
    (define make-__context-local
      (lambda _g114002_
        (let ((_g114001_ (let () (declare (not safe)) (##length _g114002_))))
          (cond ((let () (declare (not safe)) (##fx= _g114001_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114002_))
                ((let () (declare (not safe)) (##fx= _g114001_ 1))
                 (apply (lambda (_super109140_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109140_)))
                        _g114002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114002_))))))
    (define make-__context-module__%
      (lambda (_id109112_ _ns109113_ _path109114_ _super109115_)
        (let ((__tmp114003
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109113_
           _super109115_
           __tmp114003
           _id109112_
           _path109114_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109120_ _ns109121_ _path109122_)
        (let ((_super109124_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109120_
           _ns109121_
           _path109122_
           _super109124_))))
    (define make-__context-module
      (lambda _g114005_
        (let ((_g114004_ (let () (declare (not safe)) (##length _g114005_))))
          (cond ((let () (declare (not safe)) (##fx= _g114004_ 3))
                 (apply (lambda (_id109120_ _ns109121_ _path109122_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109120_
                             _ns109121_
                             _path109122_)))
                        _g114005_))
                ((let () (declare (not safe)) (##fx= _g114004_ 4))
                 (apply (lambda (_id109126_
                                 _ns109127_
                                 _path109128_
                                 _super109129_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109126_
                             _ns109127_
                             _path109128_
                             _super109129_)))
                        _g114005_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114005_))))))
    (define __SRC__%
      (lambda (_e109095_ _src-stx109096_)
        (if (or (let () (declare (not safe)) (pair? _e109095_))
                (let () (declare (not safe)) (symbol? _e109095_)))
            (let ((__tmp114009
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109096_
                          'gerbil#AST::t))
                       (let ((__tmp114010
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109096_))))
                         (declare (not safe))
                         (__locat __tmp114010))
                       '#f)))
              (declare (not safe))
              (##make-source _e109095_ __tmp114009))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109095_ 'gerbil#AST::t))
                (let ((__tmp114008
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109095_ '1 AST::t '#f)))
                      (__tmp114006
                       (let ((__tmp114007
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109095_))))
                         (declare (not safe))
                         (__locat __tmp114007))))
                  (declare (not safe))
                  (##make-source __tmp114008 __tmp114006))
                (error '"BUG! Cannot sourcify object" _e109095_)))))
    (define __SRC__0
      (lambda (_e109104_)
        (let ((_src-stx109106_ '#f))
          (declare (not safe))
          (__SRC__% _e109104_ _src-stx109106_))))
    (define __SRC
      (lambda _g114012_
        (let ((_g114011_ (let () (declare (not safe)) (##length _g114012_))))
          (cond ((let () (declare (not safe)) (##fx= _g114011_ 1))
                 (apply (lambda (_e109104_)
                          (let () (declare (not safe)) (__SRC__0 _e109104_)))
                        _g114012_))
                ((let () (declare (not safe)) (##fx= _g114011_ 2))
                 (apply (lambda (_e109108_ _src-stx109109_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109108_ _src-stx109109_)))
                        _g114012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114012_))))))
    (define __locat
      (lambda (_loc109092_)
        (if (let () (declare (not safe)) (##locat? _loc109092_))
            _loc109092_
            '#f)))
    (define __check-values
      (lambda (_obj109087_ _k109088_)
        (let ((_count109090_
               (if (let () (declare (not safe)) (##values? _obj109087_))
                   (let () (declare (not safe)) (##vector-length _obj109087_))
                   '1)))
          (if (fx= _count109090_ _k109088_)
              '#!void
              (error (if (fx< _count109090_ _k109088_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109087_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109087_))
                         _obj109087_)
                     _k109088_)))))
    (define __compile
      (lambda (_stx109057_)
        (let* ((_$e109059_ _stx109057_)
               (_$E109061109067_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109059_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109059_))
              (let* ((_$tgt109062109070_
                      (let () (declare (not safe)) (__AST-e _$e109059_)))
                     (_$hd109063109073_
                      (let () (declare (not safe)) (##car _$tgt109062109070_)))
                     (_$tl109064109076_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109062109070_))))
                (let* ((_form109080_ _$hd109063109073_)
                       (_$e109082_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109080_))))
                  (if _$e109082_
                      ((lambda (_bind109085_)
                         ((##structure-ref _bind109085_ '1 __syntax::t '#f)
                          _stx109057_))
                       _$e109082_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109057_
                         _form109080_)))))
              (let () (declare (not safe)) (_$E109061109067_))))))
    (define __compile-error__%
      (lambda (_stx109044_ _detail109045_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109044_
           _detail109045_))))
    (define __compile-error__0
      (lambda (_stx109050_)
        (let ((_detail109052_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109050_ _detail109052_))))
    (define __compile-error
      (lambda _g114014_
        (let ((_g114013_ (let () (declare (not safe)) (##length _g114014_))))
          (cond ((let () (declare (not safe)) (##fx= _g114013_ 1))
                 (apply (lambda (_stx109050_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109050_)))
                        _g114014_))
                ((let () (declare (not safe)) (##fx= _g114013_ 2))
                 (apply (lambda (_stx109054_ _detail109055_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109054_ _detail109055_)))
                        _g114014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114014_))))))
    (define __compile-ignore%
      (lambda (_stx109041_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109041_))))
    (define __compile-begin%
      (lambda (_stx109016_)
        (let* ((_$e109018_ _stx109016_)
               (_$E109020109026_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109018_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109018_))
              (let* ((_$tgt109021109029_
                      (let () (declare (not safe)) (__AST-e _$e109018_)))
                     (_$hd109022109032_
                      (let () (declare (not safe)) (##car _$tgt109021109029_)))
                     (_$tl109023109035_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109021109029_))))
                (let* ((_body109039_ _$tl109023109035_)
                       (__tmp114015
                        (let ((__tmp114016 (map __compile _body109039_)))
                          (declare (not safe))
                          (cons 'begin __tmp114016))))
                  (declare (not safe))
                  (__SRC__% __tmp114015 _stx109016_)))
              (let () (declare (not safe)) (_$E109020109026_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108991_)
        (let* ((_$e108993_ _stx108991_)
               (_$E108995109001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108993_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108993_))
              (let* ((_$tgt108996109004_
                      (let () (declare (not safe)) (__AST-e _$e108993_)))
                     (_$hd108997109007_
                      (let () (declare (not safe)) (##car _$tgt108996109004_)))
                     (_$tl108998109010_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108996109004_))))
                (let* ((_body109014_ _$tl108998109010_)
                       (__tmp114017
                        (let ((__tmp114018
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109014_))))
                          (declare (not safe))
                          (cons 'begin __tmp114018))))
                  (declare (not safe))
                  (__SRC__% __tmp114017 _stx108991_)))
              (let () (declare (not safe)) (_$E108995109001_))))))
    (define __compile-import%
      (lambda (_stx108966_)
        (let* ((_$e108968_ _stx108966_)
               (_$E108970108976_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108968_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108968_))
              (let* ((_$tgt108971108979_
                      (let () (declare (not safe)) (__AST-e _$e108968_)))
                     (_$hd108972108982_
                      (let () (declare (not safe)) (##car _$tgt108971108979_)))
                     (_$tl108973108985_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108971108979_))))
                (let* ((_body108989_ _$tl108973108985_)
                       (__tmp114019
                        (let ((__tmp114020
                               (let ((__tmp114021
                                      (let ((__tmp114022
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108989_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114022))))
                                 (declare (not safe))
                                 (cons __tmp114021 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114020))))
                  (declare (not safe))
                  (__SRC__% __tmp114019 _stx108966_)))
              (let () (declare (not safe)) (_$E108970108976_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108913_)
        (let* ((_$e108915_ _stx108913_)
               (_$E108917108929_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108915_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108915_))
              (let* ((_$tgt108918108932_
                      (let () (declare (not safe)) (__AST-e _$e108915_)))
                     (_$hd108919108935_
                      (let () (declare (not safe)) (##car _$tgt108918108932_)))
                     (_$tl108920108938_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108918108932_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108920108938_))
                    (let* ((_$tgt108921108942_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108920108938_)))
                           (_$hd108922108945_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108921108942_)))
                           (_$tl108923108948_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108921108942_))))
                      (let ((_ann108952_ _$hd108922108945_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108923108948_))
                            (let* ((_$tgt108924108954_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108923108948_)))
                                   (_$hd108925108957_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108924108954_)))
                                   (_$tl108926108960_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108924108954_))))
                              (let ((_expr108964_ _$hd108925108957_))
                                (if (let ((__tmp114023
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108926108960_))))
                                      (declare (not safe))
                                      (equal? __tmp114023 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108964_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108917108929_)))))
                            (let () (declare (not safe)) (_$E108917108929_)))))
                    (let () (declare (not safe)) (_$E108917108929_))))
              (let () (declare (not safe)) (_$E108917108929_))))))
    (define __compile-define-values%
      (lambda (_stx108804_)
        (let* ((_$e108806_ _stx108804_)
               (_$E108808108820_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108806_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108806_))
              (let* ((_$tgt108809108823_
                      (let () (declare (not safe)) (__AST-e _$e108806_)))
                     (_$hd108810108826_
                      (let () (declare (not safe)) (##car _$tgt108809108823_)))
                     (_$tl108811108829_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108809108823_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108811108829_))
                    (let* ((_$tgt108812108833_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108811108829_)))
                           (_$hd108813108836_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108812108833_)))
                           (_$tl108814108839_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108812108833_))))
                      (let ((_hd108843_ _$hd108813108836_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108814108839_))
                            (let* ((_$tgt108815108845_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108814108839_)))
                                   (_$hd108816108848_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108815108845_)))
                                   (_$tl108817108851_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108815108845_))))
                              (let ((_expr108855_ _$hd108816108848_))
                                (if (let ((__tmp114056
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108817108851_))))
                                      (declare (not safe))
                                      (equal? __tmp114056 '()))
                                    (let* ((_$e108857_ _hd108843_)
                                           (_$E108859108900_
                                            (lambda ()
                                              (let ((_$E108860108885_
                                                     (lambda ()
                                                       (let* ((_$E108861108872_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108857_))))
                      (_ids108875_ _hd108843_)
                      (_len108877_ (length _ids108875_))
                      (_tmp108879_
                       (let ((__tmp114024 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114024))))
                 (let ((__tmp114025
                        (let ((__tmp114026
                               (let ((__tmp114043
                                      (let ((__tmp114044
                                             (let ((__tmp114045
                                                    (let ((__tmp114046
                                                           (let ((__tmp114047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108855_))))
                     (declare (not safe))
                     (cons __tmp114047 '()))))
              (declare (not safe))
              (cons _tmp108879_ __tmp114046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114045))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114044 _stx108804_)))
                                     (__tmp114027
                                      (let ((__tmp114039
                                             (let ((__tmp114040
                                                    (let ((__tmp114041
                                                           (let ((__tmp114042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108877_ '()))))
                     (declare (not safe))
                     (cons _tmp108879_ __tmp114042))))
              (declare (not safe))
              (cons '__check-values __tmp114041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114040
                                                _stx108804_)))
                                            (__tmp114028
                                             (let ((__tmp114029
                                                    (let ((__tmp114031
                                                           (lambda (_id108882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108883_)
                     (if (let () (declare (not safe)) (__AST-e _id108882_))
                         (let ((__tmp114032
                                (let ((__tmp114033
                                       (let ((__tmp114038
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108882_)))
                                             (__tmp114034
                                              (let ((__tmp114035
                                                     (let ((__tmp114036
                                                            (let ((__tmp114037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108883_ '()))))
                      (declare (not safe))
                      (cons _tmp108879_ __tmp114037))))
               (declare (not safe))
               (cons '##vector-ref __tmp114036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114035 '()))))
                                         (declare (not safe))
                                         (cons __tmp114038 __tmp114034))))
                                  (declare (not safe))
                                  (cons 'define __tmp114033))))
                           (declare (not safe))
                           (__SRC__% __tmp114032 _stx108804_))
                         '#f)))
                  (__tmp114030
                   (let () (declare (not safe)) (iota _len108877_))))
              (declare (not safe))
              (filter-map2 __tmp114031 _ids108875_ __tmp114030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114029))))
                                        (declare (not safe))
                                        (cons __tmp114039 __tmp114028))))
                                 (declare (not safe))
                                 (cons __tmp114043 __tmp114027))))
                          (declare (not safe))
                          (cons 'begin __tmp114026))))
                   (declare (not safe))
                   (__SRC__% __tmp114025 _stx108804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108857_))
                                                    (let* ((_$tgt108862108888_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108857_)))
                                                           (_$hd108863108891_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108862108888_)))
                                                           (_$tl108864108894_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108862108888_))))
                                                      (let ((_id108898_
                                                             _$hd108863108891_))
                                                        (if (let ((__tmp114053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108864108894_))))
                      (declare (not safe))
                      (equal? __tmp114053 '()))
                    (let ((__tmp114048
                           (let ((__tmp114049
                                  (let ((__tmp114052
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108898_)))
                                        (__tmp114050
                                         (let ((__tmp114051
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108855_))))
                                           (declare (not safe))
                                           (cons __tmp114051 '()))))
                                    (declare (not safe))
                                    (cons __tmp114052 __tmp114050))))
                             (declare (not safe))
                             (cons 'define __tmp114049))))
                      (declare (not safe))
                      (__SRC__% __tmp114048 _stx108804_))
                    (let () (declare (not safe)) (_$E108860108885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108860108885_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108857_))
                                          (let* ((_$tgt108865108903_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108857_)))
                                                 (_$hd108866108906_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108865108903_)))
                                                 (_$tl108867108909_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108865108903_))))
                                            (if (let ((__tmp114055
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108866108906_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114055 '#f))
                                                (if (let ((__tmp114054
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108867108909_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114054 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108855_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108859108900_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108859108900_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108859108900_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108808108820_)))))
                            (let () (declare (not safe)) (_$E108808108820_)))))
                    (let () (declare (not safe)) (_$E108808108820_))))
              (let () (declare (not safe)) (_$E108808108820_))))))
    (define __compile-head-id
      (lambda (_e108802_)
        (let ((__tmp114057
               (if (let () (declare (not safe)) (__AST-e _e108802_))
                   _e108802_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114057))))
    (define __compile-lambda-head
      (lambda (_hd108759_)
        (let _recur108761_ ((_rest108763_ _hd108759_))
          (let* ((_$e108765_ _rest108763_)
                 (_$E108767108785_
                  (lambda ()
                    (let ((_$E108768108782_
                           (lambda ()
                             (let* ((_$E108769108777_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108765_))))
                                    (_tail108780_ _$e108765_))
                               (declare (not safe))
                               (__compile-head-id _tail108780_)))))
                      (if (let ((__tmp114058
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108765_))))
                            (declare (not safe))
                            (equal? __tmp114058 '()))
                          '()
                          (let () (declare (not safe)) (_$E108768108782_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108765_))
                (let* ((_$tgt108770108788_
                        (let () (declare (not safe)) (__AST-e _$e108765_)))
                       (_$hd108771108791_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108770108788_)))
                       (_$tl108772108794_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108770108788_))))
                  (let* ((_hd108798_ _$hd108771108791_)
                         (_rest108800_ _$tl108772108794_))
                    (let ((__tmp114060
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108798_)))
                          (__tmp114059
                           (let ()
                             (declare (not safe))
                             (_recur108761_ _rest108800_))))
                      (declare (not safe))
                      (cons __tmp114060 __tmp114059))))
                (let () (declare (not safe)) (_$E108767108785_)))))))
    (define __compile-lambda%
      (lambda (_stx108706_)
        (let* ((_$e108708_ _stx108706_)
               (_$E108710108722_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108708_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108708_))
              (let* ((_$tgt108711108725_
                      (let () (declare (not safe)) (__AST-e _$e108708_)))
                     (_$hd108712108728_
                      (let () (declare (not safe)) (##car _$tgt108711108725_)))
                     (_$tl108713108731_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108711108725_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108713108731_))
                    (let* ((_$tgt108714108735_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108713108731_)))
                           (_$hd108715108738_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108714108735_)))
                           (_$tl108716108741_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108714108735_))))
                      (let ((_hd108745_ _$hd108715108738_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108716108741_))
                            (let* ((_$tgt108717108747_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108716108741_)))
                                   (_$hd108718108750_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108717108747_)))
                                   (_$tl108719108753_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108717108747_))))
                              (let ((_body108757_ _$hd108718108750_))
                                (if (let ((__tmp114066
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108719108753_))))
                                      (declare (not safe))
                                      (equal? __tmp114066 '()))
                                    (let ((__tmp114061
                                           (let ((__tmp114062
                                                  (let ((__tmp114065
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108745_)))
                                                        (__tmp114063
                                                         (let ((__tmp114064
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108757_))))
                   (declare (not safe))
                   (cons __tmp114064 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114065
                                                          __tmp114063))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114062))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114061 _stx108706_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108710108722_)))))
                            (let () (declare (not safe)) (_$E108710108722_)))))
                    (let () (declare (not safe)) (_$E108710108722_))))
              (let () (declare (not safe)) (_$E108710108722_))))))
    (define __compile-case-lambda%
      (lambda (_stx108498_)
        (letrec ((_variadic?108500_
                  (lambda (_hd108671_)
                    (let* ((_$e108673_ _hd108671_)
                           (_$E108675108691_
                            (lambda ()
                              (let ((_$E108676108688_
                                     (lambda ()
                                       (let ((_$E108677108685_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108673_)))))
                                         '#t))))
                                (if (let ((__tmp114067
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108673_))))
                                      (declare (not safe))
                                      (equal? __tmp114067 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108676108688_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108673_))
                          (let* ((_$tgt108678108694_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108673_)))
                                 (_$hd108679108697_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108678108694_)))
                                 (_$tl108680108700_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108678108694_))))
                            (let ((_rest108704_ _$tl108680108700_))
                              (declare (not safe))
                              (_variadic?108500_ _rest108704_)))
                          (let () (declare (not safe)) (_$E108675108691_))))))
                 (_arity108501_
                  (lambda (_hd108636_)
                    (let _lp108638_ ((_rest108640_ _hd108636_) (_k108641_ '0))
                      (let* ((_$e108643_ _rest108640_)
                             (_$E108645108656_
                              (lambda ()
                                (let ((_$E108646108653_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108643_)))))
                                  _k108641_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108643_))
                            (let* ((_$tgt108647108659_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108643_)))
                                   (_$hd108648108662_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108647108659_)))
                                   (_$tl108649108665_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108647108659_))))
                              (let* ((_rest108669_ _$tl108649108665_)
                                     (__tmp114068
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108641_ '1))))
                                (declare (not safe))
                                (_lp108638_ _rest108669_ __tmp114068)))
                            (let ()
                              (declare (not safe))
                              (_$E108645108656_)))))))
                 (_generate108502_
                  (lambda (_rest108563_ _args108564_ _len108565_)
                    (let* ((_$e108567_ _rest108563_)
                           (_$E108569108580_
                            (lambda ()
                              (let* ((_$E108570108577_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108567_))))
                                     (__tmp114069
                                      (let ((__tmp114070
                                             (let ((__tmp114071
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108564_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114071))))
                                        (declare (not safe))
                                        (cons 'error __tmp114070))))
                                (declare (not safe))
                                (__SRC__% __tmp114069 _stx108498_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108567_))
                          (let* ((_$tgt108571108583_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108567_)))
                                 (_$hd108572108586_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108571108583_)))
                                 (_$tl108573108589_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108571108583_))))
                            (let* ((_clause108593_ _$hd108572108586_)
                                   (_rest108595_ _$tl108573108589_)
                                   (_$e108597_ _clause108593_)
                                   (_$E108599108608_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108597_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108597_))
                                  (let* ((_$tgt108600108611_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108597_)))
                                         (_$hd108601108614_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108600108611_)))
                                         (_$tl108602108617_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108600108611_))))
                                    (let ((_hd108621_ _$hd108601108614_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108602108617_))
                                          (let* ((_$tgt108603108623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108602108617_)))
                                                 (_$hd108604108626_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108603108623_)))
                                                 (_$tl108605108629_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108603108623_))))
                                            (if (let ((__tmp114086
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108605108629_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114086 '()))
                                                (let ((_clen108633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108501_
                                                          _hd108621_)))
                                                      (_cmp108634_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108500_
                                                              _hd108621_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114072
                                                         (let ((__tmp114073
                                                                (let ((__tmp114083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114084
                                      (let ((__tmp114085
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108633_ '()))))
                                        (declare (not safe))
                                        (cons _len108565_ __tmp114085))))
                                 (declare (not safe))
                                 (cons _cmp108634_ __tmp114084)))
                              (__tmp114074
                               (let ((__tmp114077
                                      (let ((__tmp114078
                                             (let ((__tmp114079
                                                    (let ((__tmp114081
                                                           (let ((__tmp114082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108593_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114082)))
                  (__tmp114080
                   (let () (declare (not safe)) (cons _args108564_ '()))))
              (declare (not safe))
              (cons __tmp114081 __tmp114080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114079))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114078 _stx108498_)))
                                     (__tmp114075
                                      (let ((__tmp114076
                                             (let ()
                                               (declare (not safe))
                                               (_generate108502_
                                                _rest108595_
                                                _args108564_
                                                _len108565_))))
                                        (declare (not safe))
                                        (cons __tmp114076 '()))))
                                 (declare (not safe))
                                 (cons __tmp114077 __tmp114075))))
                          (declare (not safe))
                          (cons __tmp114083 __tmp114074))))
                   (declare (not safe))
                   (cons 'if __tmp114073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114072
                                                     _stx108498_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108599108608_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108599108608_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108599108608_)))))
                          (let () (declare (not safe)) (_$E108569108580_)))))))
          (let* ((_$e108504_ _stx108498_)
                 (_$E108506108538_
                  (lambda ()
                    (let ((_$E108507108520_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108504_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108504_))
                          (let* ((_$tgt108508108523_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108504_)))
                                 (_$hd108509108526_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108508108523_)))
                                 (_$tl108510108529_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108508108523_))))
                            (let ((_clauses108533_ _$tl108510108529_))
                              (let ((_args108535_
                                     (let ((__tmp114087 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114087 _stx108498_)))
                                    (_len108536_
                                     (let ((__tmp114088 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114088 _stx108498_))))
                                (let ((__tmp114089
                                       (let ((__tmp114090
                                              (let ((__tmp114091
                                                     (let ((__tmp114092
                                                            (let ((__tmp114093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114094
                                  (let ((__tmp114097
                                         (let ((__tmp114098
                                                (let ((__tmp114099
                                                       (let ((__tmp114100
                                                              (let ((__tmp114101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114102
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108535_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114102))))
                        (declare (not safe))
                        (__SRC__% __tmp114101 _stx108498_))))
                 (declare (not safe))
                 (cons __tmp114100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108536_
                                                        __tmp114099))))
                                           (declare (not safe))
                                           (cons __tmp114098 '())))
                                        (__tmp114095
                                         (let ((__tmp114096
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108502_
                                                   _clauses108533_
                                                   _args108535_
                                                   _len108536_))))
                                           (declare (not safe))
                                           (cons __tmp114096 '()))))
                                    (declare (not safe))
                                    (cons __tmp114097 __tmp114095))))
                             (declare (not safe))
                             (cons 'let __tmp114094))))
                      (declare (not safe))
                      (__SRC__% __tmp114093 _stx108498_))))
               (declare (not safe))
               (cons __tmp114092 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108535_
                                                      __tmp114091))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114090))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114089 _stx108498_)))))
                          (let () (declare (not safe)) (_$E108507108520_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108504_))
                (let* ((_$tgt108511108541_
                        (let () (declare (not safe)) (__AST-e _$e108504_)))
                       (_$hd108512108544_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108511108541_)))
                       (_$tl108513108547_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108511108541_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108513108547_))
                      (let* ((_$tgt108514108551_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108513108547_)))
                             (_$hd108515108554_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108514108551_)))
                             (_$tl108516108557_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108514108551_))))
                        (let ((_clause108561_ _$hd108515108554_))
                          (if (let ((__tmp114104
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108516108557_))))
                                (declare (not safe))
                                (equal? __tmp114104 '()))
                              (let ((__tmp114103
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108561_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114103))
                              (let ()
                                (declare (not safe))
                                (_$E108506108538_)))))
                      (let () (declare (not safe)) (_$E108506108538_))))
                (let () (declare (not safe)) (_$E108506108538_)))))))
    (define __compile-let-form
      (lambda (_stx108267_ _compile-simple108268_ _compile-values108269_)
        (letrec ((_simple-bind?108271_
                  (lambda (_hd108456_)
                    (let* ((_hd108457108467_ _hd108456_)
                           (_else108460108475_ (lambda () '#f)))
                      (let ((_K108463108488_ (lambda (_id108486_) '#t))
                            (_K108462108480_ (lambda () '#t)))
                        (let ((_try-match108459108483_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108457108467_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108462108480_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108460108475_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108457108467_))
                              (let ((_tl108465108493_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108457108467_)))
                                    (_hd108464108491_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108457108467_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108465108493_))
                                    (let ((_id108496_ _hd108464108491_))
                                      (declare (not safe))
                                      (_K108463108488_ _id108496_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108459108483_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108459108483_))))))))
                 (_car-e108272_
                  (lambda (_hd108454_)
                    (if (let () (declare (not safe)) (pair? _hd108454_))
                        (car _hd108454_)
                        _hd108454_))))
          (let* ((_$e108274_ _stx108267_)
                 (_$E108276108419_
                  (lambda ()
                    (let ((_$E108277108299_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108274_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108274_))
                          (let* ((_$tgt108278108302_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108274_)))
                                 (_$hd108279108305_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108278108302_)))
                                 (_$tl108280108308_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108278108302_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108280108308_))
                                (let* ((_$tgt108281108312_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108280108308_)))
                                       (_$hd108282108315_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108281108312_)))
                                       (_$tl108283108318_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108281108312_))))
                                  (let ((_hd108322_ _$hd108282108315_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108283108318_))
                                        (let* ((_$tgt108284108324_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108283108318_)))
                                               (_$hd108285108327_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108284108324_)))
                                               (_$tl108286108330_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108284108324_))))
                                          (let ((_body108334_
                                                 _$hd108285108327_))
                                            (if (let ((__tmp114107
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108286108330_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114107 '()))
                                                (let* ((_hd-ids108374_
                                                        (map (lambda (_bind108336_)
                                                               (let* ((_$e108338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108336_)
                              (_$E108340108349_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108338_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108338_))
                             (let* ((_$tgt108341108352_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108338_)))
                                    (_$hd108342108355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108341108352_)))
                                    (_$tl108343108358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108341108352_))))
                               (let ((_ids108362_ _$hd108342108355_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108343108358_))
                                     (let* ((_$tgt108344108364_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108343108358_)))
                                            (_$hd108345108367_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108344108364_)))
                                            (_$tl108346108370_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108344108364_))))
                                       (if (let ((__tmp114105
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108346108370_))))
                                             (declare (not safe))
                                             (equal? __tmp114105 '()))
                                           _ids108362_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108340108349_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108340108349_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108340108349_)))))
                     _hd108322_))
               (_exprs108414_
                (map (lambda (_bind108376_)
                       (let* ((_$e108378_ _bind108376_)
                              (_$E108380108389_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108378_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108378_))
                             (let* ((_$tgt108381108392_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108378_)))
                                    (_$hd108382108395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108381108392_)))
                                    (_$tl108383108398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108381108392_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108383108398_))
                                   (let* ((_$tgt108384108402_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108383108398_)))
                                          (_$hd108385108405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108384108402_)))
                                          (_$tl108386108408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108384108402_))))
                                     (let ((_expr108412_ _$hd108385108405_))
                                       (if (let ((__tmp114106
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108386108408_))))
                                             (declare (not safe))
                                             (equal? __tmp114106 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108412_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108380108389_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108380108389_))))
                             (let ()
                               (declare (not safe))
                               (_$E108380108389_)))))
                     _hd108322_))
               (_body108416_
                (let () (declare (not safe)) (__compile _body108334_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108374_))
              (_compile-simple108268_
               (map _car-e108272_ _hd-ids108374_)
               _exprs108414_
               _body108416_)
              (_compile-values108269_
               _hd-ids108374_
               _exprs108414_
               _body108416_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108277108299_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108277108299_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108277108299_))))
                          (let () (declare (not safe)) (_$E108277108299_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108274_))
                (let* ((_$tgt108287108422_
                        (let () (declare (not safe)) (__AST-e _$e108274_)))
                       (_$hd108288108425_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108287108422_)))
                       (_$tl108289108428_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108287108422_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108289108428_))
                      (let* ((_$tgt108290108432_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108289108428_)))
                             (_$hd108291108435_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108290108432_)))
                             (_$tl108292108438_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108290108432_))))
                        (if (let ((__tmp114109
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108291108435_))))
                              (declare (not safe))
                              (equal? __tmp114109 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108292108438_))
                                (let* ((_$tgt108293108442_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108292108438_)))
                                       (_$hd108294108445_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108293108442_)))
                                       (_$tl108295108448_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108293108442_))))
                                  (let ((_body108452_ _$hd108294108445_))
                                    (if (let ((__tmp114108
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108295108448_))))
                                          (declare (not safe))
                                          (equal? __tmp114108 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108452_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108276108419_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108276108419_)))
                            (let () (declare (not safe)) (_$E108276108419_))))
                      (let () (declare (not safe)) (_$E108276108419_))))
                (let () (declare (not safe)) (_$E108276108419_)))))))
    (define __compile-let-values%
      (lambda (_stx108082_)
        (letrec ((_compile-simple108084_
                  (lambda (_hd-ids108263_ _exprs108264_ _body108265_)
                    (let ((__tmp114110
                           (let ((__tmp114111
                                  (let ((__tmp114113
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108263_)
                                              _exprs108264_))
                                        (__tmp114112
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108265_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114113 __tmp114112))))
                             (declare (not safe))
                             (cons 'let __tmp114111))))
                      (declare (not safe))
                      (__SRC__% __tmp114110 _stx108082_))))
                 (_compile-values108085_
                  (lambda (_hd-ids108181_ _exprs108182_ _body108183_)
                    (let _lp108185_ ((_rest108187_ _hd-ids108181_)
                                     (_exprs108188_ _exprs108182_)
                                     (_bind108189_ '())
                                     (_post108190_ '()))
                      (let* ((_rest108191108205_ _rest108187_)
                             (_else108194108213_
                              (lambda ()
                                (let ((__tmp114114
                                       (let ((__tmp114115
                                              (let ((__tmp114118
                                                     (reverse _bind108189_))
                                                    (__tmp114116
                                                     (let ((__tmp114117
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108086_
                                                               _post108190_
                                                               _body108183_))))
                                                       (declare (not safe))
                                                       (cons __tmp114117
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114118
                                                      __tmp114116))))
                                         (declare (not safe))
                                         (cons 'let __tmp114115))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114114 _stx108082_)))))
                        (let ((_K108199108246_
                               (lambda (_rest108243_ _id108244_)
                                 (let ((__tmp114124 (cdr _exprs108188_))
                                       (__tmp114119
                                        (let ((__tmp114120
                                               (let ((__tmp114123
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108244_)))
                                                     (__tmp114121
                                                      (let ((__tmp114122
                                                             (car _exprs108188_)))
                                                        (declare (not safe))
                                                        (cons __tmp114122
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114123
                                                       __tmp114121))))
                                          (declare (not safe))
                                          (cons __tmp114120 _bind108189_))))
                                   (declare (not safe))
                                   (_lp108185_
                                    _rest108243_
                                    __tmp114124
                                    __tmp114119
                                    _post108190_))))
                              (_K108196108228_
                               (lambda (_rest108217_ _hd108218_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108218_))
                                     (let ((__tmp114145 (cdr _exprs108188_))
                                           (__tmp114138
                                            (let ((__tmp114139
                                                   (let ((__tmp114144
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108218_)))
                                                         (__tmp114140
                                                          (let ((__tmp114141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114142
                                (let ((__tmp114143 (car _exprs108188_)))
                                  (declare (not safe))
                                  (cons __tmp114143 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114142))))
                    (declare (not safe))
                    (cons __tmp114141 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114144
                                                           __tmp114140))))
                                              (declare (not safe))
                                              (cons __tmp114139
                                                    _bind108189_))))
                                       (declare (not safe))
                                       (_lp108185_
                                        _rest108217_
                                        __tmp114145
                                        __tmp114138
                                        _post108190_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108218_))
                                         (let* ((_len108220_
                                                 (length _hd108218_))
                                                (_tmp108222_
                                                 (let ((__tmp114125 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114125))))
                                           (let ((__tmp114137
                                                  (cdr _exprs108188_))
                                                 (__tmp114133
                                                  (let ((__tmp114134
                                                         (let ((__tmp114135
                                                                (let ((__tmp114136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108188_)))
                          (declare (not safe))
                          (cons __tmp114136 '()))))
                   (declare (not safe))
                   (cons _tmp108222_ __tmp114135))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114134
                                                          _bind108189_)))
                                                 (__tmp114126
                                                  (let ((__tmp114127
                                                         (let ((__tmp114128
                                                                (let ((__tmp114129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114131
                                      (lambda (_id108225_ _k108226_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108225_))
                                            (let ((__tmp114132
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108225_))))
                                              (declare (not safe))
                                              (cons __tmp114132 _k108226_))
                                            '#f)))
                                     (__tmp114130
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108220_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114131
                                  _hd108218_
                                  __tmp114130))))
                          (declare (not safe))
                          (cons _len108220_ __tmp114129))))
                   (declare (not safe))
                   (cons _tmp108222_ __tmp114128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114127
                                                          _post108190_))))
                                             (declare (not safe))
                                             (_lp108185_
                                              _rest108217_
                                              __tmp114137
                                              __tmp114133
                                              __tmp114126)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108082_
                                            _hd108218_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108191108205_))
                              (let ((_tl108201108251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108191108205_)))
                                    (_hd108200108249_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108191108205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108200108249_))
                                    (let ((_tl108203108256_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108200108249_)))
                                          (_hd108202108254_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108200108249_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108203108256_))
                                          (let ((_id108259_ _hd108202108254_)
                                                (_rest108261_
                                                 _tl108201108251_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108199108246_
                                               _rest108261_
                                               _id108259_)))
                                          (let ((_hd108236_ _hd108200108249_)
                                                (_rest108238_
                                                 _tl108201108251_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108196108228_
                                               _rest108238_
                                               _hd108236_)))))
                                    (let ((_hd108236_ _hd108200108249_)
                                          (_rest108238_ _tl108201108251_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108196108228_
                                         _rest108238_
                                         _hd108236_)))))
                              (let ()
                                (declare (not safe))
                                (_else108194108213_))))))))
                 (_compile-post108086_
                  (lambda (_post108088_ _body108089_)
                    (let _lp108091_ ((_rest108093_ _post108088_)
                                     (_check108094_ '())
                                     (_bind108095_ '()))
                      (let* ((_rest108096108108_ _rest108093_)
                             (_else108098108116_
                              (lambda ()
                                (let ((__tmp114146
                                       (let ((__tmp114147
                                              (let ((__tmp114148
                                                     (let ((__tmp114149
                                                            (let ((__tmp114150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114151
                                  (let ((__tmp114152
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108089_ '()))))
                                    (declare (not safe))
                                    (cons _bind108095_ __tmp114152))))
                             (declare (not safe))
                             (cons 'let __tmp114151))))
                      (declare (not safe))
                      (__SRC__% __tmp114150 _stx108082_))))
               (declare (not safe))
               (cons __tmp114149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114148
                                                        _check108094_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114147))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114146 _stx108082_))))
                             (_K108100108155_
                              (lambda (_rest108119_
                                       _init108120_
                                       _len108121_
                                       _tmp108122_)
                                (let ((__tmp114160
                                       (let ((__tmp114161
                                              (let ((__tmp114162
                                                     (let ((__tmp114163
                                                            (let ((__tmp114164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108121_ '()))))
                      (declare (not safe))
                      (cons _tmp108122_ __tmp114164))))
               (declare (not safe))
               (cons '__check-values __tmp114163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114162
                                                 _stx108082_))))
                                         (declare (not safe))
                                         (cons __tmp114161 _check108094_)))
                                      (__tmp114153
                                       (let ((__tmp114154
                                              (lambda (_hd108124_ _r108125_)
                                                (let* ((_hd108126108133_
                                                        _hd108124_)
                                                       (_E108128108137_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108126108133_)))
               (_K108129108143_
                (lambda (_k108140_ _id108141_)
                  (let ((__tmp114155
                         (let ((__tmp114156
                                (let ((__tmp114157
                                       (let ((__tmp114158
                                              (let ((__tmp114159
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108140_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108122_
                                                      __tmp114159))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114158))))
                                  (declare (not safe))
                                  (cons __tmp114157 '()))))
                           (declare (not safe))
                           (cons _id108141_ __tmp114156))))
                    (declare (not safe))
                    (cons __tmp114155 _r108125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108126108133_))
                                                      (let ((_hd108130108146_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108126108133_)))
                    (_tl108131108148_
                     (let () (declare (not safe)) (##cdr _hd108126108133_))))
                (let* ((_id108151_ _hd108130108146_)
                       (_k108153_ _tl108131108148_))
                  (declare (not safe))
                  (_K108129108143_ _k108153_ _id108151_)))
              (let () (declare (not safe)) (_E108128108137_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114154
                                                 _bind108095_
                                                 _init108120_))))
                                  (declare (not safe))
                                  (_lp108091_
                                   _rest108119_
                                   __tmp114160
                                   __tmp114153)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108096108108_))
                            (let ((_hd108101108158_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108096108108_)))
                                  (_tl108102108160_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108096108108_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108101108158_))
                                  (let ((_hd108103108163_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108101108158_)))
                                        (_tl108104108165_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108101108158_))))
                                    (let ((_tmp108168_ _hd108103108163_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108104108165_))
                                          (let ((_hd108105108170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108104108165_)))
                                                (_tl108106108172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108104108165_))))
                                            (let* ((_len108175_
                                                    _hd108105108170_)
                                                   (_init108177_
                                                    _tl108106108172_)
                                                   (_rest108179_
                                                    _tl108102108160_))
                                              (declare (not safe))
                                              (_K108100108155_
                                               _rest108179_
                                               _init108177_
                                               _len108175_
                                               _tmp108168_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108098108116_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108098108116_))))
                            (let ()
                              (declare (not safe))
                              (_else108098108116_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108082_
             _compile-simple108084_
             _compile-values108085_)))))
    (define __compile-letrec-values%
      (lambda (_stx107882_)
        (letrec ((_compile-simple107884_
                  (lambda (_hd-ids108078_ _exprs108079_ _body108080_)
                    (let ((__tmp114165
                           (let ((__tmp114166
                                  (let ((__tmp114168
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108078_)
                                              _exprs108079_))
                                        (__tmp114167
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108080_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114168 __tmp114167))))
                             (declare (not safe))
                             (cons 'letrec __tmp114166))))
                      (declare (not safe))
                      (__SRC__% __tmp114165 _stx107882_))))
                 (_compile-values107885_
                  (lambda (_hd-ids107992_ _exprs107993_ _body107994_)
                    (let _lp107996_ ((_rest107998_ _hd-ids107992_)
                                     (_exprs107999_ _exprs107993_)
                                     (_pre108000_ '())
                                     (_bind108001_ '())
                                     (_post108002_ '()))
                      (let* ((_rest108003108017_ _rest107998_)
                             (_else108006108025_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107886_
                                   _pre108000_
                                   _bind108001_
                                   _post108002_
                                   _body107994_)))))
                        (let ((_K108011108061_
                               (lambda (_rest108058_ _id108059_)
                                 (let ((__tmp114174 (cdr _exprs107999_))
                                       (__tmp114169
                                        (let ((__tmp114170
                                               (let ((__tmp114173
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108059_)))
                                                     (__tmp114171
                                                      (let ((__tmp114172
                                                             (car _exprs107999_)))
                                                        (declare (not safe))
                                                        (cons __tmp114172
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114173
                                                       __tmp114171))))
                                          (declare (not safe))
                                          (cons __tmp114170 _bind108001_))))
                                   (declare (not safe))
                                   (_lp107996_
                                    _rest108058_
                                    __tmp114174
                                    _pre108000_
                                    __tmp114169
                                    _post108002_))))
                              (_K108008108043_
                               (lambda (_rest108029_ _hd108030_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108030_))
                                     (let ((__tmp114202 (cdr _exprs107999_))
                                           (__tmp114195
                                            (let ((__tmp114196
                                                   (let ((__tmp114201
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108030_)))
                                                         (__tmp114197
                                                          (let ((__tmp114198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114199
                                (let ((__tmp114200 (car _exprs107999_)))
                                  (declare (not safe))
                                  (cons __tmp114200 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114199))))
                    (declare (not safe))
                    (cons __tmp114198 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114201
                                                           __tmp114197))))
                                              (declare (not safe))
                                              (cons __tmp114196
                                                    _bind108001_))))
                                       (declare (not safe))
                                       (_lp107996_
                                        _rest108029_
                                        __tmp114202
                                        _pre108000_
                                        __tmp114195
                                        _post108002_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108030_))
                                         (let* ((_len108032_
                                                 (length _hd108030_))
                                                (_tmp108034_
                                                 (let ((__tmp114175 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114175))))
                                           (let ((__tmp114194
                                                  (cdr _exprs107999_))
                                                 (__tmp114187
                                                  (let ((__tmp114188
                                                         (lambda (_id108037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108038_)
                   (if (let () (declare (not safe)) (__AST-e _id108037_))
                       (let ((__tmp114189
                              (let ((__tmp114193
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108037_)))
                                    (__tmp114190
                                     (let ((__tmp114191
                                            (let ((__tmp114192
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114192))))
                                       (declare (not safe))
                                       (cons __tmp114191 '()))))
                                (declare (not safe))
                                (cons __tmp114193 __tmp114190))))
                         (declare (not safe))
                         (cons __tmp114189 _r108038_))
                       _r108038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114188
                                                            _pre108000_
                                                            _hd108030_)))
                                                 (__tmp114183
                                                  (let ((__tmp114184
                                                         (let ((__tmp114185
                                                                (let ((__tmp114186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107999_)))
                          (declare (not safe))
                          (cons __tmp114186 '()))))
                   (declare (not safe))
                   (cons _tmp108034_ __tmp114185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114184
                                                          _bind108001_)))
                                                 (__tmp114176
                                                  (let ((__tmp114177
                                                         (let ((__tmp114178
                                                                (let ((__tmp114179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114181
                                      (lambda (_id108040_ _k108041_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108040_))
                                            (let ((__tmp114182
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108040_))))
                                              (declare (not safe))
                                              (cons __tmp114182 _k108041_))
                                            '#f)))
                                     (__tmp114180
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108032_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114181
                                  _hd108030_
                                  __tmp114180))))
                          (declare (not safe))
                          (cons _len108032_ __tmp114179))))
                   (declare (not safe))
                   (cons _tmp108034_ __tmp114178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114177
                                                          _post108002_))))
                                             (declare (not safe))
                                             (_lp107996_
                                              _rest108029_
                                              __tmp114194
                                              __tmp114187
                                              __tmp114183
                                              __tmp114176)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107882_
                                            _hd108030_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108003108017_))
                              (let ((_tl108013108066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108003108017_)))
                                    (_hd108012108064_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108003108017_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108012108064_))
                                    (let ((_tl108015108071_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108012108064_)))
                                          (_hd108014108069_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108012108064_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108015108071_))
                                          (let ((_id108074_ _hd108014108069_)
                                                (_rest108076_
                                                 _tl108013108066_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108011108061_
                                               _rest108076_
                                               _id108074_)))
                                          (let ((_hd108051_ _hd108012108064_)
                                                (_rest108053_
                                                 _tl108013108066_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108008108043_
                                               _rest108053_
                                               _hd108051_)))))
                                    (let ((_hd108051_ _hd108012108064_)
                                          (_rest108053_ _tl108013108066_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108008108043_
                                         _rest108053_
                                         _hd108051_)))))
                              (let ()
                                (declare (not safe))
                                (_else108006108025_))))))))
                 (_compile-inner107886_
                  (lambda (_pre107987_ _bind107988_ _post107989_ _body107990_)
                    (if (let () (declare (not safe)) (null? _pre107987_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107887_
                           _bind107988_
                           _post107989_
                           _body107990_))
                        (let ((__tmp114203
                               (let ((__tmp114204
                                      (let ((__tmp114207 (reverse _pre107987_))
                                            (__tmp114205
                                             (let ((__tmp114206
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107887_
                                                       _bind107988_
                                                       _post107989_
                                                       _body107990_))))
                                               (declare (not safe))
                                               (cons __tmp114206 '()))))
                                        (declare (not safe))
                                        (cons __tmp114207 __tmp114205))))
                                 (declare (not safe))
                                 (cons 'let __tmp114204))))
                          (declare (not safe))
                          (__SRC__% __tmp114203 _stx107882_)))))
                 (_compile-bind107887_
                  (lambda (_bind107983_ _post107984_ _body107985_)
                    (let ((__tmp114208
                           (let ((__tmp114209
                                  (let ((__tmp114212 (reverse _bind107983_))
                                        (__tmp114210
                                         (let ((__tmp114211
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107888_
                                                   _post107984_
                                                   _body107985_))))
                                           (declare (not safe))
                                           (cons __tmp114211 '()))))
                                    (declare (not safe))
                                    (cons __tmp114212 __tmp114210))))
                             (declare (not safe))
                             (cons 'letrec __tmp114209))))
                      (declare (not safe))
                      (__SRC__% __tmp114208 _stx107882_))))
                 (_compile-post107888_
                  (lambda (_post107890_ _body107891_)
                    (let _lp107893_ ((_rest107895_ _post107890_)
                                     (_check107896_ '())
                                     (_bind107897_ '()))
                      (let* ((_rest107898107910_ _rest107895_)
                             (_else107900107918_
                              (lambda ()
                                (let ((__tmp114213
                                       (let ((__tmp114214
                                              (let ((__tmp114215
                                                     (let ((__tmp114216
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114216 _bind107897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114215
                                                        _check107896_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114214))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114213 _stx107882_))))
                             (_K107902107957_
                              (lambda (_rest107921_
                                       _init107922_
                                       _len107923_
                                       _tmp107924_)
                                (let ((__tmp114225
                                       (let ((__tmp114226
                                              (let ((__tmp114227
                                                     (let ((__tmp114228
                                                            (let ((__tmp114229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107923_ '()))))
                      (declare (not safe))
                      (cons _tmp107924_ __tmp114229))))
               (declare (not safe))
               (cons '__check-values __tmp114228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114227
                                                 _stx107882_))))
                                         (declare (not safe))
                                         (cons __tmp114226 _check107896_)))
                                      (__tmp114217
                                       (let ((__tmp114218
                                              (lambda (_hd107926_ _r107927_)
                                                (let* ((_hd107928107935_
                                                        _hd107926_)
                                                       (_E107930107939_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107928107935_)))
               (_K107931107945_
                (lambda (_k107942_ _id107943_)
                  (let ((__tmp114219
                         (let ((__tmp114220
                                (let ((__tmp114221
                                       (let ((__tmp114222
                                              (let ((__tmp114223
                                                     (let ((__tmp114224
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107924_ __tmp114224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114223))))
                                         (declare (not safe))
                                         (cons __tmp114222 '()))))
                                  (declare (not safe))
                                  (cons _id107943_ __tmp114221))))
                           (declare (not safe))
                           (cons 'set! __tmp114220))))
                    (declare (not safe))
                    (cons __tmp114219 _r107927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107928107935_))
                                                      (let ((_hd107932107948_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107928107935_)))
                    (_tl107933107950_
                     (let () (declare (not safe)) (##cdr _hd107928107935_))))
                (let* ((_id107953_ _hd107932107948_)
                       (_k107955_ _tl107933107950_))
                  (declare (not safe))
                  (_K107931107945_ _k107955_ _id107953_)))
              (let () (declare (not safe)) (_E107930107939_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114218
                                                 _bind107897_
                                                 _init107922_))))
                                  (declare (not safe))
                                  (_lp107893_
                                   _rest107921_
                                   __tmp114225
                                   __tmp114217)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107898107910_))
                            (let ((_hd107903107960_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107898107910_)))
                                  (_tl107904107962_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107898107910_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107903107960_))
                                  (let ((_hd107905107965_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107903107960_)))
                                        (_tl107906107967_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107903107960_))))
                                    (let ((_tmp107970_ _hd107905107965_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107906107967_))
                                          (let ((_hd107907107972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107906107967_)))
                                                (_tl107908107974_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107906107967_))))
                                            (let* ((_len107977_
                                                    _hd107907107972_)
                                                   (_init107979_
                                                    _tl107908107974_)
                                                   (_rest107981_
                                                    _tl107904107962_))
                                              (declare (not safe))
                                              (_K107902107957_
                                               _rest107981_
                                               _init107979_
                                               _len107977_
                                               _tmp107970_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107900107918_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107900107918_))))
                            (let ()
                              (declare (not safe))
                              (_else107900107918_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107882_
             _compile-simple107884_
             _compile-values107885_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107637_)
        (letrec ((_compile-simple107639_
                  (lambda (_hd-ids107878_ _exprs107879_ _body107880_)
                    (let ((__tmp114230
                           (let ((__tmp114231
                                  (let ((__tmp114233
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107878_)
                                              _exprs107879_))
                                        (__tmp114232
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107880_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114233 __tmp114232))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114231))))
                      (declare (not safe))
                      (__SRC__% __tmp114230 _stx107637_))))
                 (_compile-values107640_
                  (lambda (_hd-ids107789_ _exprs107790_ _body107791_)
                    (let _lp107793_ ((_rest107795_ _hd-ids107789_)
                                     (_exprs107796_ _exprs107790_)
                                     (_bind107797_ '())
                                     (_post107798_ '()))
                      (let* ((_rest107799107813_ _rest107795_)
                             (_else107802107821_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107641_
                                   _bind107797_
                                   _post107798_
                                   _body107791_)))))
                        (let ((_K107807107861_
                               (lambda (_rest107856_ _hd107857_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107857_))
                                     (let ((_id107859_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107857_))))
                                       (let ((__tmp114248 (cdr _exprs107796_))
                                             (__tmp114243
                                              (let ((__tmp114244
                                                     (let ((__tmp114245
                                                            (let ((__tmp114246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114247
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114247))))
                      (declare (not safe))
                      (cons __tmp114246 '()))))
               (declare (not safe))
               (cons _id107859_ __tmp114245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114244
                                                      _bind107797_)))
                                             (__tmp114239
                                              (let ((__tmp114240
                                                     (let ((__tmp114241
                                                            (let ((__tmp114242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107796_)))
                      (declare (not safe))
                      (cons __tmp114242 '()))))
               (declare (not safe))
               (cons _id107859_ __tmp114241))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114240
                                                      _post107798_))))
                                         (declare (not safe))
                                         (_lp107793_
                                          _rest107856_
                                          __tmp114248
                                          __tmp114243
                                          __tmp114239)))
                                     (let ((__tmp114238 (cdr _exprs107796_))
                                           (__tmp114234
                                            (let ((__tmp114235
                                                   (let ((__tmp114236
                                                          (let ((__tmp114237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107796_)))
                    (declare (not safe))
                    (cons __tmp114237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114236))))
                                              (declare (not safe))
                                              (cons __tmp114235
                                                    _post107798_))))
                                       (declare (not safe))
                                       (_lp107793_
                                        _rest107856_
                                        __tmp114238
                                        _bind107797_
                                        __tmp114234)))))
                              (_K107804107841_
                               (lambda (_rest107825_ _hd107826_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107826_))
                                     (let ((_id107828_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107826_))))
                                       (let ((__tmp114284 (cdr _exprs107796_))
                                             (__tmp114279
                                              (let ((__tmp114280
                                                     (let ((__tmp114281
                                                            (let ((__tmp114282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114283
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114283))))
                      (declare (not safe))
                      (cons __tmp114282 '()))))
               (declare (not safe))
               (cons _id107828_ __tmp114281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114280
                                                      _bind107797_)))
                                             (__tmp114273
                                              (let ((__tmp114274
                                                     (let ((__tmp114275
                                                            (let ((__tmp114276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114277
                                  (let ((__tmp114278 (car _exprs107796_)))
                                    (declare (not safe))
                                    (cons __tmp114278 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114277))))
                      (declare (not safe))
                      (cons __tmp114276 '()))))
               (declare (not safe))
               (cons _id107828_ __tmp114275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114274
                                                      _post107798_))))
                                         (declare (not safe))
                                         (_lp107793_
                                          _rest107825_
                                          __tmp114284
                                          __tmp114279
                                          __tmp114273)))
                                     (if (let ((__tmp114272
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107826_))))
                                           (declare (not safe))
                                           (not __tmp114272))
                                         (let ((__tmp114271
                                                (cdr _exprs107796_))
                                               (__tmp114267
                                                (let ((__tmp114268
                                                       (let ((__tmp114269
                                                              (let ((__tmp114270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107796_)))
                        (declare (not safe))
                        (cons __tmp114270 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114268
                                                        _post107798_))))
                                           (declare (not safe))
                                           (_lp107793_
                                            _rest107825_
                                            __tmp114271
                                            _bind107797_
                                            __tmp114267))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107826_))
                                             (let* ((_len107830_
                                                     (length _hd107826_))
                                                    (_tmp107832_
                                                     (let ((__tmp114249
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114249))))
                                               (let ((__tmp114266
                                                      (cdr _exprs107796_))
                                                     (__tmp114259
                                                      (let ((__tmp114260
                                                             (lambda (_id107835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107836_)
                       (if (let () (declare (not safe)) (__AST-e _id107835_))
                           (let ((__tmp114261
                                  (let ((__tmp114265
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107835_)))
                                        (__tmp114262
                                         (let ((__tmp114263
                                                (let ((__tmp114264
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114264))))
                                           (declare (not safe))
                                           (cons __tmp114263 '()))))
                                    (declare (not safe))
                                    (cons __tmp114265 __tmp114262))))
                             (declare (not safe))
                             (cons __tmp114261 _r107836_))
                           _r107836_))))
                (declare (not safe))
                (foldl1 __tmp114260 _bind107797_ _hd107826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114250
                                                      (let ((__tmp114251
                                                             (let ((__tmp114252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114258 (car _exprs107796_))
                                  (__tmp114253
                                   (let ((__tmp114254
                                          (let ((__tmp114256
                                                 (lambda (_id107838_ _k107839_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107838_))
                                                       (let ((__tmp114257
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107838_))))
                 (declare (not safe))
                 (cons __tmp114257 _k107839_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114255
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107830_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114256
                                             _hd107826_
                                             __tmp114255))))
                                     (declare (not safe))
                                     (cons _len107830_ __tmp114254))))
                              (declare (not safe))
                              (cons __tmp114258 __tmp114253))))
                       (declare (not safe))
                       (cons _tmp107832_ __tmp114252))))
                (declare (not safe))
                (cons __tmp114251 _post107798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107793_
                                                  _rest107825_
                                                  __tmp114266
                                                  __tmp114259
                                                  __tmp114250)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107637_
                                                _hd107826_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107799107813_))
                              (let ((_tl107809107866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107799107813_)))
                                    (_hd107808107864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107799107813_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107808107864_))
                                    (let ((_tl107811107871_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107808107864_)))
                                          (_hd107810107869_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107808107864_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107811107871_))
                                          (let ((_hd107874_ _hd107810107869_)
                                                (_rest107876_
                                                 _tl107809107866_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107807107861_
                                               _rest107876_
                                               _hd107874_)))
                                          (let ((_hd107849_ _hd107808107864_)
                                                (_rest107851_
                                                 _tl107809107866_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107804107841_
                                               _rest107851_
                                               _hd107849_)))))
                                    (let ((_hd107849_ _hd107808107864_)
                                          (_rest107851_ _tl107809107866_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107804107841_
                                         _rest107851_
                                         _hd107849_)))))
                              (let ()
                                (declare (not safe))
                                (_else107802107821_))))))))
                 (_compile-bind107641_
                  (lambda (_bind107785_ _post107786_ _body107787_)
                    (let ((__tmp114285
                           (let ((__tmp114286
                                  (let ((__tmp114289 (reverse _bind107785_))
                                        (__tmp114287
                                         (let ((__tmp114288
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107642_
                                                   _post107786_
                                                   _body107787_))))
                                           (declare (not safe))
                                           (cons __tmp114288 '()))))
                                    (declare (not safe))
                                    (cons __tmp114289 __tmp114287))))
                             (declare (not safe))
                             (cons 'let __tmp114286))))
                      (declare (not safe))
                      (__SRC__% __tmp114285 _stx107637_))))
                 (_compile-post107642_
                  (lambda (_post107644_ _body107645_)
                    (let ((__tmp114290
                           (let ((__tmp114291
                                  (let ((__tmp114292
                                         (let ((__tmp114294
                                                (lambda (_hd107647_ _r107648_)
                                                  (let* ((_hd107649107672_
                                                          _hd107647_)
                                                         (_E107653107676_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107649107672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107666107770_
                                                           (lambda (_expr107768_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107768_ _r107648_))))
                  (_K107661107748_
                   (lambda (_expr107745_ _id107746_)
                     (let ((__tmp114295
                            (let ((__tmp114296
                                   (let ((__tmp114297
                                          (let ((__tmp114298
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107745_ '()))))
                                            (declare (not safe))
                                            (cons _id107746_ __tmp114298))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114297))))
                              (declare (not safe))
                              (__SRC__% __tmp114296 _stx107637_))))
                       (declare (not safe))
                       (cons __tmp114295 _r107648_))))
                  (_K107654107715_
                   (lambda (_init107680_ _len107681_ _expr107682_ _tmp107683_)
                     (let ((__tmp114299
                            (let ((__tmp114300
                                   (let ((__tmp114301
                                          (let ((__tmp114315
                                                 (let ((__tmp114316
                                                        (let ((__tmp114317
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107682_ '()))))
                  (declare (not safe))
                  (cons _tmp107683_ __tmp114317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114316 '())))
                                                (__tmp114302
                                                 (let ((__tmp114311
                                                        (let ((__tmp114312
                                                               (let ((__tmp114313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114314
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107681_ '()))))
                                (declare (not safe))
                                (cons _tmp107683_ __tmp114314))))
                         (declare (not safe))
                         (cons '__check-values __tmp114313))))
                  (declare (not safe))
                  (__SRC__% __tmp114312 _stx107637_)))
               (__tmp114303
                (let ((__tmp114304
                       (map (lambda (_hd107685_)
                              (let* ((_hd107686107693_ _hd107685_)
                                     (_E107688107697_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107686107693_)))
                                     (_K107689107703_
                                      (lambda (_k107700_ _id107701_)
                                        (let ((__tmp114305
                                               (let ((__tmp114306
                                                      (let ((__tmp114307
                                                             (let ((__tmp114308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114309
                                   (let ((__tmp114310
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107700_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107683_ __tmp114310))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114309))))
                       (declare (not safe))
                       (cons __tmp114308 '()))))
                (declare (not safe))
                (cons _id107701_ __tmp114307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114306))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114305
                                           _stx107637_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107686107693_))
                                    (let ((_hd107690107706_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107686107693_)))
                                          (_tl107691107708_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107686107693_))))
                                      (let* ((_id107711_ _hd107690107706_)
                                             (_k107713_ _tl107691107708_))
                                        (declare (not safe))
                                        (_K107689107703_
                                         _k107713_
                                         _id107711_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107688107697_)))))
                            _init107680_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114311
                                                         __tmp114303))))
                                            (declare (not safe))
                                            (cons __tmp114315 __tmp114302))))
                                     (declare (not safe))
                                     (cons 'let __tmp114301))))
                              (declare (not safe))
                              (__SRC__% __tmp114300 _stx107637_))))
                       (declare (not safe))
                       (cons __tmp114299 _r107648_)))))
              (if (let () (declare (not safe)) (##pair? _hd107649107672_))
                  (let ((_tl107668107775_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107649107672_)))
                        (_hd107667107773_
                         (let ()
                           (declare (not safe))
                           (##car _hd107649107672_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107667107773_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107668107775_))
                            (let ((_tl107670107780_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107668107775_)))
                                  (_hd107669107778_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107668107775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107670107780_))
                                  (let ((_expr107783_ _hd107669107778_))
                                    (declare (not safe))
                                    (_K107666107770_ _expr107783_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107670107780_))
                                      (let ((_tl107660107734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107670107780_)))
                                            (_hd107659107732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107670107780_))))
                                        (let ((_tmp107723_ _hd107667107773_)
                                              (_expr107730_ _hd107669107778_)
                                              (_len107737_ _hd107659107732_)
                                              (_init107739_ _tl107660107734_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107654107715_
                                             _init107739_
                                             _len107737_
                                             _expr107730_
                                             _tmp107723_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107653107676_)))))
                            (let () (declare (not safe)) (_E107653107676_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107668107775_))
                            (let ((_tl107665107760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107668107775_)))
                                  (_hd107664107758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107668107775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107665107760_))
                                  (let ((_id107756_ _hd107667107773_)
                                        (_expr107763_ _hd107664107758_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107661107748_
                                       _expr107763_
                                       _id107756_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107665107760_))
                                      (let ((_tl107660107734_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107665107760_)))
                                            (_hd107659107732_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107665107760_))))
                                        (let ((_tmp107723_ _hd107667107773_)
                                              (_expr107730_ _hd107664107758_)
                                              (_len107737_ _hd107659107732_)
                                              (_init107739_ _tl107660107734_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107654107715_
                                             _init107739_
                                             _len107737_
                                             _expr107730_
                                             _tmp107723_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107653107676_)))))
                            (let () (declare (not safe)) (_E107653107676_)))))
                  (let () (declare (not safe)) (_E107653107676_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114293
                                                (list _body107645_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114294
                                                   __tmp114293
                                                   _post107644_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114292))))
                             (declare (not safe))
                             (cons 'begin __tmp114291))))
                      (declare (not safe))
                      (__SRC__% __tmp114290 _stx107637_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107637_
             _compile-simple107639_
             _compile-values107640_)))))
    (define __compile-call%
      (lambda (_stx107597_)
        (let* ((_$e107599_ _stx107597_)
               (_$E107601107610_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107599_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107599_))
              (let* ((_$tgt107602107613_
                      (let () (declare (not safe)) (__AST-e _$e107599_)))
                     (_$hd107603107616_
                      (let () (declare (not safe)) (##car _$tgt107602107613_)))
                     (_$tl107604107619_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107602107613_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107604107619_))
                    (let* ((_$tgt107605107623_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107604107619_)))
                           (_$hd107606107626_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107605107623_)))
                           (_$tl107607107629_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107605107623_))))
                      (let* ((_rator107633_ _$hd107606107626_)
                             (_rands107635_ _$tl107607107629_)
                             (__tmp114318
                              (let ((__tmp114320
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107633_)))
                                    (__tmp114319
                                     (map __compile _rands107635_)))
                                (declare (not safe))
                                (cons __tmp114320 __tmp114319))))
                        (declare (not safe))
                        (__SRC__% __tmp114318 _stx107597_)))
                    (let () (declare (not safe)) (_$E107601107610_))))
              (let () (declare (not safe)) (_$E107601107610_))))))
    (define __compile-ref%
      (lambda (_stx107559_)
        (let* ((_$e107561_ _stx107559_)
               (_$E107563107572_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107561_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107561_))
              (let* ((_$tgt107564107575_
                      (let () (declare (not safe)) (__AST-e _$e107561_)))
                     (_$hd107565107578_
                      (let () (declare (not safe)) (##car _$tgt107564107575_)))
                     (_$tl107566107581_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107564107575_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107566107581_))
                    (let* ((_$tgt107567107585_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107566107581_)))
                           (_$hd107568107588_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107567107585_)))
                           (_$tl107569107591_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107567107585_))))
                      (let ((_id107595_ _$hd107568107588_))
                        (if (let ((__tmp114321
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107569107591_))))
                              (declare (not safe))
                              (equal? __tmp114321 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107595_ _stx107559_))
                            (let () (declare (not safe)) (_$E107563107572_)))))
                    (let () (declare (not safe)) (_$E107563107572_))))
              (let () (declare (not safe)) (_$E107563107572_))))))
    (define __compile-setq%
      (lambda (_stx107506_)
        (let* ((_$e107508_ _stx107506_)
               (_$E107510107522_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107508_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107508_))
              (let* ((_$tgt107511107525_
                      (let () (declare (not safe)) (__AST-e _$e107508_)))
                     (_$hd107512107528_
                      (let () (declare (not safe)) (##car _$tgt107511107525_)))
                     (_$tl107513107531_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107511107525_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107513107531_))
                    (let* ((_$tgt107514107535_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107513107531_)))
                           (_$hd107515107538_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107514107535_)))
                           (_$tl107516107541_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107514107535_))))
                      (let ((_id107545_ _$hd107515107538_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107516107541_))
                            (let* ((_$tgt107517107547_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107516107541_)))
                                   (_$hd107518107550_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107517107547_)))
                                   (_$tl107519107553_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107517107547_))))
                              (let ((_expr107557_ _$hd107518107550_))
                                (if (let ((__tmp114327
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107519107553_))))
                                      (declare (not safe))
                                      (equal? __tmp114327 '()))
                                    (let ((__tmp114322
                                           (let ((__tmp114323
                                                  (let ((__tmp114326
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107545_
                                                            _stx107506_)))
                                                        (__tmp114324
                                                         (let ((__tmp114325
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107557_))))
                   (declare (not safe))
                   (cons __tmp114325 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114326
                                                          __tmp114324))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114323))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114322 _stx107506_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107510107522_)))))
                            (let () (declare (not safe)) (_$E107510107522_)))))
                    (let () (declare (not safe)) (_$E107510107522_))))
              (let () (declare (not safe)) (_$E107510107522_))))))
    (define __compile-if%
      (lambda (_stx107438_)
        (let* ((_$e107440_ _stx107438_)
               (_$E107442107457_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107440_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107440_))
              (let* ((_$tgt107443107460_
                      (let () (declare (not safe)) (__AST-e _$e107440_)))
                     (_$hd107444107463_
                      (let () (declare (not safe)) (##car _$tgt107443107460_)))
                     (_$tl107445107466_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107443107460_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107445107466_))
                    (let* ((_$tgt107446107470_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107445107466_)))
                           (_$hd107447107473_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107446107470_)))
                           (_$tl107448107476_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107446107470_))))
                      (let ((_p107480_ _$hd107447107473_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107448107476_))
                            (let* ((_$tgt107449107482_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107448107476_)))
                                   (_$hd107450107485_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107449107482_)))
                                   (_$tl107451107488_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107449107482_))))
                              (let ((_t107492_ _$hd107450107485_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107451107488_))
                                    (let* ((_$tgt107452107494_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107451107488_)))
                                           (_$hd107453107497_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107452107494_)))
                                           (_$tl107454107500_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107452107494_))))
                                      (let ((_f107504_ _$hd107453107497_))
                                        (if (let ((__tmp114335
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107454107500_))))
                                              (declare (not safe))
                                              (equal? __tmp114335 '()))
                                            (let ((__tmp114328
                                                   (let ((__tmp114329
                                                          (let ((__tmp114334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107480_)))
                        (__tmp114330
                         (let ((__tmp114333
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107492_)))
                               (__tmp114331
                                (let ((__tmp114332
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107504_))))
                                  (declare (not safe))
                                  (cons __tmp114332 '()))))
                           (declare (not safe))
                           (cons __tmp114333 __tmp114331))))
                    (declare (not safe))
                    (cons __tmp114334 __tmp114330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114329))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114328
                                               _stx107438_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107442107457_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107442107457_)))))
                            (let () (declare (not safe)) (_$E107442107457_)))))
                    (let () (declare (not safe)) (_$E107442107457_))))
              (let () (declare (not safe)) (_$E107442107457_))))))
    (define __compile-quote%
      (lambda (_stx107400_)
        (let* ((_$e107402_ _stx107400_)
               (_$E107404107413_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107402_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107402_))
              (let* ((_$tgt107405107416_
                      (let () (declare (not safe)) (__AST-e _$e107402_)))
                     (_$hd107406107419_
                      (let () (declare (not safe)) (##car _$tgt107405107416_)))
                     (_$tl107407107422_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107405107416_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107407107422_))
                    (let* ((_$tgt107408107426_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107407107422_)))
                           (_$hd107409107429_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107408107426_)))
                           (_$tl107410107432_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107408107426_))))
                      (let ((_e107436_ _$hd107409107429_))
                        (if (let ((__tmp114339
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107410107432_))))
                              (declare (not safe))
                              (equal? __tmp114339 '()))
                            (let ((__tmp114336
                                   (let ((__tmp114337
                                          (let ((__tmp114338
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107436_))))
                                            (declare (not safe))
                                            (cons __tmp114338 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114337))))
                              (declare (not safe))
                              (__SRC__% __tmp114336 _stx107400_))
                            (let () (declare (not safe)) (_$E107404107413_)))))
                    (let () (declare (not safe)) (_$E107404107413_))))
              (let () (declare (not safe)) (_$E107404107413_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107362_)
        (let* ((_$e107364_ _stx107362_)
               (_$E107366107375_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107364_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107364_))
              (let* ((_$tgt107367107378_
                      (let () (declare (not safe)) (__AST-e _$e107364_)))
                     (_$hd107368107381_
                      (let () (declare (not safe)) (##car _$tgt107367107378_)))
                     (_$tl107369107384_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107367107378_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107369107384_))
                    (let* ((_$tgt107370107388_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107369107384_)))
                           (_$hd107371107391_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107370107388_)))
                           (_$tl107372107394_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107370107388_))))
                      (let ((_e107398_ _$hd107371107391_))
                        (if (let ((__tmp114342
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107372107394_))))
                              (declare (not safe))
                              (equal? __tmp114342 '()))
                            (let ((__tmp114340
                                   (let ((__tmp114341
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107398_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114341))))
                              (declare (not safe))
                              (__SRC__% __tmp114340 _stx107362_))
                            (let () (declare (not safe)) (_$E107366107375_)))))
                    (let () (declare (not safe)) (_$E107366107375_))))
              (let () (declare (not safe)) (_$E107366107375_))))))
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
