(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707844655)
  (begin
    (define __context::t
      (let ((__tmp116110 (list))
            (__tmp116108
             (let ((__tmp116109
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116109 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp116110
         '(t ns super table)
         __tmp116108
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args111344_ (apply make-instance __context::t _$args111344_)))
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
      (let ((__tmp116113 (list))
            (__tmp116111
             (let ((__tmp116112
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116112 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp116113
         '(id)
         __tmp116111
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args111341_ (apply make-instance __runtime::t _$args111341_)))
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
      (let ((__tmp116116 (list))
            (__tmp116114
             (let ((__tmp116115
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116115 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116116
         '(e id)
         __tmp116114
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args111338_ (apply make-instance __syntax::t _$args111338_)))
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
      (let ((__tmp116119 (list __syntax::t))
            (__tmp116117
             (let ((__tmp116118
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116118 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp116119
         '()
         __tmp116117
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args111335_ (apply make-instance __macro::t _$args111335_)))
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
      (let ((__tmp116122 (list __macro::t))
            (__tmp116120
             (let ((__tmp116121
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116121 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp116122
         '()
         __tmp116120
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args111332_
        (apply make-instance __special-form::t _$args111332_)))
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
      (let ((__tmp116125 (list __syntax::t))
            (__tmp116123
             (let ((__tmp116124
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116124 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116125
         '()
         __tmp116123
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args111329_
        (apply make-instance __core-form::t _$args111329_)))
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
      (let ((__tmp116128 (list __core-form::t))
            (__tmp116126
             (let ((__tmp116127
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116127 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116128
         '()
         __tmp116126
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args111326_
        (apply make-instance __core-expression::t _$args111326_)))
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
      (let ((__tmp116131 (list __core-form::t))
            (__tmp116129
             (let ((__tmp116130
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116130 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116131
         '()
         __tmp116129
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args111323_
        (apply make-instance __core-special-form::t _$args111323_)))
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
      (let ((__tmp116134 (list __syntax::t))
            (__tmp116132
             (let ((__tmp116133
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116133 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp116134
         '()
         __tmp116132
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args111320_
        (apply make-instance __struct-info::t _$args111320_)))
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
      (let ((__tmp116137 (list __syntax::t))
            (__tmp116135
             (let ((__tmp116136
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116136 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp116137
         '()
         __tmp116135
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args111317_ (apply make-instance __feature::t _$args111317_)))
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
      (let ((__tmp116140 (list __context::t))
            (__tmp116138
             (let ((__tmp116139
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116139 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp116140
         '(id path import export)
         __tmp116138
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args111314_ (apply make-instance __module::t _$args111314_)))
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
      (let ((__tmp116142
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp116141
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp116142 __tmp116141)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id111289_ _ctx111290_)
        (if _ctx111290_
            (let ((_id111292_
                   (let () (declare (not safe)) (__AST-e _id111289_))))
              (let _lp111294_ ((_ctx111296_ _ctx111290_))
                (let ((_$e111298_
                       (table-ref
                        (##structure-ref _ctx111296_ '4 __context::t '#f)
                        _id111292_
                        '#f)))
                  (if _$e111298_
                      (values _$e111298_)
                      (let ((_$e111301_
                             (##structure-ref
                              _ctx111296_
                              '3
                              __context::t
                              '#f)))
                        (if _$e111301_
                            (let ()
                              (declare (not safe))
                              (_lp111294_ _$e111301_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id111307_)
        (let ((_ctx111309_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id111307_ _ctx111309_))))
    (define __core-resolve
      (lambda _g116144_
        (let ((_g116143_ (let () (declare (not safe)) (##length _g116144_))))
          (cond ((let () (declare (not safe)) (##fx= _g116143_ 1))
                 (apply (lambda (_id111307_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id111307_)))
                        _g116144_))
                ((let () (declare (not safe)) (##fx= _g116143_ 2))
                 (apply (lambda (_id111311_ _ctx111312_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id111311_ _ctx111312_)))
                        _g116144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g116144_))))))
    (define __core-bound-id?__%
      (lambda (_id111272_ _is?111273_)
        (let ((_$e111275_
               (let () (declare (not safe)) (__core-resolve__0 _id111272_))))
          (if _$e111275_ (_is?111273_ _$e111275_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id111281_)
        (let ((_is?111283_ true))
          (declare (not safe))
          (__core-bound-id?__% _id111281_ _is?111283_))))
    (define __core-bound-id?
      (lambda _g116146_
        (let ((_g116145_ (let () (declare (not safe)) (##length _g116146_))))
          (cond ((let () (declare (not safe)) (##fx= _g116145_ 1))
                 (apply (lambda (_id111281_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id111281_)))
                        _g116146_))
                ((let () (declare (not safe)) (##fx= _g116145_ 2))
                 (apply (lambda (_id111285_ _is?111286_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id111285_ _is?111286_)))
                        _g116146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116146_))))))
    (define __core-bind-runtime!__%
      (lambda (_id111255_ _eid111256_ _ctx111257_)
        (if _eid111256_
            (let ((__tmp116149
                   (##structure-ref _ctx111257_ '4 __context::t '#f))
                  (__tmp116148
                   (let () (declare (not safe)) (__AST-e _id111255_)))
                  (__tmp116147
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid111256_))))
              (declare (not safe))
              (table-set! __tmp116149 __tmp116148 __tmp116147))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id111262_ _eid111263_)
        (let ((_ctx111265_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id111262_ _eid111263_ _ctx111265_))))
    (define __core-bind-runtime!
      (lambda _g116151_
        (let ((_g116150_ (let () (declare (not safe)) (##length _g116151_))))
          (cond ((let () (declare (not safe)) (##fx= _g116150_ 2))
                 (apply (lambda (_id111262_ _eid111263_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id111262_ _eid111263_)))
                        _g116151_))
                ((let () (declare (not safe)) (##fx= _g116150_ 3))
                 (apply (lambda (_id111267_ _eid111268_ _ctx111269_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id111267_
                             _eid111268_
                             _ctx111269_)))
                        _g116151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g116151_))))))
    (define __core-bind-syntax!__%
      (lambda (_id111238_ _e111239_ _make111240_)
        (let ((__tmp116152
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111239_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111239_
                   (_make111240_ _e111239_ _id111238_))))
          (declare (not safe))
          (table-set! __*core* _id111238_ __tmp116152))))
    (define __core-bind-syntax!__0
      (lambda (_id111245_ _e111246_)
        (let ((_make111248_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id111245_ _e111246_ _make111248_))))
    (define __core-bind-syntax!
      (lambda _g116154_
        (let ((_g116153_ (let () (declare (not safe)) (##length _g116154_))))
          (cond ((let () (declare (not safe)) (##fx= _g116153_ 2))
                 (apply (lambda (_id111245_ _e111246_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id111245_ _e111246_)))
                        _g116154_))
                ((let () (declare (not safe)) (##fx= _g116153_ 3))
                 (apply (lambda (_id111250_ _e111251_ _make111252_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id111250_
                             _e111251_
                             _make111252_)))
                        _g116154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116154_))))))
    (define __core-bind-macro!
      (lambda (_id111234_ _e111235_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111234_ _e111235_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id111231_ _e111232_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111231_ _e111232_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id111215_ _e111216_ _ctx111217_)
        (let ((__tmp116158 (##structure-ref _ctx111217_ '4 __context::t '#f))
              (__tmp116157 (let () (declare (not safe)) (__AST-e _id111215_)))
              (__tmp116155
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111216_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111216_
                   (let ((__tmp116156
                          (let () (declare (not safe)) (__AST-e _id111215_))))
                     (declare (not safe))
                     (##structure __syntax::t _e111216_ __tmp116156)))))
          (declare (not safe))
          (table-set! __tmp116158 __tmp116157 __tmp116155))))
    (define __core-bind-user-syntax!__0
      (lambda (_id111222_ _e111223_)
        (let ((_ctx111225_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id111222_ _e111223_ _ctx111225_))))
    (define __core-bind-user-syntax!
      (lambda _g116160_
        (let ((_g116159_ (let () (declare (not safe)) (##length _g116160_))))
          (cond ((let () (declare (not safe)) (##fx= _g116159_ 2))
                 (apply (lambda (_id111222_ _e111223_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id111222_
                             _e111223_)))
                        _g116160_))
                ((let () (declare (not safe)) (##fx= _g116159_ 3))
                 (apply (lambda (_id111227_ _e111228_ _ctx111229_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id111227_
                             _e111228_
                             _ctx111229_)))
                        _g116160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g116160_))))))
    (define make-__runtime-id__%
      (lambda (_id111196_ _ctx111197_)
        (let ((_id111199_ (let () (declare (not safe)) (__AST-e _id111196_))))
          (if (let () (declare (not safe)) (eq? _id111199_ '_))
              '#f
              (if (uninterned-symbol? _id111199_)
                  (gensym _id111199_)
                  (if (let () (declare (not safe)) (symbol? _id111199_))
                      (let ((_$e111201_
                             (##structure-ref
                              _ctx111197_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e111201_))
                            (gensym _id111199_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e111201_))
                                (let ((__tmp116161
                                       (##structure-ref
                                        _ctx111197_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp116161 '"#" _id111199_))
                                _id111199_)))
                      (error '"Illegal runtime identifier" _id111199_)))))))
    (define make-__runtime-id__0
      (lambda (_id111207_)
        (let ((_ctx111209_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id111207_ _ctx111209_))))
    (define make-__runtime-id
      (lambda _g116163_
        (let ((_g116162_ (let () (declare (not safe)) (##length _g116163_))))
          (cond ((let () (declare (not safe)) (##fx= _g116162_ 1))
                 (apply (lambda (_id111207_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id111207_)))
                        _g116163_))
                ((let () (declare (not safe)) (##fx= _g116162_ 2))
                 (apply (lambda (_id111211_ _ctx111212_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id111211_ _ctx111212_)))
                        _g116163_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g116163_))))))
    (define make-__context-local__%
      (lambda (_super111185_)
        (let ((__tmp116164
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super111185_ __tmp116164))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super111191_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super111191_))))
    (define make-__context-local
      (lambda _g116166_
        (let ((_g116165_ (let () (declare (not safe)) (##length _g116166_))))
          (cond ((let () (declare (not safe)) (##fx= _g116165_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g116166_))
                ((let () (declare (not safe)) (##fx= _g116165_ 1))
                 (apply (lambda (_super111193_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super111193_)))
                        _g116166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g116166_))))))
    (define make-__context-module__%
      (lambda (_id111165_ _ns111166_ _path111167_ _super111168_)
        (let ((__tmp116167
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns111166_
           _super111168_
           __tmp116167
           _id111165_
           _path111167_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id111173_ _ns111174_ _path111175_)
        (let ((_super111177_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id111173_
           _ns111174_
           _path111175_
           _super111177_))))
    (define make-__context-module
      (lambda _g116169_
        (let ((_g116168_ (let () (declare (not safe)) (##length _g116169_))))
          (cond ((let () (declare (not safe)) (##fx= _g116168_ 3))
                 (apply (lambda (_id111173_ _ns111174_ _path111175_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id111173_
                             _ns111174_
                             _path111175_)))
                        _g116169_))
                ((let () (declare (not safe)) (##fx= _g116168_ 4))
                 (apply (lambda (_id111179_
                                 _ns111180_
                                 _path111181_
                                 _super111182_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id111179_
                             _ns111180_
                             _path111181_
                             _super111182_)))
                        _g116169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g116169_))))))
    (define __SRC__%
      (lambda (_e111148_ _src-stx111149_)
        (if (or (let () (declare (not safe)) (pair? _e111148_))
                (let () (declare (not safe)) (symbol? _e111148_)))
            (let ((__tmp116173
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx111149_
                          'gerbil#AST::t))
                       (let ((__tmp116174
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx111149_))))
                         (declare (not safe))
                         (__locat __tmp116174))
                       '#f)))
              (declare (not safe))
              (##make-source _e111148_ __tmp116173))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e111148_ 'gerbil#AST::t))
                (let ((__tmp116172
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e111148_ '1 AST::t '#f)))
                      (__tmp116170
                       (let ((__tmp116171
                              (let ()
                                (declare (not safe))
                                (__AST-source _e111148_))))
                         (declare (not safe))
                         (__locat __tmp116171))))
                  (declare (not safe))
                  (##make-source __tmp116172 __tmp116170))
                (error '"BUG! Cannot sourcify object" _e111148_)))))
    (define __SRC__0
      (lambda (_e111157_)
        (let ((_src-stx111159_ '#f))
          (declare (not safe))
          (__SRC__% _e111157_ _src-stx111159_))))
    (define __SRC
      (lambda _g116176_
        (let ((_g116175_ (let () (declare (not safe)) (##length _g116176_))))
          (cond ((let () (declare (not safe)) (##fx= _g116175_ 1))
                 (apply (lambda (_e111157_)
                          (let () (declare (not safe)) (__SRC__0 _e111157_)))
                        _g116176_))
                ((let () (declare (not safe)) (##fx= _g116175_ 2))
                 (apply (lambda (_e111161_ _src-stx111162_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e111161_ _src-stx111162_)))
                        _g116176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116176_))))))
    (define __locat
      (lambda (_loc111145_)
        (if (let () (declare (not safe)) (##locat? _loc111145_))
            _loc111145_
            '#f)))
    (define __check-values
      (lambda (_obj111140_ _k111141_)
        (let ((_count111143_
               (if (let () (declare (not safe)) (##values? _obj111140_))
                   (let () (declare (not safe)) (##vector-length _obj111140_))
                   '1)))
          (if (fx= _count111143_ _k111141_)
              '#!void
              (error (if (fx< _count111143_ _k111141_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj111140_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj111140_))
                         _obj111140_)
                     _k111141_)))))
    (define __compile
      (lambda (_stx111110_)
        (let* ((_$e111112_ _stx111110_)
               (_$E111114111120_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111112_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111112_))
              (let* ((_$tgt111115111123_
                      (let () (declare (not safe)) (__AST-e _$e111112_)))
                     (_$hd111116111126_
                      (let () (declare (not safe)) (##car _$tgt111115111123_)))
                     (_$tl111117111129_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111115111123_))))
                (let* ((_form111133_ _$hd111116111126_)
                       (_$e111135_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form111133_))))
                  (if _$e111135_
                      ((lambda (_bind111138_)
                         ((##structure-ref _bind111138_ '1 __syntax::t '#f)
                          _stx111110_))
                       _$e111135_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx111110_
                         _form111133_)))))
              (let () (declare (not safe)) (_$E111114111120_))))))
    (define __compile-error__%
      (lambda (_stx111097_ _detail111098_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx111097_
           _detail111098_))))
    (define __compile-error__0
      (lambda (_stx111103_)
        (let ((_detail111105_ '#f))
          (declare (not safe))
          (__compile-error__% _stx111103_ _detail111105_))))
    (define __compile-error
      (lambda _g116178_
        (let ((_g116177_ (let () (declare (not safe)) (##length _g116178_))))
          (cond ((let () (declare (not safe)) (##fx= _g116177_ 1))
                 (apply (lambda (_stx111103_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx111103_)))
                        _g116178_))
                ((let () (declare (not safe)) (##fx= _g116177_ 2))
                 (apply (lambda (_stx111107_ _detail111108_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx111107_ _detail111108_)))
                        _g116178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116178_))))))
    (define __compile-ignore%
      (lambda (_stx111094_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx111094_))))
    (define __compile-begin%
      (lambda (_stx111069_)
        (let* ((_$e111071_ _stx111069_)
               (_$E111073111079_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111071_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111071_))
              (let* ((_$tgt111074111082_
                      (let () (declare (not safe)) (__AST-e _$e111071_)))
                     (_$hd111075111085_
                      (let () (declare (not safe)) (##car _$tgt111074111082_)))
                     (_$tl111076111088_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111074111082_))))
                (let* ((_body111092_ _$tl111076111088_)
                       (__tmp116179
                        (let ((__tmp116180 (map __compile _body111092_)))
                          (declare (not safe))
                          (cons 'begin __tmp116180))))
                  (declare (not safe))
                  (__SRC__% __tmp116179 _stx111069_)))
              (let () (declare (not safe)) (_$E111073111079_))))))
    (define __compile-begin-foreign%
      (lambda (_stx111044_)
        (let* ((_$e111046_ _stx111044_)
               (_$E111048111054_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111046_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111046_))
              (let* ((_$tgt111049111057_
                      (let () (declare (not safe)) (__AST-e _$e111046_)))
                     (_$hd111050111060_
                      (let () (declare (not safe)) (##car _$tgt111049111057_)))
                     (_$tl111051111063_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111049111057_))))
                (let* ((_body111067_ _$tl111051111063_)
                       (__tmp116181
                        (let ((__tmp116182
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body111067_))))
                          (declare (not safe))
                          (cons 'begin __tmp116182))))
                  (declare (not safe))
                  (__SRC__% __tmp116181 _stx111044_)))
              (let () (declare (not safe)) (_$E111048111054_))))))
    (define __compile-import%
      (lambda (_stx111019_)
        (let* ((_$e111021_ _stx111019_)
               (_$E111023111029_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111021_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111021_))
              (let* ((_$tgt111024111032_
                      (let () (declare (not safe)) (__AST-e _$e111021_)))
                     (_$hd111025111035_
                      (let () (declare (not safe)) (##car _$tgt111024111032_)))
                     (_$tl111026111038_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111024111032_))))
                (let* ((_body111042_ _$tl111026111038_)
                       (__tmp116183
                        (let ((__tmp116184
                               (let ((__tmp116185
                                      (let ((__tmp116186
                                             (let ()
                                               (declare (not safe))
                                               (cons _body111042_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp116186))))
                                 (declare (not safe))
                                 (cons __tmp116185 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp116184))))
                  (declare (not safe))
                  (__SRC__% __tmp116183 _stx111019_)))
              (let () (declare (not safe)) (_$E111023111029_))))))
    (define __compile-begin-annotation%
      (lambda (_stx110966_)
        (let* ((_$e110968_ _stx110966_)
               (_$E110970110982_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110968_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110968_))
              (let* ((_$tgt110971110985_
                      (let () (declare (not safe)) (__AST-e _$e110968_)))
                     (_$hd110972110988_
                      (let () (declare (not safe)) (##car _$tgt110971110985_)))
                     (_$tl110973110991_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110971110985_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110973110991_))
                    (let* ((_$tgt110974110995_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110973110991_)))
                           (_$hd110975110998_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110974110995_)))
                           (_$tl110976111001_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110974110995_))))
                      (let ((_ann111005_ _$hd110975110998_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110976111001_))
                            (let* ((_$tgt110977111007_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110976111001_)))
                                   (_$hd110978111010_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110977111007_)))
                                   (_$tl110979111013_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110977111007_))))
                              (let ((_expr111017_ _$hd110978111010_))
                                (if (let ((__tmp116187
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110979111013_))))
                                      (declare (not safe))
                                      (equal? __tmp116187 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr111017_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110970110982_)))))
                            (let () (declare (not safe)) (_$E110970110982_)))))
                    (let () (declare (not safe)) (_$E110970110982_))))
              (let () (declare (not safe)) (_$E110970110982_))))))
    (define __compile-define-values%
      (lambda (_stx110857_)
        (let* ((_$e110859_ _stx110857_)
               (_$E110861110873_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110859_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110859_))
              (let* ((_$tgt110862110876_
                      (let () (declare (not safe)) (__AST-e _$e110859_)))
                     (_$hd110863110879_
                      (let () (declare (not safe)) (##car _$tgt110862110876_)))
                     (_$tl110864110882_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110862110876_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110864110882_))
                    (let* ((_$tgt110865110886_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110864110882_)))
                           (_$hd110866110889_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110865110886_)))
                           (_$tl110867110892_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110865110886_))))
                      (let ((_hd110896_ _$hd110866110889_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110867110892_))
                            (let* ((_$tgt110868110898_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110867110892_)))
                                   (_$hd110869110901_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110868110898_)))
                                   (_$tl110870110904_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110868110898_))))
                              (let ((_expr110908_ _$hd110869110901_))
                                (if (let ((__tmp116220
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110870110904_))))
                                      (declare (not safe))
                                      (equal? __tmp116220 '()))
                                    (let* ((_$e110910_ _hd110896_)
                                           (_$E110912110953_
                                            (lambda ()
                                              (let ((_$E110913110938_
                                                     (lambda ()
                                                       (let* ((_$E110914110925_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e110910_))))
                      (_ids110928_ _hd110896_)
                      (_len110930_ (length _ids110928_))
                      (_tmp110932_
                       (let ((__tmp116188 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp116188))))
                 (let ((__tmp116189
                        (let ((__tmp116190
                               (let ((__tmp116207
                                      (let ((__tmp116208
                                             (let ((__tmp116209
                                                    (let ((__tmp116210
                                                           (let ((__tmp116211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr110908_))))
                     (declare (not safe))
                     (cons __tmp116211 '()))))
              (declare (not safe))
              (cons _tmp110932_ __tmp116210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp116209))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116208 _stx110857_)))
                                     (__tmp116191
                                      (let ((__tmp116203
                                             (let ((__tmp116204
                                                    (let ((__tmp116205
                                                           (let ((__tmp116206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len110930_ '()))))
                     (declare (not safe))
                     (cons _tmp110932_ __tmp116206))))
              (declare (not safe))
              (cons '__check-values __tmp116205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp116204
                                                _stx110857_)))
                                            (__tmp116192
                                             (let ((__tmp116193
                                                    (let ((__tmp116195
                                                           (lambda (_id110935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k110936_)
                     (if (let () (declare (not safe)) (__AST-e _id110935_))
                         (let ((__tmp116196
                                (let ((__tmp116197
                                       (let ((__tmp116202
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id110935_)))
                                             (__tmp116198
                                              (let ((__tmp116199
                                                     (let ((__tmp116200
                                                            (let ((__tmp116201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k110936_ '()))))
                      (declare (not safe))
                      (cons _tmp110932_ __tmp116201))))
               (declare (not safe))
               (cons '##vector-ref __tmp116200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116199 '()))))
                                         (declare (not safe))
                                         (cons __tmp116202 __tmp116198))))
                                  (declare (not safe))
                                  (cons 'define __tmp116197))))
                           (declare (not safe))
                           (__SRC__% __tmp116196 _stx110857_))
                         '#f)))
                  (__tmp116194
                   (let () (declare (not safe)) (iota _len110930_))))
              (declare (not safe))
              (filter-map2 __tmp116195 _ids110928_ __tmp116194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp116193))))
                                        (declare (not safe))
                                        (cons __tmp116203 __tmp116192))))
                                 (declare (not safe))
                                 (cons __tmp116207 __tmp116191))))
                          (declare (not safe))
                          (cons 'begin __tmp116190))))
                   (declare (not safe))
                   (__SRC__% __tmp116189 _stx110857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e110910_))
                                                    (let* ((_$tgt110915110941_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e110910_)))
                                                           (_$hd110916110944_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt110915110941_)))
                                                           (_$tl110917110947_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt110915110941_))))
                                                      (let ((_id110951_
                                                             _$hd110916110944_))
                                                        (if (let ((__tmp116217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl110917110947_))))
                      (declare (not safe))
                      (equal? __tmp116217 '()))
                    (let ((__tmp116212
                           (let ((__tmp116213
                                  (let ((__tmp116216
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id110951_)))
                                        (__tmp116214
                                         (let ((__tmp116215
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr110908_))))
                                           (declare (not safe))
                                           (cons __tmp116215 '()))))
                                    (declare (not safe))
                                    (cons __tmp116216 __tmp116214))))
                             (declare (not safe))
                             (cons 'define __tmp116213))))
                      (declare (not safe))
                      (__SRC__% __tmp116212 _stx110857_))
                    (let () (declare (not safe)) (_$E110913110938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110913110938_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e110910_))
                                          (let* ((_$tgt110918110956_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e110910_)))
                                                 (_$hd110919110959_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110918110956_)))
                                                 (_$tl110920110962_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110918110956_))))
                                            (if (let ((__tmp116219
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd110919110959_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116219 '#f))
                                                (if (let ((__tmp116218
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl110920110962_))))
                                                      (declare (not safe))
                                                      (equal? __tmp116218 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr110908_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110912110953_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110912110953_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110912110953_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110861110873_)))))
                            (let () (declare (not safe)) (_$E110861110873_)))))
                    (let () (declare (not safe)) (_$E110861110873_))))
              (let () (declare (not safe)) (_$E110861110873_))))))
    (define __compile-head-id
      (lambda (_e110855_)
        (let ((__tmp116221
               (if (let () (declare (not safe)) (__AST-e _e110855_))
                   _e110855_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp116221))))
    (define __compile-lambda-head
      (lambda (_hd110812_)
        (let _recur110814_ ((_rest110816_ _hd110812_))
          (let* ((_$e110818_ _rest110816_)
                 (_$E110820110838_
                  (lambda ()
                    (let ((_$E110821110835_
                           (lambda ()
                             (let* ((_$E110822110830_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e110818_))))
                                    (_tail110833_ _$e110818_))
                               (declare (not safe))
                               (__compile-head-id _tail110833_)))))
                      (if (let ((__tmp116222
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e110818_))))
                            (declare (not safe))
                            (equal? __tmp116222 '()))
                          '()
                          (let () (declare (not safe)) (_$E110821110835_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110818_))
                (let* ((_$tgt110823110841_
                        (let () (declare (not safe)) (__AST-e _$e110818_)))
                       (_$hd110824110844_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110823110841_)))
                       (_$tl110825110847_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110823110841_))))
                  (let* ((_hd110851_ _$hd110824110844_)
                         (_rest110853_ _$tl110825110847_))
                    (let ((__tmp116224
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd110851_)))
                          (__tmp116223
                           (let ()
                             (declare (not safe))
                             (_recur110814_ _rest110853_))))
                      (declare (not safe))
                      (cons __tmp116224 __tmp116223))))
                (let () (declare (not safe)) (_$E110820110838_)))))))
    (define __compile-lambda%
      (lambda (_stx110759_)
        (let* ((_$e110761_ _stx110759_)
               (_$E110763110775_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110761_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110761_))
              (let* ((_$tgt110764110778_
                      (let () (declare (not safe)) (__AST-e _$e110761_)))
                     (_$hd110765110781_
                      (let () (declare (not safe)) (##car _$tgt110764110778_)))
                     (_$tl110766110784_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110764110778_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110766110784_))
                    (let* ((_$tgt110767110788_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110766110784_)))
                           (_$hd110768110791_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110767110788_)))
                           (_$tl110769110794_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110767110788_))))
                      (let ((_hd110798_ _$hd110768110791_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110769110794_))
                            (let* ((_$tgt110770110800_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110769110794_)))
                                   (_$hd110771110803_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110770110800_)))
                                   (_$tl110772110806_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110770110800_))))
                              (let ((_body110810_ _$hd110771110803_))
                                (if (let ((__tmp116230
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110772110806_))))
                                      (declare (not safe))
                                      (equal? __tmp116230 '()))
                                    (let ((__tmp116225
                                           (let ((__tmp116226
                                                  (let ((__tmp116229
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd110798_)))
                                                        (__tmp116227
                                                         (let ((__tmp116228
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body110810_))))
                   (declare (not safe))
                   (cons __tmp116228 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116229
                                                          __tmp116227))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp116226))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116225 _stx110759_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110763110775_)))))
                            (let () (declare (not safe)) (_$E110763110775_)))))
                    (let () (declare (not safe)) (_$E110763110775_))))
              (let () (declare (not safe)) (_$E110763110775_))))))
    (define __compile-case-lambda%
      (lambda (_stx110551_)
        (letrec ((_variadic?110553_
                  (lambda (_hd110724_)
                    (let* ((_$e110726_ _hd110724_)
                           (_$E110728110744_
                            (lambda ()
                              (let ((_$E110729110741_
                                     (lambda ()
                                       (let ((_$E110730110738_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e110726_)))))
                                         '#t))))
                                (if (let ((__tmp116231
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e110726_))))
                                      (declare (not safe))
                                      (equal? __tmp116231 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E110729110741_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110726_))
                          (let* ((_$tgt110731110747_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110726_)))
                                 (_$hd110732110750_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110731110747_)))
                                 (_$tl110733110753_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110731110747_))))
                            (let ((_rest110757_ _$tl110733110753_))
                              (declare (not safe))
                              (_variadic?110553_ _rest110757_)))
                          (let () (declare (not safe)) (_$E110728110744_))))))
                 (_arity110554_
                  (lambda (_hd110689_)
                    (let _lp110691_ ((_rest110693_ _hd110689_) (_k110694_ '0))
                      (let* ((_$e110696_ _rest110693_)
                             (_$E110698110709_
                              (lambda ()
                                (let ((_$E110699110706_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e110696_)))))
                                  _k110694_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e110696_))
                            (let* ((_$tgt110700110712_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e110696_)))
                                   (_$hd110701110715_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110700110712_)))
                                   (_$tl110702110718_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110700110712_))))
                              (let* ((_rest110722_ _$tl110702110718_)
                                     (__tmp116232
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k110694_ '1))))
                                (declare (not safe))
                                (_lp110691_ _rest110722_ __tmp116232)))
                            (let ()
                              (declare (not safe))
                              (_$E110698110709_)))))))
                 (_generate110555_
                  (lambda (_rest110616_ _args110617_ _len110618_)
                    (let* ((_$e110620_ _rest110616_)
                           (_$E110622110633_
                            (lambda ()
                              (let* ((_$E110623110630_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e110620_))))
                                     (__tmp116233
                                      (let ((__tmp116234
                                             (let ((__tmp116235
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110617_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp116235))))
                                        (declare (not safe))
                                        (cons 'error __tmp116234))))
                                (declare (not safe))
                                (__SRC__% __tmp116233 _stx110551_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110620_))
                          (let* ((_$tgt110624110636_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110620_)))
                                 (_$hd110625110639_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110624110636_)))
                                 (_$tl110626110642_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110624110636_))))
                            (let* ((_clause110646_ _$hd110625110639_)
                                   (_rest110648_ _$tl110626110642_)
                                   (_$e110650_ _clause110646_)
                                   (_$E110652110661_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e110650_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e110650_))
                                  (let* ((_$tgt110653110664_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e110650_)))
                                         (_$hd110654110667_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt110653110664_)))
                                         (_$tl110655110670_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt110653110664_))))
                                    (let ((_hd110674_ _$hd110654110667_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl110655110670_))
                                          (let* ((_$tgt110656110676_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110655110670_)))
                                                 (_$hd110657110679_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110656110676_)))
                                                 (_$tl110658110682_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110656110676_))))
                                            (if (let ((__tmp116250
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110658110682_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116250 '()))
                                                (let ((_clen110686_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity110554_
                                                          _hd110674_)))
                                                      (_cmp110687_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?110553_
                                                              _hd110674_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp116236
                                                         (let ((__tmp116237
                                                                (let ((__tmp116247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116248
                                      (let ((__tmp116249
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen110686_ '()))))
                                        (declare (not safe))
                                        (cons _len110618_ __tmp116249))))
                                 (declare (not safe))
                                 (cons _cmp110687_ __tmp116248)))
                              (__tmp116238
                               (let ((__tmp116241
                                      (let ((__tmp116242
                                             (let ((__tmp116243
                                                    (let ((__tmp116245
                                                           (let ((__tmp116246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause110646_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp116246)))
                  (__tmp116244
                   (let () (declare (not safe)) (cons _args110617_ '()))))
              (declare (not safe))
              (cons __tmp116245 __tmp116244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp116243))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116242 _stx110551_)))
                                     (__tmp116239
                                      (let ((__tmp116240
                                             (let ()
                                               (declare (not safe))
                                               (_generate110555_
                                                _rest110648_
                                                _args110617_
                                                _len110618_))))
                                        (declare (not safe))
                                        (cons __tmp116240 '()))))
                                 (declare (not safe))
                                 (cons __tmp116241 __tmp116239))))
                          (declare (not safe))
                          (cons __tmp116247 __tmp116238))))
                   (declare (not safe))
                   (cons 'if __tmp116237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp116236
                                                     _stx110551_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110652110661_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110652110661_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E110652110661_)))))
                          (let () (declare (not safe)) (_$E110622110633_)))))))
          (let* ((_$e110557_ _stx110551_)
                 (_$E110559110591_
                  (lambda ()
                    (let ((_$E110560110573_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110557_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110557_))
                          (let* ((_$tgt110561110576_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110557_)))
                                 (_$hd110562110579_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110561110576_)))
                                 (_$tl110563110582_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110561110576_))))
                            (let ((_clauses110586_ _$tl110563110582_))
                              (let ((_args110588_
                                     (let ((__tmp116251 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116251 _stx110551_)))
                                    (_len110589_
                                     (let ((__tmp116252 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116252 _stx110551_))))
                                (let ((__tmp116253
                                       (let ((__tmp116254
                                              (let ((__tmp116255
                                                     (let ((__tmp116256
                                                            (let ((__tmp116257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116258
                                  (let ((__tmp116261
                                         (let ((__tmp116262
                                                (let ((__tmp116263
                                                       (let ((__tmp116264
                                                              (let ((__tmp116265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp116266
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110588_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp116266))))
                        (declare (not safe))
                        (__SRC__% __tmp116265 _stx110551_))))
                 (declare (not safe))
                 (cons __tmp116264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len110589_
                                                        __tmp116263))))
                                           (declare (not safe))
                                           (cons __tmp116262 '())))
                                        (__tmp116259
                                         (let ((__tmp116260
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate110555_
                                                   _clauses110586_
                                                   _args110588_
                                                   _len110589_))))
                                           (declare (not safe))
                                           (cons __tmp116260 '()))))
                                    (declare (not safe))
                                    (cons __tmp116261 __tmp116259))))
                             (declare (not safe))
                             (cons 'let __tmp116258))))
                      (declare (not safe))
                      (__SRC__% __tmp116257 _stx110551_))))
               (declare (not safe))
               (cons __tmp116256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args110588_
                                                      __tmp116255))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp116254))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116253 _stx110551_)))))
                          (let () (declare (not safe)) (_$E110560110573_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110557_))
                (let* ((_$tgt110564110594_
                        (let () (declare (not safe)) (__AST-e _$e110557_)))
                       (_$hd110565110597_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110564110594_)))
                       (_$tl110566110600_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110564110594_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110566110600_))
                      (let* ((_$tgt110567110604_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110566110600_)))
                             (_$hd110568110607_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110567110604_)))
                             (_$tl110569110610_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110567110604_))))
                        (let ((_clause110614_ _$hd110568110607_))
                          (if (let ((__tmp116268
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl110569110610_))))
                                (declare (not safe))
                                (equal? __tmp116268 '()))
                              (let ((__tmp116267
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause110614_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp116267))
                              (let ()
                                (declare (not safe))
                                (_$E110559110591_)))))
                      (let () (declare (not safe)) (_$E110559110591_))))
                (let () (declare (not safe)) (_$E110559110591_)))))))
    (define __compile-let-form
      (lambda (_stx110320_ _compile-simple110321_ _compile-values110322_)
        (letrec ((_simple-bind?110324_
                  (lambda (_hd110509_)
                    (let* ((_hd110510110520_ _hd110509_)
                           (_else110513110528_ (lambda () '#f)))
                      (let ((_K110516110541_ (lambda (_id110539_) '#t))
                            (_K110515110533_ (lambda () '#t)))
                        (let ((_try-match110512110536_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd110510110520_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K110515110533_))
                                     (let ()
                                       (declare (not safe))
                                       (_else110513110528_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd110510110520_))
                              (let ((_tl110518110546_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd110510110520_)))
                                    (_hd110517110544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd110510110520_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl110518110546_))
                                    (let ((_id110549_ _hd110517110544_))
                                      (declare (not safe))
                                      (_K110516110541_ _id110549_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match110512110536_))))
                              (let ()
                                (declare (not safe))
                                (_try-match110512110536_))))))))
                 (_car-e110325_
                  (lambda (_hd110507_)
                    (if (let () (declare (not safe)) (pair? _hd110507_))
                        (car _hd110507_)
                        _hd110507_))))
          (let* ((_$e110327_ _stx110320_)
                 (_$E110329110472_
                  (lambda ()
                    (let ((_$E110330110352_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110327_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110327_))
                          (let* ((_$tgt110331110355_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110327_)))
                                 (_$hd110332110358_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110331110355_)))
                                 (_$tl110333110361_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110331110355_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110333110361_))
                                (let* ((_$tgt110334110365_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110333110361_)))
                                       (_$hd110335110368_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110334110365_)))
                                       (_$tl110336110371_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110334110365_))))
                                  (let ((_hd110375_ _$hd110335110368_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl110336110371_))
                                        (let* ((_$tgt110337110377_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl110336110371_)))
                                               (_$hd110338110380_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt110337110377_)))
                                               (_$tl110339110383_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt110337110377_))))
                                          (let ((_body110387_
                                                 _$hd110338110380_))
                                            (if (let ((__tmp116271
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110339110383_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116271 '()))
                                                (let* ((_hd-ids110427_
                                                        (map (lambda (_bind110389_)
                                                               (let* ((_$e110391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind110389_)
                              (_$E110393110402_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110391_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110391_))
                             (let* ((_$tgt110394110405_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110391_)))
                                    (_$hd110395110408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110394110405_)))
                                    (_$tl110396110411_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110394110405_))))
                               (let ((_ids110415_ _$hd110395110408_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl110396110411_))
                                     (let* ((_$tgt110397110417_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl110396110411_)))
                                            (_$hd110398110420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt110397110417_)))
                                            (_$tl110399110423_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt110397110417_))))
                                       (if (let ((__tmp116269
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110399110423_))))
                                             (declare (not safe))
                                             (equal? __tmp116269 '()))
                                           _ids110415_
                                           (let ()
                                             (declare (not safe))
                                             (_$E110393110402_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E110393110402_)))))
                             (let ()
                               (declare (not safe))
                               (_$E110393110402_)))))
                     _hd110375_))
               (_exprs110467_
                (map (lambda (_bind110429_)
                       (let* ((_$e110431_ _bind110429_)
                              (_$E110433110442_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110431_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110431_))
                             (let* ((_$tgt110434110445_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110431_)))
                                    (_$hd110435110448_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110434110445_)))
                                    (_$tl110436110451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110434110445_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl110436110451_))
                                   (let* ((_$tgt110437110455_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110436110451_)))
                                          (_$hd110438110458_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt110437110455_)))
                                          (_$tl110439110461_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt110437110455_))))
                                     (let ((_expr110465_ _$hd110438110458_))
                                       (if (let ((__tmp116270
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110439110461_))))
                                             (declare (not safe))
                                             (equal? __tmp116270 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr110465_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E110433110442_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E110433110442_))))
                             (let ()
                               (declare (not safe))
                               (_$E110433110442_)))))
                     _hd110375_))
               (_body110469_
                (let () (declare (not safe)) (__compile _body110387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?110324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids110427_))
              (_compile-simple110321_
               (map _car-e110325_ _hd-ids110427_)
               _exprs110467_
               _body110469_)
              (_compile-values110322_
               _hd-ids110427_
               _exprs110467_
               _body110469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110330110352_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110330110352_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110330110352_))))
                          (let () (declare (not safe)) (_$E110330110352_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110327_))
                (let* ((_$tgt110340110475_
                        (let () (declare (not safe)) (__AST-e _$e110327_)))
                       (_$hd110341110478_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110340110475_)))
                       (_$tl110342110481_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110340110475_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110342110481_))
                      (let* ((_$tgt110343110485_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110342110481_)))
                             (_$hd110344110488_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110343110485_)))
                             (_$tl110345110491_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110343110485_))))
                        (if (let ((__tmp116273
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd110344110488_))))
                              (declare (not safe))
                              (equal? __tmp116273 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110345110491_))
                                (let* ((_$tgt110346110495_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110345110491_)))
                                       (_$hd110347110498_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110346110495_)))
                                       (_$tl110348110501_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110346110495_))))
                                  (let ((_body110505_ _$hd110347110498_))
                                    (if (let ((__tmp116272
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl110348110501_))))
                                          (declare (not safe))
                                          (equal? __tmp116272 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body110505_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110329110472_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110329110472_)))
                            (let () (declare (not safe)) (_$E110329110472_))))
                      (let () (declare (not safe)) (_$E110329110472_))))
                (let () (declare (not safe)) (_$E110329110472_)))))))
    (define __compile-let-values%
      (lambda (_stx110135_)
        (letrec ((_compile-simple110137_
                  (lambda (_hd-ids110316_ _exprs110317_ _body110318_)
                    (let ((__tmp116274
                           (let ((__tmp116275
                                  (let ((__tmp116277
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110316_)
                                              _exprs110317_))
                                        (__tmp116276
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110318_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116277 __tmp116276))))
                             (declare (not safe))
                             (cons 'let __tmp116275))))
                      (declare (not safe))
                      (__SRC__% __tmp116274 _stx110135_))))
                 (_compile-values110138_
                  (lambda (_hd-ids110234_ _exprs110235_ _body110236_)
                    (let _lp110238_ ((_rest110240_ _hd-ids110234_)
                                     (_exprs110241_ _exprs110235_)
                                     (_bind110242_ '())
                                     (_post110243_ '()))
                      (let* ((_rest110244110258_ _rest110240_)
                             (_else110247110266_
                              (lambda ()
                                (let ((__tmp116278
                                       (let ((__tmp116279
                                              (let ((__tmp116282
                                                     (reverse _bind110242_))
                                                    (__tmp116280
                                                     (let ((__tmp116281
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post110139_
                                                               _post110243_
                                                               _body110236_))))
                                                       (declare (not safe))
                                                       (cons __tmp116281
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp116282
                                                      __tmp116280))))
                                         (declare (not safe))
                                         (cons 'let __tmp116279))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116278 _stx110135_)))))
                        (let ((_K110252110299_
                               (lambda (_rest110296_ _id110297_)
                                 (let ((__tmp116288 (cdr _exprs110241_))
                                       (__tmp116283
                                        (let ((__tmp116284
                                               (let ((__tmp116287
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110297_)))
                                                     (__tmp116285
                                                      (let ((__tmp116286
                                                             (car _exprs110241_)))
                                                        (declare (not safe))
                                                        (cons __tmp116286
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116287
                                                       __tmp116285))))
                                          (declare (not safe))
                                          (cons __tmp116284 _bind110242_))))
                                   (declare (not safe))
                                   (_lp110238_
                                    _rest110296_
                                    __tmp116288
                                    __tmp116283
                                    _post110243_))))
                              (_K110249110281_
                               (lambda (_rest110270_ _hd110271_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110271_))
                                     (let ((__tmp116309 (cdr _exprs110241_))
                                           (__tmp116302
                                            (let ((__tmp116303
                                                   (let ((__tmp116308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110271_)))
                                                         (__tmp116304
                                                          (let ((__tmp116305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116306
                                (let ((__tmp116307 (car _exprs110241_)))
                                  (declare (not safe))
                                  (cons __tmp116307 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116306))))
                    (declare (not safe))
                    (cons __tmp116305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116308
                                                           __tmp116304))))
                                              (declare (not safe))
                                              (cons __tmp116303
                                                    _bind110242_))))
                                       (declare (not safe))
                                       (_lp110238_
                                        _rest110270_
                                        __tmp116309
                                        __tmp116302
                                        _post110243_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110271_))
                                         (let* ((_len110273_
                                                 (length _hd110271_))
                                                (_tmp110275_
                                                 (let ((__tmp116289 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116289))))
                                           (let ((__tmp116301
                                                  (cdr _exprs110241_))
                                                 (__tmp116297
                                                  (let ((__tmp116298
                                                         (let ((__tmp116299
                                                                (let ((__tmp116300
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110241_)))
                          (declare (not safe))
                          (cons __tmp116300 '()))))
                   (declare (not safe))
                   (cons _tmp110275_ __tmp116299))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116298
                                                          _bind110242_)))
                                                 (__tmp116290
                                                  (let ((__tmp116291
                                                         (let ((__tmp116292
                                                                (let ((__tmp116293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116295
                                      (lambda (_id110278_ _k110279_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110278_))
                                            (let ((__tmp116296
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110278_))))
                                              (declare (not safe))
                                              (cons __tmp116296 _k110279_))
                                            '#f)))
                                     (__tmp116294
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110273_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116295
                                  _hd110271_
                                  __tmp116294))))
                          (declare (not safe))
                          (cons _len110273_ __tmp116293))))
                   (declare (not safe))
                   (cons _tmp110275_ __tmp116292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116291
                                                          _post110243_))))
                                             (declare (not safe))
                                             (_lp110238_
                                              _rest110270_
                                              __tmp116301
                                              __tmp116297
                                              __tmp116290)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx110135_
                                            _hd110271_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110244110258_))
                              (let ((_tl110254110304_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110244110258_)))
                                    (_hd110253110302_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110244110258_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110253110302_))
                                    (let ((_tl110256110309_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110253110302_)))
                                          (_hd110255110307_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110253110302_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110256110309_))
                                          (let ((_id110312_ _hd110255110307_)
                                                (_rest110314_
                                                 _tl110254110304_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110252110299_
                                               _rest110314_
                                               _id110312_)))
                                          (let ((_hd110289_ _hd110253110302_)
                                                (_rest110291_
                                                 _tl110254110304_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110249110281_
                                               _rest110291_
                                               _hd110289_)))))
                                    (let ((_hd110289_ _hd110253110302_)
                                          (_rest110291_ _tl110254110304_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110249110281_
                                         _rest110291_
                                         _hd110289_)))))
                              (let ()
                                (declare (not safe))
                                (_else110247110266_))))))))
                 (_compile-post110139_
                  (lambda (_post110141_ _body110142_)
                    (let _lp110144_ ((_rest110146_ _post110141_)
                                     (_check110147_ '())
                                     (_bind110148_ '()))
                      (let* ((_rest110149110161_ _rest110146_)
                             (_else110151110169_
                              (lambda ()
                                (let ((__tmp116310
                                       (let ((__tmp116311
                                              (let ((__tmp116312
                                                     (let ((__tmp116313
                                                            (let ((__tmp116314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116315
                                  (let ((__tmp116316
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110142_ '()))))
                                    (declare (not safe))
                                    (cons _bind110148_ __tmp116316))))
                             (declare (not safe))
                             (cons 'let __tmp116315))))
                      (declare (not safe))
                      (__SRC__% __tmp116314 _stx110135_))))
               (declare (not safe))
               (cons __tmp116313 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116312
                                                        _check110147_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116311))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116310 _stx110135_))))
                             (_K110153110208_
                              (lambda (_rest110172_
                                       _init110173_
                                       _len110174_
                                       _tmp110175_)
                                (let ((__tmp116324
                                       (let ((__tmp116325
                                              (let ((__tmp116326
                                                     (let ((__tmp116327
                                                            (let ((__tmp116328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len110174_ '()))))
                      (declare (not safe))
                      (cons _tmp110175_ __tmp116328))))
               (declare (not safe))
               (cons '__check-values __tmp116327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116326
                                                 _stx110135_))))
                                         (declare (not safe))
                                         (cons __tmp116325 _check110147_)))
                                      (__tmp116317
                                       (let ((__tmp116318
                                              (lambda (_hd110177_ _r110178_)
                                                (let* ((_hd110179110186_
                                                        _hd110177_)
                                                       (_E110181110190_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd110179110186_)))
               (_K110182110196_
                (lambda (_k110193_ _id110194_)
                  (let ((__tmp116319
                         (let ((__tmp116320
                                (let ((__tmp116321
                                       (let ((__tmp116322
                                              (let ((__tmp116323
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k110193_ '()))))
                                                (declare (not safe))
                                                (cons _tmp110175_
                                                      __tmp116323))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp116322))))
                                  (declare (not safe))
                                  (cons __tmp116321 '()))))
                           (declare (not safe))
                           (cons _id110194_ __tmp116320))))
                    (declare (not safe))
                    (cons __tmp116319 _r110178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd110179110186_))
                                                      (let ((_hd110183110199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd110179110186_)))
                    (_tl110184110201_
                     (let () (declare (not safe)) (##cdr _hd110179110186_))))
                (let* ((_id110204_ _hd110183110199_)
                       (_k110206_ _tl110184110201_))
                  (declare (not safe))
                  (_K110182110196_ _k110206_ _id110204_)))
              (let () (declare (not safe)) (_E110181110190_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116318
                                                 _bind110148_
                                                 _init110173_))))
                                  (declare (not safe))
                                  (_lp110144_
                                   _rest110172_
                                   __tmp116324
                                   __tmp116317)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110149110161_))
                            (let ((_hd110154110211_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110149110161_)))
                                  (_tl110155110213_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110149110161_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd110154110211_))
                                  (let ((_hd110156110216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd110154110211_)))
                                        (_tl110157110218_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd110154110211_))))
                                    (let ((_tmp110221_ _hd110156110216_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl110157110218_))
                                          (let ((_hd110158110223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl110157110218_)))
                                                (_tl110159110225_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl110157110218_))))
                                            (let* ((_len110228_
                                                    _hd110158110223_)
                                                   (_init110230_
                                                    _tl110159110225_)
                                                   (_rest110232_
                                                    _tl110155110213_))
                                              (declare (not safe))
                                              (_K110153110208_
                                               _rest110232_
                                               _init110230_
                                               _len110228_
                                               _tmp110221_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else110151110169_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else110151110169_))))
                            (let ()
                              (declare (not safe))
                              (_else110151110169_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx110135_
             _compile-simple110137_
             _compile-values110138_)))))
    (define __compile-letrec-values%
      (lambda (_stx109935_)
        (letrec ((_compile-simple109937_
                  (lambda (_hd-ids110131_ _exprs110132_ _body110133_)
                    (let ((__tmp116329
                           (let ((__tmp116330
                                  (let ((__tmp116332
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110131_)
                                              _exprs110132_))
                                        (__tmp116331
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110133_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116332 __tmp116331))))
                             (declare (not safe))
                             (cons 'letrec __tmp116330))))
                      (declare (not safe))
                      (__SRC__% __tmp116329 _stx109935_))))
                 (_compile-values109938_
                  (lambda (_hd-ids110045_ _exprs110046_ _body110047_)
                    (let _lp110049_ ((_rest110051_ _hd-ids110045_)
                                     (_exprs110052_ _exprs110046_)
                                     (_pre110053_ '())
                                     (_bind110054_ '())
                                     (_post110055_ '()))
                      (let* ((_rest110056110070_ _rest110051_)
                             (_else110059110078_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner109939_
                                   _pre110053_
                                   _bind110054_
                                   _post110055_
                                   _body110047_)))))
                        (let ((_K110064110114_
                               (lambda (_rest110111_ _id110112_)
                                 (let ((__tmp116338 (cdr _exprs110052_))
                                       (__tmp116333
                                        (let ((__tmp116334
                                               (let ((__tmp116337
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110112_)))
                                                     (__tmp116335
                                                      (let ((__tmp116336
                                                             (car _exprs110052_)))
                                                        (declare (not safe))
                                                        (cons __tmp116336
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116337
                                                       __tmp116335))))
                                          (declare (not safe))
                                          (cons __tmp116334 _bind110054_))))
                                   (declare (not safe))
                                   (_lp110049_
                                    _rest110111_
                                    __tmp116338
                                    _pre110053_
                                    __tmp116333
                                    _post110055_))))
                              (_K110061110096_
                               (lambda (_rest110082_ _hd110083_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110083_))
                                     (let ((__tmp116366 (cdr _exprs110052_))
                                           (__tmp116359
                                            (let ((__tmp116360
                                                   (let ((__tmp116365
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110083_)))
                                                         (__tmp116361
                                                          (let ((__tmp116362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116363
                                (let ((__tmp116364 (car _exprs110052_)))
                                  (declare (not safe))
                                  (cons __tmp116364 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116363))))
                    (declare (not safe))
                    (cons __tmp116362 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116365
                                                           __tmp116361))))
                                              (declare (not safe))
                                              (cons __tmp116360
                                                    _bind110054_))))
                                       (declare (not safe))
                                       (_lp110049_
                                        _rest110082_
                                        __tmp116366
                                        _pre110053_
                                        __tmp116359
                                        _post110055_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110083_))
                                         (let* ((_len110085_
                                                 (length _hd110083_))
                                                (_tmp110087_
                                                 (let ((__tmp116339 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116339))))
                                           (let ((__tmp116358
                                                  (cdr _exprs110052_))
                                                 (__tmp116351
                                                  (let ((__tmp116352
                                                         (lambda (_id110090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r110091_)
                   (if (let () (declare (not safe)) (__AST-e _id110090_))
                       (let ((__tmp116353
                              (let ((__tmp116357
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id110090_)))
                                    (__tmp116354
                                     (let ((__tmp116355
                                            (let ((__tmp116356
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp116356))))
                                       (declare (not safe))
                                       (cons __tmp116355 '()))))
                                (declare (not safe))
                                (cons __tmp116357 __tmp116354))))
                         (declare (not safe))
                         (cons __tmp116353 _r110091_))
                       _r110091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp116352
                                                            _pre110053_
                                                            _hd110083_)))
                                                 (__tmp116347
                                                  (let ((__tmp116348
                                                         (let ((__tmp116349
                                                                (let ((__tmp116350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110052_)))
                          (declare (not safe))
                          (cons __tmp116350 '()))))
                   (declare (not safe))
                   (cons _tmp110087_ __tmp116349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116348
                                                          _bind110054_)))
                                                 (__tmp116340
                                                  (let ((__tmp116341
                                                         (let ((__tmp116342
                                                                (let ((__tmp116343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116345
                                      (lambda (_id110093_ _k110094_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110093_))
                                            (let ((__tmp116346
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110093_))))
                                              (declare (not safe))
                                              (cons __tmp116346 _k110094_))
                                            '#f)))
                                     (__tmp116344
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110085_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116345
                                  _hd110083_
                                  __tmp116344))))
                          (declare (not safe))
                          (cons _len110085_ __tmp116343))))
                   (declare (not safe))
                   (cons _tmp110087_ __tmp116342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116341
                                                          _post110055_))))
                                             (declare (not safe))
                                             (_lp110049_
                                              _rest110082_
                                              __tmp116358
                                              __tmp116351
                                              __tmp116347
                                              __tmp116340)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx109935_
                                            _hd110083_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110056110070_))
                              (let ((_tl110066110119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110056110070_)))
                                    (_hd110065110117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110056110070_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110065110117_))
                                    (let ((_tl110068110124_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110065110117_)))
                                          (_hd110067110122_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110065110117_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110068110124_))
                                          (let ((_id110127_ _hd110067110122_)
                                                (_rest110129_
                                                 _tl110066110119_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110064110114_
                                               _rest110129_
                                               _id110127_)))
                                          (let ((_hd110104_ _hd110065110117_)
                                                (_rest110106_
                                                 _tl110066110119_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110061110096_
                                               _rest110106_
                                               _hd110104_)))))
                                    (let ((_hd110104_ _hd110065110117_)
                                          (_rest110106_ _tl110066110119_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110061110096_
                                         _rest110106_
                                         _hd110104_)))))
                              (let ()
                                (declare (not safe))
                                (_else110059110078_))))))))
                 (_compile-inner109939_
                  (lambda (_pre110040_ _bind110041_ _post110042_ _body110043_)
                    (if (let () (declare (not safe)) (null? _pre110040_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind109940_
                           _bind110041_
                           _post110042_
                           _body110043_))
                        (let ((__tmp116367
                               (let ((__tmp116368
                                      (let ((__tmp116371 (reverse _pre110040_))
                                            (__tmp116369
                                             (let ((__tmp116370
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind109940_
                                                       _bind110041_
                                                       _post110042_
                                                       _body110043_))))
                                               (declare (not safe))
                                               (cons __tmp116370 '()))))
                                        (declare (not safe))
                                        (cons __tmp116371 __tmp116369))))
                                 (declare (not safe))
                                 (cons 'let __tmp116368))))
                          (declare (not safe))
                          (__SRC__% __tmp116367 _stx109935_)))))
                 (_compile-bind109940_
                  (lambda (_bind110036_ _post110037_ _body110038_)
                    (let ((__tmp116372
                           (let ((__tmp116373
                                  (let ((__tmp116376 (reverse _bind110036_))
                                        (__tmp116374
                                         (let ((__tmp116375
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109941_
                                                   _post110037_
                                                   _body110038_))))
                                           (declare (not safe))
                                           (cons __tmp116375 '()))))
                                    (declare (not safe))
                                    (cons __tmp116376 __tmp116374))))
                             (declare (not safe))
                             (cons 'letrec __tmp116373))))
                      (declare (not safe))
                      (__SRC__% __tmp116372 _stx109935_))))
                 (_compile-post109941_
                  (lambda (_post109943_ _body109944_)
                    (let _lp109946_ ((_rest109948_ _post109943_)
                                     (_check109949_ '())
                                     (_bind109950_ '()))
                      (let* ((_rest109951109963_ _rest109948_)
                             (_else109953109971_
                              (lambda ()
                                (let ((__tmp116377
                                       (let ((__tmp116378
                                              (let ((__tmp116379
                                                     (let ((__tmp116380
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body109944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp116380 _bind109950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116379
                                                        _check109949_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116378))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116377 _stx109935_))))
                             (_K109955110010_
                              (lambda (_rest109974_
                                       _init109975_
                                       _len109976_
                                       _tmp109977_)
                                (let ((__tmp116389
                                       (let ((__tmp116390
                                              (let ((__tmp116391
                                                     (let ((__tmp116392
                                                            (let ((__tmp116393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109976_ '()))))
                      (declare (not safe))
                      (cons _tmp109977_ __tmp116393))))
               (declare (not safe))
               (cons '__check-values __tmp116392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116391
                                                 _stx109935_))))
                                         (declare (not safe))
                                         (cons __tmp116390 _check109949_)))
                                      (__tmp116381
                                       (let ((__tmp116382
                                              (lambda (_hd109979_ _r109980_)
                                                (let* ((_hd109981109988_
                                                        _hd109979_)
                                                       (_E109983109992_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109981109988_)))
               (_K109984109998_
                (lambda (_k109995_ _id109996_)
                  (let ((__tmp116383
                         (let ((__tmp116384
                                (let ((__tmp116385
                                       (let ((__tmp116386
                                              (let ((__tmp116387
                                                     (let ((__tmp116388
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k109995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp109977_ __tmp116388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp116387))))
                                         (declare (not safe))
                                         (cons __tmp116386 '()))))
                                  (declare (not safe))
                                  (cons _id109996_ __tmp116385))))
                           (declare (not safe))
                           (cons 'set! __tmp116384))))
                    (declare (not safe))
                    (cons __tmp116383 _r109980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109981109988_))
                                                      (let ((_hd109985110001_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109981109988_)))
                    (_tl109986110003_
                     (let () (declare (not safe)) (##cdr _hd109981109988_))))
                (let* ((_id110006_ _hd109985110001_)
                       (_k110008_ _tl109986110003_))
                  (declare (not safe))
                  (_K109984109998_ _k110008_ _id110006_)))
              (let () (declare (not safe)) (_E109983109992_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116382
                                                 _bind109950_
                                                 _init109975_))))
                                  (declare (not safe))
                                  (_lp109946_
                                   _rest109974_
                                   __tmp116389
                                   __tmp116381)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109951109963_))
                            (let ((_hd109956110013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109951109963_)))
                                  (_tl109957110015_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109951109963_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd109956110013_))
                                  (let ((_hd109958110018_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd109956110013_)))
                                        (_tl109959110020_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd109956110013_))))
                                    (let ((_tmp110023_ _hd109958110018_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl109959110020_))
                                          (let ((_hd109960110025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl109959110020_)))
                                                (_tl109961110027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl109959110020_))))
                                            (let* ((_len110030_
                                                    _hd109960110025_)
                                                   (_init110032_
                                                    _tl109961110027_)
                                                   (_rest110034_
                                                    _tl109957110015_))
                                              (declare (not safe))
                                              (_K109955110010_
                                               _rest110034_
                                               _init110032_
                                               _len110030_
                                               _tmp110023_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109953109971_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else109953109971_))))
                            (let ()
                              (declare (not safe))
                              (_else109953109971_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109935_
             _compile-simple109937_
             _compile-values109938_)))))
    (define __compile-letrec*-values%
      (lambda (_stx109690_)
        (letrec ((_compile-simple109692_
                  (lambda (_hd-ids109931_ _exprs109932_ _body109933_)
                    (let ((__tmp116394
                           (let ((__tmp116395
                                  (let ((__tmp116397
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109931_)
                                              _exprs109932_))
                                        (__tmp116396
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109933_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116397 __tmp116396))))
                             (declare (not safe))
                             (cons 'letrec* __tmp116395))))
                      (declare (not safe))
                      (__SRC__% __tmp116394 _stx109690_))))
                 (_compile-values109693_
                  (lambda (_hd-ids109842_ _exprs109843_ _body109844_)
                    (let _lp109846_ ((_rest109848_ _hd-ids109842_)
                                     (_exprs109849_ _exprs109843_)
                                     (_bind109850_ '())
                                     (_post109851_ '()))
                      (let* ((_rest109852109866_ _rest109848_)
                             (_else109855109874_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind109694_
                                   _bind109850_
                                   _post109851_
                                   _body109844_)))))
                        (let ((_K109860109914_
                               (lambda (_rest109909_ _hd109910_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109910_))
                                     (let ((_id109912_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109910_))))
                                       (let ((__tmp116412 (cdr _exprs109849_))
                                             (__tmp116407
                                              (let ((__tmp116408
                                                     (let ((__tmp116409
                                                            (let ((__tmp116410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116411
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116411))))
                      (declare (not safe))
                      (cons __tmp116410 '()))))
               (declare (not safe))
               (cons _id109912_ __tmp116409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116408
                                                      _bind109850_)))
                                             (__tmp116403
                                              (let ((__tmp116404
                                                     (let ((__tmp116405
                                                            (let ((__tmp116406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs109849_)))
                      (declare (not safe))
                      (cons __tmp116406 '()))))
               (declare (not safe))
               (cons _id109912_ __tmp116405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116404
                                                      _post109851_))))
                                         (declare (not safe))
                                         (_lp109846_
                                          _rest109909_
                                          __tmp116412
                                          __tmp116407
                                          __tmp116403)))
                                     (let ((__tmp116402 (cdr _exprs109849_))
                                           (__tmp116398
                                            (let ((__tmp116399
                                                   (let ((__tmp116400
                                                          (let ((__tmp116401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs109849_)))
                    (declare (not safe))
                    (cons __tmp116401 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp116400))))
                                              (declare (not safe))
                                              (cons __tmp116399
                                                    _post109851_))))
                                       (declare (not safe))
                                       (_lp109846_
                                        _rest109909_
                                        __tmp116402
                                        _bind109850_
                                        __tmp116398)))))
                              (_K109857109894_
                               (lambda (_rest109878_ _hd109879_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109879_))
                                     (let ((_id109881_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109879_))))
                                       (let ((__tmp116448 (cdr _exprs109849_))
                                             (__tmp116443
                                              (let ((__tmp116444
                                                     (let ((__tmp116445
                                                            (let ((__tmp116446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116447
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116447))))
                      (declare (not safe))
                      (cons __tmp116446 '()))))
               (declare (not safe))
               (cons _id109881_ __tmp116445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116444
                                                      _bind109850_)))
                                             (__tmp116437
                                              (let ((__tmp116438
                                                     (let ((__tmp116439
                                                            (let ((__tmp116440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116441
                                  (let ((__tmp116442 (car _exprs109849_)))
                                    (declare (not safe))
                                    (cons __tmp116442 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp116441))))
                      (declare (not safe))
                      (cons __tmp116440 '()))))
               (declare (not safe))
               (cons _id109881_ __tmp116439))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116438
                                                      _post109851_))))
                                         (declare (not safe))
                                         (_lp109846_
                                          _rest109878_
                                          __tmp116448
                                          __tmp116443
                                          __tmp116437)))
                                     (if (let ((__tmp116436
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd109879_))))
                                           (declare (not safe))
                                           (not __tmp116436))
                                         (let ((__tmp116435
                                                (cdr _exprs109849_))
                                               (__tmp116431
                                                (let ((__tmp116432
                                                       (let ((__tmp116433
                                                              (let ((__tmp116434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs109849_)))
                        (declare (not safe))
                        (cons __tmp116434 '()))))
                 (declare (not safe))
                 (cons '#f __tmp116433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp116432
                                                        _post109851_))))
                                           (declare (not safe))
                                           (_lp109846_
                                            _rest109878_
                                            __tmp116435
                                            _bind109850_
                                            __tmp116431))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd109879_))
                                             (let* ((_len109883_
                                                     (length _hd109879_))
                                                    (_tmp109885_
                                                     (let ((__tmp116413
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp116413))))
                                               (let ((__tmp116430
                                                      (cdr _exprs109849_))
                                                     (__tmp116423
                                                      (let ((__tmp116424
                                                             (lambda (_id109888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r109889_)
                       (if (let () (declare (not safe)) (__AST-e _id109888_))
                           (let ((__tmp116425
                                  (let ((__tmp116429
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109888_)))
                                        (__tmp116426
                                         (let ((__tmp116427
                                                (let ((__tmp116428
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp116428))))
                                           (declare (not safe))
                                           (cons __tmp116427 '()))))
                                    (declare (not safe))
                                    (cons __tmp116429 __tmp116426))))
                             (declare (not safe))
                             (cons __tmp116425 _r109889_))
                           _r109889_))))
                (declare (not safe))
                (foldl1 __tmp116424 _bind109850_ _hd109879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp116414
                                                      (let ((__tmp116415
                                                             (let ((__tmp116416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116422 (car _exprs109849_))
                                  (__tmp116417
                                   (let ((__tmp116418
                                          (let ((__tmp116420
                                                 (lambda (_id109891_ _k109892_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id109891_))
                                                       (let ((__tmp116421
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id109891_))))
                 (declare (not safe))
                 (cons __tmp116421 _k109892_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp116419
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len109883_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp116420
                                             _hd109879_
                                             __tmp116419))))
                                     (declare (not safe))
                                     (cons _len109883_ __tmp116418))))
                              (declare (not safe))
                              (cons __tmp116422 __tmp116417))))
                       (declare (not safe))
                       (cons _tmp109885_ __tmp116416))))
                (declare (not safe))
                (cons __tmp116415 _post109851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp109846_
                                                  _rest109878_
                                                  __tmp116430
                                                  __tmp116423
                                                  __tmp116414)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx109690_
                                                _hd109879_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109852109866_))
                              (let ((_tl109862109919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109852109866_)))
                                    (_hd109861109917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109852109866_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109861109917_))
                                    (let ((_tl109864109924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109861109917_)))
                                          (_hd109863109922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109861109917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109864109924_))
                                          (let ((_hd109927_ _hd109863109922_)
                                                (_rest109929_
                                                 _tl109862109919_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109860109914_
                                               _rest109929_
                                               _hd109927_)))
                                          (let ((_hd109902_ _hd109861109917_)
                                                (_rest109904_
                                                 _tl109862109919_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109857109894_
                                               _rest109904_
                                               _hd109902_)))))
                                    (let ((_hd109902_ _hd109861109917_)
                                          (_rest109904_ _tl109862109919_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109857109894_
                                         _rest109904_
                                         _hd109902_)))))
                              (let ()
                                (declare (not safe))
                                (_else109855109874_))))))))
                 (_compile-bind109694_
                  (lambda (_bind109838_ _post109839_ _body109840_)
                    (let ((__tmp116449
                           (let ((__tmp116450
                                  (let ((__tmp116453 (reverse _bind109838_))
                                        (__tmp116451
                                         (let ((__tmp116452
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109695_
                                                   _post109839_
                                                   _body109840_))))
                                           (declare (not safe))
                                           (cons __tmp116452 '()))))
                                    (declare (not safe))
                                    (cons __tmp116453 __tmp116451))))
                             (declare (not safe))
                             (cons 'let __tmp116450))))
                      (declare (not safe))
                      (__SRC__% __tmp116449 _stx109690_))))
                 (_compile-post109695_
                  (lambda (_post109697_ _body109698_)
                    (let ((__tmp116454
                           (let ((__tmp116455
                                  (let ((__tmp116456
                                         (let ((__tmp116458
                                                (lambda (_hd109700_ _r109701_)
                                                  (let* ((_hd109702109725_
                                                          _hd109700_)
                                                         (_E109706109729_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd109702109725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K109719109823_
                                                           (lambda (_expr109821_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr109821_ _r109701_))))
                  (_K109714109801_
                   (lambda (_expr109798_ _id109799_)
                     (let ((__tmp116459
                            (let ((__tmp116460
                                   (let ((__tmp116461
                                          (let ((__tmp116462
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr109798_ '()))))
                                            (declare (not safe))
                                            (cons _id109799_ __tmp116462))))
                                     (declare (not safe))
                                     (cons 'set! __tmp116461))))
                              (declare (not safe))
                              (__SRC__% __tmp116460 _stx109690_))))
                       (declare (not safe))
                       (cons __tmp116459 _r109701_))))
                  (_K109707109768_
                   (lambda (_init109733_ _len109734_ _expr109735_ _tmp109736_)
                     (let ((__tmp116463
                            (let ((__tmp116464
                                   (let ((__tmp116465
                                          (let ((__tmp116479
                                                 (let ((__tmp116480
                                                        (let ((__tmp116481
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr109735_ '()))))
                  (declare (not safe))
                  (cons _tmp109736_ __tmp116481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116480 '())))
                                                (__tmp116466
                                                 (let ((__tmp116475
                                                        (let ((__tmp116476
                                                               (let ((__tmp116477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp116478
                                     (let ()
                                       (declare (not safe))
                                       (cons _len109734_ '()))))
                                (declare (not safe))
                                (cons _tmp109736_ __tmp116478))))
                         (declare (not safe))
                         (cons '__check-values __tmp116477))))
                  (declare (not safe))
                  (__SRC__% __tmp116476 _stx109690_)))
               (__tmp116467
                (let ((__tmp116468
                       (map (lambda (_hd109738_)
                              (let* ((_hd109739109746_ _hd109738_)
                                     (_E109741109750_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd109739109746_)))
                                     (_K109742109756_
                                      (lambda (_k109753_ _id109754_)
                                        (let ((__tmp116469
                                               (let ((__tmp116470
                                                      (let ((__tmp116471
                                                             (let ((__tmp116472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116473
                                   (let ((__tmp116474
                                          (let ()
                                            (declare (not safe))
                                            (cons _k109753_ '()))))
                                     (declare (not safe))
                                     (cons _tmp109736_ __tmp116474))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp116473))))
                       (declare (not safe))
                       (cons __tmp116472 '()))))
                (declare (not safe))
                (cons _id109754_ __tmp116471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp116470))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp116469
                                           _stx109690_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109739109746_))
                                    (let ((_hd109743109759_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109739109746_)))
                                          (_tl109744109761_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109739109746_))))
                                      (let* ((_id109764_ _hd109743109759_)
                                             (_k109766_ _tl109744109761_))
                                        (declare (not safe))
                                        (_K109742109756_
                                         _k109766_
                                         _id109764_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E109741109750_)))))
                            _init109733_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp116468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116475
                                                         __tmp116467))))
                                            (declare (not safe))
                                            (cons __tmp116479 __tmp116466))))
                                     (declare (not safe))
                                     (cons 'let __tmp116465))))
                              (declare (not safe))
                              (__SRC__% __tmp116464 _stx109690_))))
                       (declare (not safe))
                       (cons __tmp116463 _r109701_)))))
              (if (let () (declare (not safe)) (##pair? _hd109702109725_))
                  (let ((_tl109721109828_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd109702109725_)))
                        (_hd109720109826_
                         (let ()
                           (declare (not safe))
                           (##car _hd109702109725_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd109720109826_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109721109828_))
                            (let ((_tl109723109833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109721109828_)))
                                  (_hd109722109831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109721109828_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109723109833_))
                                  (let ((_expr109836_ _hd109722109831_))
                                    (declare (not safe))
                                    (_K109719109823_ _expr109836_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109723109833_))
                                      (let ((_tl109713109787_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109723109833_)))
                                            (_hd109712109785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109723109833_))))
                                        (let ((_tmp109776_ _hd109720109826_)
                                              (_expr109783_ _hd109722109831_)
                                              (_len109790_ _hd109712109785_)
                                              (_init109792_ _tl109713109787_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109707109768_
                                             _init109792_
                                             _len109790_
                                             _expr109783_
                                             _tmp109776_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109706109729_)))))
                            (let () (declare (not safe)) (_E109706109729_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109721109828_))
                            (let ((_tl109718109813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109721109828_)))
                                  (_hd109717109811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109721109828_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109718109813_))
                                  (let ((_id109809_ _hd109720109826_)
                                        (_expr109816_ _hd109717109811_))
                                    (let ()
                                      (declare (not safe))
                                      (_K109714109801_
                                       _expr109816_
                                       _id109809_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109718109813_))
                                      (let ((_tl109713109787_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109718109813_)))
                                            (_hd109712109785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109718109813_))))
                                        (let ((_tmp109776_ _hd109720109826_)
                                              (_expr109783_ _hd109717109811_)
                                              (_len109790_ _hd109712109785_)
                                              (_init109792_ _tl109713109787_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109707109768_
                                             _init109792_
                                             _len109790_
                                             _expr109783_
                                             _tmp109776_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109706109729_)))))
                            (let () (declare (not safe)) (_E109706109729_)))))
                  (let () (declare (not safe)) (_E109706109729_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp116457
                                                (list _body109698_)))
                                           (declare (not safe))
                                           (foldl1 __tmp116458
                                                   __tmp116457
                                                   _post109697_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp116456))))
                             (declare (not safe))
                             (cons 'begin __tmp116455))))
                      (declare (not safe))
                      (__SRC__% __tmp116454 _stx109690_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109690_
             _compile-simple109692_
             _compile-values109693_)))))
    (define __compile-call%
      (lambda (_stx109650_)
        (let* ((_$e109652_ _stx109650_)
               (_$E109654109663_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109652_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109652_))
              (let* ((_$tgt109655109666_
                      (let () (declare (not safe)) (__AST-e _$e109652_)))
                     (_$hd109656109669_
                      (let () (declare (not safe)) (##car _$tgt109655109666_)))
                     (_$tl109657109672_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109655109666_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109657109672_))
                    (let* ((_$tgt109658109676_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109657109672_)))
                           (_$hd109659109679_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109658109676_)))
                           (_$tl109660109682_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109658109676_))))
                      (let* ((_rator109686_ _$hd109659109679_)
                             (_rands109688_ _$tl109660109682_)
                             (__tmp116482
                              (let ((__tmp116484
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator109686_)))
                                    (__tmp116483
                                     (map __compile _rands109688_)))
                                (declare (not safe))
                                (cons __tmp116484 __tmp116483))))
                        (declare (not safe))
                        (__SRC__% __tmp116482 _stx109650_)))
                    (let () (declare (not safe)) (_$E109654109663_))))
              (let () (declare (not safe)) (_$E109654109663_))))))
    (define __compile-ref%
      (lambda (_stx109612_)
        (let* ((_$e109614_ _stx109612_)
               (_$E109616109625_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109614_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109614_))
              (let* ((_$tgt109617109628_
                      (let () (declare (not safe)) (__AST-e _$e109614_)))
                     (_$hd109618109631_
                      (let () (declare (not safe)) (##car _$tgt109617109628_)))
                     (_$tl109619109634_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109617109628_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109619109634_))
                    (let* ((_$tgt109620109638_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109619109634_)))
                           (_$hd109621109641_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109620109638_)))
                           (_$tl109622109644_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109620109638_))))
                      (let ((_id109648_ _$hd109621109641_))
                        (if (let ((__tmp116485
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109622109644_))))
                              (declare (not safe))
                              (equal? __tmp116485 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id109648_ _stx109612_))
                            (let () (declare (not safe)) (_$E109616109625_)))))
                    (let () (declare (not safe)) (_$E109616109625_))))
              (let () (declare (not safe)) (_$E109616109625_))))))
    (define __compile-setq%
      (lambda (_stx109559_)
        (let* ((_$e109561_ _stx109559_)
               (_$E109563109575_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109561_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109561_))
              (let* ((_$tgt109564109578_
                      (let () (declare (not safe)) (__AST-e _$e109561_)))
                     (_$hd109565109581_
                      (let () (declare (not safe)) (##car _$tgt109564109578_)))
                     (_$tl109566109584_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109564109578_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109566109584_))
                    (let* ((_$tgt109567109588_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109566109584_)))
                           (_$hd109568109591_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109567109588_)))
                           (_$tl109569109594_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109567109588_))))
                      (let ((_id109598_ _$hd109568109591_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109569109594_))
                            (let* ((_$tgt109570109600_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109569109594_)))
                                   (_$hd109571109603_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109570109600_)))
                                   (_$tl109572109606_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109570109600_))))
                              (let ((_expr109610_ _$hd109571109603_))
                                (if (let ((__tmp116491
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109572109606_))))
                                      (declare (not safe))
                                      (equal? __tmp116491 '()))
                                    (let ((__tmp116486
                                           (let ((__tmp116487
                                                  (let ((__tmp116490
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id109598_
                                                            _stx109559_)))
                                                        (__tmp116488
                                                         (let ((__tmp116489
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr109610_))))
                   (declare (not safe))
                   (cons __tmp116489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116490
                                                          __tmp116488))))
                                             (declare (not safe))
                                             (cons 'set! __tmp116487))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116486 _stx109559_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109563109575_)))))
                            (let () (declare (not safe)) (_$E109563109575_)))))
                    (let () (declare (not safe)) (_$E109563109575_))))
              (let () (declare (not safe)) (_$E109563109575_))))))
    (define __compile-if%
      (lambda (_stx109491_)
        (let* ((_$e109493_ _stx109491_)
               (_$E109495109510_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109493_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109493_))
              (let* ((_$tgt109496109513_
                      (let () (declare (not safe)) (__AST-e _$e109493_)))
                     (_$hd109497109516_
                      (let () (declare (not safe)) (##car _$tgt109496109513_)))
                     (_$tl109498109519_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109496109513_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109498109519_))
                    (let* ((_$tgt109499109523_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109498109519_)))
                           (_$hd109500109526_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109499109523_)))
                           (_$tl109501109529_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109499109523_))))
                      (let ((_p109533_ _$hd109500109526_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109501109529_))
                            (let* ((_$tgt109502109535_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109501109529_)))
                                   (_$hd109503109538_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109502109535_)))
                                   (_$tl109504109541_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109502109535_))))
                              (let ((_t109545_ _$hd109503109538_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl109504109541_))
                                    (let* ((_$tgt109505109547_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl109504109541_)))
                                           (_$hd109506109550_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt109505109547_)))
                                           (_$tl109507109553_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt109505109547_))))
                                      (let ((_f109557_ _$hd109506109550_))
                                        (if (let ((__tmp116499
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl109507109553_))))
                                              (declare (not safe))
                                              (equal? __tmp116499 '()))
                                            (let ((__tmp116492
                                                   (let ((__tmp116493
                                                          (let ((__tmp116498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p109533_)))
                        (__tmp116494
                         (let ((__tmp116497
                                (let ()
                                  (declare (not safe))
                                  (__compile _t109545_)))
                               (__tmp116495
                                (let ((__tmp116496
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f109557_))))
                                  (declare (not safe))
                                  (cons __tmp116496 '()))))
                           (declare (not safe))
                           (cons __tmp116497 __tmp116495))))
                    (declare (not safe))
                    (cons __tmp116498 __tmp116494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp116493))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp116492
                                               _stx109491_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E109495109510_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109495109510_)))))
                            (let () (declare (not safe)) (_$E109495109510_)))))
                    (let () (declare (not safe)) (_$E109495109510_))))
              (let () (declare (not safe)) (_$E109495109510_))))))
    (define __compile-quote%
      (lambda (_stx109453_)
        (let* ((_$e109455_ _stx109453_)
               (_$E109457109466_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109455_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109455_))
              (let* ((_$tgt109458109469_
                      (let () (declare (not safe)) (__AST-e _$e109455_)))
                     (_$hd109459109472_
                      (let () (declare (not safe)) (##car _$tgt109458109469_)))
                     (_$tl109460109475_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109458109469_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109460109475_))
                    (let* ((_$tgt109461109479_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109460109475_)))
                           (_$hd109462109482_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109461109479_)))
                           (_$tl109463109485_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109461109479_))))
                      (let ((_e109489_ _$hd109462109482_))
                        (if (let ((__tmp116503
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109463109485_))))
                              (declare (not safe))
                              (equal? __tmp116503 '()))
                            (let ((__tmp116500
                                   (let ((__tmp116501
                                          (let ((__tmp116502
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e109489_))))
                                            (declare (not safe))
                                            (cons __tmp116502 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116501))))
                              (declare (not safe))
                              (__SRC__% __tmp116500 _stx109453_))
                            (let () (declare (not safe)) (_$E109457109466_)))))
                    (let () (declare (not safe)) (_$E109457109466_))))
              (let () (declare (not safe)) (_$E109457109466_))))))
    (define __compile-quote-syntax%
      (lambda (_stx109415_)
        (let* ((_$e109417_ _stx109415_)
               (_$E109419109428_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109417_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109417_))
              (let* ((_$tgt109420109431_
                      (let () (declare (not safe)) (__AST-e _$e109417_)))
                     (_$hd109421109434_
                      (let () (declare (not safe)) (##car _$tgt109420109431_)))
                     (_$tl109422109437_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109420109431_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109422109437_))
                    (let* ((_$tgt109423109441_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109422109437_)))
                           (_$hd109424109444_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109423109441_)))
                           (_$tl109425109447_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109423109441_))))
                      (let ((_e109451_ _$hd109424109444_))
                        (if (let ((__tmp116506
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109425109447_))))
                              (declare (not safe))
                              (equal? __tmp116506 '()))
                            (let ((__tmp116504
                                   (let ((__tmp116505
                                          (let ()
                                            (declare (not safe))
                                            (cons _e109451_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116505))))
                              (declare (not safe))
                              (__SRC__% __tmp116504 _stx109415_))
                            (let () (declare (not safe)) (_$E109419109428_)))))
                    (let () (declare (not safe)) (_$E109419109428_))))
              (let () (declare (not safe)) (_$E109419109428_))))))
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
