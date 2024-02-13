(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707841978)
  (begin
    (define __context::t
      (let ((__tmp116106 (list))
            (__tmp116104
             (let ((__tmp116105
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116105 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp116106
         '(t ns super table)
         __tmp116104
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args111340_ (apply make-instance __context::t _$args111340_)))
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
      (let ((__tmp116109 (list))
            (__tmp116107
             (let ((__tmp116108
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116108 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp116109
         '(id)
         __tmp116107
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args111337_ (apply make-instance __runtime::t _$args111337_)))
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
      (let ((__tmp116112 (list))
            (__tmp116110
             (let ((__tmp116111
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116111 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116112
         '(e id)
         __tmp116110
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args111334_ (apply make-instance __syntax::t _$args111334_)))
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
      (let ((__tmp116115 (list __syntax::t))
            (__tmp116113
             (let ((__tmp116114
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116114 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp116115
         '()
         __tmp116113
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args111331_ (apply make-instance __macro::t _$args111331_)))
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
      (let ((__tmp116118 (list __macro::t))
            (__tmp116116
             (let ((__tmp116117
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116117 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp116118
         '()
         __tmp116116
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args111328_
        (apply make-instance __special-form::t _$args111328_)))
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
      (let ((__tmp116121 (list __syntax::t))
            (__tmp116119
             (let ((__tmp116120
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116120 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116121
         '()
         __tmp116119
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args111325_
        (apply make-instance __core-form::t _$args111325_)))
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
      (let ((__tmp116124 (list __core-form::t))
            (__tmp116122
             (let ((__tmp116123
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116123 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116124
         '()
         __tmp116122
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args111322_
        (apply make-instance __core-expression::t _$args111322_)))
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
      (let ((__tmp116127 (list __core-form::t))
            (__tmp116125
             (let ((__tmp116126
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116126 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116127
         '()
         __tmp116125
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args111319_
        (apply make-instance __core-special-form::t _$args111319_)))
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
      (let ((__tmp116130 (list __syntax::t))
            (__tmp116128
             (let ((__tmp116129
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116129 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp116130
         '()
         __tmp116128
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args111316_
        (apply make-instance __struct-info::t _$args111316_)))
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
      (let ((__tmp116133 (list __syntax::t))
            (__tmp116131
             (let ((__tmp116132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116132 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp116133
         '()
         __tmp116131
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args111313_ (apply make-instance __feature::t _$args111313_)))
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
      (let ((__tmp116136 (list __context::t))
            (__tmp116134
             (let ((__tmp116135
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116135 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp116136
         '(id path import export)
         __tmp116134
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args111310_ (apply make-instance __module::t _$args111310_)))
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
      (let ((__tmp116138
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp116137
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp116138 __tmp116137)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id111285_ _ctx111286_)
        (if _ctx111286_
            (let ((_id111288_
                   (let () (declare (not safe)) (__AST-e _id111285_))))
              (let _lp111290_ ((_ctx111292_ _ctx111286_))
                (let ((_$e111294_
                       (table-ref
                        (##structure-ref _ctx111292_ '4 __context::t '#f)
                        _id111288_
                        '#f)))
                  (if _$e111294_
                      (values _$e111294_)
                      (let ((_$e111297_
                             (##structure-ref
                              _ctx111292_
                              '3
                              __context::t
                              '#f)))
                        (if _$e111297_
                            (let ()
                              (declare (not safe))
                              (_lp111290_ _$e111297_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id111303_)
        (let ((_ctx111305_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id111303_ _ctx111305_))))
    (define __core-resolve
      (lambda _g116140_
        (let ((_g116139_ (let () (declare (not safe)) (##length _g116140_))))
          (cond ((let () (declare (not safe)) (##fx= _g116139_ 1))
                 (apply (lambda (_id111303_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id111303_)))
                        _g116140_))
                ((let () (declare (not safe)) (##fx= _g116139_ 2))
                 (apply (lambda (_id111307_ _ctx111308_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id111307_ _ctx111308_)))
                        _g116140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g116140_))))))
    (define __core-bound-id?__%
      (lambda (_id111268_ _is?111269_)
        (let ((_$e111271_
               (let () (declare (not safe)) (__core-resolve__0 _id111268_))))
          (if _$e111271_ (_is?111269_ _$e111271_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id111277_)
        (let ((_is?111279_ true))
          (declare (not safe))
          (__core-bound-id?__% _id111277_ _is?111279_))))
    (define __core-bound-id?
      (lambda _g116142_
        (let ((_g116141_ (let () (declare (not safe)) (##length _g116142_))))
          (cond ((let () (declare (not safe)) (##fx= _g116141_ 1))
                 (apply (lambda (_id111277_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id111277_)))
                        _g116142_))
                ((let () (declare (not safe)) (##fx= _g116141_ 2))
                 (apply (lambda (_id111281_ _is?111282_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id111281_ _is?111282_)))
                        _g116142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116142_))))))
    (define __core-bind-runtime!__%
      (lambda (_id111251_ _eid111252_ _ctx111253_)
        (if _eid111252_
            (let ((__tmp116145
                   (##structure-ref _ctx111253_ '4 __context::t '#f))
                  (__tmp116144
                   (let () (declare (not safe)) (__AST-e _id111251_)))
                  (__tmp116143
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid111252_))))
              (declare (not safe))
              (table-set! __tmp116145 __tmp116144 __tmp116143))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id111258_ _eid111259_)
        (let ((_ctx111261_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id111258_ _eid111259_ _ctx111261_))))
    (define __core-bind-runtime!
      (lambda _g116147_
        (let ((_g116146_ (let () (declare (not safe)) (##length _g116147_))))
          (cond ((let () (declare (not safe)) (##fx= _g116146_ 2))
                 (apply (lambda (_id111258_ _eid111259_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id111258_ _eid111259_)))
                        _g116147_))
                ((let () (declare (not safe)) (##fx= _g116146_ 3))
                 (apply (lambda (_id111263_ _eid111264_ _ctx111265_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id111263_
                             _eid111264_
                             _ctx111265_)))
                        _g116147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g116147_))))))
    (define __core-bind-syntax!__%
      (lambda (_id111234_ _e111235_ _make111236_)
        (let ((__tmp116148
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111235_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111235_
                   (_make111236_ _e111235_ _id111234_))))
          (declare (not safe))
          (table-set! __*core* _id111234_ __tmp116148))))
    (define __core-bind-syntax!__0
      (lambda (_id111241_ _e111242_)
        (let ((_make111244_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id111241_ _e111242_ _make111244_))))
    (define __core-bind-syntax!
      (lambda _g116150_
        (let ((_g116149_ (let () (declare (not safe)) (##length _g116150_))))
          (cond ((let () (declare (not safe)) (##fx= _g116149_ 2))
                 (apply (lambda (_id111241_ _e111242_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id111241_ _e111242_)))
                        _g116150_))
                ((let () (declare (not safe)) (##fx= _g116149_ 3))
                 (apply (lambda (_id111246_ _e111247_ _make111248_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id111246_
                             _e111247_
                             _make111248_)))
                        _g116150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116150_))))))
    (define __core-bind-macro!
      (lambda (_id111230_ _e111231_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111230_ _e111231_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id111227_ _e111228_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111227_ _e111228_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id111211_ _e111212_ _ctx111213_)
        (let ((__tmp116154 (##structure-ref _ctx111213_ '4 __context::t '#f))
              (__tmp116153 (let () (declare (not safe)) (__AST-e _id111211_)))
              (__tmp116151
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111212_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111212_
                   (let ((__tmp116152
                          (let () (declare (not safe)) (__AST-e _id111211_))))
                     (declare (not safe))
                     (##structure __syntax::t _e111212_ __tmp116152)))))
          (declare (not safe))
          (table-set! __tmp116154 __tmp116153 __tmp116151))))
    (define __core-bind-user-syntax!__0
      (lambda (_id111218_ _e111219_)
        (let ((_ctx111221_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id111218_ _e111219_ _ctx111221_))))
    (define __core-bind-user-syntax!
      (lambda _g116156_
        (let ((_g116155_ (let () (declare (not safe)) (##length _g116156_))))
          (cond ((let () (declare (not safe)) (##fx= _g116155_ 2))
                 (apply (lambda (_id111218_ _e111219_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id111218_
                             _e111219_)))
                        _g116156_))
                ((let () (declare (not safe)) (##fx= _g116155_ 3))
                 (apply (lambda (_id111223_ _e111224_ _ctx111225_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id111223_
                             _e111224_
                             _ctx111225_)))
                        _g116156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g116156_))))))
    (define make-__runtime-id__%
      (lambda (_id111192_ _ctx111193_)
        (let ((_id111195_ (let () (declare (not safe)) (__AST-e _id111192_))))
          (if (let () (declare (not safe)) (eq? _id111195_ '_))
              '#f
              (if (uninterned-symbol? _id111195_)
                  (gensym _id111195_)
                  (if (let () (declare (not safe)) (symbol? _id111195_))
                      (let ((_$e111197_
                             (##structure-ref
                              _ctx111193_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e111197_))
                            (gensym _id111195_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e111197_))
                                (let ((__tmp116157
                                       (##structure-ref
                                        _ctx111193_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp116157 '"#" _id111195_))
                                _id111195_)))
                      (error '"Illegal runtime identifier" _id111195_)))))))
    (define make-__runtime-id__0
      (lambda (_id111203_)
        (let ((_ctx111205_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id111203_ _ctx111205_))))
    (define make-__runtime-id
      (lambda _g116159_
        (let ((_g116158_ (let () (declare (not safe)) (##length _g116159_))))
          (cond ((let () (declare (not safe)) (##fx= _g116158_ 1))
                 (apply (lambda (_id111203_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id111203_)))
                        _g116159_))
                ((let () (declare (not safe)) (##fx= _g116158_ 2))
                 (apply (lambda (_id111207_ _ctx111208_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id111207_ _ctx111208_)))
                        _g116159_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g116159_))))))
    (define make-__context-local__%
      (lambda (_super111181_)
        (let ((__tmp116160
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super111181_ __tmp116160))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super111187_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super111187_))))
    (define make-__context-local
      (lambda _g116162_
        (let ((_g116161_ (let () (declare (not safe)) (##length _g116162_))))
          (cond ((let () (declare (not safe)) (##fx= _g116161_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g116162_))
                ((let () (declare (not safe)) (##fx= _g116161_ 1))
                 (apply (lambda (_super111189_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super111189_)))
                        _g116162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g116162_))))))
    (define make-__context-module__%
      (lambda (_id111161_ _ns111162_ _path111163_ _super111164_)
        (let ((__tmp116163
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns111162_
           _super111164_
           __tmp116163
           _id111161_
           _path111163_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id111169_ _ns111170_ _path111171_)
        (let ((_super111173_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id111169_
           _ns111170_
           _path111171_
           _super111173_))))
    (define make-__context-module
      (lambda _g116165_
        (let ((_g116164_ (let () (declare (not safe)) (##length _g116165_))))
          (cond ((let () (declare (not safe)) (##fx= _g116164_ 3))
                 (apply (lambda (_id111169_ _ns111170_ _path111171_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id111169_
                             _ns111170_
                             _path111171_)))
                        _g116165_))
                ((let () (declare (not safe)) (##fx= _g116164_ 4))
                 (apply (lambda (_id111175_
                                 _ns111176_
                                 _path111177_
                                 _super111178_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id111175_
                             _ns111176_
                             _path111177_
                             _super111178_)))
                        _g116165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g116165_))))))
    (define __SRC__%
      (lambda (_e111144_ _src-stx111145_)
        (if (or (let () (declare (not safe)) (pair? _e111144_))
                (let () (declare (not safe)) (symbol? _e111144_)))
            (let ((__tmp116169
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx111145_
                          'gerbil#AST::t))
                       (let ((__tmp116170
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx111145_))))
                         (declare (not safe))
                         (__locat __tmp116170))
                       '#f)))
              (declare (not safe))
              (##make-source _e111144_ __tmp116169))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e111144_ 'gerbil#AST::t))
                (let ((__tmp116168
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e111144_ '1 AST::t '#f)))
                      (__tmp116166
                       (let ((__tmp116167
                              (let ()
                                (declare (not safe))
                                (__AST-source _e111144_))))
                         (declare (not safe))
                         (__locat __tmp116167))))
                  (declare (not safe))
                  (##make-source __tmp116168 __tmp116166))
                (error '"BUG! Cannot sourcify object" _e111144_)))))
    (define __SRC__0
      (lambda (_e111153_)
        (let ((_src-stx111155_ '#f))
          (declare (not safe))
          (__SRC__% _e111153_ _src-stx111155_))))
    (define __SRC
      (lambda _g116172_
        (let ((_g116171_ (let () (declare (not safe)) (##length _g116172_))))
          (cond ((let () (declare (not safe)) (##fx= _g116171_ 1))
                 (apply (lambda (_e111153_)
                          (let () (declare (not safe)) (__SRC__0 _e111153_)))
                        _g116172_))
                ((let () (declare (not safe)) (##fx= _g116171_ 2))
                 (apply (lambda (_e111157_ _src-stx111158_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e111157_ _src-stx111158_)))
                        _g116172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116172_))))))
    (define __locat
      (lambda (_loc111141_)
        (if (let () (declare (not safe)) (##locat? _loc111141_))
            _loc111141_
            '#f)))
    (define __check-values
      (lambda (_obj111136_ _k111137_)
        (let ((_count111139_
               (if (let () (declare (not safe)) (##values? _obj111136_))
                   (let () (declare (not safe)) (##vector-length _obj111136_))
                   '1)))
          (if (fx= _count111139_ _k111137_)
              '#!void
              (error (if (fx< _count111139_ _k111137_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj111136_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj111136_))
                         _obj111136_)
                     _k111137_)))))
    (define __compile
      (lambda (_stx111106_)
        (let* ((_$e111108_ _stx111106_)
               (_$E111110111116_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111108_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111108_))
              (let* ((_$tgt111111111119_
                      (let () (declare (not safe)) (__AST-e _$e111108_)))
                     (_$hd111112111122_
                      (let () (declare (not safe)) (##car _$tgt111111111119_)))
                     (_$tl111113111125_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111111111119_))))
                (let* ((_form111129_ _$hd111112111122_)
                       (_$e111131_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form111129_))))
                  (if _$e111131_
                      ((lambda (_bind111134_)
                         ((##structure-ref _bind111134_ '1 __syntax::t '#f)
                          _stx111106_))
                       _$e111131_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx111106_
                         _form111129_)))))
              (let () (declare (not safe)) (_$E111110111116_))))))
    (define __compile-error__%
      (lambda (_stx111093_ _detail111094_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx111093_
           _detail111094_))))
    (define __compile-error__0
      (lambda (_stx111099_)
        (let ((_detail111101_ '#f))
          (declare (not safe))
          (__compile-error__% _stx111099_ _detail111101_))))
    (define __compile-error
      (lambda _g116174_
        (let ((_g116173_ (let () (declare (not safe)) (##length _g116174_))))
          (cond ((let () (declare (not safe)) (##fx= _g116173_ 1))
                 (apply (lambda (_stx111099_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx111099_)))
                        _g116174_))
                ((let () (declare (not safe)) (##fx= _g116173_ 2))
                 (apply (lambda (_stx111103_ _detail111104_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx111103_ _detail111104_)))
                        _g116174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116174_))))))
    (define __compile-ignore%
      (lambda (_stx111090_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx111090_))))
    (define __compile-begin%
      (lambda (_stx111065_)
        (let* ((_$e111067_ _stx111065_)
               (_$E111069111075_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111067_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111067_))
              (let* ((_$tgt111070111078_
                      (let () (declare (not safe)) (__AST-e _$e111067_)))
                     (_$hd111071111081_
                      (let () (declare (not safe)) (##car _$tgt111070111078_)))
                     (_$tl111072111084_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111070111078_))))
                (let* ((_body111088_ _$tl111072111084_)
                       (__tmp116175
                        (let ((__tmp116176 (map __compile _body111088_)))
                          (declare (not safe))
                          (cons 'begin __tmp116176))))
                  (declare (not safe))
                  (__SRC__% __tmp116175 _stx111065_)))
              (let () (declare (not safe)) (_$E111069111075_))))))
    (define __compile-begin-foreign%
      (lambda (_stx111040_)
        (let* ((_$e111042_ _stx111040_)
               (_$E111044111050_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111042_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111042_))
              (let* ((_$tgt111045111053_
                      (let () (declare (not safe)) (__AST-e _$e111042_)))
                     (_$hd111046111056_
                      (let () (declare (not safe)) (##car _$tgt111045111053_)))
                     (_$tl111047111059_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111045111053_))))
                (let* ((_body111063_ _$tl111047111059_)
                       (__tmp116177
                        (let ((__tmp116178
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body111063_))))
                          (declare (not safe))
                          (cons 'begin __tmp116178))))
                  (declare (not safe))
                  (__SRC__% __tmp116177 _stx111040_)))
              (let () (declare (not safe)) (_$E111044111050_))))))
    (define __compile-import%
      (lambda (_stx111015_)
        (let* ((_$e111017_ _stx111015_)
               (_$E111019111025_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111017_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111017_))
              (let* ((_$tgt111020111028_
                      (let () (declare (not safe)) (__AST-e _$e111017_)))
                     (_$hd111021111031_
                      (let () (declare (not safe)) (##car _$tgt111020111028_)))
                     (_$tl111022111034_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111020111028_))))
                (let* ((_body111038_ _$tl111022111034_)
                       (__tmp116179
                        (let ((__tmp116180
                               (let ((__tmp116181
                                      (let ((__tmp116182
                                             (let ()
                                               (declare (not safe))
                                               (cons _body111038_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp116182))))
                                 (declare (not safe))
                                 (cons __tmp116181 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp116180))))
                  (declare (not safe))
                  (__SRC__% __tmp116179 _stx111015_)))
              (let () (declare (not safe)) (_$E111019111025_))))))
    (define __compile-begin-annotation%
      (lambda (_stx110962_)
        (let* ((_$e110964_ _stx110962_)
               (_$E110966110978_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110964_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110964_))
              (let* ((_$tgt110967110981_
                      (let () (declare (not safe)) (__AST-e _$e110964_)))
                     (_$hd110968110984_
                      (let () (declare (not safe)) (##car _$tgt110967110981_)))
                     (_$tl110969110987_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110967110981_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110969110987_))
                    (let* ((_$tgt110970110991_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110969110987_)))
                           (_$hd110971110994_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110970110991_)))
                           (_$tl110972110997_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110970110991_))))
                      (let ((_ann111001_ _$hd110971110994_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110972110997_))
                            (let* ((_$tgt110973111003_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110972110997_)))
                                   (_$hd110974111006_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110973111003_)))
                                   (_$tl110975111009_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110973111003_))))
                              (let ((_expr111013_ _$hd110974111006_))
                                (if (let ((__tmp116183
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110975111009_))))
                                      (declare (not safe))
                                      (equal? __tmp116183 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr111013_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110966110978_)))))
                            (let () (declare (not safe)) (_$E110966110978_)))))
                    (let () (declare (not safe)) (_$E110966110978_))))
              (let () (declare (not safe)) (_$E110966110978_))))))
    (define __compile-define-values%
      (lambda (_stx110853_)
        (let* ((_$e110855_ _stx110853_)
               (_$E110857110869_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110855_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110855_))
              (let* ((_$tgt110858110872_
                      (let () (declare (not safe)) (__AST-e _$e110855_)))
                     (_$hd110859110875_
                      (let () (declare (not safe)) (##car _$tgt110858110872_)))
                     (_$tl110860110878_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110858110872_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110860110878_))
                    (let* ((_$tgt110861110882_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110860110878_)))
                           (_$hd110862110885_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110861110882_)))
                           (_$tl110863110888_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110861110882_))))
                      (let ((_hd110892_ _$hd110862110885_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110863110888_))
                            (let* ((_$tgt110864110894_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110863110888_)))
                                   (_$hd110865110897_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110864110894_)))
                                   (_$tl110866110900_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110864110894_))))
                              (let ((_expr110904_ _$hd110865110897_))
                                (if (let ((__tmp116216
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110866110900_))))
                                      (declare (not safe))
                                      (equal? __tmp116216 '()))
                                    (let* ((_$e110906_ _hd110892_)
                                           (_$E110908110949_
                                            (lambda ()
                                              (let ((_$E110909110934_
                                                     (lambda ()
                                                       (let* ((_$E110910110921_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e110906_))))
                      (_ids110924_ _hd110892_)
                      (_len110926_ (length _ids110924_))
                      (_tmp110928_
                       (let ((__tmp116184 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp116184))))
                 (let ((__tmp116185
                        (let ((__tmp116186
                               (let ((__tmp116203
                                      (let ((__tmp116204
                                             (let ((__tmp116205
                                                    (let ((__tmp116206
                                                           (let ((__tmp116207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr110904_))))
                     (declare (not safe))
                     (cons __tmp116207 '()))))
              (declare (not safe))
              (cons _tmp110928_ __tmp116206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp116205))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116204 _stx110853_)))
                                     (__tmp116187
                                      (let ((__tmp116199
                                             (let ((__tmp116200
                                                    (let ((__tmp116201
                                                           (let ((__tmp116202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len110926_ '()))))
                     (declare (not safe))
                     (cons _tmp110928_ __tmp116202))))
              (declare (not safe))
              (cons '__check-values __tmp116201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp116200
                                                _stx110853_)))
                                            (__tmp116188
                                             (let ((__tmp116189
                                                    (let ((__tmp116191
                                                           (lambda (_id110931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k110932_)
                     (if (let () (declare (not safe)) (__AST-e _id110931_))
                         (let ((__tmp116192
                                (let ((__tmp116193
                                       (let ((__tmp116198
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id110931_)))
                                             (__tmp116194
                                              (let ((__tmp116195
                                                     (let ((__tmp116196
                                                            (let ((__tmp116197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k110932_ '()))))
                      (declare (not safe))
                      (cons _tmp110928_ __tmp116197))))
               (declare (not safe))
               (cons '##vector-ref __tmp116196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116195 '()))))
                                         (declare (not safe))
                                         (cons __tmp116198 __tmp116194))))
                                  (declare (not safe))
                                  (cons 'define __tmp116193))))
                           (declare (not safe))
                           (__SRC__% __tmp116192 _stx110853_))
                         '#f)))
                  (__tmp116190
                   (let () (declare (not safe)) (iota _len110926_))))
              (declare (not safe))
              (filter-map2 __tmp116191 _ids110924_ __tmp116190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp116189))))
                                        (declare (not safe))
                                        (cons __tmp116199 __tmp116188))))
                                 (declare (not safe))
                                 (cons __tmp116203 __tmp116187))))
                          (declare (not safe))
                          (cons 'begin __tmp116186))))
                   (declare (not safe))
                   (__SRC__% __tmp116185 _stx110853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e110906_))
                                                    (let* ((_$tgt110911110937_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e110906_)))
                                                           (_$hd110912110940_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt110911110937_)))
                                                           (_$tl110913110943_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt110911110937_))))
                                                      (let ((_id110947_
                                                             _$hd110912110940_))
                                                        (if (let ((__tmp116213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl110913110943_))))
                      (declare (not safe))
                      (equal? __tmp116213 '()))
                    (let ((__tmp116208
                           (let ((__tmp116209
                                  (let ((__tmp116212
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id110947_)))
                                        (__tmp116210
                                         (let ((__tmp116211
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr110904_))))
                                           (declare (not safe))
                                           (cons __tmp116211 '()))))
                                    (declare (not safe))
                                    (cons __tmp116212 __tmp116210))))
                             (declare (not safe))
                             (cons 'define __tmp116209))))
                      (declare (not safe))
                      (__SRC__% __tmp116208 _stx110853_))
                    (let () (declare (not safe)) (_$E110909110934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110909110934_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e110906_))
                                          (let* ((_$tgt110914110952_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e110906_)))
                                                 (_$hd110915110955_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110914110952_)))
                                                 (_$tl110916110958_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110914110952_))))
                                            (if (let ((__tmp116215
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd110915110955_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116215 '#f))
                                                (if (let ((__tmp116214
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl110916110958_))))
                                                      (declare (not safe))
                                                      (equal? __tmp116214 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr110904_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110908110949_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110908110949_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110908110949_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110857110869_)))))
                            (let () (declare (not safe)) (_$E110857110869_)))))
                    (let () (declare (not safe)) (_$E110857110869_))))
              (let () (declare (not safe)) (_$E110857110869_))))))
    (define __compile-head-id
      (lambda (_e110851_)
        (let ((__tmp116217
               (if (let () (declare (not safe)) (__AST-e _e110851_))
                   _e110851_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp116217))))
    (define __compile-lambda-head
      (lambda (_hd110808_)
        (let _recur110810_ ((_rest110812_ _hd110808_))
          (let* ((_$e110814_ _rest110812_)
                 (_$E110816110834_
                  (lambda ()
                    (let ((_$E110817110831_
                           (lambda ()
                             (let* ((_$E110818110826_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e110814_))))
                                    (_tail110829_ _$e110814_))
                               (declare (not safe))
                               (__compile-head-id _tail110829_)))))
                      (if (let ((__tmp116218
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e110814_))))
                            (declare (not safe))
                            (equal? __tmp116218 '()))
                          '()
                          (let () (declare (not safe)) (_$E110817110831_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110814_))
                (let* ((_$tgt110819110837_
                        (let () (declare (not safe)) (__AST-e _$e110814_)))
                       (_$hd110820110840_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110819110837_)))
                       (_$tl110821110843_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110819110837_))))
                  (let* ((_hd110847_ _$hd110820110840_)
                         (_rest110849_ _$tl110821110843_))
                    (let ((__tmp116220
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd110847_)))
                          (__tmp116219
                           (let ()
                             (declare (not safe))
                             (_recur110810_ _rest110849_))))
                      (declare (not safe))
                      (cons __tmp116220 __tmp116219))))
                (let () (declare (not safe)) (_$E110816110834_)))))))
    (define __compile-lambda%
      (lambda (_stx110755_)
        (let* ((_$e110757_ _stx110755_)
               (_$E110759110771_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110757_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110757_))
              (let* ((_$tgt110760110774_
                      (let () (declare (not safe)) (__AST-e _$e110757_)))
                     (_$hd110761110777_
                      (let () (declare (not safe)) (##car _$tgt110760110774_)))
                     (_$tl110762110780_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110760110774_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110762110780_))
                    (let* ((_$tgt110763110784_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110762110780_)))
                           (_$hd110764110787_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110763110784_)))
                           (_$tl110765110790_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110763110784_))))
                      (let ((_hd110794_ _$hd110764110787_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110765110790_))
                            (let* ((_$tgt110766110796_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110765110790_)))
                                   (_$hd110767110799_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110766110796_)))
                                   (_$tl110768110802_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110766110796_))))
                              (let ((_body110806_ _$hd110767110799_))
                                (if (let ((__tmp116226
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110768110802_))))
                                      (declare (not safe))
                                      (equal? __tmp116226 '()))
                                    (let ((__tmp116221
                                           (let ((__tmp116222
                                                  (let ((__tmp116225
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd110794_)))
                                                        (__tmp116223
                                                         (let ((__tmp116224
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body110806_))))
                   (declare (not safe))
                   (cons __tmp116224 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116225
                                                          __tmp116223))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp116222))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116221 _stx110755_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110759110771_)))))
                            (let () (declare (not safe)) (_$E110759110771_)))))
                    (let () (declare (not safe)) (_$E110759110771_))))
              (let () (declare (not safe)) (_$E110759110771_))))))
    (define __compile-case-lambda%
      (lambda (_stx110547_)
        (letrec ((_variadic?110549_
                  (lambda (_hd110720_)
                    (let* ((_$e110722_ _hd110720_)
                           (_$E110724110740_
                            (lambda ()
                              (let ((_$E110725110737_
                                     (lambda ()
                                       (let ((_$E110726110734_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e110722_)))))
                                         '#t))))
                                (if (let ((__tmp116227
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e110722_))))
                                      (declare (not safe))
                                      (equal? __tmp116227 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E110725110737_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110722_))
                          (let* ((_$tgt110727110743_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110722_)))
                                 (_$hd110728110746_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110727110743_)))
                                 (_$tl110729110749_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110727110743_))))
                            (let ((_rest110753_ _$tl110729110749_))
                              (declare (not safe))
                              (_variadic?110549_ _rest110753_)))
                          (let () (declare (not safe)) (_$E110724110740_))))))
                 (_arity110550_
                  (lambda (_hd110685_)
                    (let _lp110687_ ((_rest110689_ _hd110685_) (_k110690_ '0))
                      (let* ((_$e110692_ _rest110689_)
                             (_$E110694110705_
                              (lambda ()
                                (let ((_$E110695110702_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e110692_)))))
                                  _k110690_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e110692_))
                            (let* ((_$tgt110696110708_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e110692_)))
                                   (_$hd110697110711_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110696110708_)))
                                   (_$tl110698110714_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110696110708_))))
                              (let* ((_rest110718_ _$tl110698110714_)
                                     (__tmp116228
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k110690_ '1))))
                                (declare (not safe))
                                (_lp110687_ _rest110718_ __tmp116228)))
                            (let ()
                              (declare (not safe))
                              (_$E110694110705_)))))))
                 (_generate110551_
                  (lambda (_rest110612_ _args110613_ _len110614_)
                    (let* ((_$e110616_ _rest110612_)
                           (_$E110618110629_
                            (lambda ()
                              (let* ((_$E110619110626_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e110616_))))
                                     (__tmp116229
                                      (let ((__tmp116230
                                             (let ((__tmp116231
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110613_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp116231))))
                                        (declare (not safe))
                                        (cons 'error __tmp116230))))
                                (declare (not safe))
                                (__SRC__% __tmp116229 _stx110547_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110616_))
                          (let* ((_$tgt110620110632_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110616_)))
                                 (_$hd110621110635_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110620110632_)))
                                 (_$tl110622110638_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110620110632_))))
                            (let* ((_clause110642_ _$hd110621110635_)
                                   (_rest110644_ _$tl110622110638_)
                                   (_$e110646_ _clause110642_)
                                   (_$E110648110657_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e110646_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e110646_))
                                  (let* ((_$tgt110649110660_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e110646_)))
                                         (_$hd110650110663_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt110649110660_)))
                                         (_$tl110651110666_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt110649110660_))))
                                    (let ((_hd110670_ _$hd110650110663_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl110651110666_))
                                          (let* ((_$tgt110652110672_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110651110666_)))
                                                 (_$hd110653110675_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110652110672_)))
                                                 (_$tl110654110678_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110652110672_))))
                                            (if (let ((__tmp116246
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110654110678_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116246 '()))
                                                (let ((_clen110682_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity110550_
                                                          _hd110670_)))
                                                      (_cmp110683_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?110549_
                                                              _hd110670_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp116232
                                                         (let ((__tmp116233
                                                                (let ((__tmp116243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116244
                                      (let ((__tmp116245
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen110682_ '()))))
                                        (declare (not safe))
                                        (cons _len110614_ __tmp116245))))
                                 (declare (not safe))
                                 (cons _cmp110683_ __tmp116244)))
                              (__tmp116234
                               (let ((__tmp116237
                                      (let ((__tmp116238
                                             (let ((__tmp116239
                                                    (let ((__tmp116241
                                                           (let ((__tmp116242
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause110642_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp116242)))
                  (__tmp116240
                   (let () (declare (not safe)) (cons _args110613_ '()))))
              (declare (not safe))
              (cons __tmp116241 __tmp116240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp116239))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116238 _stx110547_)))
                                     (__tmp116235
                                      (let ((__tmp116236
                                             (let ()
                                               (declare (not safe))
                                               (_generate110551_
                                                _rest110644_
                                                _args110613_
                                                _len110614_))))
                                        (declare (not safe))
                                        (cons __tmp116236 '()))))
                                 (declare (not safe))
                                 (cons __tmp116237 __tmp116235))))
                          (declare (not safe))
                          (cons __tmp116243 __tmp116234))))
                   (declare (not safe))
                   (cons 'if __tmp116233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp116232
                                                     _stx110547_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110648110657_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110648110657_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E110648110657_)))))
                          (let () (declare (not safe)) (_$E110618110629_)))))))
          (let* ((_$e110553_ _stx110547_)
                 (_$E110555110587_
                  (lambda ()
                    (let ((_$E110556110569_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110553_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110553_))
                          (let* ((_$tgt110557110572_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110553_)))
                                 (_$hd110558110575_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110557110572_)))
                                 (_$tl110559110578_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110557110572_))))
                            (let ((_clauses110582_ _$tl110559110578_))
                              (let ((_args110584_
                                     (let ((__tmp116247 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116247 _stx110547_)))
                                    (_len110585_
                                     (let ((__tmp116248 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116248 _stx110547_))))
                                (let ((__tmp116249
                                       (let ((__tmp116250
                                              (let ((__tmp116251
                                                     (let ((__tmp116252
                                                            (let ((__tmp116253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116254
                                  (let ((__tmp116257
                                         (let ((__tmp116258
                                                (let ((__tmp116259
                                                       (let ((__tmp116260
                                                              (let ((__tmp116261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp116262
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110584_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp116262))))
                        (declare (not safe))
                        (__SRC__% __tmp116261 _stx110547_))))
                 (declare (not safe))
                 (cons __tmp116260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len110585_
                                                        __tmp116259))))
                                           (declare (not safe))
                                           (cons __tmp116258 '())))
                                        (__tmp116255
                                         (let ((__tmp116256
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate110551_
                                                   _clauses110582_
                                                   _args110584_
                                                   _len110585_))))
                                           (declare (not safe))
                                           (cons __tmp116256 '()))))
                                    (declare (not safe))
                                    (cons __tmp116257 __tmp116255))))
                             (declare (not safe))
                             (cons 'let __tmp116254))))
                      (declare (not safe))
                      (__SRC__% __tmp116253 _stx110547_))))
               (declare (not safe))
               (cons __tmp116252 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args110584_
                                                      __tmp116251))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp116250))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116249 _stx110547_)))))
                          (let () (declare (not safe)) (_$E110556110569_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110553_))
                (let* ((_$tgt110560110590_
                        (let () (declare (not safe)) (__AST-e _$e110553_)))
                       (_$hd110561110593_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110560110590_)))
                       (_$tl110562110596_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110560110590_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110562110596_))
                      (let* ((_$tgt110563110600_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110562110596_)))
                             (_$hd110564110603_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110563110600_)))
                             (_$tl110565110606_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110563110600_))))
                        (let ((_clause110610_ _$hd110564110603_))
                          (if (let ((__tmp116264
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl110565110606_))))
                                (declare (not safe))
                                (equal? __tmp116264 '()))
                              (let ((__tmp116263
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause110610_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp116263))
                              (let ()
                                (declare (not safe))
                                (_$E110555110587_)))))
                      (let () (declare (not safe)) (_$E110555110587_))))
                (let () (declare (not safe)) (_$E110555110587_)))))))
    (define __compile-let-form
      (lambda (_stx110316_ _compile-simple110317_ _compile-values110318_)
        (letrec ((_simple-bind?110320_
                  (lambda (_hd110505_)
                    (let* ((_hd110506110516_ _hd110505_)
                           (_else110509110524_ (lambda () '#f)))
                      (let ((_K110512110537_ (lambda (_id110535_) '#t))
                            (_K110511110529_ (lambda () '#t)))
                        (let ((_try-match110508110532_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd110506110516_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K110511110529_))
                                     (let ()
                                       (declare (not safe))
                                       (_else110509110524_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd110506110516_))
                              (let ((_tl110514110542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd110506110516_)))
                                    (_hd110513110540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd110506110516_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl110514110542_))
                                    (let ((_id110545_ _hd110513110540_))
                                      (declare (not safe))
                                      (_K110512110537_ _id110545_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match110508110532_))))
                              (let ()
                                (declare (not safe))
                                (_try-match110508110532_))))))))
                 (_car-e110321_
                  (lambda (_hd110503_)
                    (if (let () (declare (not safe)) (pair? _hd110503_))
                        (car _hd110503_)
                        _hd110503_))))
          (let* ((_$e110323_ _stx110316_)
                 (_$E110325110468_
                  (lambda ()
                    (let ((_$E110326110348_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110323_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110323_))
                          (let* ((_$tgt110327110351_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110323_)))
                                 (_$hd110328110354_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110327110351_)))
                                 (_$tl110329110357_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110327110351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110329110357_))
                                (let* ((_$tgt110330110361_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110329110357_)))
                                       (_$hd110331110364_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110330110361_)))
                                       (_$tl110332110367_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110330110361_))))
                                  (let ((_hd110371_ _$hd110331110364_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl110332110367_))
                                        (let* ((_$tgt110333110373_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl110332110367_)))
                                               (_$hd110334110376_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt110333110373_)))
                                               (_$tl110335110379_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt110333110373_))))
                                          (let ((_body110383_
                                                 _$hd110334110376_))
                                            (if (let ((__tmp116267
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110335110379_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116267 '()))
                                                (let* ((_hd-ids110423_
                                                        (map (lambda (_bind110385_)
                                                               (let* ((_$e110387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind110385_)
                              (_$E110389110398_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110387_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110387_))
                             (let* ((_$tgt110390110401_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110387_)))
                                    (_$hd110391110404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110390110401_)))
                                    (_$tl110392110407_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110390110401_))))
                               (let ((_ids110411_ _$hd110391110404_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl110392110407_))
                                     (let* ((_$tgt110393110413_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl110392110407_)))
                                            (_$hd110394110416_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt110393110413_)))
                                            (_$tl110395110419_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt110393110413_))))
                                       (if (let ((__tmp116265
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110395110419_))))
                                             (declare (not safe))
                                             (equal? __tmp116265 '()))
                                           _ids110411_
                                           (let ()
                                             (declare (not safe))
                                             (_$E110389110398_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E110389110398_)))))
                             (let ()
                               (declare (not safe))
                               (_$E110389110398_)))))
                     _hd110371_))
               (_exprs110463_
                (map (lambda (_bind110425_)
                       (let* ((_$e110427_ _bind110425_)
                              (_$E110429110438_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110427_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110427_))
                             (let* ((_$tgt110430110441_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110427_)))
                                    (_$hd110431110444_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110430110441_)))
                                    (_$tl110432110447_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110430110441_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl110432110447_))
                                   (let* ((_$tgt110433110451_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110432110447_)))
                                          (_$hd110434110454_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt110433110451_)))
                                          (_$tl110435110457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt110433110451_))))
                                     (let ((_expr110461_ _$hd110434110454_))
                                       (if (let ((__tmp116266
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110435110457_))))
                                             (declare (not safe))
                                             (equal? __tmp116266 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr110461_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E110429110438_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E110429110438_))))
                             (let ()
                               (declare (not safe))
                               (_$E110429110438_)))))
                     _hd110371_))
               (_body110465_
                (let () (declare (not safe)) (__compile _body110383_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?110320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids110423_))
              (_compile-simple110317_
               (map _car-e110321_ _hd-ids110423_)
               _exprs110463_
               _body110465_)
              (_compile-values110318_
               _hd-ids110423_
               _exprs110463_
               _body110465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110326110348_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110326110348_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110326110348_))))
                          (let () (declare (not safe)) (_$E110326110348_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110323_))
                (let* ((_$tgt110336110471_
                        (let () (declare (not safe)) (__AST-e _$e110323_)))
                       (_$hd110337110474_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110336110471_)))
                       (_$tl110338110477_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110336110471_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110338110477_))
                      (let* ((_$tgt110339110481_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110338110477_)))
                             (_$hd110340110484_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110339110481_)))
                             (_$tl110341110487_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110339110481_))))
                        (if (let ((__tmp116269
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd110340110484_))))
                              (declare (not safe))
                              (equal? __tmp116269 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110341110487_))
                                (let* ((_$tgt110342110491_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110341110487_)))
                                       (_$hd110343110494_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110342110491_)))
                                       (_$tl110344110497_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110342110491_))))
                                  (let ((_body110501_ _$hd110343110494_))
                                    (if (let ((__tmp116268
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl110344110497_))))
                                          (declare (not safe))
                                          (equal? __tmp116268 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body110501_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110325110468_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110325110468_)))
                            (let () (declare (not safe)) (_$E110325110468_))))
                      (let () (declare (not safe)) (_$E110325110468_))))
                (let () (declare (not safe)) (_$E110325110468_)))))))
    (define __compile-let-values%
      (lambda (_stx110131_)
        (letrec ((_compile-simple110133_
                  (lambda (_hd-ids110312_ _exprs110313_ _body110314_)
                    (let ((__tmp116270
                           (let ((__tmp116271
                                  (let ((__tmp116273
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110312_)
                                              _exprs110313_))
                                        (__tmp116272
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110314_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116273 __tmp116272))))
                             (declare (not safe))
                             (cons 'let __tmp116271))))
                      (declare (not safe))
                      (__SRC__% __tmp116270 _stx110131_))))
                 (_compile-values110134_
                  (lambda (_hd-ids110230_ _exprs110231_ _body110232_)
                    (let _lp110234_ ((_rest110236_ _hd-ids110230_)
                                     (_exprs110237_ _exprs110231_)
                                     (_bind110238_ '())
                                     (_post110239_ '()))
                      (let* ((_rest110240110254_ _rest110236_)
                             (_else110243110262_
                              (lambda ()
                                (let ((__tmp116274
                                       (let ((__tmp116275
                                              (let ((__tmp116278
                                                     (reverse _bind110238_))
                                                    (__tmp116276
                                                     (let ((__tmp116277
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post110135_
                                                               _post110239_
                                                               _body110232_))))
                                                       (declare (not safe))
                                                       (cons __tmp116277
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp116278
                                                      __tmp116276))))
                                         (declare (not safe))
                                         (cons 'let __tmp116275))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116274 _stx110131_)))))
                        (let ((_K110248110295_
                               (lambda (_rest110292_ _id110293_)
                                 (let ((__tmp116284 (cdr _exprs110237_))
                                       (__tmp116279
                                        (let ((__tmp116280
                                               (let ((__tmp116283
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110293_)))
                                                     (__tmp116281
                                                      (let ((__tmp116282
                                                             (car _exprs110237_)))
                                                        (declare (not safe))
                                                        (cons __tmp116282
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116283
                                                       __tmp116281))))
                                          (declare (not safe))
                                          (cons __tmp116280 _bind110238_))))
                                   (declare (not safe))
                                   (_lp110234_
                                    _rest110292_
                                    __tmp116284
                                    __tmp116279
                                    _post110239_))))
                              (_K110245110277_
                               (lambda (_rest110266_ _hd110267_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110267_))
                                     (let ((__tmp116305 (cdr _exprs110237_))
                                           (__tmp116298
                                            (let ((__tmp116299
                                                   (let ((__tmp116304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110267_)))
                                                         (__tmp116300
                                                          (let ((__tmp116301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116302
                                (let ((__tmp116303 (car _exprs110237_)))
                                  (declare (not safe))
                                  (cons __tmp116303 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116302))))
                    (declare (not safe))
                    (cons __tmp116301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116304
                                                           __tmp116300))))
                                              (declare (not safe))
                                              (cons __tmp116299
                                                    _bind110238_))))
                                       (declare (not safe))
                                       (_lp110234_
                                        _rest110266_
                                        __tmp116305
                                        __tmp116298
                                        _post110239_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110267_))
                                         (let* ((_len110269_
                                                 (length _hd110267_))
                                                (_tmp110271_
                                                 (let ((__tmp116285 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116285))))
                                           (let ((__tmp116297
                                                  (cdr _exprs110237_))
                                                 (__tmp116293
                                                  (let ((__tmp116294
                                                         (let ((__tmp116295
                                                                (let ((__tmp116296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110237_)))
                          (declare (not safe))
                          (cons __tmp116296 '()))))
                   (declare (not safe))
                   (cons _tmp110271_ __tmp116295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116294
                                                          _bind110238_)))
                                                 (__tmp116286
                                                  (let ((__tmp116287
                                                         (let ((__tmp116288
                                                                (let ((__tmp116289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116291
                                      (lambda (_id110274_ _k110275_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110274_))
                                            (let ((__tmp116292
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110274_))))
                                              (declare (not safe))
                                              (cons __tmp116292 _k110275_))
                                            '#f)))
                                     (__tmp116290
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110269_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116291
                                  _hd110267_
                                  __tmp116290))))
                          (declare (not safe))
                          (cons _len110269_ __tmp116289))))
                   (declare (not safe))
                   (cons _tmp110271_ __tmp116288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116287
                                                          _post110239_))))
                                             (declare (not safe))
                                             (_lp110234_
                                              _rest110266_
                                              __tmp116297
                                              __tmp116293
                                              __tmp116286)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx110131_
                                            _hd110267_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110240110254_))
                              (let ((_tl110250110300_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110240110254_)))
                                    (_hd110249110298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110240110254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110249110298_))
                                    (let ((_tl110252110305_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110249110298_)))
                                          (_hd110251110303_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110249110298_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110252110305_))
                                          (let ((_id110308_ _hd110251110303_)
                                                (_rest110310_
                                                 _tl110250110300_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110248110295_
                                               _rest110310_
                                               _id110308_)))
                                          (let ((_hd110285_ _hd110249110298_)
                                                (_rest110287_
                                                 _tl110250110300_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110245110277_
                                               _rest110287_
                                               _hd110285_)))))
                                    (let ((_hd110285_ _hd110249110298_)
                                          (_rest110287_ _tl110250110300_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110245110277_
                                         _rest110287_
                                         _hd110285_)))))
                              (let ()
                                (declare (not safe))
                                (_else110243110262_))))))))
                 (_compile-post110135_
                  (lambda (_post110137_ _body110138_)
                    (let _lp110140_ ((_rest110142_ _post110137_)
                                     (_check110143_ '())
                                     (_bind110144_ '()))
                      (let* ((_rest110145110157_ _rest110142_)
                             (_else110147110165_
                              (lambda ()
                                (let ((__tmp116306
                                       (let ((__tmp116307
                                              (let ((__tmp116308
                                                     (let ((__tmp116309
                                                            (let ((__tmp116310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116311
                                  (let ((__tmp116312
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110138_ '()))))
                                    (declare (not safe))
                                    (cons _bind110144_ __tmp116312))))
                             (declare (not safe))
                             (cons 'let __tmp116311))))
                      (declare (not safe))
                      (__SRC__% __tmp116310 _stx110131_))))
               (declare (not safe))
               (cons __tmp116309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116308
                                                        _check110143_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116307))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116306 _stx110131_))))
                             (_K110149110204_
                              (lambda (_rest110168_
                                       _init110169_
                                       _len110170_
                                       _tmp110171_)
                                (let ((__tmp116320
                                       (let ((__tmp116321
                                              (let ((__tmp116322
                                                     (let ((__tmp116323
                                                            (let ((__tmp116324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len110170_ '()))))
                      (declare (not safe))
                      (cons _tmp110171_ __tmp116324))))
               (declare (not safe))
               (cons '__check-values __tmp116323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116322
                                                 _stx110131_))))
                                         (declare (not safe))
                                         (cons __tmp116321 _check110143_)))
                                      (__tmp116313
                                       (let ((__tmp116314
                                              (lambda (_hd110173_ _r110174_)
                                                (let* ((_hd110175110182_
                                                        _hd110173_)
                                                       (_E110177110186_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd110175110182_)))
               (_K110178110192_
                (lambda (_k110189_ _id110190_)
                  (let ((__tmp116315
                         (let ((__tmp116316
                                (let ((__tmp116317
                                       (let ((__tmp116318
                                              (let ((__tmp116319
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k110189_ '()))))
                                                (declare (not safe))
                                                (cons _tmp110171_
                                                      __tmp116319))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp116318))))
                                  (declare (not safe))
                                  (cons __tmp116317 '()))))
                           (declare (not safe))
                           (cons _id110190_ __tmp116316))))
                    (declare (not safe))
                    (cons __tmp116315 _r110174_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd110175110182_))
                                                      (let ((_hd110179110195_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd110175110182_)))
                    (_tl110180110197_
                     (let () (declare (not safe)) (##cdr _hd110175110182_))))
                (let* ((_id110200_ _hd110179110195_)
                       (_k110202_ _tl110180110197_))
                  (declare (not safe))
                  (_K110178110192_ _k110202_ _id110200_)))
              (let () (declare (not safe)) (_E110177110186_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116314
                                                 _bind110144_
                                                 _init110169_))))
                                  (declare (not safe))
                                  (_lp110140_
                                   _rest110168_
                                   __tmp116320
                                   __tmp116313)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110145110157_))
                            (let ((_hd110150110207_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110145110157_)))
                                  (_tl110151110209_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110145110157_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd110150110207_))
                                  (let ((_hd110152110212_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd110150110207_)))
                                        (_tl110153110214_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd110150110207_))))
                                    (let ((_tmp110217_ _hd110152110212_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl110153110214_))
                                          (let ((_hd110154110219_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl110153110214_)))
                                                (_tl110155110221_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl110153110214_))))
                                            (let* ((_len110224_
                                                    _hd110154110219_)
                                                   (_init110226_
                                                    _tl110155110221_)
                                                   (_rest110228_
                                                    _tl110151110209_))
                                              (declare (not safe))
                                              (_K110149110204_
                                               _rest110228_
                                               _init110226_
                                               _len110224_
                                               _tmp110217_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else110147110165_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else110147110165_))))
                            (let ()
                              (declare (not safe))
                              (_else110147110165_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx110131_
             _compile-simple110133_
             _compile-values110134_)))))
    (define __compile-letrec-values%
      (lambda (_stx109931_)
        (letrec ((_compile-simple109933_
                  (lambda (_hd-ids110127_ _exprs110128_ _body110129_)
                    (let ((__tmp116325
                           (let ((__tmp116326
                                  (let ((__tmp116328
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110127_)
                                              _exprs110128_))
                                        (__tmp116327
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110129_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116328 __tmp116327))))
                             (declare (not safe))
                             (cons 'letrec __tmp116326))))
                      (declare (not safe))
                      (__SRC__% __tmp116325 _stx109931_))))
                 (_compile-values109934_
                  (lambda (_hd-ids110041_ _exprs110042_ _body110043_)
                    (let _lp110045_ ((_rest110047_ _hd-ids110041_)
                                     (_exprs110048_ _exprs110042_)
                                     (_pre110049_ '())
                                     (_bind110050_ '())
                                     (_post110051_ '()))
                      (let* ((_rest110052110066_ _rest110047_)
                             (_else110055110074_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner109935_
                                   _pre110049_
                                   _bind110050_
                                   _post110051_
                                   _body110043_)))))
                        (let ((_K110060110110_
                               (lambda (_rest110107_ _id110108_)
                                 (let ((__tmp116334 (cdr _exprs110048_))
                                       (__tmp116329
                                        (let ((__tmp116330
                                               (let ((__tmp116333
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110108_)))
                                                     (__tmp116331
                                                      (let ((__tmp116332
                                                             (car _exprs110048_)))
                                                        (declare (not safe))
                                                        (cons __tmp116332
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116333
                                                       __tmp116331))))
                                          (declare (not safe))
                                          (cons __tmp116330 _bind110050_))))
                                   (declare (not safe))
                                   (_lp110045_
                                    _rest110107_
                                    __tmp116334
                                    _pre110049_
                                    __tmp116329
                                    _post110051_))))
                              (_K110057110092_
                               (lambda (_rest110078_ _hd110079_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110079_))
                                     (let ((__tmp116362 (cdr _exprs110048_))
                                           (__tmp116355
                                            (let ((__tmp116356
                                                   (let ((__tmp116361
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110079_)))
                                                         (__tmp116357
                                                          (let ((__tmp116358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116359
                                (let ((__tmp116360 (car _exprs110048_)))
                                  (declare (not safe))
                                  (cons __tmp116360 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116359))))
                    (declare (not safe))
                    (cons __tmp116358 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116361
                                                           __tmp116357))))
                                              (declare (not safe))
                                              (cons __tmp116356
                                                    _bind110050_))))
                                       (declare (not safe))
                                       (_lp110045_
                                        _rest110078_
                                        __tmp116362
                                        _pre110049_
                                        __tmp116355
                                        _post110051_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110079_))
                                         (let* ((_len110081_
                                                 (length _hd110079_))
                                                (_tmp110083_
                                                 (let ((__tmp116335 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116335))))
                                           (let ((__tmp116354
                                                  (cdr _exprs110048_))
                                                 (__tmp116347
                                                  (let ((__tmp116348
                                                         (lambda (_id110086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r110087_)
                   (if (let () (declare (not safe)) (__AST-e _id110086_))
                       (let ((__tmp116349
                              (let ((__tmp116353
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id110086_)))
                                    (__tmp116350
                                     (let ((__tmp116351
                                            (let ((__tmp116352
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp116352))))
                                       (declare (not safe))
                                       (cons __tmp116351 '()))))
                                (declare (not safe))
                                (cons __tmp116353 __tmp116350))))
                         (declare (not safe))
                         (cons __tmp116349 _r110087_))
                       _r110087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp116348
                                                            _pre110049_
                                                            _hd110079_)))
                                                 (__tmp116343
                                                  (let ((__tmp116344
                                                         (let ((__tmp116345
                                                                (let ((__tmp116346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110048_)))
                          (declare (not safe))
                          (cons __tmp116346 '()))))
                   (declare (not safe))
                   (cons _tmp110083_ __tmp116345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116344
                                                          _bind110050_)))
                                                 (__tmp116336
                                                  (let ((__tmp116337
                                                         (let ((__tmp116338
                                                                (let ((__tmp116339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116341
                                      (lambda (_id110089_ _k110090_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110089_))
                                            (let ((__tmp116342
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110089_))))
                                              (declare (not safe))
                                              (cons __tmp116342 _k110090_))
                                            '#f)))
                                     (__tmp116340
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110081_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116341
                                  _hd110079_
                                  __tmp116340))))
                          (declare (not safe))
                          (cons _len110081_ __tmp116339))))
                   (declare (not safe))
                   (cons _tmp110083_ __tmp116338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116337
                                                          _post110051_))))
                                             (declare (not safe))
                                             (_lp110045_
                                              _rest110078_
                                              __tmp116354
                                              __tmp116347
                                              __tmp116343
                                              __tmp116336)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx109931_
                                            _hd110079_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110052110066_))
                              (let ((_tl110062110115_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110052110066_)))
                                    (_hd110061110113_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110052110066_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110061110113_))
                                    (let ((_tl110064110120_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110061110113_)))
                                          (_hd110063110118_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110061110113_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110064110120_))
                                          (let ((_id110123_ _hd110063110118_)
                                                (_rest110125_
                                                 _tl110062110115_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110060110110_
                                               _rest110125_
                                               _id110123_)))
                                          (let ((_hd110100_ _hd110061110113_)
                                                (_rest110102_
                                                 _tl110062110115_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110057110092_
                                               _rest110102_
                                               _hd110100_)))))
                                    (let ((_hd110100_ _hd110061110113_)
                                          (_rest110102_ _tl110062110115_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110057110092_
                                         _rest110102_
                                         _hd110100_)))))
                              (let ()
                                (declare (not safe))
                                (_else110055110074_))))))))
                 (_compile-inner109935_
                  (lambda (_pre110036_ _bind110037_ _post110038_ _body110039_)
                    (if (let () (declare (not safe)) (null? _pre110036_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind109936_
                           _bind110037_
                           _post110038_
                           _body110039_))
                        (let ((__tmp116363
                               (let ((__tmp116364
                                      (let ((__tmp116367 (reverse _pre110036_))
                                            (__tmp116365
                                             (let ((__tmp116366
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind109936_
                                                       _bind110037_
                                                       _post110038_
                                                       _body110039_))))
                                               (declare (not safe))
                                               (cons __tmp116366 '()))))
                                        (declare (not safe))
                                        (cons __tmp116367 __tmp116365))))
                                 (declare (not safe))
                                 (cons 'let __tmp116364))))
                          (declare (not safe))
                          (__SRC__% __tmp116363 _stx109931_)))))
                 (_compile-bind109936_
                  (lambda (_bind110032_ _post110033_ _body110034_)
                    (let ((__tmp116368
                           (let ((__tmp116369
                                  (let ((__tmp116372 (reverse _bind110032_))
                                        (__tmp116370
                                         (let ((__tmp116371
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109937_
                                                   _post110033_
                                                   _body110034_))))
                                           (declare (not safe))
                                           (cons __tmp116371 '()))))
                                    (declare (not safe))
                                    (cons __tmp116372 __tmp116370))))
                             (declare (not safe))
                             (cons 'letrec __tmp116369))))
                      (declare (not safe))
                      (__SRC__% __tmp116368 _stx109931_))))
                 (_compile-post109937_
                  (lambda (_post109939_ _body109940_)
                    (let _lp109942_ ((_rest109944_ _post109939_)
                                     (_check109945_ '())
                                     (_bind109946_ '()))
                      (let* ((_rest109947109959_ _rest109944_)
                             (_else109949109967_
                              (lambda ()
                                (let ((__tmp116373
                                       (let ((__tmp116374
                                              (let ((__tmp116375
                                                     (let ((__tmp116376
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body109940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp116376 _bind109946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116375
                                                        _check109945_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116374))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116373 _stx109931_))))
                             (_K109951110006_
                              (lambda (_rest109970_
                                       _init109971_
                                       _len109972_
                                       _tmp109973_)
                                (let ((__tmp116385
                                       (let ((__tmp116386
                                              (let ((__tmp116387
                                                     (let ((__tmp116388
                                                            (let ((__tmp116389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109972_ '()))))
                      (declare (not safe))
                      (cons _tmp109973_ __tmp116389))))
               (declare (not safe))
               (cons '__check-values __tmp116388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116387
                                                 _stx109931_))))
                                         (declare (not safe))
                                         (cons __tmp116386 _check109945_)))
                                      (__tmp116377
                                       (let ((__tmp116378
                                              (lambda (_hd109975_ _r109976_)
                                                (let* ((_hd109977109984_
                                                        _hd109975_)
                                                       (_E109979109988_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109977109984_)))
               (_K109980109994_
                (lambda (_k109991_ _id109992_)
                  (let ((__tmp116379
                         (let ((__tmp116380
                                (let ((__tmp116381
                                       (let ((__tmp116382
                                              (let ((__tmp116383
                                                     (let ((__tmp116384
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k109991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp109973_ __tmp116384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp116383))))
                                         (declare (not safe))
                                         (cons __tmp116382 '()))))
                                  (declare (not safe))
                                  (cons _id109992_ __tmp116381))))
                           (declare (not safe))
                           (cons 'set! __tmp116380))))
                    (declare (not safe))
                    (cons __tmp116379 _r109976_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109977109984_))
                                                      (let ((_hd109981109997_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109977109984_)))
                    (_tl109982109999_
                     (let () (declare (not safe)) (##cdr _hd109977109984_))))
                (let* ((_id110002_ _hd109981109997_)
                       (_k110004_ _tl109982109999_))
                  (declare (not safe))
                  (_K109980109994_ _k110004_ _id110002_)))
              (let () (declare (not safe)) (_E109979109988_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116378
                                                 _bind109946_
                                                 _init109971_))))
                                  (declare (not safe))
                                  (_lp109942_
                                   _rest109970_
                                   __tmp116385
                                   __tmp116377)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109947109959_))
                            (let ((_hd109952110009_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109947109959_)))
                                  (_tl109953110011_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109947109959_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd109952110009_))
                                  (let ((_hd109954110014_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd109952110009_)))
                                        (_tl109955110016_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd109952110009_))))
                                    (let ((_tmp110019_ _hd109954110014_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl109955110016_))
                                          (let ((_hd109956110021_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl109955110016_)))
                                                (_tl109957110023_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl109955110016_))))
                                            (let* ((_len110026_
                                                    _hd109956110021_)
                                                   (_init110028_
                                                    _tl109957110023_)
                                                   (_rest110030_
                                                    _tl109953110011_))
                                              (declare (not safe))
                                              (_K109951110006_
                                               _rest110030_
                                               _init110028_
                                               _len110026_
                                               _tmp110019_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109949109967_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else109949109967_))))
                            (let ()
                              (declare (not safe))
                              (_else109949109967_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109931_
             _compile-simple109933_
             _compile-values109934_)))))
    (define __compile-letrec*-values%
      (lambda (_stx109686_)
        (letrec ((_compile-simple109688_
                  (lambda (_hd-ids109927_ _exprs109928_ _body109929_)
                    (let ((__tmp116390
                           (let ((__tmp116391
                                  (let ((__tmp116393
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109927_)
                                              _exprs109928_))
                                        (__tmp116392
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109929_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116393 __tmp116392))))
                             (declare (not safe))
                             (cons 'letrec* __tmp116391))))
                      (declare (not safe))
                      (__SRC__% __tmp116390 _stx109686_))))
                 (_compile-values109689_
                  (lambda (_hd-ids109838_ _exprs109839_ _body109840_)
                    (let _lp109842_ ((_rest109844_ _hd-ids109838_)
                                     (_exprs109845_ _exprs109839_)
                                     (_bind109846_ '())
                                     (_post109847_ '()))
                      (let* ((_rest109848109862_ _rest109844_)
                             (_else109851109870_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind109690_
                                   _bind109846_
                                   _post109847_
                                   _body109840_)))))
                        (let ((_K109856109910_
                               (lambda (_rest109905_ _hd109906_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109906_))
                                     (let ((_id109908_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109906_))))
                                       (let ((__tmp116408 (cdr _exprs109845_))
                                             (__tmp116403
                                              (let ((__tmp116404
                                                     (let ((__tmp116405
                                                            (let ((__tmp116406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116407
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116407))))
                      (declare (not safe))
                      (cons __tmp116406 '()))))
               (declare (not safe))
               (cons _id109908_ __tmp116405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116404
                                                      _bind109846_)))
                                             (__tmp116399
                                              (let ((__tmp116400
                                                     (let ((__tmp116401
                                                            (let ((__tmp116402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs109845_)))
                      (declare (not safe))
                      (cons __tmp116402 '()))))
               (declare (not safe))
               (cons _id109908_ __tmp116401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116400
                                                      _post109847_))))
                                         (declare (not safe))
                                         (_lp109842_
                                          _rest109905_
                                          __tmp116408
                                          __tmp116403
                                          __tmp116399)))
                                     (let ((__tmp116398 (cdr _exprs109845_))
                                           (__tmp116394
                                            (let ((__tmp116395
                                                   (let ((__tmp116396
                                                          (let ((__tmp116397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs109845_)))
                    (declare (not safe))
                    (cons __tmp116397 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp116396))))
                                              (declare (not safe))
                                              (cons __tmp116395
                                                    _post109847_))))
                                       (declare (not safe))
                                       (_lp109842_
                                        _rest109905_
                                        __tmp116398
                                        _bind109846_
                                        __tmp116394)))))
                              (_K109853109890_
                               (lambda (_rest109874_ _hd109875_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109875_))
                                     (let ((_id109877_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109875_))))
                                       (let ((__tmp116444 (cdr _exprs109845_))
                                             (__tmp116439
                                              (let ((__tmp116440
                                                     (let ((__tmp116441
                                                            (let ((__tmp116442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116443
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116443))))
                      (declare (not safe))
                      (cons __tmp116442 '()))))
               (declare (not safe))
               (cons _id109877_ __tmp116441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116440
                                                      _bind109846_)))
                                             (__tmp116433
                                              (let ((__tmp116434
                                                     (let ((__tmp116435
                                                            (let ((__tmp116436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116437
                                  (let ((__tmp116438 (car _exprs109845_)))
                                    (declare (not safe))
                                    (cons __tmp116438 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp116437))))
                      (declare (not safe))
                      (cons __tmp116436 '()))))
               (declare (not safe))
               (cons _id109877_ __tmp116435))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116434
                                                      _post109847_))))
                                         (declare (not safe))
                                         (_lp109842_
                                          _rest109874_
                                          __tmp116444
                                          __tmp116439
                                          __tmp116433)))
                                     (if (let ((__tmp116432
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd109875_))))
                                           (declare (not safe))
                                           (not __tmp116432))
                                         (let ((__tmp116431
                                                (cdr _exprs109845_))
                                               (__tmp116427
                                                (let ((__tmp116428
                                                       (let ((__tmp116429
                                                              (let ((__tmp116430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs109845_)))
                        (declare (not safe))
                        (cons __tmp116430 '()))))
                 (declare (not safe))
                 (cons '#f __tmp116429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp116428
                                                        _post109847_))))
                                           (declare (not safe))
                                           (_lp109842_
                                            _rest109874_
                                            __tmp116431
                                            _bind109846_
                                            __tmp116427))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd109875_))
                                             (let* ((_len109879_
                                                     (length _hd109875_))
                                                    (_tmp109881_
                                                     (let ((__tmp116409
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp116409))))
                                               (let ((__tmp116426
                                                      (cdr _exprs109845_))
                                                     (__tmp116419
                                                      (let ((__tmp116420
                                                             (lambda (_id109884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r109885_)
                       (if (let () (declare (not safe)) (__AST-e _id109884_))
                           (let ((__tmp116421
                                  (let ((__tmp116425
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109884_)))
                                        (__tmp116422
                                         (let ((__tmp116423
                                                (let ((__tmp116424
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp116424))))
                                           (declare (not safe))
                                           (cons __tmp116423 '()))))
                                    (declare (not safe))
                                    (cons __tmp116425 __tmp116422))))
                             (declare (not safe))
                             (cons __tmp116421 _r109885_))
                           _r109885_))))
                (declare (not safe))
                (foldl1 __tmp116420 _bind109846_ _hd109875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp116410
                                                      (let ((__tmp116411
                                                             (let ((__tmp116412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116418 (car _exprs109845_))
                                  (__tmp116413
                                   (let ((__tmp116414
                                          (let ((__tmp116416
                                                 (lambda (_id109887_ _k109888_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id109887_))
                                                       (let ((__tmp116417
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id109887_))))
                 (declare (not safe))
                 (cons __tmp116417 _k109888_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp116415
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len109879_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp116416
                                             _hd109875_
                                             __tmp116415))))
                                     (declare (not safe))
                                     (cons _len109879_ __tmp116414))))
                              (declare (not safe))
                              (cons __tmp116418 __tmp116413))))
                       (declare (not safe))
                       (cons _tmp109881_ __tmp116412))))
                (declare (not safe))
                (cons __tmp116411 _post109847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp109842_
                                                  _rest109874_
                                                  __tmp116426
                                                  __tmp116419
                                                  __tmp116410)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx109686_
                                                _hd109875_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109848109862_))
                              (let ((_tl109858109915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109848109862_)))
                                    (_hd109857109913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109848109862_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109857109913_))
                                    (let ((_tl109860109920_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109857109913_)))
                                          (_hd109859109918_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109857109913_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109860109920_))
                                          (let ((_hd109923_ _hd109859109918_)
                                                (_rest109925_
                                                 _tl109858109915_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109856109910_
                                               _rest109925_
                                               _hd109923_)))
                                          (let ((_hd109898_ _hd109857109913_)
                                                (_rest109900_
                                                 _tl109858109915_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109853109890_
                                               _rest109900_
                                               _hd109898_)))))
                                    (let ((_hd109898_ _hd109857109913_)
                                          (_rest109900_ _tl109858109915_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109853109890_
                                         _rest109900_
                                         _hd109898_)))))
                              (let ()
                                (declare (not safe))
                                (_else109851109870_))))))))
                 (_compile-bind109690_
                  (lambda (_bind109834_ _post109835_ _body109836_)
                    (let ((__tmp116445
                           (let ((__tmp116446
                                  (let ((__tmp116449 (reverse _bind109834_))
                                        (__tmp116447
                                         (let ((__tmp116448
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109691_
                                                   _post109835_
                                                   _body109836_))))
                                           (declare (not safe))
                                           (cons __tmp116448 '()))))
                                    (declare (not safe))
                                    (cons __tmp116449 __tmp116447))))
                             (declare (not safe))
                             (cons 'let __tmp116446))))
                      (declare (not safe))
                      (__SRC__% __tmp116445 _stx109686_))))
                 (_compile-post109691_
                  (lambda (_post109693_ _body109694_)
                    (let ((__tmp116450
                           (let ((__tmp116451
                                  (let ((__tmp116452
                                         (let ((__tmp116454
                                                (lambda (_hd109696_ _r109697_)
                                                  (let* ((_hd109698109721_
                                                          _hd109696_)
                                                         (_E109702109725_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd109698109721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K109715109819_
                                                           (lambda (_expr109817_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr109817_ _r109697_))))
                  (_K109710109797_
                   (lambda (_expr109794_ _id109795_)
                     (let ((__tmp116455
                            (let ((__tmp116456
                                   (let ((__tmp116457
                                          (let ((__tmp116458
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr109794_ '()))))
                                            (declare (not safe))
                                            (cons _id109795_ __tmp116458))))
                                     (declare (not safe))
                                     (cons 'set! __tmp116457))))
                              (declare (not safe))
                              (__SRC__% __tmp116456 _stx109686_))))
                       (declare (not safe))
                       (cons __tmp116455 _r109697_))))
                  (_K109703109764_
                   (lambda (_init109729_ _len109730_ _expr109731_ _tmp109732_)
                     (let ((__tmp116459
                            (let ((__tmp116460
                                   (let ((__tmp116461
                                          (let ((__tmp116475
                                                 (let ((__tmp116476
                                                        (let ((__tmp116477
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr109731_ '()))))
                  (declare (not safe))
                  (cons _tmp109732_ __tmp116477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116476 '())))
                                                (__tmp116462
                                                 (let ((__tmp116471
                                                        (let ((__tmp116472
                                                               (let ((__tmp116473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp116474
                                     (let ()
                                       (declare (not safe))
                                       (cons _len109730_ '()))))
                                (declare (not safe))
                                (cons _tmp109732_ __tmp116474))))
                         (declare (not safe))
                         (cons '__check-values __tmp116473))))
                  (declare (not safe))
                  (__SRC__% __tmp116472 _stx109686_)))
               (__tmp116463
                (let ((__tmp116464
                       (map (lambda (_hd109734_)
                              (let* ((_hd109735109742_ _hd109734_)
                                     (_E109737109746_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd109735109742_)))
                                     (_K109738109752_
                                      (lambda (_k109749_ _id109750_)
                                        (let ((__tmp116465
                                               (let ((__tmp116466
                                                      (let ((__tmp116467
                                                             (let ((__tmp116468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116469
                                   (let ((__tmp116470
                                          (let ()
                                            (declare (not safe))
                                            (cons _k109749_ '()))))
                                     (declare (not safe))
                                     (cons _tmp109732_ __tmp116470))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp116469))))
                       (declare (not safe))
                       (cons __tmp116468 '()))))
                (declare (not safe))
                (cons _id109750_ __tmp116467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp116466))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp116465
                                           _stx109686_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109735109742_))
                                    (let ((_hd109739109755_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109735109742_)))
                                          (_tl109740109757_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109735109742_))))
                                      (let* ((_id109760_ _hd109739109755_)
                                             (_k109762_ _tl109740109757_))
                                        (declare (not safe))
                                        (_K109738109752_
                                         _k109762_
                                         _id109760_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E109737109746_)))))
                            _init109729_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp116464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116471
                                                         __tmp116463))))
                                            (declare (not safe))
                                            (cons __tmp116475 __tmp116462))))
                                     (declare (not safe))
                                     (cons 'let __tmp116461))))
                              (declare (not safe))
                              (__SRC__% __tmp116460 _stx109686_))))
                       (declare (not safe))
                       (cons __tmp116459 _r109697_)))))
              (if (let () (declare (not safe)) (##pair? _hd109698109721_))
                  (let ((_tl109717109824_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd109698109721_)))
                        (_hd109716109822_
                         (let ()
                           (declare (not safe))
                           (##car _hd109698109721_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd109716109822_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109717109824_))
                            (let ((_tl109719109829_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109717109824_)))
                                  (_hd109718109827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109717109824_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109719109829_))
                                  (let ((_expr109832_ _hd109718109827_))
                                    (declare (not safe))
                                    (_K109715109819_ _expr109832_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109719109829_))
                                      (let ((_tl109709109783_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109719109829_)))
                                            (_hd109708109781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109719109829_))))
                                        (let ((_tmp109772_ _hd109716109822_)
                                              (_expr109779_ _hd109718109827_)
                                              (_len109786_ _hd109708109781_)
                                              (_init109788_ _tl109709109783_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109703109764_
                                             _init109788_
                                             _len109786_
                                             _expr109779_
                                             _tmp109772_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109702109725_)))))
                            (let () (declare (not safe)) (_E109702109725_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109717109824_))
                            (let ((_tl109714109809_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109717109824_)))
                                  (_hd109713109807_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109717109824_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109714109809_))
                                  (let ((_id109805_ _hd109716109822_)
                                        (_expr109812_ _hd109713109807_))
                                    (let ()
                                      (declare (not safe))
                                      (_K109710109797_
                                       _expr109812_
                                       _id109805_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109714109809_))
                                      (let ((_tl109709109783_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109714109809_)))
                                            (_hd109708109781_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109714109809_))))
                                        (let ((_tmp109772_ _hd109716109822_)
                                              (_expr109779_ _hd109713109807_)
                                              (_len109786_ _hd109708109781_)
                                              (_init109788_ _tl109709109783_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109703109764_
                                             _init109788_
                                             _len109786_
                                             _expr109779_
                                             _tmp109772_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109702109725_)))))
                            (let () (declare (not safe)) (_E109702109725_)))))
                  (let () (declare (not safe)) (_E109702109725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp116453
                                                (list _body109694_)))
                                           (declare (not safe))
                                           (foldl1 __tmp116454
                                                   __tmp116453
                                                   _post109693_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp116452))))
                             (declare (not safe))
                             (cons 'begin __tmp116451))))
                      (declare (not safe))
                      (__SRC__% __tmp116450 _stx109686_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109686_
             _compile-simple109688_
             _compile-values109689_)))))
    (define __compile-call%
      (lambda (_stx109646_)
        (let* ((_$e109648_ _stx109646_)
               (_$E109650109659_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109648_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109648_))
              (let* ((_$tgt109651109662_
                      (let () (declare (not safe)) (__AST-e _$e109648_)))
                     (_$hd109652109665_
                      (let () (declare (not safe)) (##car _$tgt109651109662_)))
                     (_$tl109653109668_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109651109662_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109653109668_))
                    (let* ((_$tgt109654109672_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109653109668_)))
                           (_$hd109655109675_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109654109672_)))
                           (_$tl109656109678_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109654109672_))))
                      (let* ((_rator109682_ _$hd109655109675_)
                             (_rands109684_ _$tl109656109678_)
                             (__tmp116478
                              (let ((__tmp116480
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator109682_)))
                                    (__tmp116479
                                     (map __compile _rands109684_)))
                                (declare (not safe))
                                (cons __tmp116480 __tmp116479))))
                        (declare (not safe))
                        (__SRC__% __tmp116478 _stx109646_)))
                    (let () (declare (not safe)) (_$E109650109659_))))
              (let () (declare (not safe)) (_$E109650109659_))))))
    (define __compile-ref%
      (lambda (_stx109608_)
        (let* ((_$e109610_ _stx109608_)
               (_$E109612109621_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109610_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109610_))
              (let* ((_$tgt109613109624_
                      (let () (declare (not safe)) (__AST-e _$e109610_)))
                     (_$hd109614109627_
                      (let () (declare (not safe)) (##car _$tgt109613109624_)))
                     (_$tl109615109630_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109613109624_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109615109630_))
                    (let* ((_$tgt109616109634_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109615109630_)))
                           (_$hd109617109637_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109616109634_)))
                           (_$tl109618109640_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109616109634_))))
                      (let ((_id109644_ _$hd109617109637_))
                        (if (let ((__tmp116481
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109618109640_))))
                              (declare (not safe))
                              (equal? __tmp116481 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id109644_ _stx109608_))
                            (let () (declare (not safe)) (_$E109612109621_)))))
                    (let () (declare (not safe)) (_$E109612109621_))))
              (let () (declare (not safe)) (_$E109612109621_))))))
    (define __compile-setq%
      (lambda (_stx109555_)
        (let* ((_$e109557_ _stx109555_)
               (_$E109559109571_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109557_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109557_))
              (let* ((_$tgt109560109574_
                      (let () (declare (not safe)) (__AST-e _$e109557_)))
                     (_$hd109561109577_
                      (let () (declare (not safe)) (##car _$tgt109560109574_)))
                     (_$tl109562109580_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109560109574_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109562109580_))
                    (let* ((_$tgt109563109584_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109562109580_)))
                           (_$hd109564109587_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109563109584_)))
                           (_$tl109565109590_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109563109584_))))
                      (let ((_id109594_ _$hd109564109587_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109565109590_))
                            (let* ((_$tgt109566109596_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109565109590_)))
                                   (_$hd109567109599_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109566109596_)))
                                   (_$tl109568109602_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109566109596_))))
                              (let ((_expr109606_ _$hd109567109599_))
                                (if (let ((__tmp116487
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109568109602_))))
                                      (declare (not safe))
                                      (equal? __tmp116487 '()))
                                    (let ((__tmp116482
                                           (let ((__tmp116483
                                                  (let ((__tmp116486
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id109594_
                                                            _stx109555_)))
                                                        (__tmp116484
                                                         (let ((__tmp116485
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr109606_))))
                   (declare (not safe))
                   (cons __tmp116485 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116486
                                                          __tmp116484))))
                                             (declare (not safe))
                                             (cons 'set! __tmp116483))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116482 _stx109555_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109559109571_)))))
                            (let () (declare (not safe)) (_$E109559109571_)))))
                    (let () (declare (not safe)) (_$E109559109571_))))
              (let () (declare (not safe)) (_$E109559109571_))))))
    (define __compile-if%
      (lambda (_stx109487_)
        (let* ((_$e109489_ _stx109487_)
               (_$E109491109506_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109489_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109489_))
              (let* ((_$tgt109492109509_
                      (let () (declare (not safe)) (__AST-e _$e109489_)))
                     (_$hd109493109512_
                      (let () (declare (not safe)) (##car _$tgt109492109509_)))
                     (_$tl109494109515_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109492109509_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109494109515_))
                    (let* ((_$tgt109495109519_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109494109515_)))
                           (_$hd109496109522_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109495109519_)))
                           (_$tl109497109525_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109495109519_))))
                      (let ((_p109529_ _$hd109496109522_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109497109525_))
                            (let* ((_$tgt109498109531_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109497109525_)))
                                   (_$hd109499109534_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109498109531_)))
                                   (_$tl109500109537_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109498109531_))))
                              (let ((_t109541_ _$hd109499109534_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl109500109537_))
                                    (let* ((_$tgt109501109543_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl109500109537_)))
                                           (_$hd109502109546_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt109501109543_)))
                                           (_$tl109503109549_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt109501109543_))))
                                      (let ((_f109553_ _$hd109502109546_))
                                        (if (let ((__tmp116495
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl109503109549_))))
                                              (declare (not safe))
                                              (equal? __tmp116495 '()))
                                            (let ((__tmp116488
                                                   (let ((__tmp116489
                                                          (let ((__tmp116494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p109529_)))
                        (__tmp116490
                         (let ((__tmp116493
                                (let ()
                                  (declare (not safe))
                                  (__compile _t109541_)))
                               (__tmp116491
                                (let ((__tmp116492
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f109553_))))
                                  (declare (not safe))
                                  (cons __tmp116492 '()))))
                           (declare (not safe))
                           (cons __tmp116493 __tmp116491))))
                    (declare (not safe))
                    (cons __tmp116494 __tmp116490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp116489))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp116488
                                               _stx109487_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E109491109506_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109491109506_)))))
                            (let () (declare (not safe)) (_$E109491109506_)))))
                    (let () (declare (not safe)) (_$E109491109506_))))
              (let () (declare (not safe)) (_$E109491109506_))))))
    (define __compile-quote%
      (lambda (_stx109449_)
        (let* ((_$e109451_ _stx109449_)
               (_$E109453109462_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109451_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109451_))
              (let* ((_$tgt109454109465_
                      (let () (declare (not safe)) (__AST-e _$e109451_)))
                     (_$hd109455109468_
                      (let () (declare (not safe)) (##car _$tgt109454109465_)))
                     (_$tl109456109471_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109454109465_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109456109471_))
                    (let* ((_$tgt109457109475_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109456109471_)))
                           (_$hd109458109478_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109457109475_)))
                           (_$tl109459109481_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109457109475_))))
                      (let ((_e109485_ _$hd109458109478_))
                        (if (let ((__tmp116499
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109459109481_))))
                              (declare (not safe))
                              (equal? __tmp116499 '()))
                            (let ((__tmp116496
                                   (let ((__tmp116497
                                          (let ((__tmp116498
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e109485_))))
                                            (declare (not safe))
                                            (cons __tmp116498 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116497))))
                              (declare (not safe))
                              (__SRC__% __tmp116496 _stx109449_))
                            (let () (declare (not safe)) (_$E109453109462_)))))
                    (let () (declare (not safe)) (_$E109453109462_))))
              (let () (declare (not safe)) (_$E109453109462_))))))
    (define __compile-quote-syntax%
      (lambda (_stx109411_)
        (let* ((_$e109413_ _stx109411_)
               (_$E109415109424_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109413_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109413_))
              (let* ((_$tgt109416109427_
                      (let () (declare (not safe)) (__AST-e _$e109413_)))
                     (_$hd109417109430_
                      (let () (declare (not safe)) (##car _$tgt109416109427_)))
                     (_$tl109418109433_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109416109427_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109418109433_))
                    (let* ((_$tgt109419109437_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109418109433_)))
                           (_$hd109420109440_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109419109437_)))
                           (_$tl109421109443_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109419109437_))))
                      (let ((_e109447_ _$hd109420109440_))
                        (if (let ((__tmp116502
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109421109443_))))
                              (declare (not safe))
                              (equal? __tmp116502 '()))
                            (let ((__tmp116500
                                   (let ((__tmp116501
                                          (let ()
                                            (declare (not safe))
                                            (cons _e109447_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116501))))
                              (declare (not safe))
                              (__SRC__% __tmp116500 _stx109411_))
                            (let () (declare (not safe)) (_$E109415109424_)))))
                    (let () (declare (not safe)) (_$E109415109424_))))
              (let () (declare (not safe)) (_$E109415109424_))))))
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
