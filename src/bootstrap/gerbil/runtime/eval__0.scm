(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708202846)
  (begin
    (define __context::t
      (let ((__tmp112205 (list))
            (__tmp112203
             (let ((__tmp112204
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112204 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp112205
         '(t ns super table)
         __tmp112203
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args107940_ (apply make-instance __context::t _$args107940_)))
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
      (let ((__tmp112208 (list))
            (__tmp112206
             (let ((__tmp112207
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112207 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp112208
         '(id)
         __tmp112206
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args107937_ (apply make-instance __runtime::t _$args107937_)))
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
      (let ((__tmp112211 (list))
            (__tmp112209
             (let ((__tmp112210
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112210 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp112211
         '(e id)
         __tmp112209
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args107934_ (apply make-instance __syntax::t _$args107934_)))
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
      (let ((__tmp112214 (list __syntax::t))
            (__tmp112212
             (let ((__tmp112213
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112213 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp112214
         '()
         __tmp112212
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args107931_ (apply make-instance __macro::t _$args107931_)))
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
      (let ((__tmp112217 (list __macro::t))
            (__tmp112215
             (let ((__tmp112216
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112216 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp112217
         '()
         __tmp112215
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args107928_
        (apply make-instance __special-form::t _$args107928_)))
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
      (let ((__tmp112220 (list __syntax::t))
            (__tmp112218
             (let ((__tmp112219
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112219 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp112220
         '()
         __tmp112218
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args107925_
        (apply make-instance __core-form::t _$args107925_)))
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
      (let ((__tmp112223 (list __core-form::t))
            (__tmp112221
             (let ((__tmp112222
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112222 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp112223
         '()
         __tmp112221
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args107922_
        (apply make-instance __core-expression::t _$args107922_)))
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
      (let ((__tmp112226 (list __core-form::t))
            (__tmp112224
             (let ((__tmp112225
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112225 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp112226
         '()
         __tmp112224
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args107919_
        (apply make-instance __core-special-form::t _$args107919_)))
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
      (let ((__tmp112229 (list __syntax::t))
            (__tmp112227
             (let ((__tmp112228
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112228 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp112229
         '()
         __tmp112227
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args107916_
        (apply make-instance __struct-info::t _$args107916_)))
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
      (let ((__tmp112232 (list __syntax::t))
            (__tmp112230
             (let ((__tmp112231
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112231 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp112232
         '()
         __tmp112230
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args107913_ (apply make-instance __feature::t _$args107913_)))
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
      (let ((__tmp112235 (list __context::t))
            (__tmp112233
             (let ((__tmp112234
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112234 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp112235
         '(id path import export)
         __tmp112233
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args107910_ (apply make-instance __module::t _$args107910_)))
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
    (define __*modules* (make-hash-table))
    (define __*core* (let () (declare (not safe)) (make-hash-table-eq)))
    (define __*top*
      (let ((__tmp112237
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp112236 (let () (declare (not safe)) (make-hash-table-eq))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp112237 __tmp112236)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id107885_ _ctx107886_)
        (if _ctx107886_
            (let ((_id107888_
                   (let () (declare (not safe)) (__AST-e _id107885_))))
              (let _lp107890_ ((_ctx107892_ _ctx107886_))
                (let ((_$e107894_
                       (table-ref
                        (##structure-ref _ctx107892_ '4 __context::t '#f)
                        _id107888_
                        '#f)))
                  (if _$e107894_
                      (values _$e107894_)
                      (let ((_$e107897_
                             (##structure-ref
                              _ctx107892_
                              '3
                              __context::t
                              '#f)))
                        (if _$e107897_
                            (let ()
                              (declare (not safe))
                              (_lp107890_ _$e107897_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id107903_)
        (let ((_ctx107905_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id107903_ _ctx107905_))))
    (define __core-resolve
      (lambda _g112239_
        (let ((_g112238_ (let () (declare (not safe)) (##length _g112239_))))
          (cond ((let () (declare (not safe)) (##fx= _g112238_ 1))
                 (apply (lambda (_id107903_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id107903_)))
                        _g112239_))
                ((let () (declare (not safe)) (##fx= _g112238_ 2))
                 (apply (lambda (_id107907_ _ctx107908_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id107907_ _ctx107908_)))
                        _g112239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g112239_))))))
    (define __core-bound-id?__%
      (lambda (_id107868_ _is?107869_)
        (let ((_$e107871_
               (let () (declare (not safe)) (__core-resolve__0 _id107868_))))
          (if _$e107871_ (_is?107869_ _$e107871_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id107877_)
        (let ((_is?107879_ true))
          (declare (not safe))
          (__core-bound-id?__% _id107877_ _is?107879_))))
    (define __core-bound-id?
      (lambda _g112241_
        (let ((_g112240_ (let () (declare (not safe)) (##length _g112241_))))
          (cond ((let () (declare (not safe)) (##fx= _g112240_ 1))
                 (apply (lambda (_id107877_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id107877_)))
                        _g112241_))
                ((let () (declare (not safe)) (##fx= _g112240_ 2))
                 (apply (lambda (_id107881_ _is?107882_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id107881_ _is?107882_)))
                        _g112241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g112241_))))))
    (define __core-bind-runtime!__%
      (lambda (_id107851_ _eid107852_ _ctx107853_)
        (if _eid107852_
            (let ((__tmp112244
                   (##structure-ref _ctx107853_ '4 __context::t '#f))
                  (__tmp112243
                   (let () (declare (not safe)) (__AST-e _id107851_)))
                  (__tmp112242
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid107852_))))
              (declare (not safe))
              (table-set! __tmp112244 __tmp112243 __tmp112242))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id107858_ _eid107859_)
        (let ((_ctx107861_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id107858_ _eid107859_ _ctx107861_))))
    (define __core-bind-runtime!
      (lambda _g112246_
        (let ((_g112245_ (let () (declare (not safe)) (##length _g112246_))))
          (cond ((let () (declare (not safe)) (##fx= _g112245_ 2))
                 (apply (lambda (_id107858_ _eid107859_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id107858_ _eid107859_)))
                        _g112246_))
                ((let () (declare (not safe)) (##fx= _g112245_ 3))
                 (apply (lambda (_id107863_ _eid107864_ _ctx107865_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id107863_
                             _eid107864_
                             _ctx107865_)))
                        _g112246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g112246_))))))
    (define __core-bind-syntax!__%
      (lambda (_id107834_ _e107835_ _make107836_)
        (let ((__tmp112247
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107835_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107835_
                   (_make107836_ _e107835_ _id107834_))))
          (declare (not safe))
          (table-set! __*core* _id107834_ __tmp112247))))
    (define __core-bind-syntax!__0
      (lambda (_id107841_ _e107842_)
        (let ((_make107844_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id107841_ _e107842_ _make107844_))))
    (define __core-bind-syntax!
      (lambda _g112249_
        (let ((_g112248_ (let () (declare (not safe)) (##length _g112249_))))
          (cond ((let () (declare (not safe)) (##fx= _g112248_ 2))
                 (apply (lambda (_id107841_ _e107842_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id107841_ _e107842_)))
                        _g112249_))
                ((let () (declare (not safe)) (##fx= _g112248_ 3))
                 (apply (lambda (_id107846_ _e107847_ _make107848_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id107846_
                             _e107847_
                             _make107848_)))
                        _g112249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g112249_))))))
    (define __core-bind-macro!
      (lambda (_id107830_ _e107831_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107830_ _e107831_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id107827_ _e107828_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107827_ _e107828_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id107811_ _e107812_ _ctx107813_)
        (let ((__tmp112253 (##structure-ref _ctx107813_ '4 __context::t '#f))
              (__tmp112252 (let () (declare (not safe)) (__AST-e _id107811_)))
              (__tmp112250
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107812_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107812_
                   (let ((__tmp112251
                          (let () (declare (not safe)) (__AST-e _id107811_))))
                     (declare (not safe))
                     (##structure __syntax::t _e107812_ __tmp112251)))))
          (declare (not safe))
          (table-set! __tmp112253 __tmp112252 __tmp112250))))
    (define __core-bind-user-syntax!__0
      (lambda (_id107818_ _e107819_)
        (let ((_ctx107821_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id107818_ _e107819_ _ctx107821_))))
    (define __core-bind-user-syntax!
      (lambda _g112255_
        (let ((_g112254_ (let () (declare (not safe)) (##length _g112255_))))
          (cond ((let () (declare (not safe)) (##fx= _g112254_ 2))
                 (apply (lambda (_id107818_ _e107819_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id107818_
                             _e107819_)))
                        _g112255_))
                ((let () (declare (not safe)) (##fx= _g112254_ 3))
                 (apply (lambda (_id107823_ _e107824_ _ctx107825_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id107823_
                             _e107824_
                             _ctx107825_)))
                        _g112255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g112255_))))))
    (define make-__runtime-id__%
      (lambda (_id107792_ _ctx107793_)
        (let ((_id107795_ (let () (declare (not safe)) (__AST-e _id107792_))))
          (if (let () (declare (not safe)) (eq? _id107795_ '_))
              '#f
              (if (uninterned-symbol? _id107795_)
                  (gensym _id107795_)
                  (if (let () (declare (not safe)) (symbol? _id107795_))
                      (let ((_$e107797_
                             (##structure-ref
                              _ctx107793_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e107797_))
                            (gensym _id107795_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e107797_))
                                (let ((__tmp112256
                                       (##structure-ref
                                        _ctx107793_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp112256 '"#" _id107795_))
                                _id107795_)))
                      (error '"Illegal runtime identifier" _id107795_)))))))
    (define make-__runtime-id__0
      (lambda (_id107803_)
        (let ((_ctx107805_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id107803_ _ctx107805_))))
    (define make-__runtime-id
      (lambda _g112258_
        (let ((_g112257_ (let () (declare (not safe)) (##length _g112258_))))
          (cond ((let () (declare (not safe)) (##fx= _g112257_ 1))
                 (apply (lambda (_id107803_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id107803_)))
                        _g112258_))
                ((let () (declare (not safe)) (##fx= _g112257_ 2))
                 (apply (lambda (_id107807_ _ctx107808_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id107807_ _ctx107808_)))
                        _g112258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g112258_))))))
    (define make-__context-local__%
      (lambda (_super107781_)
        (let ((__tmp112259 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super107781_ __tmp112259))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super107787_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super107787_))))
    (define make-__context-local
      (lambda _g112261_
        (let ((_g112260_ (let () (declare (not safe)) (##length _g112261_))))
          (cond ((let () (declare (not safe)) (##fx= _g112260_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g112261_))
                ((let () (declare (not safe)) (##fx= _g112260_ 1))
                 (apply (lambda (_super107789_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super107789_)))
                        _g112261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g112261_))))))
    (define make-__context-module__%
      (lambda (_id107761_ _ns107762_ _path107763_ _super107764_)
        (let ((__tmp112262 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns107762_
           _super107764_
           __tmp112262
           _id107761_
           _path107763_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id107769_ _ns107770_ _path107771_)
        (let ((_super107773_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id107769_
           _ns107770_
           _path107771_
           _super107773_))))
    (define make-__context-module
      (lambda _g112264_
        (let ((_g112263_ (let () (declare (not safe)) (##length _g112264_))))
          (cond ((let () (declare (not safe)) (##fx= _g112263_ 3))
                 (apply (lambda (_id107769_ _ns107770_ _path107771_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id107769_
                             _ns107770_
                             _path107771_)))
                        _g112264_))
                ((let () (declare (not safe)) (##fx= _g112263_ 4))
                 (apply (lambda (_id107775_
                                 _ns107776_
                                 _path107777_
                                 _super107778_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id107775_
                             _ns107776_
                             _path107777_
                             _super107778_)))
                        _g112264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g112264_))))))
    (define __SRC__%
      (lambda (_e107744_ _src-stx107745_)
        (if (or (let () (declare (not safe)) (pair? _e107744_))
                (let () (declare (not safe)) (symbol? _e107744_)))
            (let ((__tmp112268
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx107745_
                          'gerbil#AST::t))
                       (let ((__tmp112269
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx107745_))))
                         (declare (not safe))
                         (__locat __tmp112269))
                       '#f)))
              (declare (not safe))
              (##make-source _e107744_ __tmp112268))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e107744_ 'gerbil#AST::t))
                (let ((__tmp112267
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e107744_ '1 AST::t '#f)))
                      (__tmp112265
                       (let ((__tmp112266
                              (let ()
                                (declare (not safe))
                                (__AST-source _e107744_))))
                         (declare (not safe))
                         (__locat __tmp112266))))
                  (declare (not safe))
                  (##make-source __tmp112267 __tmp112265))
                (error '"BUG! Cannot sourcify object" _e107744_)))))
    (define __SRC__0
      (lambda (_e107753_)
        (let ((_src-stx107755_ '#f))
          (declare (not safe))
          (__SRC__% _e107753_ _src-stx107755_))))
    (define __SRC
      (lambda _g112271_
        (let ((_g112270_ (let () (declare (not safe)) (##length _g112271_))))
          (cond ((let () (declare (not safe)) (##fx= _g112270_ 1))
                 (apply (lambda (_e107753_)
                          (let () (declare (not safe)) (__SRC__0 _e107753_)))
                        _g112271_))
                ((let () (declare (not safe)) (##fx= _g112270_ 2))
                 (apply (lambda (_e107757_ _src-stx107758_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e107757_ _src-stx107758_)))
                        _g112271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g112271_))))))
    (define __locat
      (lambda (_loc107741_)
        (if (let () (declare (not safe)) (##locat? _loc107741_))
            _loc107741_
            '#f)))
    (define __check-values
      (lambda (_obj107736_ _k107737_)
        (let ((_count107739_
               (if (let () (declare (not safe)) (##values? _obj107736_))
                   (let () (declare (not safe)) (##vector-length _obj107736_))
                   '1)))
          (if (fx= _count107739_ _k107737_)
              '#!void
              (error (if (fx< _count107739_ _k107737_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj107736_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj107736_))
                         _obj107736_)
                     _k107737_)))))
    (define __compile
      (lambda (_stx107706_)
        (let* ((_$e107708_ _stx107706_)
               (_$E107710107716_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107708_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107708_))
              (let* ((_$tgt107711107719_
                      (let () (declare (not safe)) (__AST-e _$e107708_)))
                     (_$hd107712107722_
                      (let () (declare (not safe)) (##car _$tgt107711107719_)))
                     (_$tl107713107725_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107711107719_))))
                (let* ((_form107729_ _$hd107712107722_)
                       (_$e107731_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form107729_))))
                  (if _$e107731_
                      ((lambda (_bind107734_)
                         ((##structure-ref _bind107734_ '1 __syntax::t '#f)
                          _stx107706_))
                       _$e107731_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx107706_
                         _form107729_)))))
              (let () (declare (not safe)) (_$E107710107716_))))))
    (define __compile-error__%
      (lambda (_stx107693_ _detail107694_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx107693_
           _detail107694_))))
    (define __compile-error__0
      (lambda (_stx107699_)
        (let ((_detail107701_ '#f))
          (declare (not safe))
          (__compile-error__% _stx107699_ _detail107701_))))
    (define __compile-error
      (lambda _g112273_
        (let ((_g112272_ (let () (declare (not safe)) (##length _g112273_))))
          (cond ((let () (declare (not safe)) (##fx= _g112272_ 1))
                 (apply (lambda (_stx107699_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx107699_)))
                        _g112273_))
                ((let () (declare (not safe)) (##fx= _g112272_ 2))
                 (apply (lambda (_stx107703_ _detail107704_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx107703_ _detail107704_)))
                        _g112273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g112273_))))))
    (define __compile-ignore%
      (lambda (_stx107690_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx107690_))))
    (define __compile-begin%
      (lambda (_stx107665_)
        (let* ((_$e107667_ _stx107665_)
               (_$E107669107675_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107667_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107667_))
              (let* ((_$tgt107670107678_
                      (let () (declare (not safe)) (__AST-e _$e107667_)))
                     (_$hd107671107681_
                      (let () (declare (not safe)) (##car _$tgt107670107678_)))
                     (_$tl107672107684_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107670107678_))))
                (let* ((_body107688_ _$tl107672107684_)
                       (__tmp112274
                        (let ((__tmp112275 (map __compile _body107688_)))
                          (declare (not safe))
                          (cons 'begin __tmp112275))))
                  (declare (not safe))
                  (__SRC__% __tmp112274 _stx107665_)))
              (let () (declare (not safe)) (_$E107669107675_))))))
    (define __compile-begin-foreign%
      (lambda (_stx107640_)
        (let* ((_$e107642_ _stx107640_)
               (_$E107644107650_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107642_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107642_))
              (let* ((_$tgt107645107653_
                      (let () (declare (not safe)) (__AST-e _$e107642_)))
                     (_$hd107646107656_
                      (let () (declare (not safe)) (##car _$tgt107645107653_)))
                     (_$tl107647107659_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107645107653_))))
                (let* ((_body107663_ _$tl107647107659_)
                       (__tmp112276
                        (let ((__tmp112277
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body107663_))))
                          (declare (not safe))
                          (cons 'begin __tmp112277))))
                  (declare (not safe))
                  (__SRC__% __tmp112276 _stx107640_)))
              (let () (declare (not safe)) (_$E107644107650_))))))
    (define __compile-import%
      (lambda (_stx107615_)
        (let* ((_$e107617_ _stx107615_)
               (_$E107619107625_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107617_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107617_))
              (let* ((_$tgt107620107628_
                      (let () (declare (not safe)) (__AST-e _$e107617_)))
                     (_$hd107621107631_
                      (let () (declare (not safe)) (##car _$tgt107620107628_)))
                     (_$tl107622107634_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107620107628_))))
                (let* ((_body107638_ _$tl107622107634_)
                       (__tmp112278
                        (let ((__tmp112279
                               (let ((__tmp112280
                                      (let ((__tmp112281
                                             (let ()
                                               (declare (not safe))
                                               (cons _body107638_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp112281))))
                                 (declare (not safe))
                                 (cons __tmp112280 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp112279))))
                  (declare (not safe))
                  (__SRC__% __tmp112278 _stx107615_)))
              (let () (declare (not safe)) (_$E107619107625_))))))
    (define __compile-begin-annotation%
      (lambda (_stx107562_)
        (let* ((_$e107564_ _stx107562_)
               (_$E107566107578_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107564_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107564_))
              (let* ((_$tgt107567107581_
                      (let () (declare (not safe)) (__AST-e _$e107564_)))
                     (_$hd107568107584_
                      (let () (declare (not safe)) (##car _$tgt107567107581_)))
                     (_$tl107569107587_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107567107581_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107569107587_))
                    (let* ((_$tgt107570107591_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107569107587_)))
                           (_$hd107571107594_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107570107591_)))
                           (_$tl107572107597_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107570107591_))))
                      (let ((_ann107601_ _$hd107571107594_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107572107597_))
                            (let* ((_$tgt107573107603_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107572107597_)))
                                   (_$hd107574107606_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107573107603_)))
                                   (_$tl107575107609_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107573107603_))))
                              (let ((_expr107613_ _$hd107574107606_))
                                (if (let ((__tmp112282
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107575107609_))))
                                      (declare (not safe))
                                      (equal? __tmp112282 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr107613_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107566107578_)))))
                            (let () (declare (not safe)) (_$E107566107578_)))))
                    (let () (declare (not safe)) (_$E107566107578_))))
              (let () (declare (not safe)) (_$E107566107578_))))))
    (define __compile-define-values%
      (lambda (_stx107453_)
        (let* ((_$e107455_ _stx107453_)
               (_$E107457107469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107455_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107455_))
              (let* ((_$tgt107458107472_
                      (let () (declare (not safe)) (__AST-e _$e107455_)))
                     (_$hd107459107475_
                      (let () (declare (not safe)) (##car _$tgt107458107472_)))
                     (_$tl107460107478_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107458107472_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107460107478_))
                    (let* ((_$tgt107461107482_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107460107478_)))
                           (_$hd107462107485_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107461107482_)))
                           (_$tl107463107488_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107461107482_))))
                      (let ((_hd107492_ _$hd107462107485_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107463107488_))
                            (let* ((_$tgt107464107494_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107463107488_)))
                                   (_$hd107465107497_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107464107494_)))
                                   (_$tl107466107500_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107464107494_))))
                              (let ((_expr107504_ _$hd107465107497_))
                                (if (let ((__tmp112315
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107466107500_))))
                                      (declare (not safe))
                                      (equal? __tmp112315 '()))
                                    (let* ((_$e107506_ _hd107492_)
                                           (_$E107508107549_
                                            (lambda ()
                                              (let ((_$E107509107534_
                                                     (lambda ()
                                                       (let* ((_$E107510107521_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e107506_))))
                      (_ids107524_ _hd107492_)
                      (_len107526_ (length _ids107524_))
                      (_tmp107528_
                       (let ((__tmp112283 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp112283))))
                 (let ((__tmp112284
                        (let ((__tmp112285
                               (let ((__tmp112302
                                      (let ((__tmp112303
                                             (let ((__tmp112304
                                                    (let ((__tmp112305
                                                           (let ((__tmp112306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr107504_))))
                     (declare (not safe))
                     (cons __tmp112306 '()))))
              (declare (not safe))
              (cons _tmp107528_ __tmp112305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp112304))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112303 _stx107453_)))
                                     (__tmp112286
                                      (let ((__tmp112298
                                             (let ((__tmp112299
                                                    (let ((__tmp112300
                                                           (let ((__tmp112301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len107526_ '()))))
                     (declare (not safe))
                     (cons _tmp107528_ __tmp112301))))
              (declare (not safe))
              (cons '__check-values __tmp112300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp112299
                                                _stx107453_)))
                                            (__tmp112287
                                             (let ((__tmp112288
                                                    (let ((__tmp112290
                                                           (lambda (_id107531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k107532_)
                     (if (let () (declare (not safe)) (__AST-e _id107531_))
                         (let ((__tmp112291
                                (let ((__tmp112292
                                       (let ((__tmp112297
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id107531_)))
                                             (__tmp112293
                                              (let ((__tmp112294
                                                     (let ((__tmp112295
                                                            (let ((__tmp112296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k107532_ '()))))
                      (declare (not safe))
                      (cons _tmp107528_ __tmp112296))))
               (declare (not safe))
               (cons '##vector-ref __tmp112295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112294 '()))))
                                         (declare (not safe))
                                         (cons __tmp112297 __tmp112293))))
                                  (declare (not safe))
                                  (cons 'define __tmp112292))))
                           (declare (not safe))
                           (__SRC__% __tmp112291 _stx107453_))
                         '#f)))
                  (__tmp112289
                   (let () (declare (not safe)) (iota _len107526_))))
              (declare (not safe))
              (filter-map2 __tmp112290 _ids107524_ __tmp112289))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp112288))))
                                        (declare (not safe))
                                        (cons __tmp112298 __tmp112287))))
                                 (declare (not safe))
                                 (cons __tmp112302 __tmp112286))))
                          (declare (not safe))
                          (cons 'begin __tmp112285))))
                   (declare (not safe))
                   (__SRC__% __tmp112284 _stx107453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e107506_))
                                                    (let* ((_$tgt107511107537_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e107506_)))
                                                           (_$hd107512107540_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt107511107537_)))
                                                           (_$tl107513107543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt107511107537_))))
                                                      (let ((_id107547_
                                                             _$hd107512107540_))
                                                        (if (let ((__tmp112312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl107513107543_))))
                      (declare (not safe))
                      (equal? __tmp112312 '()))
                    (let ((__tmp112307
                           (let ((__tmp112308
                                  (let ((__tmp112311
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107547_)))
                                        (__tmp112309
                                         (let ((__tmp112310
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr107504_))))
                                           (declare (not safe))
                                           (cons __tmp112310 '()))))
                                    (declare (not safe))
                                    (cons __tmp112311 __tmp112309))))
                             (declare (not safe))
                             (cons 'define __tmp112308))))
                      (declare (not safe))
                      (__SRC__% __tmp112307 _stx107453_))
                    (let () (declare (not safe)) (_$E107509107534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107509107534_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e107506_))
                                          (let* ((_$tgt107514107552_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e107506_)))
                                                 (_$hd107515107555_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107514107552_)))
                                                 (_$tl107516107558_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107514107552_))))
                                            (if (let ((__tmp112314
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd107515107555_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112314 '#f))
                                                (if (let ((__tmp112313
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl107516107558_))))
                                                      (declare (not safe))
                                                      (equal? __tmp112313 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr107504_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107508107549_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107508107549_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107508107549_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107457107469_)))))
                            (let () (declare (not safe)) (_$E107457107469_)))))
                    (let () (declare (not safe)) (_$E107457107469_))))
              (let () (declare (not safe)) (_$E107457107469_))))))
    (define __compile-head-id
      (lambda (_e107451_)
        (let ((__tmp112316
               (if (let () (declare (not safe)) (__AST-e _e107451_))
                   _e107451_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp112316))))
    (define __compile-lambda-head
      (lambda (_hd107408_)
        (let _recur107410_ ((_rest107412_ _hd107408_))
          (let* ((_$e107414_ _rest107412_)
                 (_$E107416107434_
                  (lambda ()
                    (let ((_$E107417107431_
                           (lambda ()
                             (let* ((_$E107418107426_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e107414_))))
                                    (_tail107429_ _$e107414_))
                               (declare (not safe))
                               (__compile-head-id _tail107429_)))))
                      (if (let ((__tmp112317
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e107414_))))
                            (declare (not safe))
                            (equal? __tmp112317 '()))
                          '()
                          (let () (declare (not safe)) (_$E107417107431_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107414_))
                (let* ((_$tgt107419107437_
                        (let () (declare (not safe)) (__AST-e _$e107414_)))
                       (_$hd107420107440_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107419107437_)))
                       (_$tl107421107443_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107419107437_))))
                  (let* ((_hd107447_ _$hd107420107440_)
                         (_rest107449_ _$tl107421107443_))
                    (let ((__tmp112319
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd107447_)))
                          (__tmp112318
                           (let ()
                             (declare (not safe))
                             (_recur107410_ _rest107449_))))
                      (declare (not safe))
                      (cons __tmp112319 __tmp112318))))
                (let () (declare (not safe)) (_$E107416107434_)))))))
    (define __compile-lambda%
      (lambda (_stx107355_)
        (let* ((_$e107357_ _stx107355_)
               (_$E107359107371_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107357_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107357_))
              (let* ((_$tgt107360107374_
                      (let () (declare (not safe)) (__AST-e _$e107357_)))
                     (_$hd107361107377_
                      (let () (declare (not safe)) (##car _$tgt107360107374_)))
                     (_$tl107362107380_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107360107374_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107362107380_))
                    (let* ((_$tgt107363107384_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107362107380_)))
                           (_$hd107364107387_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107363107384_)))
                           (_$tl107365107390_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107363107384_))))
                      (let ((_hd107394_ _$hd107364107387_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107365107390_))
                            (let* ((_$tgt107366107396_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107365107390_)))
                                   (_$hd107367107399_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107366107396_)))
                                   (_$tl107368107402_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107366107396_))))
                              (let ((_body107406_ _$hd107367107399_))
                                (if (let ((__tmp112325
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107368107402_))))
                                      (declare (not safe))
                                      (equal? __tmp112325 '()))
                                    (let ((__tmp112320
                                           (let ((__tmp112321
                                                  (let ((__tmp112324
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd107394_)))
                                                        (__tmp112322
                                                         (let ((__tmp112323
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body107406_))))
                   (declare (not safe))
                   (cons __tmp112323 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112324
                                                          __tmp112322))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp112321))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112320 _stx107355_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107359107371_)))))
                            (let () (declare (not safe)) (_$E107359107371_)))))
                    (let () (declare (not safe)) (_$E107359107371_))))
              (let () (declare (not safe)) (_$E107359107371_))))))
    (define __compile-case-lambda%
      (lambda (_stx107147_)
        (letrec ((_variadic?107149_
                  (lambda (_hd107320_)
                    (let* ((_$e107322_ _hd107320_)
                           (_$E107324107340_
                            (lambda ()
                              (let ((_$E107325107337_
                                     (lambda ()
                                       (let ((_$E107326107334_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e107322_)))))
                                         '#t))))
                                (if (let ((__tmp112326
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e107322_))))
                                      (declare (not safe))
                                      (equal? __tmp112326 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E107325107337_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107322_))
                          (let* ((_$tgt107327107343_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107322_)))
                                 (_$hd107328107346_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107327107343_)))
                                 (_$tl107329107349_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107327107343_))))
                            (let ((_rest107353_ _$tl107329107349_))
                              (declare (not safe))
                              (_variadic?107149_ _rest107353_)))
                          (let () (declare (not safe)) (_$E107324107340_))))))
                 (_arity107150_
                  (lambda (_hd107285_)
                    (let _lp107287_ ((_rest107289_ _hd107285_) (_k107290_ '0))
                      (let* ((_$e107292_ _rest107289_)
                             (_$E107294107305_
                              (lambda ()
                                (let ((_$E107295107302_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e107292_)))))
                                  _k107290_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e107292_))
                            (let* ((_$tgt107296107308_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e107292_)))
                                   (_$hd107297107311_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107296107308_)))
                                   (_$tl107298107314_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107296107308_))))
                              (let* ((_rest107318_ _$tl107298107314_)
                                     (__tmp112327
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k107290_ '1))))
                                (declare (not safe))
                                (_lp107287_ _rest107318_ __tmp112327)))
                            (let ()
                              (declare (not safe))
                              (_$E107294107305_)))))))
                 (_generate107151_
                  (lambda (_rest107212_ _args107213_ _len107214_)
                    (let* ((_$e107216_ _rest107212_)
                           (_$E107218107229_
                            (lambda ()
                              (let* ((_$E107219107226_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e107216_))))
                                     (__tmp112328
                                      (let ((__tmp112329
                                             (let ((__tmp112330
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args107213_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp112330))))
                                        (declare (not safe))
                                        (cons 'error __tmp112329))))
                                (declare (not safe))
                                (__SRC__% __tmp112328 _stx107147_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107216_))
                          (let* ((_$tgt107220107232_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107216_)))
                                 (_$hd107221107235_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107220107232_)))
                                 (_$tl107222107238_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107220107232_))))
                            (let* ((_clause107242_ _$hd107221107235_)
                                   (_rest107244_ _$tl107222107238_)
                                   (_$e107246_ _clause107242_)
                                   (_$E107248107257_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e107246_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e107246_))
                                  (let* ((_$tgt107249107260_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e107246_)))
                                         (_$hd107250107263_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt107249107260_)))
                                         (_$tl107251107266_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt107249107260_))))
                                    (let ((_hd107270_ _$hd107250107263_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl107251107266_))
                                          (let* ((_$tgt107252107272_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107251107266_)))
                                                 (_$hd107253107275_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107252107272_)))
                                                 (_$tl107254107278_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107252107272_))))
                                            (if (let ((__tmp112345
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107254107278_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112345 '()))
                                                (let ((_clen107282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity107150_
                                                          _hd107270_)))
                                                      (_cmp107283_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?107149_
                                                              _hd107270_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp112331
                                                         (let ((__tmp112332
                                                                (let ((__tmp112342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112343
                                      (let ((__tmp112344
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen107282_ '()))))
                                        (declare (not safe))
                                        (cons _len107214_ __tmp112344))))
                                 (declare (not safe))
                                 (cons _cmp107283_ __tmp112343)))
                              (__tmp112333
                               (let ((__tmp112336
                                      (let ((__tmp112337
                                             (let ((__tmp112338
                                                    (let ((__tmp112340
                                                           (let ((__tmp112341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause107242_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp112341)))
                  (__tmp112339
                   (let () (declare (not safe)) (cons _args107213_ '()))))
              (declare (not safe))
              (cons __tmp112340 __tmp112339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp112338))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112337 _stx107147_)))
                                     (__tmp112334
                                      (let ((__tmp112335
                                             (let ()
                                               (declare (not safe))
                                               (_generate107151_
                                                _rest107244_
                                                _args107213_
                                                _len107214_))))
                                        (declare (not safe))
                                        (cons __tmp112335 '()))))
                                 (declare (not safe))
                                 (cons __tmp112336 __tmp112334))))
                          (declare (not safe))
                          (cons __tmp112342 __tmp112333))))
                   (declare (not safe))
                   (cons 'if __tmp112332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp112331
                                                     _stx107147_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107248107257_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107248107257_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E107248107257_)))))
                          (let () (declare (not safe)) (_$E107218107229_)))))))
          (let* ((_$e107153_ _stx107147_)
                 (_$E107155107187_
                  (lambda ()
                    (let ((_$E107156107169_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e107153_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107153_))
                          (let* ((_$tgt107157107172_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107153_)))
                                 (_$hd107158107175_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107157107172_)))
                                 (_$tl107159107178_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107157107172_))))
                            (let ((_clauses107182_ _$tl107159107178_))
                              (let ((_args107184_
                                     (let ((__tmp112346 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112346 _stx107147_)))
                                    (_len107185_
                                     (let ((__tmp112347 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112347 _stx107147_))))
                                (let ((__tmp112348
                                       (let ((__tmp112349
                                              (let ((__tmp112350
                                                     (let ((__tmp112351
                                                            (let ((__tmp112352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112353
                                  (let ((__tmp112356
                                         (let ((__tmp112357
                                                (let ((__tmp112358
                                                       (let ((__tmp112359
                                                              (let ((__tmp112360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112361
                                    (let ()
                                      (declare (not safe))
                                      (cons _args107184_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp112361))))
                        (declare (not safe))
                        (__SRC__% __tmp112360 _stx107147_))))
                 (declare (not safe))
                 (cons __tmp112359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len107185_
                                                        __tmp112358))))
                                           (declare (not safe))
                                           (cons __tmp112357 '())))
                                        (__tmp112354
                                         (let ((__tmp112355
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate107151_
                                                   _clauses107182_
                                                   _args107184_
                                                   _len107185_))))
                                           (declare (not safe))
                                           (cons __tmp112355 '()))))
                                    (declare (not safe))
                                    (cons __tmp112356 __tmp112354))))
                             (declare (not safe))
                             (cons 'let __tmp112353))))
                      (declare (not safe))
                      (__SRC__% __tmp112352 _stx107147_))))
               (declare (not safe))
               (cons __tmp112351 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args107184_
                                                      __tmp112350))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp112349))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112348 _stx107147_)))))
                          (let () (declare (not safe)) (_$E107156107169_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107153_))
                (let* ((_$tgt107160107190_
                        (let () (declare (not safe)) (__AST-e _$e107153_)))
                       (_$hd107161107193_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107160107190_)))
                       (_$tl107162107196_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107160107190_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl107162107196_))
                      (let* ((_$tgt107163107200_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl107162107196_)))
                             (_$hd107164107203_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt107163107200_)))
                             (_$tl107165107206_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt107163107200_))))
                        (let ((_clause107210_ _$hd107164107203_))
                          (if (let ((__tmp112363
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl107165107206_))))
                                (declare (not safe))
                                (equal? __tmp112363 '()))
                              (let ((__tmp112362
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause107210_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp112362))
                              (let ()
                                (declare (not safe))
                                (_$E107155107187_)))))
                      (let () (declare (not safe)) (_$E107155107187_))))
                (let () (declare (not safe)) (_$E107155107187_)))))))
    (define __compile-let-form
      (lambda (_stx106916_ _compile-simple106917_ _compile-values106918_)
        (letrec ((_simple-bind?106920_
                  (lambda (_hd107105_)
                    (let* ((_hd107106107116_ _hd107105_)
                           (_else107109107124_ (lambda () '#f)))
                      (let ((_K107112107137_ (lambda (_id107135_) '#t))
                            (_K107111107129_ (lambda () '#t)))
                        (let ((_try-match107108107132_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd107106107116_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K107111107129_))
                                     (let ()
                                       (declare (not safe))
                                       (_else107109107124_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd107106107116_))
                              (let ((_tl107114107142_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd107106107116_)))
                                    (_hd107113107140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd107106107116_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl107114107142_))
                                    (let ((_id107145_ _hd107113107140_))
                                      (declare (not safe))
                                      (_K107112107137_ _id107145_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match107108107132_))))
                              (let ()
                                (declare (not safe))
                                (_try-match107108107132_))))))))
                 (_car-e106921_
                  (lambda (_hd107103_)
                    (if (let () (declare (not safe)) (pair? _hd107103_))
                        (car _hd107103_)
                        _hd107103_))))
          (let* ((_$e106923_ _stx106916_)
                 (_$E106925107068_
                  (lambda ()
                    (let ((_$E106926106948_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e106923_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e106923_))
                          (let* ((_$tgt106927106951_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e106923_)))
                                 (_$hd106928106954_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt106927106951_)))
                                 (_$tl106929106957_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt106927106951_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106929106957_))
                                (let* ((_$tgt106930106961_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106929106957_)))
                                       (_$hd106931106964_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106930106961_)))
                                       (_$tl106932106967_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106930106961_))))
                                  (let ((_hd106971_ _$hd106931106964_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl106932106967_))
                                        (let* ((_$tgt106933106973_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl106932106967_)))
                                               (_$hd106934106976_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt106933106973_)))
                                               (_$tl106935106979_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt106933106973_))))
                                          (let ((_body106983_
                                                 _$hd106934106976_))
                                            (if (let ((__tmp112366
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl106935106979_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112366 '()))
                                                (let* ((_hd-ids107023_
                                                        (map (lambda (_bind106985_)
                                                               (let* ((_$e106987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind106985_)
                              (_$E106989106998_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e106987_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e106987_))
                             (let* ((_$tgt106990107001_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e106987_)))
                                    (_$hd106991107004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt106990107001_)))
                                    (_$tl106992107007_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt106990107001_))))
                               (let ((_ids107011_ _$hd106991107004_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl106992107007_))
                                     (let* ((_$tgt106993107013_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl106992107007_)))
                                            (_$hd106994107016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt106993107013_)))
                                            (_$tl106995107019_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt106993107013_))))
                                       (if (let ((__tmp112364
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl106995107019_))))
                                             (declare (not safe))
                                             (equal? __tmp112364 '()))
                                           _ids107011_
                                           (let ()
                                             (declare (not safe))
                                             (_$E106989106998_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E106989106998_)))))
                             (let ()
                               (declare (not safe))
                               (_$E106989106998_)))))
                     _hd106971_))
               (_exprs107063_
                (map (lambda (_bind107025_)
                       (let* ((_$e107027_ _bind107025_)
                              (_$E107029107038_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e107027_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e107027_))
                             (let* ((_$tgt107030107041_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e107027_)))
                                    (_$hd107031107044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt107030107041_)))
                                    (_$tl107032107047_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt107030107041_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl107032107047_))
                                   (let* ((_$tgt107033107051_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107032107047_)))
                                          (_$hd107034107054_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt107033107051_)))
                                          (_$tl107035107057_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt107033107051_))))
                                     (let ((_expr107061_ _$hd107034107054_))
                                       (if (let ((__tmp112365
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107035107057_))))
                                             (declare (not safe))
                                             (equal? __tmp112365 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr107061_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E107029107038_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E107029107038_))))
                             (let ()
                               (declare (not safe))
                               (_$E107029107038_)))))
                     _hd106971_))
               (_body107065_
                (let () (declare (not safe)) (__compile _body106983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?106920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids107023_))
              (_compile-simple106917_
               (map _car-e106921_ _hd-ids107023_)
               _exprs107063_
               _body107065_)
              (_compile-values106918_
               _hd-ids107023_
               _exprs107063_
               _body107065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E106926106948_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106926106948_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106926106948_))))
                          (let () (declare (not safe)) (_$E106926106948_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e106923_))
                (let* ((_$tgt106936107071_
                        (let () (declare (not safe)) (__AST-e _$e106923_)))
                       (_$hd106937107074_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt106936107071_)))
                       (_$tl106938107077_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt106936107071_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl106938107077_))
                      (let* ((_$tgt106939107081_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl106938107077_)))
                             (_$hd106940107084_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt106939107081_)))
                             (_$tl106941107087_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt106939107081_))))
                        (if (let ((__tmp112368
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd106940107084_))))
                              (declare (not safe))
                              (equal? __tmp112368 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106941107087_))
                                (let* ((_$tgt106942107091_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106941107087_)))
                                       (_$hd106943107094_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106942107091_)))
                                       (_$tl106944107097_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106942107091_))))
                                  (let ((_body107101_ _$hd106943107094_))
                                    (if (let ((__tmp112367
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl106944107097_))))
                                          (declare (not safe))
                                          (equal? __tmp112367 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body107101_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106925107068_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106925107068_)))
                            (let () (declare (not safe)) (_$E106925107068_))))
                      (let () (declare (not safe)) (_$E106925107068_))))
                (let () (declare (not safe)) (_$E106925107068_)))))))
    (define __compile-let-values%
      (lambda (_stx106731_)
        (letrec ((_compile-simple106733_
                  (lambda (_hd-ids106912_ _exprs106913_ _body106914_)
                    (let ((__tmp112369
                           (let ((__tmp112370
                                  (let ((__tmp112372
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106912_)
                                              _exprs106913_))
                                        (__tmp112371
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106914_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112372 __tmp112371))))
                             (declare (not safe))
                             (cons 'let __tmp112370))))
                      (declare (not safe))
                      (__SRC__% __tmp112369 _stx106731_))))
                 (_compile-values106734_
                  (lambda (_hd-ids106830_ _exprs106831_ _body106832_)
                    (let _lp106834_ ((_rest106836_ _hd-ids106830_)
                                     (_exprs106837_ _exprs106831_)
                                     (_bind106838_ '())
                                     (_post106839_ '()))
                      (let* ((_rest106840106854_ _rest106836_)
                             (_else106843106862_
                              (lambda ()
                                (let ((__tmp112373
                                       (let ((__tmp112374
                                              (let ((__tmp112377
                                                     (reverse _bind106838_))
                                                    (__tmp112375
                                                     (let ((__tmp112376
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post106735_
                                                               _post106839_
                                                               _body106832_))))
                                                       (declare (not safe))
                                                       (cons __tmp112376
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp112377
                                                      __tmp112375))))
                                         (declare (not safe))
                                         (cons 'let __tmp112374))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112373 _stx106731_)))))
                        (let ((_K106848106895_
                               (lambda (_rest106892_ _id106893_)
                                 (let ((__tmp112383 (cdr _exprs106837_))
                                       (__tmp112378
                                        (let ((__tmp112379
                                               (let ((__tmp112382
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106893_)))
                                                     (__tmp112380
                                                      (let ((__tmp112381
                                                             (car _exprs106837_)))
                                                        (declare (not safe))
                                                        (cons __tmp112381
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112382
                                                       __tmp112380))))
                                          (declare (not safe))
                                          (cons __tmp112379 _bind106838_))))
                                   (declare (not safe))
                                   (_lp106834_
                                    _rest106892_
                                    __tmp112383
                                    __tmp112378
                                    _post106839_))))
                              (_K106845106877_
                               (lambda (_rest106866_ _hd106867_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106867_))
                                     (let ((__tmp112404 (cdr _exprs106837_))
                                           (__tmp112397
                                            (let ((__tmp112398
                                                   (let ((__tmp112403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106867_)))
                                                         (__tmp112399
                                                          (let ((__tmp112400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112401
                                (let ((__tmp112402 (car _exprs106837_)))
                                  (declare (not safe))
                                  (cons __tmp112402 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112401))))
                    (declare (not safe))
                    (cons __tmp112400 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112403
                                                           __tmp112399))))
                                              (declare (not safe))
                                              (cons __tmp112398
                                                    _bind106838_))))
                                       (declare (not safe))
                                       (_lp106834_
                                        _rest106866_
                                        __tmp112404
                                        __tmp112397
                                        _post106839_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106867_))
                                         (let* ((_len106869_
                                                 (length _hd106867_))
                                                (_tmp106871_
                                                 (let ((__tmp112384 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112384))))
                                           (let ((__tmp112396
                                                  (cdr _exprs106837_))
                                                 (__tmp112392
                                                  (let ((__tmp112393
                                                         (let ((__tmp112394
                                                                (let ((__tmp112395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106837_)))
                          (declare (not safe))
                          (cons __tmp112395 '()))))
                   (declare (not safe))
                   (cons _tmp106871_ __tmp112394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112393
                                                          _bind106838_)))
                                                 (__tmp112385
                                                  (let ((__tmp112386
                                                         (let ((__tmp112387
                                                                (let ((__tmp112388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112390
                                      (lambda (_id106874_ _k106875_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106874_))
                                            (let ((__tmp112391
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106874_))))
                                              (declare (not safe))
                                              (cons __tmp112391 _k106875_))
                                            '#f)))
                                     (__tmp112389
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106869_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112390
                                  _hd106867_
                                  __tmp112389))))
                          (declare (not safe))
                          (cons _len106869_ __tmp112388))))
                   (declare (not safe))
                   (cons _tmp106871_ __tmp112387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112386
                                                          _post106839_))))
                                             (declare (not safe))
                                             (_lp106834_
                                              _rest106866_
                                              __tmp112396
                                              __tmp112392
                                              __tmp112385)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106731_
                                            _hd106867_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106840106854_))
                              (let ((_tl106850106900_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106840106854_)))
                                    (_hd106849106898_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106840106854_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106849106898_))
                                    (let ((_tl106852106905_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106849106898_)))
                                          (_hd106851106903_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106849106898_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106852106905_))
                                          (let ((_id106908_ _hd106851106903_)
                                                (_rest106910_
                                                 _tl106850106900_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106848106895_
                                               _rest106910_
                                               _id106908_)))
                                          (let ((_hd106885_ _hd106849106898_)
                                                (_rest106887_
                                                 _tl106850106900_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106845106877_
                                               _rest106887_
                                               _hd106885_)))))
                                    (let ((_hd106885_ _hd106849106898_)
                                          (_rest106887_ _tl106850106900_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106845106877_
                                         _rest106887_
                                         _hd106885_)))))
                              (let ()
                                (declare (not safe))
                                (_else106843106862_))))))))
                 (_compile-post106735_
                  (lambda (_post106737_ _body106738_)
                    (let _lp106740_ ((_rest106742_ _post106737_)
                                     (_check106743_ '())
                                     (_bind106744_ '()))
                      (let* ((_rest106745106757_ _rest106742_)
                             (_else106747106765_
                              (lambda ()
                                (let ((__tmp112405
                                       (let ((__tmp112406
                                              (let ((__tmp112407
                                                     (let ((__tmp112408
                                                            (let ((__tmp112409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112410
                                  (let ((__tmp112411
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106738_ '()))))
                                    (declare (not safe))
                                    (cons _bind106744_ __tmp112411))))
                             (declare (not safe))
                             (cons 'let __tmp112410))))
                      (declare (not safe))
                      (__SRC__% __tmp112409 _stx106731_))))
               (declare (not safe))
               (cons __tmp112408 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112407
                                                        _check106743_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112406))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112405 _stx106731_))))
                             (_K106749106804_
                              (lambda (_rest106768_
                                       _init106769_
                                       _len106770_
                                       _tmp106771_)
                                (let ((__tmp112419
                                       (let ((__tmp112420
                                              (let ((__tmp112421
                                                     (let ((__tmp112422
                                                            (let ((__tmp112423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106770_ '()))))
                      (declare (not safe))
                      (cons _tmp106771_ __tmp112423))))
               (declare (not safe))
               (cons '__check-values __tmp112422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112421
                                                 _stx106731_))))
                                         (declare (not safe))
                                         (cons __tmp112420 _check106743_)))
                                      (__tmp112412
                                       (let ((__tmp112413
                                              (lambda (_hd106773_ _r106774_)
                                                (let* ((_hd106775106782_
                                                        _hd106773_)
                                                       (_E106777106786_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106775106782_)))
               (_K106778106792_
                (lambda (_k106789_ _id106790_)
                  (let ((__tmp112414
                         (let ((__tmp112415
                                (let ((__tmp112416
                                       (let ((__tmp112417
                                              (let ((__tmp112418
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k106789_ '()))))
                                                (declare (not safe))
                                                (cons _tmp106771_
                                                      __tmp112418))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp112417))))
                                  (declare (not safe))
                                  (cons __tmp112416 '()))))
                           (declare (not safe))
                           (cons _id106790_ __tmp112415))))
                    (declare (not safe))
                    (cons __tmp112414 _r106774_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106775106782_))
                                                      (let ((_hd106779106795_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106775106782_)))
                    (_tl106780106797_
                     (let () (declare (not safe)) (##cdr _hd106775106782_))))
                (let* ((_id106800_ _hd106779106795_)
                       (_k106802_ _tl106780106797_))
                  (declare (not safe))
                  (_K106778106792_ _k106802_ _id106800_)))
              (let () (declare (not safe)) (_E106777106786_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112413
                                                 _bind106744_
                                                 _init106769_))))
                                  (declare (not safe))
                                  (_lp106740_
                                   _rest106768_
                                   __tmp112419
                                   __tmp112412)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106745106757_))
                            (let ((_hd106750106807_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106745106757_)))
                                  (_tl106751106809_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106745106757_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106750106807_))
                                  (let ((_hd106752106812_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106750106807_)))
                                        (_tl106753106814_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106750106807_))))
                                    (let ((_tmp106817_ _hd106752106812_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106753106814_))
                                          (let ((_hd106754106819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106753106814_)))
                                                (_tl106755106821_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106753106814_))))
                                            (let* ((_len106824_
                                                    _hd106754106819_)
                                                   (_init106826_
                                                    _tl106755106821_)
                                                   (_rest106828_
                                                    _tl106751106809_))
                                              (declare (not safe))
                                              (_K106749106804_
                                               _rest106828_
                                               _init106826_
                                               _len106824_
                                               _tmp106817_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106747106765_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106747106765_))))
                            (let ()
                              (declare (not safe))
                              (_else106747106765_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106731_
             _compile-simple106733_
             _compile-values106734_)))))
    (define __compile-letrec-values%
      (lambda (_stx106531_)
        (letrec ((_compile-simple106533_
                  (lambda (_hd-ids106727_ _exprs106728_ _body106729_)
                    (let ((__tmp112424
                           (let ((__tmp112425
                                  (let ((__tmp112427
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106727_)
                                              _exprs106728_))
                                        (__tmp112426
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106729_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112427 __tmp112426))))
                             (declare (not safe))
                             (cons 'letrec __tmp112425))))
                      (declare (not safe))
                      (__SRC__% __tmp112424 _stx106531_))))
                 (_compile-values106534_
                  (lambda (_hd-ids106641_ _exprs106642_ _body106643_)
                    (let _lp106645_ ((_rest106647_ _hd-ids106641_)
                                     (_exprs106648_ _exprs106642_)
                                     (_pre106649_ '())
                                     (_bind106650_ '())
                                     (_post106651_ '()))
                      (let* ((_rest106652106666_ _rest106647_)
                             (_else106655106674_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner106535_
                                   _pre106649_
                                   _bind106650_
                                   _post106651_
                                   _body106643_)))))
                        (let ((_K106660106710_
                               (lambda (_rest106707_ _id106708_)
                                 (let ((__tmp112433 (cdr _exprs106648_))
                                       (__tmp112428
                                        (let ((__tmp112429
                                               (let ((__tmp112432
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106708_)))
                                                     (__tmp112430
                                                      (let ((__tmp112431
                                                             (car _exprs106648_)))
                                                        (declare (not safe))
                                                        (cons __tmp112431
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112432
                                                       __tmp112430))))
                                          (declare (not safe))
                                          (cons __tmp112429 _bind106650_))))
                                   (declare (not safe))
                                   (_lp106645_
                                    _rest106707_
                                    __tmp112433
                                    _pre106649_
                                    __tmp112428
                                    _post106651_))))
                              (_K106657106692_
                               (lambda (_rest106678_ _hd106679_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106679_))
                                     (let ((__tmp112461 (cdr _exprs106648_))
                                           (__tmp112454
                                            (let ((__tmp112455
                                                   (let ((__tmp112460
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106679_)))
                                                         (__tmp112456
                                                          (let ((__tmp112457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112458
                                (let ((__tmp112459 (car _exprs106648_)))
                                  (declare (not safe))
                                  (cons __tmp112459 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112458))))
                    (declare (not safe))
                    (cons __tmp112457 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112460
                                                           __tmp112456))))
                                              (declare (not safe))
                                              (cons __tmp112455
                                                    _bind106650_))))
                                       (declare (not safe))
                                       (_lp106645_
                                        _rest106678_
                                        __tmp112461
                                        _pre106649_
                                        __tmp112454
                                        _post106651_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106679_))
                                         (let* ((_len106681_
                                                 (length _hd106679_))
                                                (_tmp106683_
                                                 (let ((__tmp112434 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112434))))
                                           (let ((__tmp112453
                                                  (cdr _exprs106648_))
                                                 (__tmp112446
                                                  (let ((__tmp112447
                                                         (lambda (_id106686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r106687_)
                   (if (let () (declare (not safe)) (__AST-e _id106686_))
                       (let ((__tmp112448
                              (let ((__tmp112452
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id106686_)))
                                    (__tmp112449
                                     (let ((__tmp112450
                                            (let ((__tmp112451
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp112451))))
                                       (declare (not safe))
                                       (cons __tmp112450 '()))))
                                (declare (not safe))
                                (cons __tmp112452 __tmp112449))))
                         (declare (not safe))
                         (cons __tmp112448 _r106687_))
                       _r106687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp112447
                                                            _pre106649_
                                                            _hd106679_)))
                                                 (__tmp112442
                                                  (let ((__tmp112443
                                                         (let ((__tmp112444
                                                                (let ((__tmp112445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106648_)))
                          (declare (not safe))
                          (cons __tmp112445 '()))))
                   (declare (not safe))
                   (cons _tmp106683_ __tmp112444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112443
                                                          _bind106650_)))
                                                 (__tmp112435
                                                  (let ((__tmp112436
                                                         (let ((__tmp112437
                                                                (let ((__tmp112438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112440
                                      (lambda (_id106689_ _k106690_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106689_))
                                            (let ((__tmp112441
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106689_))))
                                              (declare (not safe))
                                              (cons __tmp112441 _k106690_))
                                            '#f)))
                                     (__tmp112439
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106681_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112440
                                  _hd106679_
                                  __tmp112439))))
                          (declare (not safe))
                          (cons _len106681_ __tmp112438))))
                   (declare (not safe))
                   (cons _tmp106683_ __tmp112437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112436
                                                          _post106651_))))
                                             (declare (not safe))
                                             (_lp106645_
                                              _rest106678_
                                              __tmp112453
                                              __tmp112446
                                              __tmp112442
                                              __tmp112435)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106531_
                                            _hd106679_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106652106666_))
                              (let ((_tl106662106715_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106652106666_)))
                                    (_hd106661106713_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106652106666_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106661106713_))
                                    (let ((_tl106664106720_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106661106713_)))
                                          (_hd106663106718_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106661106713_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106664106720_))
                                          (let ((_id106723_ _hd106663106718_)
                                                (_rest106725_
                                                 _tl106662106715_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106660106710_
                                               _rest106725_
                                               _id106723_)))
                                          (let ((_hd106700_ _hd106661106713_)
                                                (_rest106702_
                                                 _tl106662106715_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106657106692_
                                               _rest106702_
                                               _hd106700_)))))
                                    (let ((_hd106700_ _hd106661106713_)
                                          (_rest106702_ _tl106662106715_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106657106692_
                                         _rest106702_
                                         _hd106700_)))))
                              (let ()
                                (declare (not safe))
                                (_else106655106674_))))))))
                 (_compile-inner106535_
                  (lambda (_pre106636_ _bind106637_ _post106638_ _body106639_)
                    (if (let () (declare (not safe)) (null? _pre106636_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind106536_
                           _bind106637_
                           _post106638_
                           _body106639_))
                        (let ((__tmp112462
                               (let ((__tmp112463
                                      (let ((__tmp112466 (reverse _pre106636_))
                                            (__tmp112464
                                             (let ((__tmp112465
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind106536_
                                                       _bind106637_
                                                       _post106638_
                                                       _body106639_))))
                                               (declare (not safe))
                                               (cons __tmp112465 '()))))
                                        (declare (not safe))
                                        (cons __tmp112466 __tmp112464))))
                                 (declare (not safe))
                                 (cons 'let __tmp112463))))
                          (declare (not safe))
                          (__SRC__% __tmp112462 _stx106531_)))))
                 (_compile-bind106536_
                  (lambda (_bind106632_ _post106633_ _body106634_)
                    (let ((__tmp112467
                           (let ((__tmp112468
                                  (let ((__tmp112471 (reverse _bind106632_))
                                        (__tmp112469
                                         (let ((__tmp112470
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106537_
                                                   _post106633_
                                                   _body106634_))))
                                           (declare (not safe))
                                           (cons __tmp112470 '()))))
                                    (declare (not safe))
                                    (cons __tmp112471 __tmp112469))))
                             (declare (not safe))
                             (cons 'letrec __tmp112468))))
                      (declare (not safe))
                      (__SRC__% __tmp112467 _stx106531_))))
                 (_compile-post106537_
                  (lambda (_post106539_ _body106540_)
                    (let _lp106542_ ((_rest106544_ _post106539_)
                                     (_check106545_ '())
                                     (_bind106546_ '()))
                      (let* ((_rest106547106559_ _rest106544_)
                             (_else106549106567_
                              (lambda ()
                                (let ((__tmp112472
                                       (let ((__tmp112473
                                              (let ((__tmp112474
                                                     (let ((__tmp112475
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body106540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp112475 _bind106546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112474
                                                        _check106545_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112473))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112472 _stx106531_))))
                             (_K106551106606_
                              (lambda (_rest106570_
                                       _init106571_
                                       _len106572_
                                       _tmp106573_)
                                (let ((__tmp112484
                                       (let ((__tmp112485
                                              (let ((__tmp112486
                                                     (let ((__tmp112487
                                                            (let ((__tmp112488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106572_ '()))))
                      (declare (not safe))
                      (cons _tmp106573_ __tmp112488))))
               (declare (not safe))
               (cons '__check-values __tmp112487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112486
                                                 _stx106531_))))
                                         (declare (not safe))
                                         (cons __tmp112485 _check106545_)))
                                      (__tmp112476
                                       (let ((__tmp112477
                                              (lambda (_hd106575_ _r106576_)
                                                (let* ((_hd106577106584_
                                                        _hd106575_)
                                                       (_E106579106588_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106577106584_)))
               (_K106580106594_
                (lambda (_k106591_ _id106592_)
                  (let ((__tmp112478
                         (let ((__tmp112479
                                (let ((__tmp112480
                                       (let ((__tmp112481
                                              (let ((__tmp112482
                                                     (let ((__tmp112483
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k106591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp106573_ __tmp112483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp112482))))
                                         (declare (not safe))
                                         (cons __tmp112481 '()))))
                                  (declare (not safe))
                                  (cons _id106592_ __tmp112480))))
                           (declare (not safe))
                           (cons 'set! __tmp112479))))
                    (declare (not safe))
                    (cons __tmp112478 _r106576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106577106584_))
                                                      (let ((_hd106581106597_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106577106584_)))
                    (_tl106582106599_
                     (let () (declare (not safe)) (##cdr _hd106577106584_))))
                (let* ((_id106602_ _hd106581106597_)
                       (_k106604_ _tl106582106599_))
                  (declare (not safe))
                  (_K106580106594_ _k106604_ _id106602_)))
              (let () (declare (not safe)) (_E106579106588_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112477
                                                 _bind106546_
                                                 _init106571_))))
                                  (declare (not safe))
                                  (_lp106542_
                                   _rest106570_
                                   __tmp112484
                                   __tmp112476)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106547106559_))
                            (let ((_hd106552106609_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106547106559_)))
                                  (_tl106553106611_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106547106559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106552106609_))
                                  (let ((_hd106554106614_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106552106609_)))
                                        (_tl106555106616_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106552106609_))))
                                    (let ((_tmp106619_ _hd106554106614_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106555106616_))
                                          (let ((_hd106556106621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106555106616_)))
                                                (_tl106557106623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106555106616_))))
                                            (let* ((_len106626_
                                                    _hd106556106621_)
                                                   (_init106628_
                                                    _tl106557106623_)
                                                   (_rest106630_
                                                    _tl106553106611_))
                                              (declare (not safe))
                                              (_K106551106606_
                                               _rest106630_
                                               _init106628_
                                               _len106626_
                                               _tmp106619_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106549106567_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106549106567_))))
                            (let ()
                              (declare (not safe))
                              (_else106549106567_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106531_
             _compile-simple106533_
             _compile-values106534_)))))
    (define __compile-letrec*-values%
      (lambda (_stx106286_)
        (letrec ((_compile-simple106288_
                  (lambda (_hd-ids106527_ _exprs106528_ _body106529_)
                    (let ((__tmp112489
                           (let ((__tmp112490
                                  (let ((__tmp112492
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106527_)
                                              _exprs106528_))
                                        (__tmp112491
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106529_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112492 __tmp112491))))
                             (declare (not safe))
                             (cons 'letrec* __tmp112490))))
                      (declare (not safe))
                      (__SRC__% __tmp112489 _stx106286_))))
                 (_compile-values106289_
                  (lambda (_hd-ids106438_ _exprs106439_ _body106440_)
                    (let _lp106442_ ((_rest106444_ _hd-ids106438_)
                                     (_exprs106445_ _exprs106439_)
                                     (_bind106446_ '())
                                     (_post106447_ '()))
                      (let* ((_rest106448106462_ _rest106444_)
                             (_else106451106470_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind106290_
                                   _bind106446_
                                   _post106447_
                                   _body106440_)))))
                        (let ((_K106456106510_
                               (lambda (_rest106505_ _hd106506_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106506_))
                                     (let ((_id106508_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106506_))))
                                       (let ((__tmp112507 (cdr _exprs106445_))
                                             (__tmp112502
                                              (let ((__tmp112503
                                                     (let ((__tmp112504
                                                            (let ((__tmp112505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112506
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112506))))
                      (declare (not safe))
                      (cons __tmp112505 '()))))
               (declare (not safe))
               (cons _id106508_ __tmp112504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112503
                                                      _bind106446_)))
                                             (__tmp112498
                                              (let ((__tmp112499
                                                     (let ((__tmp112500
                                                            (let ((__tmp112501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs106445_)))
                      (declare (not safe))
                      (cons __tmp112501 '()))))
               (declare (not safe))
               (cons _id106508_ __tmp112500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112499
                                                      _post106447_))))
                                         (declare (not safe))
                                         (_lp106442_
                                          _rest106505_
                                          __tmp112507
                                          __tmp112502
                                          __tmp112498)))
                                     (let ((__tmp112497 (cdr _exprs106445_))
                                           (__tmp112493
                                            (let ((__tmp112494
                                                   (let ((__tmp112495
                                                          (let ((__tmp112496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs106445_)))
                    (declare (not safe))
                    (cons __tmp112496 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp112495))))
                                              (declare (not safe))
                                              (cons __tmp112494
                                                    _post106447_))))
                                       (declare (not safe))
                                       (_lp106442_
                                        _rest106505_
                                        __tmp112497
                                        _bind106446_
                                        __tmp112493)))))
                              (_K106453106490_
                               (lambda (_rest106474_ _hd106475_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106475_))
                                     (let ((_id106477_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106475_))))
                                       (let ((__tmp112543 (cdr _exprs106445_))
                                             (__tmp112538
                                              (let ((__tmp112539
                                                     (let ((__tmp112540
                                                            (let ((__tmp112541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112542
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112542))))
                      (declare (not safe))
                      (cons __tmp112541 '()))))
               (declare (not safe))
               (cons _id106477_ __tmp112540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112539
                                                      _bind106446_)))
                                             (__tmp112532
                                              (let ((__tmp112533
                                                     (let ((__tmp112534
                                                            (let ((__tmp112535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112536
                                  (let ((__tmp112537 (car _exprs106445_)))
                                    (declare (not safe))
                                    (cons __tmp112537 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp112536))))
                      (declare (not safe))
                      (cons __tmp112535 '()))))
               (declare (not safe))
               (cons _id106477_ __tmp112534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112533
                                                      _post106447_))))
                                         (declare (not safe))
                                         (_lp106442_
                                          _rest106474_
                                          __tmp112543
                                          __tmp112538
                                          __tmp112532)))
                                     (if (let ((__tmp112531
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd106475_))))
                                           (declare (not safe))
                                           (not __tmp112531))
                                         (let ((__tmp112530
                                                (cdr _exprs106445_))
                                               (__tmp112526
                                                (let ((__tmp112527
                                                       (let ((__tmp112528
                                                              (let ((__tmp112529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs106445_)))
                        (declare (not safe))
                        (cons __tmp112529 '()))))
                 (declare (not safe))
                 (cons '#f __tmp112528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112527
                                                        _post106447_))))
                                           (declare (not safe))
                                           (_lp106442_
                                            _rest106474_
                                            __tmp112530
                                            _bind106446_
                                            __tmp112526))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd106475_))
                                             (let* ((_len106479_
                                                     (length _hd106475_))
                                                    (_tmp106481_
                                                     (let ((__tmp112508
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp112508))))
                                               (let ((__tmp112525
                                                      (cdr _exprs106445_))
                                                     (__tmp112518
                                                      (let ((__tmp112519
                                                             (lambda (_id106484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r106485_)
                       (if (let () (declare (not safe)) (__AST-e _id106484_))
                           (let ((__tmp112520
                                  (let ((__tmp112524
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id106484_)))
                                        (__tmp112521
                                         (let ((__tmp112522
                                                (let ((__tmp112523
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp112523))))
                                           (declare (not safe))
                                           (cons __tmp112522 '()))))
                                    (declare (not safe))
                                    (cons __tmp112524 __tmp112521))))
                             (declare (not safe))
                             (cons __tmp112520 _r106485_))
                           _r106485_))))
                (declare (not safe))
                (foldl1 __tmp112519 _bind106446_ _hd106475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112509
                                                      (let ((__tmp112510
                                                             (let ((__tmp112511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112517 (car _exprs106445_))
                                  (__tmp112512
                                   (let ((__tmp112513
                                          (let ((__tmp112515
                                                 (lambda (_id106487_ _k106488_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id106487_))
                                                       (let ((__tmp112516
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id106487_))))
                 (declare (not safe))
                 (cons __tmp112516 _k106488_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp112514
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len106479_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp112515
                                             _hd106475_
                                             __tmp112514))))
                                     (declare (not safe))
                                     (cons _len106479_ __tmp112513))))
                              (declare (not safe))
                              (cons __tmp112517 __tmp112512))))
                       (declare (not safe))
                       (cons _tmp106481_ __tmp112511))))
                (declare (not safe))
                (cons __tmp112510 _post106447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp106442_
                                                  _rest106474_
                                                  __tmp112525
                                                  __tmp112518
                                                  __tmp112509)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx106286_
                                                _hd106475_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106448106462_))
                              (let ((_tl106458106515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106448106462_)))
                                    (_hd106457106513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106448106462_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106457106513_))
                                    (let ((_tl106460106520_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106457106513_)))
                                          (_hd106459106518_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106457106513_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106460106520_))
                                          (let ((_hd106523_ _hd106459106518_)
                                                (_rest106525_
                                                 _tl106458106515_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106456106510_
                                               _rest106525_
                                               _hd106523_)))
                                          (let ((_hd106498_ _hd106457106513_)
                                                (_rest106500_
                                                 _tl106458106515_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106453106490_
                                               _rest106500_
                                               _hd106498_)))))
                                    (let ((_hd106498_ _hd106457106513_)
                                          (_rest106500_ _tl106458106515_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106453106490_
                                         _rest106500_
                                         _hd106498_)))))
                              (let ()
                                (declare (not safe))
                                (_else106451106470_))))))))
                 (_compile-bind106290_
                  (lambda (_bind106434_ _post106435_ _body106436_)
                    (let ((__tmp112544
                           (let ((__tmp112545
                                  (let ((__tmp112548 (reverse _bind106434_))
                                        (__tmp112546
                                         (let ((__tmp112547
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106291_
                                                   _post106435_
                                                   _body106436_))))
                                           (declare (not safe))
                                           (cons __tmp112547 '()))))
                                    (declare (not safe))
                                    (cons __tmp112548 __tmp112546))))
                             (declare (not safe))
                             (cons 'let __tmp112545))))
                      (declare (not safe))
                      (__SRC__% __tmp112544 _stx106286_))))
                 (_compile-post106291_
                  (lambda (_post106293_ _body106294_)
                    (let ((__tmp112549
                           (let ((__tmp112550
                                  (let ((__tmp112551
                                         (let ((__tmp112553
                                                (lambda (_hd106296_ _r106297_)
                                                  (let* ((_hd106298106321_
                                                          _hd106296_)
                                                         (_E106302106325_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd106298106321_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K106315106419_
                                                           (lambda (_expr106417_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr106417_ _r106297_))))
                  (_K106310106397_
                   (lambda (_expr106394_ _id106395_)
                     (let ((__tmp112554
                            (let ((__tmp112555
                                   (let ((__tmp112556
                                          (let ((__tmp112557
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr106394_ '()))))
                                            (declare (not safe))
                                            (cons _id106395_ __tmp112557))))
                                     (declare (not safe))
                                     (cons 'set! __tmp112556))))
                              (declare (not safe))
                              (__SRC__% __tmp112555 _stx106286_))))
                       (declare (not safe))
                       (cons __tmp112554 _r106297_))))
                  (_K106303106364_
                   (lambda (_init106329_ _len106330_ _expr106331_ _tmp106332_)
                     (let ((__tmp112558
                            (let ((__tmp112559
                                   (let ((__tmp112560
                                          (let ((__tmp112574
                                                 (let ((__tmp112575
                                                        (let ((__tmp112576
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr106331_ '()))))
                  (declare (not safe))
                  (cons _tmp106332_ __tmp112576))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112575 '())))
                                                (__tmp112561
                                                 (let ((__tmp112570
                                                        (let ((__tmp112571
                                                               (let ((__tmp112572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp112573
                                     (let ()
                                       (declare (not safe))
                                       (cons _len106330_ '()))))
                                (declare (not safe))
                                (cons _tmp106332_ __tmp112573))))
                         (declare (not safe))
                         (cons '__check-values __tmp112572))))
                  (declare (not safe))
                  (__SRC__% __tmp112571 _stx106286_)))
               (__tmp112562
                (let ((__tmp112563
                       (map (lambda (_hd106334_)
                              (let* ((_hd106335106342_ _hd106334_)
                                     (_E106337106346_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd106335106342_)))
                                     (_K106338106352_
                                      (lambda (_k106349_ _id106350_)
                                        (let ((__tmp112564
                                               (let ((__tmp112565
                                                      (let ((__tmp112566
                                                             (let ((__tmp112567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112568
                                   (let ((__tmp112569
                                          (let ()
                                            (declare (not safe))
                                            (cons _k106349_ '()))))
                                     (declare (not safe))
                                     (cons _tmp106332_ __tmp112569))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp112568))))
                       (declare (not safe))
                       (cons __tmp112567 '()))))
                (declare (not safe))
                (cons _id106350_ __tmp112566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp112565))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp112564
                                           _stx106286_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106335106342_))
                                    (let ((_hd106339106355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106335106342_)))
                                          (_tl106340106357_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106335106342_))))
                                      (let* ((_id106360_ _hd106339106355_)
                                             (_k106362_ _tl106340106357_))
                                        (declare (not safe))
                                        (_K106338106352_
                                         _k106362_
                                         _id106360_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E106337106346_)))))
                            _init106329_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp112563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112570
                                                         __tmp112562))))
                                            (declare (not safe))
                                            (cons __tmp112574 __tmp112561))))
                                     (declare (not safe))
                                     (cons 'let __tmp112560))))
                              (declare (not safe))
                              (__SRC__% __tmp112559 _stx106286_))))
                       (declare (not safe))
                       (cons __tmp112558 _r106297_)))))
              (if (let () (declare (not safe)) (##pair? _hd106298106321_))
                  (let ((_tl106317106424_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd106298106321_)))
                        (_hd106316106422_
                         (let ()
                           (declare (not safe))
                           (##car _hd106298106321_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd106316106422_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106317106424_))
                            (let ((_tl106319106429_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106317106424_)))
                                  (_hd106318106427_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106317106424_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106319106429_))
                                  (let ((_expr106432_ _hd106318106427_))
                                    (declare (not safe))
                                    (_K106315106419_ _expr106432_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106319106429_))
                                      (let ((_tl106309106383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106319106429_)))
                                            (_hd106308106381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106319106429_))))
                                        (let ((_tmp106372_ _hd106316106422_)
                                              (_expr106379_ _hd106318106427_)
                                              (_len106386_ _hd106308106381_)
                                              (_init106388_ _tl106309106383_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106303106364_
                                             _init106388_
                                             _len106386_
                                             _expr106379_
                                             _tmp106372_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106302106325_)))))
                            (let () (declare (not safe)) (_E106302106325_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106317106424_))
                            (let ((_tl106314106409_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106317106424_)))
                                  (_hd106313106407_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106317106424_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106314106409_))
                                  (let ((_id106405_ _hd106316106422_)
                                        (_expr106412_ _hd106313106407_))
                                    (let ()
                                      (declare (not safe))
                                      (_K106310106397_
                                       _expr106412_
                                       _id106405_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106314106409_))
                                      (let ((_tl106309106383_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106314106409_)))
                                            (_hd106308106381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106314106409_))))
                                        (let ((_tmp106372_ _hd106316106422_)
                                              (_expr106379_ _hd106313106407_)
                                              (_len106386_ _hd106308106381_)
                                              (_init106388_ _tl106309106383_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106303106364_
                                             _init106388_
                                             _len106386_
                                             _expr106379_
                                             _tmp106372_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106302106325_)))))
                            (let () (declare (not safe)) (_E106302106325_)))))
                  (let () (declare (not safe)) (_E106302106325_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp112552
                                                (list _body106294_)))
                                           (declare (not safe))
                                           (foldl1 __tmp112553
                                                   __tmp112552
                                                   _post106293_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp112551))))
                             (declare (not safe))
                             (cons 'begin __tmp112550))))
                      (declare (not safe))
                      (__SRC__% __tmp112549 _stx106286_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106286_
             _compile-simple106288_
             _compile-values106289_)))))
    (define __compile-call%
      (lambda (_stx106246_)
        (let* ((_$e106248_ _stx106246_)
               (_$E106250106259_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106248_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106248_))
              (let* ((_$tgt106251106262_
                      (let () (declare (not safe)) (__AST-e _$e106248_)))
                     (_$hd106252106265_
                      (let () (declare (not safe)) (##car _$tgt106251106262_)))
                     (_$tl106253106268_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106251106262_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106253106268_))
                    (let* ((_$tgt106254106272_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106253106268_)))
                           (_$hd106255106275_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106254106272_)))
                           (_$tl106256106278_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106254106272_))))
                      (let* ((_rator106282_ _$hd106255106275_)
                             (_rands106284_ _$tl106256106278_)
                             (__tmp112577
                              (let ((__tmp112579
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator106282_)))
                                    (__tmp112578
                                     (map __compile _rands106284_)))
                                (declare (not safe))
                                (cons __tmp112579 __tmp112578))))
                        (declare (not safe))
                        (__SRC__% __tmp112577 _stx106246_)))
                    (let () (declare (not safe)) (_$E106250106259_))))
              (let () (declare (not safe)) (_$E106250106259_))))))
    (define __compile-ref%
      (lambda (_stx106208_)
        (let* ((_$e106210_ _stx106208_)
               (_$E106212106221_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106210_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106210_))
              (let* ((_$tgt106213106224_
                      (let () (declare (not safe)) (__AST-e _$e106210_)))
                     (_$hd106214106227_
                      (let () (declare (not safe)) (##car _$tgt106213106224_)))
                     (_$tl106215106230_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106213106224_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106215106230_))
                    (let* ((_$tgt106216106234_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106215106230_)))
                           (_$hd106217106237_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106216106234_)))
                           (_$tl106218106240_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106216106234_))))
                      (let ((_id106244_ _$hd106217106237_))
                        (if (let ((__tmp112580
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106218106240_))))
                              (declare (not safe))
                              (equal? __tmp112580 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id106244_ _stx106208_))
                            (let () (declare (not safe)) (_$E106212106221_)))))
                    (let () (declare (not safe)) (_$E106212106221_))))
              (let () (declare (not safe)) (_$E106212106221_))))))
    (define __compile-setq%
      (lambda (_stx106155_)
        (let* ((_$e106157_ _stx106155_)
               (_$E106159106171_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106157_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106157_))
              (let* ((_$tgt106160106174_
                      (let () (declare (not safe)) (__AST-e _$e106157_)))
                     (_$hd106161106177_
                      (let () (declare (not safe)) (##car _$tgt106160106174_)))
                     (_$tl106162106180_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106160106174_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106162106180_))
                    (let* ((_$tgt106163106184_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106162106180_)))
                           (_$hd106164106187_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106163106184_)))
                           (_$tl106165106190_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106163106184_))))
                      (let ((_id106194_ _$hd106164106187_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl106165106190_))
                            (let* ((_$tgt106166106196_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl106165106190_)))
                                   (_$hd106167106199_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt106166106196_)))
                                   (_$tl106168106202_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt106166106196_))))
                              (let ((_expr106206_ _$hd106167106199_))
                                (if (let ((__tmp112586
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl106168106202_))))
                                      (declare (not safe))
                                      (equal? __tmp112586 '()))
                                    (let ((__tmp112581
                                           (let ((__tmp112582
                                                  (let ((__tmp112585
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id106194_
                                                            _stx106155_)))
                                                        (__tmp112583
                                                         (let ((__tmp112584
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr106206_))))
                   (declare (not safe))
                   (cons __tmp112584 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112585
                                                          __tmp112583))))
                                             (declare (not safe))
                                             (cons 'set! __tmp112582))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112581 _stx106155_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E106159106171_)))))
                            (let () (declare (not safe)) (_$E106159106171_)))))
                    (let () (declare (not safe)) (_$E106159106171_))))
              (let () (declare (not safe)) (_$E106159106171_))))))
    (define __compile-if%
      (lambda (_stx106087_)
        (let* ((_$e106089_ _stx106087_)
               (_$E106091106106_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106089_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106089_))
              (let* ((_$tgt106092106109_
                      (let () (declare (not safe)) (__AST-e _$e106089_)))
                     (_$hd106093106112_
                      (let () (declare (not safe)) (##car _$tgt106092106109_)))
                     (_$tl106094106115_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106092106109_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106094106115_))
                    (let* ((_$tgt106095106119_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106094106115_)))
                           (_$hd106096106122_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106095106119_)))
                           (_$tl106097106125_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106095106119_))))
                      (let ((_p106129_ _$hd106096106122_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl106097106125_))
                            (let* ((_$tgt106098106131_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl106097106125_)))
                                   (_$hd106099106134_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt106098106131_)))
                                   (_$tl106100106137_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt106098106131_))))
                              (let ((_t106141_ _$hd106099106134_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl106100106137_))
                                    (let* ((_$tgt106101106143_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl106100106137_)))
                                           (_$hd106102106146_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt106101106143_)))
                                           (_$tl106103106149_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt106101106143_))))
                                      (let ((_f106153_ _$hd106102106146_))
                                        (if (let ((__tmp112594
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl106103106149_))))
                                              (declare (not safe))
                                              (equal? __tmp112594 '()))
                                            (let ((__tmp112587
                                                   (let ((__tmp112588
                                                          (let ((__tmp112593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p106129_)))
                        (__tmp112589
                         (let ((__tmp112592
                                (let ()
                                  (declare (not safe))
                                  (__compile _t106141_)))
                               (__tmp112590
                                (let ((__tmp112591
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f106153_))))
                                  (declare (not safe))
                                  (cons __tmp112591 '()))))
                           (declare (not safe))
                           (cons __tmp112592 __tmp112590))))
                    (declare (not safe))
                    (cons __tmp112593 __tmp112589))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp112588))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp112587
                                               _stx106087_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E106091106106_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E106091106106_)))))
                            (let () (declare (not safe)) (_$E106091106106_)))))
                    (let () (declare (not safe)) (_$E106091106106_))))
              (let () (declare (not safe)) (_$E106091106106_))))))
    (define __compile-quote%
      (lambda (_stx106049_)
        (let* ((_$e106051_ _stx106049_)
               (_$E106053106062_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106051_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106051_))
              (let* ((_$tgt106054106065_
                      (let () (declare (not safe)) (__AST-e _$e106051_)))
                     (_$hd106055106068_
                      (let () (declare (not safe)) (##car _$tgt106054106065_)))
                     (_$tl106056106071_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106054106065_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106056106071_))
                    (let* ((_$tgt106057106075_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106056106071_)))
                           (_$hd106058106078_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106057106075_)))
                           (_$tl106059106081_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106057106075_))))
                      (let ((_e106085_ _$hd106058106078_))
                        (if (let ((__tmp112598
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106059106081_))))
                              (declare (not safe))
                              (equal? __tmp112598 '()))
                            (let ((__tmp112595
                                   (let ((__tmp112596
                                          (let ((__tmp112597
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e106085_))))
                                            (declare (not safe))
                                            (cons __tmp112597 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112596))))
                              (declare (not safe))
                              (__SRC__% __tmp112595 _stx106049_))
                            (let () (declare (not safe)) (_$E106053106062_)))))
                    (let () (declare (not safe)) (_$E106053106062_))))
              (let () (declare (not safe)) (_$E106053106062_))))))
    (define __compile-quote-syntax%
      (lambda (_stx106011_)
        (let* ((_$e106013_ _stx106011_)
               (_$E106015106024_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106013_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106013_))
              (let* ((_$tgt106016106027_
                      (let () (declare (not safe)) (__AST-e _$e106013_)))
                     (_$hd106017106030_
                      (let () (declare (not safe)) (##car _$tgt106016106027_)))
                     (_$tl106018106033_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106016106027_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106018106033_))
                    (let* ((_$tgt106019106037_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106018106033_)))
                           (_$hd106020106040_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106019106037_)))
                           (_$tl106021106043_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106019106037_))))
                      (let ((_e106047_ _$hd106020106040_))
                        (if (let ((__tmp112601
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106021106043_))))
                              (declare (not safe))
                              (equal? __tmp112601 '()))
                            (let ((__tmp112599
                                   (let ((__tmp112600
                                          (let ()
                                            (declare (not safe))
                                            (cons _e106047_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112600))))
                              (declare (not safe))
                              (__SRC__% __tmp112599 _stx106011_))
                            (let () (declare (not safe)) (_$E106015106024_)))))
                    (let () (declare (not safe)) (_$E106015106024_))))
              (let () (declare (not safe)) (_$E106015106024_))))))
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
