(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707847726)
  (begin
    (define __context::t
      (let ((__tmp116111 (list))
            (__tmp116109
             (let ((__tmp116110
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116110 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp116111
         '(t ns super table)
         __tmp116109
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args111345_ (apply make-instance __context::t _$args111345_)))
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
      (let ((__tmp116114 (list))
            (__tmp116112
             (let ((__tmp116113
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116113 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp116114
         '(id)
         __tmp116112
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args111342_ (apply make-instance __runtime::t _$args111342_)))
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
      (let ((__tmp116117 (list))
            (__tmp116115
             (let ((__tmp116116
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116116 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116117
         '(e id)
         __tmp116115
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args111339_ (apply make-instance __syntax::t _$args111339_)))
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
      (let ((__tmp116120 (list __syntax::t))
            (__tmp116118
             (let ((__tmp116119
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116119 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp116120
         '()
         __tmp116118
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args111336_ (apply make-instance __macro::t _$args111336_)))
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
      (let ((__tmp116123 (list __macro::t))
            (__tmp116121
             (let ((__tmp116122
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116122 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp116123
         '()
         __tmp116121
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args111333_
        (apply make-instance __special-form::t _$args111333_)))
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
      (let ((__tmp116126 (list __syntax::t))
            (__tmp116124
             (let ((__tmp116125
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116125 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116126
         '()
         __tmp116124
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args111330_
        (apply make-instance __core-form::t _$args111330_)))
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
      (let ((__tmp116129 (list __core-form::t))
            (__tmp116127
             (let ((__tmp116128
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116128 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116129
         '()
         __tmp116127
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args111327_
        (apply make-instance __core-expression::t _$args111327_)))
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
      (let ((__tmp116132 (list __core-form::t))
            (__tmp116130
             (let ((__tmp116131
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116131 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116132
         '()
         __tmp116130
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args111324_
        (apply make-instance __core-special-form::t _$args111324_)))
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
      (let ((__tmp116135 (list __syntax::t))
            (__tmp116133
             (let ((__tmp116134
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116134 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp116135
         '()
         __tmp116133
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args111321_
        (apply make-instance __struct-info::t _$args111321_)))
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
      (let ((__tmp116138 (list __syntax::t))
            (__tmp116136
             (let ((__tmp116137
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116137 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp116138
         '()
         __tmp116136
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args111318_ (apply make-instance __feature::t _$args111318_)))
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
      (let ((__tmp116141 (list __context::t))
            (__tmp116139
             (let ((__tmp116140
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116140 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp116141
         '(id path import export)
         __tmp116139
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args111315_ (apply make-instance __module::t _$args111315_)))
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
      (let ((__tmp116143
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp116142
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp116143 __tmp116142)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id111290_ _ctx111291_)
        (if _ctx111291_
            (let ((_id111293_
                   (let () (declare (not safe)) (__AST-e _id111290_))))
              (let _lp111295_ ((_ctx111297_ _ctx111291_))
                (let ((_$e111299_
                       (table-ref
                        (##structure-ref _ctx111297_ '4 __context::t '#f)
                        _id111293_
                        '#f)))
                  (if _$e111299_
                      (values _$e111299_)
                      (let ((_$e111302_
                             (##structure-ref
                              _ctx111297_
                              '3
                              __context::t
                              '#f)))
                        (if _$e111302_
                            (let ()
                              (declare (not safe))
                              (_lp111295_ _$e111302_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id111308_)
        (let ((_ctx111310_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id111308_ _ctx111310_))))
    (define __core-resolve
      (lambda _g116145_
        (let ((_g116144_ (let () (declare (not safe)) (##length _g116145_))))
          (cond ((let () (declare (not safe)) (##fx= _g116144_ 1))
                 (apply (lambda (_id111308_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id111308_)))
                        _g116145_))
                ((let () (declare (not safe)) (##fx= _g116144_ 2))
                 (apply (lambda (_id111312_ _ctx111313_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id111312_ _ctx111313_)))
                        _g116145_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g116145_))))))
    (define __core-bound-id?__%
      (lambda (_id111273_ _is?111274_)
        (let ((_$e111276_
               (let () (declare (not safe)) (__core-resolve__0 _id111273_))))
          (if _$e111276_ (_is?111274_ _$e111276_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id111282_)
        (let ((_is?111284_ true))
          (declare (not safe))
          (__core-bound-id?__% _id111282_ _is?111284_))))
    (define __core-bound-id?
      (lambda _g116147_
        (let ((_g116146_ (let () (declare (not safe)) (##length _g116147_))))
          (cond ((let () (declare (not safe)) (##fx= _g116146_ 1))
                 (apply (lambda (_id111282_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id111282_)))
                        _g116147_))
                ((let () (declare (not safe)) (##fx= _g116146_ 2))
                 (apply (lambda (_id111286_ _is?111287_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id111286_ _is?111287_)))
                        _g116147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116147_))))))
    (define __core-bind-runtime!__%
      (lambda (_id111256_ _eid111257_ _ctx111258_)
        (if _eid111257_
            (let ((__tmp116150
                   (##structure-ref _ctx111258_ '4 __context::t '#f))
                  (__tmp116149
                   (let () (declare (not safe)) (__AST-e _id111256_)))
                  (__tmp116148
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid111257_))))
              (declare (not safe))
              (table-set! __tmp116150 __tmp116149 __tmp116148))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id111263_ _eid111264_)
        (let ((_ctx111266_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id111263_ _eid111264_ _ctx111266_))))
    (define __core-bind-runtime!
      (lambda _g116152_
        (let ((_g116151_ (let () (declare (not safe)) (##length _g116152_))))
          (cond ((let () (declare (not safe)) (##fx= _g116151_ 2))
                 (apply (lambda (_id111263_ _eid111264_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id111263_ _eid111264_)))
                        _g116152_))
                ((let () (declare (not safe)) (##fx= _g116151_ 3))
                 (apply (lambda (_id111268_ _eid111269_ _ctx111270_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id111268_
                             _eid111269_
                             _ctx111270_)))
                        _g116152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g116152_))))))
    (define __core-bind-syntax!__%
      (lambda (_id111239_ _e111240_ _make111241_)
        (let ((__tmp116153
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111240_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111240_
                   (_make111241_ _e111240_ _id111239_))))
          (declare (not safe))
          (table-set! __*core* _id111239_ __tmp116153))))
    (define __core-bind-syntax!__0
      (lambda (_id111246_ _e111247_)
        (let ((_make111249_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id111246_ _e111247_ _make111249_))))
    (define __core-bind-syntax!
      (lambda _g116155_
        (let ((_g116154_ (let () (declare (not safe)) (##length _g116155_))))
          (cond ((let () (declare (not safe)) (##fx= _g116154_ 2))
                 (apply (lambda (_id111246_ _e111247_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id111246_ _e111247_)))
                        _g116155_))
                ((let () (declare (not safe)) (##fx= _g116154_ 3))
                 (apply (lambda (_id111251_ _e111252_ _make111253_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id111251_
                             _e111252_
                             _make111253_)))
                        _g116155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116155_))))))
    (define __core-bind-macro!
      (lambda (_id111235_ _e111236_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111235_ _e111236_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id111232_ _e111233_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111232_ _e111233_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id111216_ _e111217_ _ctx111218_)
        (let ((__tmp116159 (##structure-ref _ctx111218_ '4 __context::t '#f))
              (__tmp116158 (let () (declare (not safe)) (__AST-e _id111216_)))
              (__tmp116156
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111217_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111217_
                   (let ((__tmp116157
                          (let () (declare (not safe)) (__AST-e _id111216_))))
                     (declare (not safe))
                     (##structure __syntax::t _e111217_ __tmp116157)))))
          (declare (not safe))
          (table-set! __tmp116159 __tmp116158 __tmp116156))))
    (define __core-bind-user-syntax!__0
      (lambda (_id111223_ _e111224_)
        (let ((_ctx111226_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id111223_ _e111224_ _ctx111226_))))
    (define __core-bind-user-syntax!
      (lambda _g116161_
        (let ((_g116160_ (let () (declare (not safe)) (##length _g116161_))))
          (cond ((let () (declare (not safe)) (##fx= _g116160_ 2))
                 (apply (lambda (_id111223_ _e111224_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id111223_
                             _e111224_)))
                        _g116161_))
                ((let () (declare (not safe)) (##fx= _g116160_ 3))
                 (apply (lambda (_id111228_ _e111229_ _ctx111230_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id111228_
                             _e111229_
                             _ctx111230_)))
                        _g116161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g116161_))))))
    (define make-__runtime-id__%
      (lambda (_id111197_ _ctx111198_)
        (let ((_id111200_ (let () (declare (not safe)) (__AST-e _id111197_))))
          (if (let () (declare (not safe)) (eq? _id111200_ '_))
              '#f
              (if (uninterned-symbol? _id111200_)
                  (gensym _id111200_)
                  (if (let () (declare (not safe)) (symbol? _id111200_))
                      (let ((_$e111202_
                             (##structure-ref
                              _ctx111198_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e111202_))
                            (gensym _id111200_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e111202_))
                                (let ((__tmp116162
                                       (##structure-ref
                                        _ctx111198_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp116162 '"#" _id111200_))
                                _id111200_)))
                      (error '"Illegal runtime identifier" _id111200_)))))))
    (define make-__runtime-id__0
      (lambda (_id111208_)
        (let ((_ctx111210_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id111208_ _ctx111210_))))
    (define make-__runtime-id
      (lambda _g116164_
        (let ((_g116163_ (let () (declare (not safe)) (##length _g116164_))))
          (cond ((let () (declare (not safe)) (##fx= _g116163_ 1))
                 (apply (lambda (_id111208_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id111208_)))
                        _g116164_))
                ((let () (declare (not safe)) (##fx= _g116163_ 2))
                 (apply (lambda (_id111212_ _ctx111213_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id111212_ _ctx111213_)))
                        _g116164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g116164_))))))
    (define make-__context-local__%
      (lambda (_super111186_)
        (let ((__tmp116165
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super111186_ __tmp116165))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super111192_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super111192_))))
    (define make-__context-local
      (lambda _g116167_
        (let ((_g116166_ (let () (declare (not safe)) (##length _g116167_))))
          (cond ((let () (declare (not safe)) (##fx= _g116166_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g116167_))
                ((let () (declare (not safe)) (##fx= _g116166_ 1))
                 (apply (lambda (_super111194_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super111194_)))
                        _g116167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g116167_))))))
    (define make-__context-module__%
      (lambda (_id111166_ _ns111167_ _path111168_ _super111169_)
        (let ((__tmp116168
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns111167_
           _super111169_
           __tmp116168
           _id111166_
           _path111168_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id111174_ _ns111175_ _path111176_)
        (let ((_super111178_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id111174_
           _ns111175_
           _path111176_
           _super111178_))))
    (define make-__context-module
      (lambda _g116170_
        (let ((_g116169_ (let () (declare (not safe)) (##length _g116170_))))
          (cond ((let () (declare (not safe)) (##fx= _g116169_ 3))
                 (apply (lambda (_id111174_ _ns111175_ _path111176_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id111174_
                             _ns111175_
                             _path111176_)))
                        _g116170_))
                ((let () (declare (not safe)) (##fx= _g116169_ 4))
                 (apply (lambda (_id111180_
                                 _ns111181_
                                 _path111182_
                                 _super111183_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id111180_
                             _ns111181_
                             _path111182_
                             _super111183_)))
                        _g116170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g116170_))))))
    (define __SRC__%
      (lambda (_e111149_ _src-stx111150_)
        (if (or (let () (declare (not safe)) (pair? _e111149_))
                (let () (declare (not safe)) (symbol? _e111149_)))
            (let ((__tmp116174
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx111150_
                          'gerbil#AST::t))
                       (let ((__tmp116175
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx111150_))))
                         (declare (not safe))
                         (__locat __tmp116175))
                       '#f)))
              (declare (not safe))
              (##make-source _e111149_ __tmp116174))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e111149_ 'gerbil#AST::t))
                (let ((__tmp116173
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e111149_ '1 AST::t '#f)))
                      (__tmp116171
                       (let ((__tmp116172
                              (let ()
                                (declare (not safe))
                                (__AST-source _e111149_))))
                         (declare (not safe))
                         (__locat __tmp116172))))
                  (declare (not safe))
                  (##make-source __tmp116173 __tmp116171))
                (error '"BUG! Cannot sourcify object" _e111149_)))))
    (define __SRC__0
      (lambda (_e111158_)
        (let ((_src-stx111160_ '#f))
          (declare (not safe))
          (__SRC__% _e111158_ _src-stx111160_))))
    (define __SRC
      (lambda _g116177_
        (let ((_g116176_ (let () (declare (not safe)) (##length _g116177_))))
          (cond ((let () (declare (not safe)) (##fx= _g116176_ 1))
                 (apply (lambda (_e111158_)
                          (let () (declare (not safe)) (__SRC__0 _e111158_)))
                        _g116177_))
                ((let () (declare (not safe)) (##fx= _g116176_ 2))
                 (apply (lambda (_e111162_ _src-stx111163_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e111162_ _src-stx111163_)))
                        _g116177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116177_))))))
    (define __locat
      (lambda (_loc111146_)
        (if (let () (declare (not safe)) (##locat? _loc111146_))
            _loc111146_
            '#f)))
    (define __check-values
      (lambda (_obj111141_ _k111142_)
        (let ((_count111144_
               (if (let () (declare (not safe)) (##values? _obj111141_))
                   (let () (declare (not safe)) (##vector-length _obj111141_))
                   '1)))
          (if (fx= _count111144_ _k111142_)
              '#!void
              (error (if (fx< _count111144_ _k111142_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj111141_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj111141_))
                         _obj111141_)
                     _k111142_)))))
    (define __compile
      (lambda (_stx111111_)
        (let* ((_$e111113_ _stx111111_)
               (_$E111115111121_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111113_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111113_))
              (let* ((_$tgt111116111124_
                      (let () (declare (not safe)) (__AST-e _$e111113_)))
                     (_$hd111117111127_
                      (let () (declare (not safe)) (##car _$tgt111116111124_)))
                     (_$tl111118111130_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111116111124_))))
                (let* ((_form111134_ _$hd111117111127_)
                       (_$e111136_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form111134_))))
                  (if _$e111136_
                      ((lambda (_bind111139_)
                         ((##structure-ref _bind111139_ '1 __syntax::t '#f)
                          _stx111111_))
                       _$e111136_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx111111_
                         _form111134_)))))
              (let () (declare (not safe)) (_$E111115111121_))))))
    (define __compile-error__%
      (lambda (_stx111098_ _detail111099_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx111098_
           _detail111099_))))
    (define __compile-error__0
      (lambda (_stx111104_)
        (let ((_detail111106_ '#f))
          (declare (not safe))
          (__compile-error__% _stx111104_ _detail111106_))))
    (define __compile-error
      (lambda _g116179_
        (let ((_g116178_ (let () (declare (not safe)) (##length _g116179_))))
          (cond ((let () (declare (not safe)) (##fx= _g116178_ 1))
                 (apply (lambda (_stx111104_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx111104_)))
                        _g116179_))
                ((let () (declare (not safe)) (##fx= _g116178_ 2))
                 (apply (lambda (_stx111108_ _detail111109_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx111108_ _detail111109_)))
                        _g116179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116179_))))))
    (define __compile-ignore%
      (lambda (_stx111095_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx111095_))))
    (define __compile-begin%
      (lambda (_stx111070_)
        (let* ((_$e111072_ _stx111070_)
               (_$E111074111080_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111072_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111072_))
              (let* ((_$tgt111075111083_
                      (let () (declare (not safe)) (__AST-e _$e111072_)))
                     (_$hd111076111086_
                      (let () (declare (not safe)) (##car _$tgt111075111083_)))
                     (_$tl111077111089_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111075111083_))))
                (let* ((_body111093_ _$tl111077111089_)
                       (__tmp116180
                        (let ((__tmp116181 (map __compile _body111093_)))
                          (declare (not safe))
                          (cons 'begin __tmp116181))))
                  (declare (not safe))
                  (__SRC__% __tmp116180 _stx111070_)))
              (let () (declare (not safe)) (_$E111074111080_))))))
    (define __compile-begin-foreign%
      (lambda (_stx111045_)
        (let* ((_$e111047_ _stx111045_)
               (_$E111049111055_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111047_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111047_))
              (let* ((_$tgt111050111058_
                      (let () (declare (not safe)) (__AST-e _$e111047_)))
                     (_$hd111051111061_
                      (let () (declare (not safe)) (##car _$tgt111050111058_)))
                     (_$tl111052111064_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111050111058_))))
                (let* ((_body111068_ _$tl111052111064_)
                       (__tmp116182
                        (let ((__tmp116183
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body111068_))))
                          (declare (not safe))
                          (cons 'begin __tmp116183))))
                  (declare (not safe))
                  (__SRC__% __tmp116182 _stx111045_)))
              (let () (declare (not safe)) (_$E111049111055_))))))
    (define __compile-import%
      (lambda (_stx111020_)
        (let* ((_$e111022_ _stx111020_)
               (_$E111024111030_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111022_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111022_))
              (let* ((_$tgt111025111033_
                      (let () (declare (not safe)) (__AST-e _$e111022_)))
                     (_$hd111026111036_
                      (let () (declare (not safe)) (##car _$tgt111025111033_)))
                     (_$tl111027111039_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111025111033_))))
                (let* ((_body111043_ _$tl111027111039_)
                       (__tmp116184
                        (let ((__tmp116185
                               (let ((__tmp116186
                                      (let ((__tmp116187
                                             (let ()
                                               (declare (not safe))
                                               (cons _body111043_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp116187))))
                                 (declare (not safe))
                                 (cons __tmp116186 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp116185))))
                  (declare (not safe))
                  (__SRC__% __tmp116184 _stx111020_)))
              (let () (declare (not safe)) (_$E111024111030_))))))
    (define __compile-begin-annotation%
      (lambda (_stx110967_)
        (let* ((_$e110969_ _stx110967_)
               (_$E110971110983_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110969_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110969_))
              (let* ((_$tgt110972110986_
                      (let () (declare (not safe)) (__AST-e _$e110969_)))
                     (_$hd110973110989_
                      (let () (declare (not safe)) (##car _$tgt110972110986_)))
                     (_$tl110974110992_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110972110986_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110974110992_))
                    (let* ((_$tgt110975110996_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110974110992_)))
                           (_$hd110976110999_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110975110996_)))
                           (_$tl110977111002_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110975110996_))))
                      (let ((_ann111006_ _$hd110976110999_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110977111002_))
                            (let* ((_$tgt110978111008_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110977111002_)))
                                   (_$hd110979111011_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110978111008_)))
                                   (_$tl110980111014_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110978111008_))))
                              (let ((_expr111018_ _$hd110979111011_))
                                (if (let ((__tmp116188
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110980111014_))))
                                      (declare (not safe))
                                      (equal? __tmp116188 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr111018_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110971110983_)))))
                            (let () (declare (not safe)) (_$E110971110983_)))))
                    (let () (declare (not safe)) (_$E110971110983_))))
              (let () (declare (not safe)) (_$E110971110983_))))))
    (define __compile-define-values%
      (lambda (_stx110858_)
        (let* ((_$e110860_ _stx110858_)
               (_$E110862110874_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110860_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110860_))
              (let* ((_$tgt110863110877_
                      (let () (declare (not safe)) (__AST-e _$e110860_)))
                     (_$hd110864110880_
                      (let () (declare (not safe)) (##car _$tgt110863110877_)))
                     (_$tl110865110883_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110863110877_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110865110883_))
                    (let* ((_$tgt110866110887_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110865110883_)))
                           (_$hd110867110890_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110866110887_)))
                           (_$tl110868110893_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110866110887_))))
                      (let ((_hd110897_ _$hd110867110890_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110868110893_))
                            (let* ((_$tgt110869110899_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110868110893_)))
                                   (_$hd110870110902_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110869110899_)))
                                   (_$tl110871110905_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110869110899_))))
                              (let ((_expr110909_ _$hd110870110902_))
                                (if (let ((__tmp116221
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110871110905_))))
                                      (declare (not safe))
                                      (equal? __tmp116221 '()))
                                    (let* ((_$e110911_ _hd110897_)
                                           (_$E110913110954_
                                            (lambda ()
                                              (let ((_$E110914110939_
                                                     (lambda ()
                                                       (let* ((_$E110915110926_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e110911_))))
                      (_ids110929_ _hd110897_)
                      (_len110931_ (length _ids110929_))
                      (_tmp110933_
                       (let ((__tmp116189 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp116189))))
                 (let ((__tmp116190
                        (let ((__tmp116191
                               (let ((__tmp116208
                                      (let ((__tmp116209
                                             (let ((__tmp116210
                                                    (let ((__tmp116211
                                                           (let ((__tmp116212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr110909_))))
                     (declare (not safe))
                     (cons __tmp116212 '()))))
              (declare (not safe))
              (cons _tmp110933_ __tmp116211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp116210))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116209 _stx110858_)))
                                     (__tmp116192
                                      (let ((__tmp116204
                                             (let ((__tmp116205
                                                    (let ((__tmp116206
                                                           (let ((__tmp116207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len110931_ '()))))
                     (declare (not safe))
                     (cons _tmp110933_ __tmp116207))))
              (declare (not safe))
              (cons '__check-values __tmp116206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp116205
                                                _stx110858_)))
                                            (__tmp116193
                                             (let ((__tmp116194
                                                    (let ((__tmp116196
                                                           (lambda (_id110936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k110937_)
                     (if (let () (declare (not safe)) (__AST-e _id110936_))
                         (let ((__tmp116197
                                (let ((__tmp116198
                                       (let ((__tmp116203
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id110936_)))
                                             (__tmp116199
                                              (let ((__tmp116200
                                                     (let ((__tmp116201
                                                            (let ((__tmp116202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k110937_ '()))))
                      (declare (not safe))
                      (cons _tmp110933_ __tmp116202))))
               (declare (not safe))
               (cons '##vector-ref __tmp116201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116200 '()))))
                                         (declare (not safe))
                                         (cons __tmp116203 __tmp116199))))
                                  (declare (not safe))
                                  (cons 'define __tmp116198))))
                           (declare (not safe))
                           (__SRC__% __tmp116197 _stx110858_))
                         '#f)))
                  (__tmp116195
                   (let () (declare (not safe)) (iota _len110931_))))
              (declare (not safe))
              (filter-map2 __tmp116196 _ids110929_ __tmp116195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp116194))))
                                        (declare (not safe))
                                        (cons __tmp116204 __tmp116193))))
                                 (declare (not safe))
                                 (cons __tmp116208 __tmp116192))))
                          (declare (not safe))
                          (cons 'begin __tmp116191))))
                   (declare (not safe))
                   (__SRC__% __tmp116190 _stx110858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e110911_))
                                                    (let* ((_$tgt110916110942_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e110911_)))
                                                           (_$hd110917110945_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt110916110942_)))
                                                           (_$tl110918110948_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt110916110942_))))
                                                      (let ((_id110952_
                                                             _$hd110917110945_))
                                                        (if (let ((__tmp116218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl110918110948_))))
                      (declare (not safe))
                      (equal? __tmp116218 '()))
                    (let ((__tmp116213
                           (let ((__tmp116214
                                  (let ((__tmp116217
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id110952_)))
                                        (__tmp116215
                                         (let ((__tmp116216
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr110909_))))
                                           (declare (not safe))
                                           (cons __tmp116216 '()))))
                                    (declare (not safe))
                                    (cons __tmp116217 __tmp116215))))
                             (declare (not safe))
                             (cons 'define __tmp116214))))
                      (declare (not safe))
                      (__SRC__% __tmp116213 _stx110858_))
                    (let () (declare (not safe)) (_$E110914110939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110914110939_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e110911_))
                                          (let* ((_$tgt110919110957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e110911_)))
                                                 (_$hd110920110960_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110919110957_)))
                                                 (_$tl110921110963_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110919110957_))))
                                            (if (let ((__tmp116220
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd110920110960_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116220 '#f))
                                                (if (let ((__tmp116219
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl110921110963_))))
                                                      (declare (not safe))
                                                      (equal? __tmp116219 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr110909_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E110913110954_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110913110954_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110913110954_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110862110874_)))))
                            (let () (declare (not safe)) (_$E110862110874_)))))
                    (let () (declare (not safe)) (_$E110862110874_))))
              (let () (declare (not safe)) (_$E110862110874_))))))
    (define __compile-head-id
      (lambda (_e110856_)
        (let ((__tmp116222
               (if (let () (declare (not safe)) (__AST-e _e110856_))
                   _e110856_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp116222))))
    (define __compile-lambda-head
      (lambda (_hd110813_)
        (let _recur110815_ ((_rest110817_ _hd110813_))
          (let* ((_$e110819_ _rest110817_)
                 (_$E110821110839_
                  (lambda ()
                    (let ((_$E110822110836_
                           (lambda ()
                             (let* ((_$E110823110831_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e110819_))))
                                    (_tail110834_ _$e110819_))
                               (declare (not safe))
                               (__compile-head-id _tail110834_)))))
                      (if (let ((__tmp116223
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e110819_))))
                            (declare (not safe))
                            (equal? __tmp116223 '()))
                          '()
                          (let () (declare (not safe)) (_$E110822110836_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110819_))
                (let* ((_$tgt110824110842_
                        (let () (declare (not safe)) (__AST-e _$e110819_)))
                       (_$hd110825110845_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110824110842_)))
                       (_$tl110826110848_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110824110842_))))
                  (let* ((_hd110852_ _$hd110825110845_)
                         (_rest110854_ _$tl110826110848_))
                    (let ((__tmp116225
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd110852_)))
                          (__tmp116224
                           (let ()
                             (declare (not safe))
                             (_recur110815_ _rest110854_))))
                      (declare (not safe))
                      (cons __tmp116225 __tmp116224))))
                (let () (declare (not safe)) (_$E110821110839_)))))))
    (define __compile-lambda%
      (lambda (_stx110760_)
        (let* ((_$e110762_ _stx110760_)
               (_$E110764110776_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110762_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110762_))
              (let* ((_$tgt110765110779_
                      (let () (declare (not safe)) (__AST-e _$e110762_)))
                     (_$hd110766110782_
                      (let () (declare (not safe)) (##car _$tgt110765110779_)))
                     (_$tl110767110785_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110765110779_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110767110785_))
                    (let* ((_$tgt110768110789_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110767110785_)))
                           (_$hd110769110792_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110768110789_)))
                           (_$tl110770110795_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110768110789_))))
                      (let ((_hd110799_ _$hd110769110792_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110770110795_))
                            (let* ((_$tgt110771110801_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110770110795_)))
                                   (_$hd110772110804_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110771110801_)))
                                   (_$tl110773110807_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110771110801_))))
                              (let ((_body110811_ _$hd110772110804_))
                                (if (let ((__tmp116231
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110773110807_))))
                                      (declare (not safe))
                                      (equal? __tmp116231 '()))
                                    (let ((__tmp116226
                                           (let ((__tmp116227
                                                  (let ((__tmp116230
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd110799_)))
                                                        (__tmp116228
                                                         (let ((__tmp116229
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body110811_))))
                   (declare (not safe))
                   (cons __tmp116229 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116230
                                                          __tmp116228))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp116227))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116226 _stx110760_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110764110776_)))))
                            (let () (declare (not safe)) (_$E110764110776_)))))
                    (let () (declare (not safe)) (_$E110764110776_))))
              (let () (declare (not safe)) (_$E110764110776_))))))
    (define __compile-case-lambda%
      (lambda (_stx110552_)
        (letrec ((_variadic?110554_
                  (lambda (_hd110725_)
                    (let* ((_$e110727_ _hd110725_)
                           (_$E110729110745_
                            (lambda ()
                              (let ((_$E110730110742_
                                     (lambda ()
                                       (let ((_$E110731110739_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e110727_)))))
                                         '#t))))
                                (if (let ((__tmp116232
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e110727_))))
                                      (declare (not safe))
                                      (equal? __tmp116232 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E110730110742_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110727_))
                          (let* ((_$tgt110732110748_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110727_)))
                                 (_$hd110733110751_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110732110748_)))
                                 (_$tl110734110754_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110732110748_))))
                            (let ((_rest110758_ _$tl110734110754_))
                              (declare (not safe))
                              (_variadic?110554_ _rest110758_)))
                          (let () (declare (not safe)) (_$E110729110745_))))))
                 (_arity110555_
                  (lambda (_hd110690_)
                    (let _lp110692_ ((_rest110694_ _hd110690_) (_k110695_ '0))
                      (let* ((_$e110697_ _rest110694_)
                             (_$E110699110710_
                              (lambda ()
                                (let ((_$E110700110707_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e110697_)))))
                                  _k110695_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e110697_))
                            (let* ((_$tgt110701110713_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e110697_)))
                                   (_$hd110702110716_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110701110713_)))
                                   (_$tl110703110719_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110701110713_))))
                              (let* ((_rest110723_ _$tl110703110719_)
                                     (__tmp116233
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k110695_ '1))))
                                (declare (not safe))
                                (_lp110692_ _rest110723_ __tmp116233)))
                            (let ()
                              (declare (not safe))
                              (_$E110699110710_)))))))
                 (_generate110556_
                  (lambda (_rest110617_ _args110618_ _len110619_)
                    (let* ((_$e110621_ _rest110617_)
                           (_$E110623110634_
                            (lambda ()
                              (let* ((_$E110624110631_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e110621_))))
                                     (__tmp116234
                                      (let ((__tmp116235
                                             (let ((__tmp116236
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110618_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp116236))))
                                        (declare (not safe))
                                        (cons 'error __tmp116235))))
                                (declare (not safe))
                                (__SRC__% __tmp116234 _stx110552_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110621_))
                          (let* ((_$tgt110625110637_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110621_)))
                                 (_$hd110626110640_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110625110637_)))
                                 (_$tl110627110643_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110625110637_))))
                            (let* ((_clause110647_ _$hd110626110640_)
                                   (_rest110649_ _$tl110627110643_)
                                   (_$e110651_ _clause110647_)
                                   (_$E110653110662_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e110651_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e110651_))
                                  (let* ((_$tgt110654110665_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e110651_)))
                                         (_$hd110655110668_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt110654110665_)))
                                         (_$tl110656110671_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt110654110665_))))
                                    (let ((_hd110675_ _$hd110655110668_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl110656110671_))
                                          (let* ((_$tgt110657110677_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110656110671_)))
                                                 (_$hd110658110680_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110657110677_)))
                                                 (_$tl110659110683_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110657110677_))))
                                            (if (let ((__tmp116251
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110659110683_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116251 '()))
                                                (let ((_clen110687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity110555_
                                                          _hd110675_)))
                                                      (_cmp110688_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?110554_
                                                              _hd110675_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp116237
                                                         (let ((__tmp116238
                                                                (let ((__tmp116248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116249
                                      (let ((__tmp116250
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen110687_ '()))))
                                        (declare (not safe))
                                        (cons _len110619_ __tmp116250))))
                                 (declare (not safe))
                                 (cons _cmp110688_ __tmp116249)))
                              (__tmp116239
                               (let ((__tmp116242
                                      (let ((__tmp116243
                                             (let ((__tmp116244
                                                    (let ((__tmp116246
                                                           (let ((__tmp116247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause110647_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp116247)))
                  (__tmp116245
                   (let () (declare (not safe)) (cons _args110618_ '()))))
              (declare (not safe))
              (cons __tmp116246 __tmp116245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp116244))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116243 _stx110552_)))
                                     (__tmp116240
                                      (let ((__tmp116241
                                             (let ()
                                               (declare (not safe))
                                               (_generate110556_
                                                _rest110649_
                                                _args110618_
                                                _len110619_))))
                                        (declare (not safe))
                                        (cons __tmp116241 '()))))
                                 (declare (not safe))
                                 (cons __tmp116242 __tmp116240))))
                          (declare (not safe))
                          (cons __tmp116248 __tmp116239))))
                   (declare (not safe))
                   (cons 'if __tmp116238))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp116237
                                                     _stx110552_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110653110662_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110653110662_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E110653110662_)))))
                          (let () (declare (not safe)) (_$E110623110634_)))))))
          (let* ((_$e110558_ _stx110552_)
                 (_$E110560110592_
                  (lambda ()
                    (let ((_$E110561110574_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110558_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110558_))
                          (let* ((_$tgt110562110577_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110558_)))
                                 (_$hd110563110580_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110562110577_)))
                                 (_$tl110564110583_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110562110577_))))
                            (let ((_clauses110587_ _$tl110564110583_))
                              (let ((_args110589_
                                     (let ((__tmp116252 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116252 _stx110552_)))
                                    (_len110590_
                                     (let ((__tmp116253 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116253 _stx110552_))))
                                (let ((__tmp116254
                                       (let ((__tmp116255
                                              (let ((__tmp116256
                                                     (let ((__tmp116257
                                                            (let ((__tmp116258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116259
                                  (let ((__tmp116262
                                         (let ((__tmp116263
                                                (let ((__tmp116264
                                                       (let ((__tmp116265
                                                              (let ((__tmp116266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp116267
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110589_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp116267))))
                        (declare (not safe))
                        (__SRC__% __tmp116266 _stx110552_))))
                 (declare (not safe))
                 (cons __tmp116265 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len110590_
                                                        __tmp116264))))
                                           (declare (not safe))
                                           (cons __tmp116263 '())))
                                        (__tmp116260
                                         (let ((__tmp116261
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate110556_
                                                   _clauses110587_
                                                   _args110589_
                                                   _len110590_))))
                                           (declare (not safe))
                                           (cons __tmp116261 '()))))
                                    (declare (not safe))
                                    (cons __tmp116262 __tmp116260))))
                             (declare (not safe))
                             (cons 'let __tmp116259))))
                      (declare (not safe))
                      (__SRC__% __tmp116258 _stx110552_))))
               (declare (not safe))
               (cons __tmp116257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args110589_
                                                      __tmp116256))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp116255))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116254 _stx110552_)))))
                          (let () (declare (not safe)) (_$E110561110574_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110558_))
                (let* ((_$tgt110565110595_
                        (let () (declare (not safe)) (__AST-e _$e110558_)))
                       (_$hd110566110598_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110565110595_)))
                       (_$tl110567110601_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110565110595_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110567110601_))
                      (let* ((_$tgt110568110605_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110567110601_)))
                             (_$hd110569110608_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110568110605_)))
                             (_$tl110570110611_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110568110605_))))
                        (let ((_clause110615_ _$hd110569110608_))
                          (if (let ((__tmp116269
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl110570110611_))))
                                (declare (not safe))
                                (equal? __tmp116269 '()))
                              (let ((__tmp116268
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause110615_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp116268))
                              (let ()
                                (declare (not safe))
                                (_$E110560110592_)))))
                      (let () (declare (not safe)) (_$E110560110592_))))
                (let () (declare (not safe)) (_$E110560110592_)))))))
    (define __compile-let-form
      (lambda (_stx110321_ _compile-simple110322_ _compile-values110323_)
        (letrec ((_simple-bind?110325_
                  (lambda (_hd110510_)
                    (let* ((_hd110511110521_ _hd110510_)
                           (_else110514110529_ (lambda () '#f)))
                      (let ((_K110517110542_ (lambda (_id110540_) '#t))
                            (_K110516110534_ (lambda () '#t)))
                        (let ((_try-match110513110537_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd110511110521_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K110516110534_))
                                     (let ()
                                       (declare (not safe))
                                       (_else110514110529_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd110511110521_))
                              (let ((_tl110519110547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd110511110521_)))
                                    (_hd110518110545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd110511110521_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl110519110547_))
                                    (let ((_id110550_ _hd110518110545_))
                                      (declare (not safe))
                                      (_K110517110542_ _id110550_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match110513110537_))))
                              (let ()
                                (declare (not safe))
                                (_try-match110513110537_))))))))
                 (_car-e110326_
                  (lambda (_hd110508_)
                    (if (let () (declare (not safe)) (pair? _hd110508_))
                        (car _hd110508_)
                        _hd110508_))))
          (let* ((_$e110328_ _stx110321_)
                 (_$E110330110473_
                  (lambda ()
                    (let ((_$E110331110353_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110328_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110328_))
                          (let* ((_$tgt110332110356_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110328_)))
                                 (_$hd110333110359_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110332110356_)))
                                 (_$tl110334110362_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110332110356_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110334110362_))
                                (let* ((_$tgt110335110366_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110334110362_)))
                                       (_$hd110336110369_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110335110366_)))
                                       (_$tl110337110372_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110335110366_))))
                                  (let ((_hd110376_ _$hd110336110369_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl110337110372_))
                                        (let* ((_$tgt110338110378_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl110337110372_)))
                                               (_$hd110339110381_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt110338110378_)))
                                               (_$tl110340110384_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt110338110378_))))
                                          (let ((_body110388_
                                                 _$hd110339110381_))
                                            (if (let ((__tmp116272
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110340110384_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116272 '()))
                                                (let* ((_hd-ids110428_
                                                        (map (lambda (_bind110390_)
                                                               (let* ((_$e110392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind110390_)
                              (_$E110394110403_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110392_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110392_))
                             (let* ((_$tgt110395110406_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110392_)))
                                    (_$hd110396110409_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110395110406_)))
                                    (_$tl110397110412_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110395110406_))))
                               (let ((_ids110416_ _$hd110396110409_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl110397110412_))
                                     (let* ((_$tgt110398110418_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl110397110412_)))
                                            (_$hd110399110421_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt110398110418_)))
                                            (_$tl110400110424_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt110398110418_))))
                                       (if (let ((__tmp116270
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110400110424_))))
                                             (declare (not safe))
                                             (equal? __tmp116270 '()))
                                           _ids110416_
                                           (let ()
                                             (declare (not safe))
                                             (_$E110394110403_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E110394110403_)))))
                             (let ()
                               (declare (not safe))
                               (_$E110394110403_)))))
                     _hd110376_))
               (_exprs110468_
                (map (lambda (_bind110430_)
                       (let* ((_$e110432_ _bind110430_)
                              (_$E110434110443_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110432_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110432_))
                             (let* ((_$tgt110435110446_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110432_)))
                                    (_$hd110436110449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110435110446_)))
                                    (_$tl110437110452_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110435110446_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl110437110452_))
                                   (let* ((_$tgt110438110456_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110437110452_)))
                                          (_$hd110439110459_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt110438110456_)))
                                          (_$tl110440110462_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt110438110456_))))
                                     (let ((_expr110466_ _$hd110439110459_))
                                       (if (let ((__tmp116271
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110440110462_))))
                                             (declare (not safe))
                                             (equal? __tmp116271 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr110466_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E110434110443_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E110434110443_))))
                             (let ()
                               (declare (not safe))
                               (_$E110434110443_)))))
                     _hd110376_))
               (_body110470_
                (let () (declare (not safe)) (__compile _body110388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?110325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids110428_))
              (_compile-simple110322_
               (map _car-e110326_ _hd-ids110428_)
               _exprs110468_
               _body110470_)
              (_compile-values110323_
               _hd-ids110428_
               _exprs110468_
               _body110470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110331110353_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110331110353_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110331110353_))))
                          (let () (declare (not safe)) (_$E110331110353_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110328_))
                (let* ((_$tgt110341110476_
                        (let () (declare (not safe)) (__AST-e _$e110328_)))
                       (_$hd110342110479_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110341110476_)))
                       (_$tl110343110482_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110341110476_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110343110482_))
                      (let* ((_$tgt110344110486_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110343110482_)))
                             (_$hd110345110489_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110344110486_)))
                             (_$tl110346110492_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110344110486_))))
                        (if (let ((__tmp116274
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd110345110489_))))
                              (declare (not safe))
                              (equal? __tmp116274 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110346110492_))
                                (let* ((_$tgt110347110496_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110346110492_)))
                                       (_$hd110348110499_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110347110496_)))
                                       (_$tl110349110502_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110347110496_))))
                                  (let ((_body110506_ _$hd110348110499_))
                                    (if (let ((__tmp116273
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl110349110502_))))
                                          (declare (not safe))
                                          (equal? __tmp116273 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body110506_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110330110473_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110330110473_)))
                            (let () (declare (not safe)) (_$E110330110473_))))
                      (let () (declare (not safe)) (_$E110330110473_))))
                (let () (declare (not safe)) (_$E110330110473_)))))))
    (define __compile-let-values%
      (lambda (_stx110136_)
        (letrec ((_compile-simple110138_
                  (lambda (_hd-ids110317_ _exprs110318_ _body110319_)
                    (let ((__tmp116275
                           (let ((__tmp116276
                                  (let ((__tmp116278
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110317_)
                                              _exprs110318_))
                                        (__tmp116277
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110319_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116278 __tmp116277))))
                             (declare (not safe))
                             (cons 'let __tmp116276))))
                      (declare (not safe))
                      (__SRC__% __tmp116275 _stx110136_))))
                 (_compile-values110139_
                  (lambda (_hd-ids110235_ _exprs110236_ _body110237_)
                    (let _lp110239_ ((_rest110241_ _hd-ids110235_)
                                     (_exprs110242_ _exprs110236_)
                                     (_bind110243_ '())
                                     (_post110244_ '()))
                      (let* ((_rest110245110259_ _rest110241_)
                             (_else110248110267_
                              (lambda ()
                                (let ((__tmp116279
                                       (let ((__tmp116280
                                              (let ((__tmp116283
                                                     (reverse _bind110243_))
                                                    (__tmp116281
                                                     (let ((__tmp116282
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post110140_
                                                               _post110244_
                                                               _body110237_))))
                                                       (declare (not safe))
                                                       (cons __tmp116282
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp116283
                                                      __tmp116281))))
                                         (declare (not safe))
                                         (cons 'let __tmp116280))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116279 _stx110136_)))))
                        (let ((_K110253110300_
                               (lambda (_rest110297_ _id110298_)
                                 (let ((__tmp116289 (cdr _exprs110242_))
                                       (__tmp116284
                                        (let ((__tmp116285
                                               (let ((__tmp116288
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110298_)))
                                                     (__tmp116286
                                                      (let ((__tmp116287
                                                             (car _exprs110242_)))
                                                        (declare (not safe))
                                                        (cons __tmp116287
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116288
                                                       __tmp116286))))
                                          (declare (not safe))
                                          (cons __tmp116285 _bind110243_))))
                                   (declare (not safe))
                                   (_lp110239_
                                    _rest110297_
                                    __tmp116289
                                    __tmp116284
                                    _post110244_))))
                              (_K110250110282_
                               (lambda (_rest110271_ _hd110272_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110272_))
                                     (let ((__tmp116310 (cdr _exprs110242_))
                                           (__tmp116303
                                            (let ((__tmp116304
                                                   (let ((__tmp116309
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110272_)))
                                                         (__tmp116305
                                                          (let ((__tmp116306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116307
                                (let ((__tmp116308 (car _exprs110242_)))
                                  (declare (not safe))
                                  (cons __tmp116308 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116307))))
                    (declare (not safe))
                    (cons __tmp116306 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116309
                                                           __tmp116305))))
                                              (declare (not safe))
                                              (cons __tmp116304
                                                    _bind110243_))))
                                       (declare (not safe))
                                       (_lp110239_
                                        _rest110271_
                                        __tmp116310
                                        __tmp116303
                                        _post110244_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110272_))
                                         (let* ((_len110274_
                                                 (length _hd110272_))
                                                (_tmp110276_
                                                 (let ((__tmp116290 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116290))))
                                           (let ((__tmp116302
                                                  (cdr _exprs110242_))
                                                 (__tmp116298
                                                  (let ((__tmp116299
                                                         (let ((__tmp116300
                                                                (let ((__tmp116301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110242_)))
                          (declare (not safe))
                          (cons __tmp116301 '()))))
                   (declare (not safe))
                   (cons _tmp110276_ __tmp116300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116299
                                                          _bind110243_)))
                                                 (__tmp116291
                                                  (let ((__tmp116292
                                                         (let ((__tmp116293
                                                                (let ((__tmp116294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116296
                                      (lambda (_id110279_ _k110280_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110279_))
                                            (let ((__tmp116297
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110279_))))
                                              (declare (not safe))
                                              (cons __tmp116297 _k110280_))
                                            '#f)))
                                     (__tmp116295
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110274_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116296
                                  _hd110272_
                                  __tmp116295))))
                          (declare (not safe))
                          (cons _len110274_ __tmp116294))))
                   (declare (not safe))
                   (cons _tmp110276_ __tmp116293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116292
                                                          _post110244_))))
                                             (declare (not safe))
                                             (_lp110239_
                                              _rest110271_
                                              __tmp116302
                                              __tmp116298
                                              __tmp116291)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx110136_
                                            _hd110272_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110245110259_))
                              (let ((_tl110255110305_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110245110259_)))
                                    (_hd110254110303_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110245110259_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110254110303_))
                                    (let ((_tl110257110310_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110254110303_)))
                                          (_hd110256110308_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110254110303_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110257110310_))
                                          (let ((_id110313_ _hd110256110308_)
                                                (_rest110315_
                                                 _tl110255110305_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110253110300_
                                               _rest110315_
                                               _id110313_)))
                                          (let ((_hd110290_ _hd110254110303_)
                                                (_rest110292_
                                                 _tl110255110305_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110250110282_
                                               _rest110292_
                                               _hd110290_)))))
                                    (let ((_hd110290_ _hd110254110303_)
                                          (_rest110292_ _tl110255110305_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110250110282_
                                         _rest110292_
                                         _hd110290_)))))
                              (let ()
                                (declare (not safe))
                                (_else110248110267_))))))))
                 (_compile-post110140_
                  (lambda (_post110142_ _body110143_)
                    (let _lp110145_ ((_rest110147_ _post110142_)
                                     (_check110148_ '())
                                     (_bind110149_ '()))
                      (let* ((_rest110150110162_ _rest110147_)
                             (_else110152110170_
                              (lambda ()
                                (let ((__tmp116311
                                       (let ((__tmp116312
                                              (let ((__tmp116313
                                                     (let ((__tmp116314
                                                            (let ((__tmp116315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116316
                                  (let ((__tmp116317
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110143_ '()))))
                                    (declare (not safe))
                                    (cons _bind110149_ __tmp116317))))
                             (declare (not safe))
                             (cons 'let __tmp116316))))
                      (declare (not safe))
                      (__SRC__% __tmp116315 _stx110136_))))
               (declare (not safe))
               (cons __tmp116314 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116313
                                                        _check110148_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116312))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116311 _stx110136_))))
                             (_K110154110209_
                              (lambda (_rest110173_
                                       _init110174_
                                       _len110175_
                                       _tmp110176_)
                                (let ((__tmp116325
                                       (let ((__tmp116326
                                              (let ((__tmp116327
                                                     (let ((__tmp116328
                                                            (let ((__tmp116329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len110175_ '()))))
                      (declare (not safe))
                      (cons _tmp110176_ __tmp116329))))
               (declare (not safe))
               (cons '__check-values __tmp116328))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116327
                                                 _stx110136_))))
                                         (declare (not safe))
                                         (cons __tmp116326 _check110148_)))
                                      (__tmp116318
                                       (let ((__tmp116319
                                              (lambda (_hd110178_ _r110179_)
                                                (let* ((_hd110180110187_
                                                        _hd110178_)
                                                       (_E110182110191_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd110180110187_)))
               (_K110183110197_
                (lambda (_k110194_ _id110195_)
                  (let ((__tmp116320
                         (let ((__tmp116321
                                (let ((__tmp116322
                                       (let ((__tmp116323
                                              (let ((__tmp116324
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k110194_ '()))))
                                                (declare (not safe))
                                                (cons _tmp110176_
                                                      __tmp116324))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp116323))))
                                  (declare (not safe))
                                  (cons __tmp116322 '()))))
                           (declare (not safe))
                           (cons _id110195_ __tmp116321))))
                    (declare (not safe))
                    (cons __tmp116320 _r110179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd110180110187_))
                                                      (let ((_hd110184110200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd110180110187_)))
                    (_tl110185110202_
                     (let () (declare (not safe)) (##cdr _hd110180110187_))))
                (let* ((_id110205_ _hd110184110200_)
                       (_k110207_ _tl110185110202_))
                  (declare (not safe))
                  (_K110183110197_ _k110207_ _id110205_)))
              (let () (declare (not safe)) (_E110182110191_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116319
                                                 _bind110149_
                                                 _init110174_))))
                                  (declare (not safe))
                                  (_lp110145_
                                   _rest110173_
                                   __tmp116325
                                   __tmp116318)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110150110162_))
                            (let ((_hd110155110212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110150110162_)))
                                  (_tl110156110214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110150110162_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd110155110212_))
                                  (let ((_hd110157110217_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd110155110212_)))
                                        (_tl110158110219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd110155110212_))))
                                    (let ((_tmp110222_ _hd110157110217_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl110158110219_))
                                          (let ((_hd110159110224_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl110158110219_)))
                                                (_tl110160110226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl110158110219_))))
                                            (let* ((_len110229_
                                                    _hd110159110224_)
                                                   (_init110231_
                                                    _tl110160110226_)
                                                   (_rest110233_
                                                    _tl110156110214_))
                                              (declare (not safe))
                                              (_K110154110209_
                                               _rest110233_
                                               _init110231_
                                               _len110229_
                                               _tmp110222_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else110152110170_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else110152110170_))))
                            (let ()
                              (declare (not safe))
                              (_else110152110170_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx110136_
             _compile-simple110138_
             _compile-values110139_)))))
    (define __compile-letrec-values%
      (lambda (_stx109936_)
        (letrec ((_compile-simple109938_
                  (lambda (_hd-ids110132_ _exprs110133_ _body110134_)
                    (let ((__tmp116330
                           (let ((__tmp116331
                                  (let ((__tmp116333
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110132_)
                                              _exprs110133_))
                                        (__tmp116332
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110134_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116333 __tmp116332))))
                             (declare (not safe))
                             (cons 'letrec __tmp116331))))
                      (declare (not safe))
                      (__SRC__% __tmp116330 _stx109936_))))
                 (_compile-values109939_
                  (lambda (_hd-ids110046_ _exprs110047_ _body110048_)
                    (let _lp110050_ ((_rest110052_ _hd-ids110046_)
                                     (_exprs110053_ _exprs110047_)
                                     (_pre110054_ '())
                                     (_bind110055_ '())
                                     (_post110056_ '()))
                      (let* ((_rest110057110071_ _rest110052_)
                             (_else110060110079_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner109940_
                                   _pre110054_
                                   _bind110055_
                                   _post110056_
                                   _body110048_)))))
                        (let ((_K110065110115_
                               (lambda (_rest110112_ _id110113_)
                                 (let ((__tmp116339 (cdr _exprs110053_))
                                       (__tmp116334
                                        (let ((__tmp116335
                                               (let ((__tmp116338
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110113_)))
                                                     (__tmp116336
                                                      (let ((__tmp116337
                                                             (car _exprs110053_)))
                                                        (declare (not safe))
                                                        (cons __tmp116337
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116338
                                                       __tmp116336))))
                                          (declare (not safe))
                                          (cons __tmp116335 _bind110055_))))
                                   (declare (not safe))
                                   (_lp110050_
                                    _rest110112_
                                    __tmp116339
                                    _pre110054_
                                    __tmp116334
                                    _post110056_))))
                              (_K110062110097_
                               (lambda (_rest110083_ _hd110084_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110084_))
                                     (let ((__tmp116367 (cdr _exprs110053_))
                                           (__tmp116360
                                            (let ((__tmp116361
                                                   (let ((__tmp116366
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110084_)))
                                                         (__tmp116362
                                                          (let ((__tmp116363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116364
                                (let ((__tmp116365 (car _exprs110053_)))
                                  (declare (not safe))
                                  (cons __tmp116365 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116364))))
                    (declare (not safe))
                    (cons __tmp116363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116366
                                                           __tmp116362))))
                                              (declare (not safe))
                                              (cons __tmp116361
                                                    _bind110055_))))
                                       (declare (not safe))
                                       (_lp110050_
                                        _rest110083_
                                        __tmp116367
                                        _pre110054_
                                        __tmp116360
                                        _post110056_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110084_))
                                         (let* ((_len110086_
                                                 (length _hd110084_))
                                                (_tmp110088_
                                                 (let ((__tmp116340 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116340))))
                                           (let ((__tmp116359
                                                  (cdr _exprs110053_))
                                                 (__tmp116352
                                                  (let ((__tmp116353
                                                         (lambda (_id110091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r110092_)
                   (if (let () (declare (not safe)) (__AST-e _id110091_))
                       (let ((__tmp116354
                              (let ((__tmp116358
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id110091_)))
                                    (__tmp116355
                                     (let ((__tmp116356
                                            (let ((__tmp116357
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp116357))))
                                       (declare (not safe))
                                       (cons __tmp116356 '()))))
                                (declare (not safe))
                                (cons __tmp116358 __tmp116355))))
                         (declare (not safe))
                         (cons __tmp116354 _r110092_))
                       _r110092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp116353
                                                            _pre110054_
                                                            _hd110084_)))
                                                 (__tmp116348
                                                  (let ((__tmp116349
                                                         (let ((__tmp116350
                                                                (let ((__tmp116351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110053_)))
                          (declare (not safe))
                          (cons __tmp116351 '()))))
                   (declare (not safe))
                   (cons _tmp110088_ __tmp116350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116349
                                                          _bind110055_)))
                                                 (__tmp116341
                                                  (let ((__tmp116342
                                                         (let ((__tmp116343
                                                                (let ((__tmp116344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116346
                                      (lambda (_id110094_ _k110095_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110094_))
                                            (let ((__tmp116347
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110094_))))
                                              (declare (not safe))
                                              (cons __tmp116347 _k110095_))
                                            '#f)))
                                     (__tmp116345
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110086_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116346
                                  _hd110084_
                                  __tmp116345))))
                          (declare (not safe))
                          (cons _len110086_ __tmp116344))))
                   (declare (not safe))
                   (cons _tmp110088_ __tmp116343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116342
                                                          _post110056_))))
                                             (declare (not safe))
                                             (_lp110050_
                                              _rest110083_
                                              __tmp116359
                                              __tmp116352
                                              __tmp116348
                                              __tmp116341)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx109936_
                                            _hd110084_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110057110071_))
                              (let ((_tl110067110120_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110057110071_)))
                                    (_hd110066110118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110057110071_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110066110118_))
                                    (let ((_tl110069110125_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110066110118_)))
                                          (_hd110068110123_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110066110118_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110069110125_))
                                          (let ((_id110128_ _hd110068110123_)
                                                (_rest110130_
                                                 _tl110067110120_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110065110115_
                                               _rest110130_
                                               _id110128_)))
                                          (let ((_hd110105_ _hd110066110118_)
                                                (_rest110107_
                                                 _tl110067110120_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110062110097_
                                               _rest110107_
                                               _hd110105_)))))
                                    (let ((_hd110105_ _hd110066110118_)
                                          (_rest110107_ _tl110067110120_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110062110097_
                                         _rest110107_
                                         _hd110105_)))))
                              (let ()
                                (declare (not safe))
                                (_else110060110079_))))))))
                 (_compile-inner109940_
                  (lambda (_pre110041_ _bind110042_ _post110043_ _body110044_)
                    (if (let () (declare (not safe)) (null? _pre110041_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind109941_
                           _bind110042_
                           _post110043_
                           _body110044_))
                        (let ((__tmp116368
                               (let ((__tmp116369
                                      (let ((__tmp116372 (reverse _pre110041_))
                                            (__tmp116370
                                             (let ((__tmp116371
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind109941_
                                                       _bind110042_
                                                       _post110043_
                                                       _body110044_))))
                                               (declare (not safe))
                                               (cons __tmp116371 '()))))
                                        (declare (not safe))
                                        (cons __tmp116372 __tmp116370))))
                                 (declare (not safe))
                                 (cons 'let __tmp116369))))
                          (declare (not safe))
                          (__SRC__% __tmp116368 _stx109936_)))))
                 (_compile-bind109941_
                  (lambda (_bind110037_ _post110038_ _body110039_)
                    (let ((__tmp116373
                           (let ((__tmp116374
                                  (let ((__tmp116377 (reverse _bind110037_))
                                        (__tmp116375
                                         (let ((__tmp116376
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109942_
                                                   _post110038_
                                                   _body110039_))))
                                           (declare (not safe))
                                           (cons __tmp116376 '()))))
                                    (declare (not safe))
                                    (cons __tmp116377 __tmp116375))))
                             (declare (not safe))
                             (cons 'letrec __tmp116374))))
                      (declare (not safe))
                      (__SRC__% __tmp116373 _stx109936_))))
                 (_compile-post109942_
                  (lambda (_post109944_ _body109945_)
                    (let _lp109947_ ((_rest109949_ _post109944_)
                                     (_check109950_ '())
                                     (_bind109951_ '()))
                      (let* ((_rest109952109964_ _rest109949_)
                             (_else109954109972_
                              (lambda ()
                                (let ((__tmp116378
                                       (let ((__tmp116379
                                              (let ((__tmp116380
                                                     (let ((__tmp116381
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body109945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp116381 _bind109951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116380
                                                        _check109950_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116379))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116378 _stx109936_))))
                             (_K109956110011_
                              (lambda (_rest109975_
                                       _init109976_
                                       _len109977_
                                       _tmp109978_)
                                (let ((__tmp116390
                                       (let ((__tmp116391
                                              (let ((__tmp116392
                                                     (let ((__tmp116393
                                                            (let ((__tmp116394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109977_ '()))))
                      (declare (not safe))
                      (cons _tmp109978_ __tmp116394))))
               (declare (not safe))
               (cons '__check-values __tmp116393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116392
                                                 _stx109936_))))
                                         (declare (not safe))
                                         (cons __tmp116391 _check109950_)))
                                      (__tmp116382
                                       (let ((__tmp116383
                                              (lambda (_hd109980_ _r109981_)
                                                (let* ((_hd109982109989_
                                                        _hd109980_)
                                                       (_E109984109993_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109982109989_)))
               (_K109985109999_
                (lambda (_k109996_ _id109997_)
                  (let ((__tmp116384
                         (let ((__tmp116385
                                (let ((__tmp116386
                                       (let ((__tmp116387
                                              (let ((__tmp116388
                                                     (let ((__tmp116389
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k109996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp109978_ __tmp116389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp116388))))
                                         (declare (not safe))
                                         (cons __tmp116387 '()))))
                                  (declare (not safe))
                                  (cons _id109997_ __tmp116386))))
                           (declare (not safe))
                           (cons 'set! __tmp116385))))
                    (declare (not safe))
                    (cons __tmp116384 _r109981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109982109989_))
                                                      (let ((_hd109986110002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109982109989_)))
                    (_tl109987110004_
                     (let () (declare (not safe)) (##cdr _hd109982109989_))))
                (let* ((_id110007_ _hd109986110002_)
                       (_k110009_ _tl109987110004_))
                  (declare (not safe))
                  (_K109985109999_ _k110009_ _id110007_)))
              (let () (declare (not safe)) (_E109984109993_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116383
                                                 _bind109951_
                                                 _init109976_))))
                                  (declare (not safe))
                                  (_lp109947_
                                   _rest109975_
                                   __tmp116390
                                   __tmp116382)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109952109964_))
                            (let ((_hd109957110014_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109952109964_)))
                                  (_tl109958110016_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109952109964_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd109957110014_))
                                  (let ((_hd109959110019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd109957110014_)))
                                        (_tl109960110021_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd109957110014_))))
                                    (let ((_tmp110024_ _hd109959110019_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl109960110021_))
                                          (let ((_hd109961110026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl109960110021_)))
                                                (_tl109962110028_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl109960110021_))))
                                            (let* ((_len110031_
                                                    _hd109961110026_)
                                                   (_init110033_
                                                    _tl109962110028_)
                                                   (_rest110035_
                                                    _tl109958110016_))
                                              (declare (not safe))
                                              (_K109956110011_
                                               _rest110035_
                                               _init110033_
                                               _len110031_
                                               _tmp110024_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109954109972_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else109954109972_))))
                            (let ()
                              (declare (not safe))
                              (_else109954109972_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109936_
             _compile-simple109938_
             _compile-values109939_)))))
    (define __compile-letrec*-values%
      (lambda (_stx109691_)
        (letrec ((_compile-simple109693_
                  (lambda (_hd-ids109932_ _exprs109933_ _body109934_)
                    (let ((__tmp116395
                           (let ((__tmp116396
                                  (let ((__tmp116398
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109932_)
                                              _exprs109933_))
                                        (__tmp116397
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109934_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116398 __tmp116397))))
                             (declare (not safe))
                             (cons 'letrec* __tmp116396))))
                      (declare (not safe))
                      (__SRC__% __tmp116395 _stx109691_))))
                 (_compile-values109694_
                  (lambda (_hd-ids109843_ _exprs109844_ _body109845_)
                    (let _lp109847_ ((_rest109849_ _hd-ids109843_)
                                     (_exprs109850_ _exprs109844_)
                                     (_bind109851_ '())
                                     (_post109852_ '()))
                      (let* ((_rest109853109867_ _rest109849_)
                             (_else109856109875_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind109695_
                                   _bind109851_
                                   _post109852_
                                   _body109845_)))))
                        (let ((_K109861109915_
                               (lambda (_rest109910_ _hd109911_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109911_))
                                     (let ((_id109913_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109911_))))
                                       (let ((__tmp116413 (cdr _exprs109850_))
                                             (__tmp116408
                                              (let ((__tmp116409
                                                     (let ((__tmp116410
                                                            (let ((__tmp116411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116412
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116412))))
                      (declare (not safe))
                      (cons __tmp116411 '()))))
               (declare (not safe))
               (cons _id109913_ __tmp116410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116409
                                                      _bind109851_)))
                                             (__tmp116404
                                              (let ((__tmp116405
                                                     (let ((__tmp116406
                                                            (let ((__tmp116407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs109850_)))
                      (declare (not safe))
                      (cons __tmp116407 '()))))
               (declare (not safe))
               (cons _id109913_ __tmp116406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116405
                                                      _post109852_))))
                                         (declare (not safe))
                                         (_lp109847_
                                          _rest109910_
                                          __tmp116413
                                          __tmp116408
                                          __tmp116404)))
                                     (let ((__tmp116403 (cdr _exprs109850_))
                                           (__tmp116399
                                            (let ((__tmp116400
                                                   (let ((__tmp116401
                                                          (let ((__tmp116402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs109850_)))
                    (declare (not safe))
                    (cons __tmp116402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp116401))))
                                              (declare (not safe))
                                              (cons __tmp116400
                                                    _post109852_))))
                                       (declare (not safe))
                                       (_lp109847_
                                        _rest109910_
                                        __tmp116403
                                        _bind109851_
                                        __tmp116399)))))
                              (_K109858109895_
                               (lambda (_rest109879_ _hd109880_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109880_))
                                     (let ((_id109882_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109880_))))
                                       (let ((__tmp116449 (cdr _exprs109850_))
                                             (__tmp116444
                                              (let ((__tmp116445
                                                     (let ((__tmp116446
                                                            (let ((__tmp116447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116448
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116448))))
                      (declare (not safe))
                      (cons __tmp116447 '()))))
               (declare (not safe))
               (cons _id109882_ __tmp116446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116445
                                                      _bind109851_)))
                                             (__tmp116438
                                              (let ((__tmp116439
                                                     (let ((__tmp116440
                                                            (let ((__tmp116441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116442
                                  (let ((__tmp116443 (car _exprs109850_)))
                                    (declare (not safe))
                                    (cons __tmp116443 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp116442))))
                      (declare (not safe))
                      (cons __tmp116441 '()))))
               (declare (not safe))
               (cons _id109882_ __tmp116440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116439
                                                      _post109852_))))
                                         (declare (not safe))
                                         (_lp109847_
                                          _rest109879_
                                          __tmp116449
                                          __tmp116444
                                          __tmp116438)))
                                     (if (let ((__tmp116437
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd109880_))))
                                           (declare (not safe))
                                           (not __tmp116437))
                                         (let ((__tmp116436
                                                (cdr _exprs109850_))
                                               (__tmp116432
                                                (let ((__tmp116433
                                                       (let ((__tmp116434
                                                              (let ((__tmp116435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs109850_)))
                        (declare (not safe))
                        (cons __tmp116435 '()))))
                 (declare (not safe))
                 (cons '#f __tmp116434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp116433
                                                        _post109852_))))
                                           (declare (not safe))
                                           (_lp109847_
                                            _rest109879_
                                            __tmp116436
                                            _bind109851_
                                            __tmp116432))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd109880_))
                                             (let* ((_len109884_
                                                     (length _hd109880_))
                                                    (_tmp109886_
                                                     (let ((__tmp116414
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp116414))))
                                               (let ((__tmp116431
                                                      (cdr _exprs109850_))
                                                     (__tmp116424
                                                      (let ((__tmp116425
                                                             (lambda (_id109889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r109890_)
                       (if (let () (declare (not safe)) (__AST-e _id109889_))
                           (let ((__tmp116426
                                  (let ((__tmp116430
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109889_)))
                                        (__tmp116427
                                         (let ((__tmp116428
                                                (let ((__tmp116429
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp116429))))
                                           (declare (not safe))
                                           (cons __tmp116428 '()))))
                                    (declare (not safe))
                                    (cons __tmp116430 __tmp116427))))
                             (declare (not safe))
                             (cons __tmp116426 _r109890_))
                           _r109890_))))
                (declare (not safe))
                (foldl1 __tmp116425 _bind109851_ _hd109880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp116415
                                                      (let ((__tmp116416
                                                             (let ((__tmp116417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116423 (car _exprs109850_))
                                  (__tmp116418
                                   (let ((__tmp116419
                                          (let ((__tmp116421
                                                 (lambda (_id109892_ _k109893_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id109892_))
                                                       (let ((__tmp116422
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id109892_))))
                 (declare (not safe))
                 (cons __tmp116422 _k109893_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp116420
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len109884_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp116421
                                             _hd109880_
                                             __tmp116420))))
                                     (declare (not safe))
                                     (cons _len109884_ __tmp116419))))
                              (declare (not safe))
                              (cons __tmp116423 __tmp116418))))
                       (declare (not safe))
                       (cons _tmp109886_ __tmp116417))))
                (declare (not safe))
                (cons __tmp116416 _post109852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp109847_
                                                  _rest109879_
                                                  __tmp116431
                                                  __tmp116424
                                                  __tmp116415)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx109691_
                                                _hd109880_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109853109867_))
                              (let ((_tl109863109920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109853109867_)))
                                    (_hd109862109918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109853109867_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109862109918_))
                                    (let ((_tl109865109925_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109862109918_)))
                                          (_hd109864109923_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109862109918_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109865109925_))
                                          (let ((_hd109928_ _hd109864109923_)
                                                (_rest109930_
                                                 _tl109863109920_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109861109915_
                                               _rest109930_
                                               _hd109928_)))
                                          (let ((_hd109903_ _hd109862109918_)
                                                (_rest109905_
                                                 _tl109863109920_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109858109895_
                                               _rest109905_
                                               _hd109903_)))))
                                    (let ((_hd109903_ _hd109862109918_)
                                          (_rest109905_ _tl109863109920_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109858109895_
                                         _rest109905_
                                         _hd109903_)))))
                              (let ()
                                (declare (not safe))
                                (_else109856109875_))))))))
                 (_compile-bind109695_
                  (lambda (_bind109839_ _post109840_ _body109841_)
                    (let ((__tmp116450
                           (let ((__tmp116451
                                  (let ((__tmp116454 (reverse _bind109839_))
                                        (__tmp116452
                                         (let ((__tmp116453
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109696_
                                                   _post109840_
                                                   _body109841_))))
                                           (declare (not safe))
                                           (cons __tmp116453 '()))))
                                    (declare (not safe))
                                    (cons __tmp116454 __tmp116452))))
                             (declare (not safe))
                             (cons 'let __tmp116451))))
                      (declare (not safe))
                      (__SRC__% __tmp116450 _stx109691_))))
                 (_compile-post109696_
                  (lambda (_post109698_ _body109699_)
                    (let ((__tmp116455
                           (let ((__tmp116456
                                  (let ((__tmp116457
                                         (let ((__tmp116459
                                                (lambda (_hd109701_ _r109702_)
                                                  (let* ((_hd109703109726_
                                                          _hd109701_)
                                                         (_E109707109730_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd109703109726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K109720109824_
                                                           (lambda (_expr109822_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr109822_ _r109702_))))
                  (_K109715109802_
                   (lambda (_expr109799_ _id109800_)
                     (let ((__tmp116460
                            (let ((__tmp116461
                                   (let ((__tmp116462
                                          (let ((__tmp116463
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr109799_ '()))))
                                            (declare (not safe))
                                            (cons _id109800_ __tmp116463))))
                                     (declare (not safe))
                                     (cons 'set! __tmp116462))))
                              (declare (not safe))
                              (__SRC__% __tmp116461 _stx109691_))))
                       (declare (not safe))
                       (cons __tmp116460 _r109702_))))
                  (_K109708109769_
                   (lambda (_init109734_ _len109735_ _expr109736_ _tmp109737_)
                     (let ((__tmp116464
                            (let ((__tmp116465
                                   (let ((__tmp116466
                                          (let ((__tmp116480
                                                 (let ((__tmp116481
                                                        (let ((__tmp116482
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr109736_ '()))))
                  (declare (not safe))
                  (cons _tmp109737_ __tmp116482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116481 '())))
                                                (__tmp116467
                                                 (let ((__tmp116476
                                                        (let ((__tmp116477
                                                               (let ((__tmp116478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp116479
                                     (let ()
                                       (declare (not safe))
                                       (cons _len109735_ '()))))
                                (declare (not safe))
                                (cons _tmp109737_ __tmp116479))))
                         (declare (not safe))
                         (cons '__check-values __tmp116478))))
                  (declare (not safe))
                  (__SRC__% __tmp116477 _stx109691_)))
               (__tmp116468
                (let ((__tmp116469
                       (map (lambda (_hd109739_)
                              (let* ((_hd109740109747_ _hd109739_)
                                     (_E109742109751_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd109740109747_)))
                                     (_K109743109757_
                                      (lambda (_k109754_ _id109755_)
                                        (let ((__tmp116470
                                               (let ((__tmp116471
                                                      (let ((__tmp116472
                                                             (let ((__tmp116473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116474
                                   (let ((__tmp116475
                                          (let ()
                                            (declare (not safe))
                                            (cons _k109754_ '()))))
                                     (declare (not safe))
                                     (cons _tmp109737_ __tmp116475))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp116474))))
                       (declare (not safe))
                       (cons __tmp116473 '()))))
                (declare (not safe))
                (cons _id109755_ __tmp116472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp116471))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp116470
                                           _stx109691_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109740109747_))
                                    (let ((_hd109744109760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109740109747_)))
                                          (_tl109745109762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109740109747_))))
                                      (let* ((_id109765_ _hd109744109760_)
                                             (_k109767_ _tl109745109762_))
                                        (declare (not safe))
                                        (_K109743109757_
                                         _k109767_
                                         _id109765_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E109742109751_)))))
                            _init109734_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp116469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116476
                                                         __tmp116468))))
                                            (declare (not safe))
                                            (cons __tmp116480 __tmp116467))))
                                     (declare (not safe))
                                     (cons 'let __tmp116466))))
                              (declare (not safe))
                              (__SRC__% __tmp116465 _stx109691_))))
                       (declare (not safe))
                       (cons __tmp116464 _r109702_)))))
              (if (let () (declare (not safe)) (##pair? _hd109703109726_))
                  (let ((_tl109722109829_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd109703109726_)))
                        (_hd109721109827_
                         (let ()
                           (declare (not safe))
                           (##car _hd109703109726_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd109721109827_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109722109829_))
                            (let ((_tl109724109834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109722109829_)))
                                  (_hd109723109832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109722109829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109724109834_))
                                  (let ((_expr109837_ _hd109723109832_))
                                    (declare (not safe))
                                    (_K109720109824_ _expr109837_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109724109834_))
                                      (let ((_tl109714109788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109724109834_)))
                                            (_hd109713109786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109724109834_))))
                                        (let ((_tmp109777_ _hd109721109827_)
                                              (_expr109784_ _hd109723109832_)
                                              (_len109791_ _hd109713109786_)
                                              (_init109793_ _tl109714109788_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109708109769_
                                             _init109793_
                                             _len109791_
                                             _expr109784_
                                             _tmp109777_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109707109730_)))))
                            (let () (declare (not safe)) (_E109707109730_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109722109829_))
                            (let ((_tl109719109814_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109722109829_)))
                                  (_hd109718109812_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109722109829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109719109814_))
                                  (let ((_id109810_ _hd109721109827_)
                                        (_expr109817_ _hd109718109812_))
                                    (let ()
                                      (declare (not safe))
                                      (_K109715109802_
                                       _expr109817_
                                       _id109810_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109719109814_))
                                      (let ((_tl109714109788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109719109814_)))
                                            (_hd109713109786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109719109814_))))
                                        (let ((_tmp109777_ _hd109721109827_)
                                              (_expr109784_ _hd109718109812_)
                                              (_len109791_ _hd109713109786_)
                                              (_init109793_ _tl109714109788_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109708109769_
                                             _init109793_
                                             _len109791_
                                             _expr109784_
                                             _tmp109777_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109707109730_)))))
                            (let () (declare (not safe)) (_E109707109730_)))))
                  (let () (declare (not safe)) (_E109707109730_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp116458
                                                (list _body109699_)))
                                           (declare (not safe))
                                           (foldl1 __tmp116459
                                                   __tmp116458
                                                   _post109698_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp116457))))
                             (declare (not safe))
                             (cons 'begin __tmp116456))))
                      (declare (not safe))
                      (__SRC__% __tmp116455 _stx109691_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109691_
             _compile-simple109693_
             _compile-values109694_)))))
    (define __compile-call%
      (lambda (_stx109651_)
        (let* ((_$e109653_ _stx109651_)
               (_$E109655109664_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109653_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109653_))
              (let* ((_$tgt109656109667_
                      (let () (declare (not safe)) (__AST-e _$e109653_)))
                     (_$hd109657109670_
                      (let () (declare (not safe)) (##car _$tgt109656109667_)))
                     (_$tl109658109673_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109656109667_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109658109673_))
                    (let* ((_$tgt109659109677_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109658109673_)))
                           (_$hd109660109680_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109659109677_)))
                           (_$tl109661109683_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109659109677_))))
                      (let* ((_rator109687_ _$hd109660109680_)
                             (_rands109689_ _$tl109661109683_)
                             (__tmp116483
                              (let ((__tmp116485
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator109687_)))
                                    (__tmp116484
                                     (map __compile _rands109689_)))
                                (declare (not safe))
                                (cons __tmp116485 __tmp116484))))
                        (declare (not safe))
                        (__SRC__% __tmp116483 _stx109651_)))
                    (let () (declare (not safe)) (_$E109655109664_))))
              (let () (declare (not safe)) (_$E109655109664_))))))
    (define __compile-ref%
      (lambda (_stx109613_)
        (let* ((_$e109615_ _stx109613_)
               (_$E109617109626_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109615_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109615_))
              (let* ((_$tgt109618109629_
                      (let () (declare (not safe)) (__AST-e _$e109615_)))
                     (_$hd109619109632_
                      (let () (declare (not safe)) (##car _$tgt109618109629_)))
                     (_$tl109620109635_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109618109629_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109620109635_))
                    (let* ((_$tgt109621109639_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109620109635_)))
                           (_$hd109622109642_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109621109639_)))
                           (_$tl109623109645_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109621109639_))))
                      (let ((_id109649_ _$hd109622109642_))
                        (if (let ((__tmp116486
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109623109645_))))
                              (declare (not safe))
                              (equal? __tmp116486 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id109649_ _stx109613_))
                            (let () (declare (not safe)) (_$E109617109626_)))))
                    (let () (declare (not safe)) (_$E109617109626_))))
              (let () (declare (not safe)) (_$E109617109626_))))))
    (define __compile-setq%
      (lambda (_stx109560_)
        (let* ((_$e109562_ _stx109560_)
               (_$E109564109576_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109562_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109562_))
              (let* ((_$tgt109565109579_
                      (let () (declare (not safe)) (__AST-e _$e109562_)))
                     (_$hd109566109582_
                      (let () (declare (not safe)) (##car _$tgt109565109579_)))
                     (_$tl109567109585_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109565109579_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109567109585_))
                    (let* ((_$tgt109568109589_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109567109585_)))
                           (_$hd109569109592_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109568109589_)))
                           (_$tl109570109595_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109568109589_))))
                      (let ((_id109599_ _$hd109569109592_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109570109595_))
                            (let* ((_$tgt109571109601_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109570109595_)))
                                   (_$hd109572109604_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109571109601_)))
                                   (_$tl109573109607_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109571109601_))))
                              (let ((_expr109611_ _$hd109572109604_))
                                (if (let ((__tmp116492
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109573109607_))))
                                      (declare (not safe))
                                      (equal? __tmp116492 '()))
                                    (let ((__tmp116487
                                           (let ((__tmp116488
                                                  (let ((__tmp116491
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id109599_
                                                            _stx109560_)))
                                                        (__tmp116489
                                                         (let ((__tmp116490
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr109611_))))
                   (declare (not safe))
                   (cons __tmp116490 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116491
                                                          __tmp116489))))
                                             (declare (not safe))
                                             (cons 'set! __tmp116488))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116487 _stx109560_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109564109576_)))))
                            (let () (declare (not safe)) (_$E109564109576_)))))
                    (let () (declare (not safe)) (_$E109564109576_))))
              (let () (declare (not safe)) (_$E109564109576_))))))
    (define __compile-if%
      (lambda (_stx109492_)
        (let* ((_$e109494_ _stx109492_)
               (_$E109496109511_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109494_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109494_))
              (let* ((_$tgt109497109514_
                      (let () (declare (not safe)) (__AST-e _$e109494_)))
                     (_$hd109498109517_
                      (let () (declare (not safe)) (##car _$tgt109497109514_)))
                     (_$tl109499109520_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109497109514_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109499109520_))
                    (let* ((_$tgt109500109524_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109499109520_)))
                           (_$hd109501109527_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109500109524_)))
                           (_$tl109502109530_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109500109524_))))
                      (let ((_p109534_ _$hd109501109527_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109502109530_))
                            (let* ((_$tgt109503109536_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109502109530_)))
                                   (_$hd109504109539_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109503109536_)))
                                   (_$tl109505109542_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109503109536_))))
                              (let ((_t109546_ _$hd109504109539_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl109505109542_))
                                    (let* ((_$tgt109506109548_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl109505109542_)))
                                           (_$hd109507109551_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt109506109548_)))
                                           (_$tl109508109554_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt109506109548_))))
                                      (let ((_f109558_ _$hd109507109551_))
                                        (if (let ((__tmp116500
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl109508109554_))))
                                              (declare (not safe))
                                              (equal? __tmp116500 '()))
                                            (let ((__tmp116493
                                                   (let ((__tmp116494
                                                          (let ((__tmp116499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p109534_)))
                        (__tmp116495
                         (let ((__tmp116498
                                (let ()
                                  (declare (not safe))
                                  (__compile _t109546_)))
                               (__tmp116496
                                (let ((__tmp116497
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f109558_))))
                                  (declare (not safe))
                                  (cons __tmp116497 '()))))
                           (declare (not safe))
                           (cons __tmp116498 __tmp116496))))
                    (declare (not safe))
                    (cons __tmp116499 __tmp116495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp116494))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp116493
                                               _stx109492_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E109496109511_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109496109511_)))))
                            (let () (declare (not safe)) (_$E109496109511_)))))
                    (let () (declare (not safe)) (_$E109496109511_))))
              (let () (declare (not safe)) (_$E109496109511_))))))
    (define __compile-quote%
      (lambda (_stx109454_)
        (let* ((_$e109456_ _stx109454_)
               (_$E109458109467_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109456_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109456_))
              (let* ((_$tgt109459109470_
                      (let () (declare (not safe)) (__AST-e _$e109456_)))
                     (_$hd109460109473_
                      (let () (declare (not safe)) (##car _$tgt109459109470_)))
                     (_$tl109461109476_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109459109470_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109461109476_))
                    (let* ((_$tgt109462109480_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109461109476_)))
                           (_$hd109463109483_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109462109480_)))
                           (_$tl109464109486_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109462109480_))))
                      (let ((_e109490_ _$hd109463109483_))
                        (if (let ((__tmp116504
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109464109486_))))
                              (declare (not safe))
                              (equal? __tmp116504 '()))
                            (let ((__tmp116501
                                   (let ((__tmp116502
                                          (let ((__tmp116503
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e109490_))))
                                            (declare (not safe))
                                            (cons __tmp116503 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116502))))
                              (declare (not safe))
                              (__SRC__% __tmp116501 _stx109454_))
                            (let () (declare (not safe)) (_$E109458109467_)))))
                    (let () (declare (not safe)) (_$E109458109467_))))
              (let () (declare (not safe)) (_$E109458109467_))))))
    (define __compile-quote-syntax%
      (lambda (_stx109416_)
        (let* ((_$e109418_ _stx109416_)
               (_$E109420109429_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109418_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109418_))
              (let* ((_$tgt109421109432_
                      (let () (declare (not safe)) (__AST-e _$e109418_)))
                     (_$hd109422109435_
                      (let () (declare (not safe)) (##car _$tgt109421109432_)))
                     (_$tl109423109438_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109421109432_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109423109438_))
                    (let* ((_$tgt109424109442_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109423109438_)))
                           (_$hd109425109445_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109424109442_)))
                           (_$tl109426109448_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109424109442_))))
                      (let ((_e109452_ _$hd109425109445_))
                        (if (let ((__tmp116507
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109426109448_))))
                              (declare (not safe))
                              (equal? __tmp116507 '()))
                            (let ((__tmp116505
                                   (let ((__tmp116506
                                          (let ()
                                            (declare (not safe))
                                            (cons _e109452_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116506))))
                              (declare (not safe))
                              (__SRC__% __tmp116505 _stx109416_))
                            (let () (declare (not safe)) (_$E109420109429_)))))
                    (let () (declare (not safe)) (_$E109420109429_))))
              (let () (declare (not safe)) (_$E109420109429_))))))
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
