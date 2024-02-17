(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708210940)
  (begin
    (define __context::t
      (let ((__tmp112208 (list))
            (__tmp112206
             (let ((__tmp112207
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112207 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp112208
         '(t ns super table)
         __tmp112206
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args107943_ (apply make-instance __context::t _$args107943_)))
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
      (let ((__tmp112211 (list))
            (__tmp112209
             (let ((__tmp112210
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112210 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp112211
         '(id)
         __tmp112209
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args107940_ (apply make-instance __runtime::t _$args107940_)))
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
      (let ((__tmp112214 (list))
            (__tmp112212
             (let ((__tmp112213
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112213 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp112214
         '(e id)
         __tmp112212
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args107937_ (apply make-instance __syntax::t _$args107937_)))
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
      (let ((__tmp112217 (list __syntax::t))
            (__tmp112215
             (let ((__tmp112216
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112216 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp112217
         '()
         __tmp112215
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args107934_ (apply make-instance __macro::t _$args107934_)))
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
      (let ((__tmp112220 (list __macro::t))
            (__tmp112218
             (let ((__tmp112219
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112219 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp112220
         '()
         __tmp112218
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args107931_
        (apply make-instance __special-form::t _$args107931_)))
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
      (let ((__tmp112223 (list __syntax::t))
            (__tmp112221
             (let ((__tmp112222
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112222 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp112223
         '()
         __tmp112221
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args107928_
        (apply make-instance __core-form::t _$args107928_)))
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
      (let ((__tmp112226 (list __core-form::t))
            (__tmp112224
             (let ((__tmp112225
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112225 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp112226
         '()
         __tmp112224
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args107925_
        (apply make-instance __core-expression::t _$args107925_)))
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
      (let ((__tmp112229 (list __core-form::t))
            (__tmp112227
             (let ((__tmp112228
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112228 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp112229
         '()
         __tmp112227
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args107922_
        (apply make-instance __core-special-form::t _$args107922_)))
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
      (let ((__tmp112232 (list __syntax::t))
            (__tmp112230
             (let ((__tmp112231
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112231 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp112232
         '()
         __tmp112230
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args107919_
        (apply make-instance __struct-info::t _$args107919_)))
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
      (let ((__tmp112235 (list __syntax::t))
            (__tmp112233
             (let ((__tmp112234
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112234 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp112235
         '()
         __tmp112233
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args107916_ (apply make-instance __feature::t _$args107916_)))
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
      (let ((__tmp112238 (list __context::t))
            (__tmp112236
             (let ((__tmp112237
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112237 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp112238
         '(id path import export)
         __tmp112236
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args107913_ (apply make-instance __module::t _$args107913_)))
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
      (let ((__tmp112240
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp112239 (let () (declare (not safe)) (make-hash-table-eq))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp112240 __tmp112239)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id107888_ _ctx107889_)
        (if _ctx107889_
            (let ((_id107891_
                   (let () (declare (not safe)) (__AST-e _id107888_))))
              (let _lp107893_ ((_ctx107895_ _ctx107889_))
                (let ((_$e107897_
                       (table-ref
                        (##structure-ref _ctx107895_ '4 __context::t '#f)
                        _id107891_
                        '#f)))
                  (if _$e107897_
                      (values _$e107897_)
                      (let ((_$e107900_
                             (##structure-ref
                              _ctx107895_
                              '3
                              __context::t
                              '#f)))
                        (if _$e107900_
                            (let ()
                              (declare (not safe))
                              (_lp107893_ _$e107900_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id107906_)
        (let ((_ctx107908_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id107906_ _ctx107908_))))
    (define __core-resolve
      (lambda _g112242_
        (let ((_g112241_ (let () (declare (not safe)) (##length _g112242_))))
          (cond ((let () (declare (not safe)) (##fx= _g112241_ 1))
                 (apply (lambda (_id107906_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id107906_)))
                        _g112242_))
                ((let () (declare (not safe)) (##fx= _g112241_ 2))
                 (apply (lambda (_id107910_ _ctx107911_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id107910_ _ctx107911_)))
                        _g112242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g112242_))))))
    (define __core-bound-id?__%
      (lambda (_id107871_ _is?107872_)
        (let ((_$e107874_
               (let () (declare (not safe)) (__core-resolve__0 _id107871_))))
          (if _$e107874_ (_is?107872_ _$e107874_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id107880_)
        (let ((_is?107882_ true))
          (declare (not safe))
          (__core-bound-id?__% _id107880_ _is?107882_))))
    (define __core-bound-id?
      (lambda _g112244_
        (let ((_g112243_ (let () (declare (not safe)) (##length _g112244_))))
          (cond ((let () (declare (not safe)) (##fx= _g112243_ 1))
                 (apply (lambda (_id107880_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id107880_)))
                        _g112244_))
                ((let () (declare (not safe)) (##fx= _g112243_ 2))
                 (apply (lambda (_id107884_ _is?107885_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id107884_ _is?107885_)))
                        _g112244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g112244_))))))
    (define __core-bind-runtime!__%
      (lambda (_id107854_ _eid107855_ _ctx107856_)
        (if _eid107855_
            (let ((__tmp112247
                   (##structure-ref _ctx107856_ '4 __context::t '#f))
                  (__tmp112246
                   (let () (declare (not safe)) (__AST-e _id107854_)))
                  (__tmp112245
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid107855_))))
              (declare (not safe))
              (table-set! __tmp112247 __tmp112246 __tmp112245))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id107861_ _eid107862_)
        (let ((_ctx107864_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id107861_ _eid107862_ _ctx107864_))))
    (define __core-bind-runtime!
      (lambda _g112249_
        (let ((_g112248_ (let () (declare (not safe)) (##length _g112249_))))
          (cond ((let () (declare (not safe)) (##fx= _g112248_ 2))
                 (apply (lambda (_id107861_ _eid107862_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id107861_ _eid107862_)))
                        _g112249_))
                ((let () (declare (not safe)) (##fx= _g112248_ 3))
                 (apply (lambda (_id107866_ _eid107867_ _ctx107868_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id107866_
                             _eid107867_
                             _ctx107868_)))
                        _g112249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g112249_))))))
    (define __core-bind-syntax!__%
      (lambda (_id107837_ _e107838_ _make107839_)
        (let ((__tmp112250
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107838_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107838_
                   (_make107839_ _e107838_ _id107837_))))
          (declare (not safe))
          (table-set! __*core* _id107837_ __tmp112250))))
    (define __core-bind-syntax!__0
      (lambda (_id107844_ _e107845_)
        (let ((_make107847_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id107844_ _e107845_ _make107847_))))
    (define __core-bind-syntax!
      (lambda _g112252_
        (let ((_g112251_ (let () (declare (not safe)) (##length _g112252_))))
          (cond ((let () (declare (not safe)) (##fx= _g112251_ 2))
                 (apply (lambda (_id107844_ _e107845_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id107844_ _e107845_)))
                        _g112252_))
                ((let () (declare (not safe)) (##fx= _g112251_ 3))
                 (apply (lambda (_id107849_ _e107850_ _make107851_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id107849_
                             _e107850_
                             _make107851_)))
                        _g112252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g112252_))))))
    (define __core-bind-macro!
      (lambda (_id107833_ _e107834_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107833_ _e107834_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id107830_ _e107831_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107830_ _e107831_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id107814_ _e107815_ _ctx107816_)
        (let ((__tmp112256 (##structure-ref _ctx107816_ '4 __context::t '#f))
              (__tmp112255 (let () (declare (not safe)) (__AST-e _id107814_)))
              (__tmp112253
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107815_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107815_
                   (let ((__tmp112254
                          (let () (declare (not safe)) (__AST-e _id107814_))))
                     (declare (not safe))
                     (##structure __syntax::t _e107815_ __tmp112254)))))
          (declare (not safe))
          (table-set! __tmp112256 __tmp112255 __tmp112253))))
    (define __core-bind-user-syntax!__0
      (lambda (_id107821_ _e107822_)
        (let ((_ctx107824_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id107821_ _e107822_ _ctx107824_))))
    (define __core-bind-user-syntax!
      (lambda _g112258_
        (let ((_g112257_ (let () (declare (not safe)) (##length _g112258_))))
          (cond ((let () (declare (not safe)) (##fx= _g112257_ 2))
                 (apply (lambda (_id107821_ _e107822_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id107821_
                             _e107822_)))
                        _g112258_))
                ((let () (declare (not safe)) (##fx= _g112257_ 3))
                 (apply (lambda (_id107826_ _e107827_ _ctx107828_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id107826_
                             _e107827_
                             _ctx107828_)))
                        _g112258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g112258_))))))
    (define make-__runtime-id__%
      (lambda (_id107795_ _ctx107796_)
        (let ((_id107798_ (let () (declare (not safe)) (__AST-e _id107795_))))
          (if (let () (declare (not safe)) (eq? _id107798_ '_))
              '#f
              (if (uninterned-symbol? _id107798_)
                  (gensym _id107798_)
                  (if (let () (declare (not safe)) (symbol? _id107798_))
                      (let ((_$e107800_
                             (##structure-ref
                              _ctx107796_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e107800_))
                            (gensym _id107798_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e107800_))
                                (let ((__tmp112259
                                       (##structure-ref
                                        _ctx107796_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp112259 '"#" _id107798_))
                                _id107798_)))
                      (error '"Illegal runtime identifier" _id107798_)))))))
    (define make-__runtime-id__0
      (lambda (_id107806_)
        (let ((_ctx107808_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id107806_ _ctx107808_))))
    (define make-__runtime-id
      (lambda _g112261_
        (let ((_g112260_ (let () (declare (not safe)) (##length _g112261_))))
          (cond ((let () (declare (not safe)) (##fx= _g112260_ 1))
                 (apply (lambda (_id107806_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id107806_)))
                        _g112261_))
                ((let () (declare (not safe)) (##fx= _g112260_ 2))
                 (apply (lambda (_id107810_ _ctx107811_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id107810_ _ctx107811_)))
                        _g112261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g112261_))))))
    (define make-__context-local__%
      (lambda (_super107784_)
        (let ((__tmp112262 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super107784_ __tmp112262))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super107790_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super107790_))))
    (define make-__context-local
      (lambda _g112264_
        (let ((_g112263_ (let () (declare (not safe)) (##length _g112264_))))
          (cond ((let () (declare (not safe)) (##fx= _g112263_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g112264_))
                ((let () (declare (not safe)) (##fx= _g112263_ 1))
                 (apply (lambda (_super107792_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super107792_)))
                        _g112264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g112264_))))))
    (define make-__context-module__%
      (lambda (_id107764_ _ns107765_ _path107766_ _super107767_)
        (let ((__tmp112265 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns107765_
           _super107767_
           __tmp112265
           _id107764_
           _path107766_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id107772_ _ns107773_ _path107774_)
        (let ((_super107776_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id107772_
           _ns107773_
           _path107774_
           _super107776_))))
    (define make-__context-module
      (lambda _g112267_
        (let ((_g112266_ (let () (declare (not safe)) (##length _g112267_))))
          (cond ((let () (declare (not safe)) (##fx= _g112266_ 3))
                 (apply (lambda (_id107772_ _ns107773_ _path107774_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id107772_
                             _ns107773_
                             _path107774_)))
                        _g112267_))
                ((let () (declare (not safe)) (##fx= _g112266_ 4))
                 (apply (lambda (_id107778_
                                 _ns107779_
                                 _path107780_
                                 _super107781_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id107778_
                             _ns107779_
                             _path107780_
                             _super107781_)))
                        _g112267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g112267_))))))
    (define __SRC__%
      (lambda (_e107747_ _src-stx107748_)
        (if (or (let () (declare (not safe)) (pair? _e107747_))
                (let () (declare (not safe)) (symbol? _e107747_)))
            (let ((__tmp112271
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx107748_
                          'gerbil#AST::t))
                       (let ((__tmp112272
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx107748_))))
                         (declare (not safe))
                         (__locat __tmp112272))
                       '#f)))
              (declare (not safe))
              (##make-source _e107747_ __tmp112271))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e107747_ 'gerbil#AST::t))
                (let ((__tmp112270
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e107747_ '1 AST::t '#f)))
                      (__tmp112268
                       (let ((__tmp112269
                              (let ()
                                (declare (not safe))
                                (__AST-source _e107747_))))
                         (declare (not safe))
                         (__locat __tmp112269))))
                  (declare (not safe))
                  (##make-source __tmp112270 __tmp112268))
                (error '"BUG! Cannot sourcify object" _e107747_)))))
    (define __SRC__0
      (lambda (_e107756_)
        (let ((_src-stx107758_ '#f))
          (declare (not safe))
          (__SRC__% _e107756_ _src-stx107758_))))
    (define __SRC
      (lambda _g112274_
        (let ((_g112273_ (let () (declare (not safe)) (##length _g112274_))))
          (cond ((let () (declare (not safe)) (##fx= _g112273_ 1))
                 (apply (lambda (_e107756_)
                          (let () (declare (not safe)) (__SRC__0 _e107756_)))
                        _g112274_))
                ((let () (declare (not safe)) (##fx= _g112273_ 2))
                 (apply (lambda (_e107760_ _src-stx107761_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e107760_ _src-stx107761_)))
                        _g112274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g112274_))))))
    (define __locat
      (lambda (_loc107744_)
        (if (let () (declare (not safe)) (##locat? _loc107744_))
            _loc107744_
            '#f)))
    (define __check-values
      (lambda (_obj107739_ _k107740_)
        (let ((_count107742_
               (if (let () (declare (not safe)) (##values? _obj107739_))
                   (let () (declare (not safe)) (##vector-length _obj107739_))
                   '1)))
          (if (fx= _count107742_ _k107740_)
              '#!void
              (error (if (fx< _count107742_ _k107740_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj107739_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj107739_))
                         _obj107739_)
                     _k107740_)))))
    (define __compile
      (lambda (_stx107709_)
        (let* ((_$e107711_ _stx107709_)
               (_$E107713107719_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107711_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107711_))
              (let* ((_$tgt107714107722_
                      (let () (declare (not safe)) (__AST-e _$e107711_)))
                     (_$hd107715107725_
                      (let () (declare (not safe)) (##car _$tgt107714107722_)))
                     (_$tl107716107728_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107714107722_))))
                (let* ((_form107732_ _$hd107715107725_)
                       (_$e107734_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form107732_))))
                  (if _$e107734_
                      ((lambda (_bind107737_)
                         ((##structure-ref _bind107737_ '1 __syntax::t '#f)
                          _stx107709_))
                       _$e107734_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx107709_
                         _form107732_)))))
              (let () (declare (not safe)) (_$E107713107719_))))))
    (define __compile-error__%
      (lambda (_stx107696_ _detail107697_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx107696_
           _detail107697_))))
    (define __compile-error__0
      (lambda (_stx107702_)
        (let ((_detail107704_ '#f))
          (declare (not safe))
          (__compile-error__% _stx107702_ _detail107704_))))
    (define __compile-error
      (lambda _g112276_
        (let ((_g112275_ (let () (declare (not safe)) (##length _g112276_))))
          (cond ((let () (declare (not safe)) (##fx= _g112275_ 1))
                 (apply (lambda (_stx107702_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx107702_)))
                        _g112276_))
                ((let () (declare (not safe)) (##fx= _g112275_ 2))
                 (apply (lambda (_stx107706_ _detail107707_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx107706_ _detail107707_)))
                        _g112276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g112276_))))))
    (define __compile-ignore%
      (lambda (_stx107693_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx107693_))))
    (define __compile-begin%
      (lambda (_stx107668_)
        (let* ((_$e107670_ _stx107668_)
               (_$E107672107678_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107670_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107670_))
              (let* ((_$tgt107673107681_
                      (let () (declare (not safe)) (__AST-e _$e107670_)))
                     (_$hd107674107684_
                      (let () (declare (not safe)) (##car _$tgt107673107681_)))
                     (_$tl107675107687_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107673107681_))))
                (let* ((_body107691_ _$tl107675107687_)
                       (__tmp112277
                        (let ((__tmp112278 (map __compile _body107691_)))
                          (declare (not safe))
                          (cons 'begin __tmp112278))))
                  (declare (not safe))
                  (__SRC__% __tmp112277 _stx107668_)))
              (let () (declare (not safe)) (_$E107672107678_))))))
    (define __compile-begin-foreign%
      (lambda (_stx107643_)
        (let* ((_$e107645_ _stx107643_)
               (_$E107647107653_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107645_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107645_))
              (let* ((_$tgt107648107656_
                      (let () (declare (not safe)) (__AST-e _$e107645_)))
                     (_$hd107649107659_
                      (let () (declare (not safe)) (##car _$tgt107648107656_)))
                     (_$tl107650107662_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107648107656_))))
                (let* ((_body107666_ _$tl107650107662_)
                       (__tmp112279
                        (let ((__tmp112280
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body107666_))))
                          (declare (not safe))
                          (cons 'begin __tmp112280))))
                  (declare (not safe))
                  (__SRC__% __tmp112279 _stx107643_)))
              (let () (declare (not safe)) (_$E107647107653_))))))
    (define __compile-import%
      (lambda (_stx107618_)
        (let* ((_$e107620_ _stx107618_)
               (_$E107622107628_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107620_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107620_))
              (let* ((_$tgt107623107631_
                      (let () (declare (not safe)) (__AST-e _$e107620_)))
                     (_$hd107624107634_
                      (let () (declare (not safe)) (##car _$tgt107623107631_)))
                     (_$tl107625107637_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107623107631_))))
                (let* ((_body107641_ _$tl107625107637_)
                       (__tmp112281
                        (let ((__tmp112282
                               (let ((__tmp112283
                                      (let ((__tmp112284
                                             (let ()
                                               (declare (not safe))
                                               (cons _body107641_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp112284))))
                                 (declare (not safe))
                                 (cons __tmp112283 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp112282))))
                  (declare (not safe))
                  (__SRC__% __tmp112281 _stx107618_)))
              (let () (declare (not safe)) (_$E107622107628_))))))
    (define __compile-begin-annotation%
      (lambda (_stx107565_)
        (let* ((_$e107567_ _stx107565_)
               (_$E107569107581_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107567_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107567_))
              (let* ((_$tgt107570107584_
                      (let () (declare (not safe)) (__AST-e _$e107567_)))
                     (_$hd107571107587_
                      (let () (declare (not safe)) (##car _$tgt107570107584_)))
                     (_$tl107572107590_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107570107584_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107572107590_))
                    (let* ((_$tgt107573107594_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107572107590_)))
                           (_$hd107574107597_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107573107594_)))
                           (_$tl107575107600_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107573107594_))))
                      (let ((_ann107604_ _$hd107574107597_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107575107600_))
                            (let* ((_$tgt107576107606_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107575107600_)))
                                   (_$hd107577107609_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107576107606_)))
                                   (_$tl107578107612_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107576107606_))))
                              (let ((_expr107616_ _$hd107577107609_))
                                (if (let ((__tmp112285
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107578107612_))))
                                      (declare (not safe))
                                      (equal? __tmp112285 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr107616_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107569107581_)))))
                            (let () (declare (not safe)) (_$E107569107581_)))))
                    (let () (declare (not safe)) (_$E107569107581_))))
              (let () (declare (not safe)) (_$E107569107581_))))))
    (define __compile-define-values%
      (lambda (_stx107456_)
        (let* ((_$e107458_ _stx107456_)
               (_$E107460107472_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107458_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107458_))
              (let* ((_$tgt107461107475_
                      (let () (declare (not safe)) (__AST-e _$e107458_)))
                     (_$hd107462107478_
                      (let () (declare (not safe)) (##car _$tgt107461107475_)))
                     (_$tl107463107481_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107461107475_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107463107481_))
                    (let* ((_$tgt107464107485_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107463107481_)))
                           (_$hd107465107488_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107464107485_)))
                           (_$tl107466107491_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107464107485_))))
                      (let ((_hd107495_ _$hd107465107488_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107466107491_))
                            (let* ((_$tgt107467107497_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107466107491_)))
                                   (_$hd107468107500_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107467107497_)))
                                   (_$tl107469107503_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107467107497_))))
                              (let ((_expr107507_ _$hd107468107500_))
                                (if (let ((__tmp112318
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107469107503_))))
                                      (declare (not safe))
                                      (equal? __tmp112318 '()))
                                    (let* ((_$e107509_ _hd107495_)
                                           (_$E107511107552_
                                            (lambda ()
                                              (let ((_$E107512107537_
                                                     (lambda ()
                                                       (let* ((_$E107513107524_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e107509_))))
                      (_ids107527_ _hd107495_)
                      (_len107529_ (length _ids107527_))
                      (_tmp107531_
                       (let ((__tmp112286 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp112286))))
                 (let ((__tmp112287
                        (let ((__tmp112288
                               (let ((__tmp112305
                                      (let ((__tmp112306
                                             (let ((__tmp112307
                                                    (let ((__tmp112308
                                                           (let ((__tmp112309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr107507_))))
                     (declare (not safe))
                     (cons __tmp112309 '()))))
              (declare (not safe))
              (cons _tmp107531_ __tmp112308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp112307))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112306 _stx107456_)))
                                     (__tmp112289
                                      (let ((__tmp112301
                                             (let ((__tmp112302
                                                    (let ((__tmp112303
                                                           (let ((__tmp112304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len107529_ '()))))
                     (declare (not safe))
                     (cons _tmp107531_ __tmp112304))))
              (declare (not safe))
              (cons '__check-values __tmp112303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp112302
                                                _stx107456_)))
                                            (__tmp112290
                                             (let ((__tmp112291
                                                    (let ((__tmp112293
                                                           (lambda (_id107534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k107535_)
                     (if (let () (declare (not safe)) (__AST-e _id107534_))
                         (let ((__tmp112294
                                (let ((__tmp112295
                                       (let ((__tmp112300
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id107534_)))
                                             (__tmp112296
                                              (let ((__tmp112297
                                                     (let ((__tmp112298
                                                            (let ((__tmp112299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k107535_ '()))))
                      (declare (not safe))
                      (cons _tmp107531_ __tmp112299))))
               (declare (not safe))
               (cons '##vector-ref __tmp112298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112297 '()))))
                                         (declare (not safe))
                                         (cons __tmp112300 __tmp112296))))
                                  (declare (not safe))
                                  (cons 'define __tmp112295))))
                           (declare (not safe))
                           (__SRC__% __tmp112294 _stx107456_))
                         '#f)))
                  (__tmp112292
                   (let () (declare (not safe)) (iota _len107529_))))
              (declare (not safe))
              (filter-map2 __tmp112293 _ids107527_ __tmp112292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp112291))))
                                        (declare (not safe))
                                        (cons __tmp112301 __tmp112290))))
                                 (declare (not safe))
                                 (cons __tmp112305 __tmp112289))))
                          (declare (not safe))
                          (cons 'begin __tmp112288))))
                   (declare (not safe))
                   (__SRC__% __tmp112287 _stx107456_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e107509_))
                                                    (let* ((_$tgt107514107540_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e107509_)))
                                                           (_$hd107515107543_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt107514107540_)))
                                                           (_$tl107516107546_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt107514107540_))))
                                                      (let ((_id107550_
                                                             _$hd107515107543_))
                                                        (if (let ((__tmp112315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl107516107546_))))
                      (declare (not safe))
                      (equal? __tmp112315 '()))
                    (let ((__tmp112310
                           (let ((__tmp112311
                                  (let ((__tmp112314
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107550_)))
                                        (__tmp112312
                                         (let ((__tmp112313
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr107507_))))
                                           (declare (not safe))
                                           (cons __tmp112313 '()))))
                                    (declare (not safe))
                                    (cons __tmp112314 __tmp112312))))
                             (declare (not safe))
                             (cons 'define __tmp112311))))
                      (declare (not safe))
                      (__SRC__% __tmp112310 _stx107456_))
                    (let () (declare (not safe)) (_$E107512107537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107512107537_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e107509_))
                                          (let* ((_$tgt107517107555_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e107509_)))
                                                 (_$hd107518107558_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107517107555_)))
                                                 (_$tl107519107561_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107517107555_))))
                                            (if (let ((__tmp112317
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd107518107558_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112317 '#f))
                                                (if (let ((__tmp112316
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl107519107561_))))
                                                      (declare (not safe))
                                                      (equal? __tmp112316 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr107507_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107511107552_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107511107552_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107511107552_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107460107472_)))))
                            (let () (declare (not safe)) (_$E107460107472_)))))
                    (let () (declare (not safe)) (_$E107460107472_))))
              (let () (declare (not safe)) (_$E107460107472_))))))
    (define __compile-head-id
      (lambda (_e107454_)
        (let ((__tmp112319
               (if (let () (declare (not safe)) (__AST-e _e107454_))
                   _e107454_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp112319))))
    (define __compile-lambda-head
      (lambda (_hd107411_)
        (let _recur107413_ ((_rest107415_ _hd107411_))
          (let* ((_$e107417_ _rest107415_)
                 (_$E107419107437_
                  (lambda ()
                    (let ((_$E107420107434_
                           (lambda ()
                             (let* ((_$E107421107429_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e107417_))))
                                    (_tail107432_ _$e107417_))
                               (declare (not safe))
                               (__compile-head-id _tail107432_)))))
                      (if (let ((__tmp112320
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e107417_))))
                            (declare (not safe))
                            (equal? __tmp112320 '()))
                          '()
                          (let () (declare (not safe)) (_$E107420107434_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107417_))
                (let* ((_$tgt107422107440_
                        (let () (declare (not safe)) (__AST-e _$e107417_)))
                       (_$hd107423107443_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107422107440_)))
                       (_$tl107424107446_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107422107440_))))
                  (let* ((_hd107450_ _$hd107423107443_)
                         (_rest107452_ _$tl107424107446_))
                    (let ((__tmp112322
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd107450_)))
                          (__tmp112321
                           (let ()
                             (declare (not safe))
                             (_recur107413_ _rest107452_))))
                      (declare (not safe))
                      (cons __tmp112322 __tmp112321))))
                (let () (declare (not safe)) (_$E107419107437_)))))))
    (define __compile-lambda%
      (lambda (_stx107358_)
        (let* ((_$e107360_ _stx107358_)
               (_$E107362107374_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107360_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107360_))
              (let* ((_$tgt107363107377_
                      (let () (declare (not safe)) (__AST-e _$e107360_)))
                     (_$hd107364107380_
                      (let () (declare (not safe)) (##car _$tgt107363107377_)))
                     (_$tl107365107383_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107363107377_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107365107383_))
                    (let* ((_$tgt107366107387_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107365107383_)))
                           (_$hd107367107390_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107366107387_)))
                           (_$tl107368107393_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107366107387_))))
                      (let ((_hd107397_ _$hd107367107390_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107368107393_))
                            (let* ((_$tgt107369107399_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107368107393_)))
                                   (_$hd107370107402_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107369107399_)))
                                   (_$tl107371107405_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107369107399_))))
                              (let ((_body107409_ _$hd107370107402_))
                                (if (let ((__tmp112328
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107371107405_))))
                                      (declare (not safe))
                                      (equal? __tmp112328 '()))
                                    (let ((__tmp112323
                                           (let ((__tmp112324
                                                  (let ((__tmp112327
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd107397_)))
                                                        (__tmp112325
                                                         (let ((__tmp112326
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body107409_))))
                   (declare (not safe))
                   (cons __tmp112326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112327
                                                          __tmp112325))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp112324))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112323 _stx107358_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107362107374_)))))
                            (let () (declare (not safe)) (_$E107362107374_)))))
                    (let () (declare (not safe)) (_$E107362107374_))))
              (let () (declare (not safe)) (_$E107362107374_))))))
    (define __compile-case-lambda%
      (lambda (_stx107150_)
        (letrec ((_variadic?107152_
                  (lambda (_hd107323_)
                    (let* ((_$e107325_ _hd107323_)
                           (_$E107327107343_
                            (lambda ()
                              (let ((_$E107328107340_
                                     (lambda ()
                                       (let ((_$E107329107337_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e107325_)))))
                                         '#t))))
                                (if (let ((__tmp112329
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e107325_))))
                                      (declare (not safe))
                                      (equal? __tmp112329 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E107328107340_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107325_))
                          (let* ((_$tgt107330107346_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107325_)))
                                 (_$hd107331107349_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107330107346_)))
                                 (_$tl107332107352_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107330107346_))))
                            (let ((_rest107356_ _$tl107332107352_))
                              (declare (not safe))
                              (_variadic?107152_ _rest107356_)))
                          (let () (declare (not safe)) (_$E107327107343_))))))
                 (_arity107153_
                  (lambda (_hd107288_)
                    (let _lp107290_ ((_rest107292_ _hd107288_) (_k107293_ '0))
                      (let* ((_$e107295_ _rest107292_)
                             (_$E107297107308_
                              (lambda ()
                                (let ((_$E107298107305_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e107295_)))))
                                  _k107293_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e107295_))
                            (let* ((_$tgt107299107311_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e107295_)))
                                   (_$hd107300107314_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107299107311_)))
                                   (_$tl107301107317_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107299107311_))))
                              (let* ((_rest107321_ _$tl107301107317_)
                                     (__tmp112330
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k107293_ '1))))
                                (declare (not safe))
                                (_lp107290_ _rest107321_ __tmp112330)))
                            (let ()
                              (declare (not safe))
                              (_$E107297107308_)))))))
                 (_generate107154_
                  (lambda (_rest107215_ _args107216_ _len107217_)
                    (let* ((_$e107219_ _rest107215_)
                           (_$E107221107232_
                            (lambda ()
                              (let* ((_$E107222107229_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e107219_))))
                                     (__tmp112331
                                      (let ((__tmp112332
                                             (let ((__tmp112333
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args107216_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp112333))))
                                        (declare (not safe))
                                        (cons 'error __tmp112332))))
                                (declare (not safe))
                                (__SRC__% __tmp112331 _stx107150_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107219_))
                          (let* ((_$tgt107223107235_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107219_)))
                                 (_$hd107224107238_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107223107235_)))
                                 (_$tl107225107241_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107223107235_))))
                            (let* ((_clause107245_ _$hd107224107238_)
                                   (_rest107247_ _$tl107225107241_)
                                   (_$e107249_ _clause107245_)
                                   (_$E107251107260_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e107249_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e107249_))
                                  (let* ((_$tgt107252107263_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e107249_)))
                                         (_$hd107253107266_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt107252107263_)))
                                         (_$tl107254107269_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt107252107263_))))
                                    (let ((_hd107273_ _$hd107253107266_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl107254107269_))
                                          (let* ((_$tgt107255107275_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107254107269_)))
                                                 (_$hd107256107278_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107255107275_)))
                                                 (_$tl107257107281_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107255107275_))))
                                            (if (let ((__tmp112348
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107257107281_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112348 '()))
                                                (let ((_clen107285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity107153_
                                                          _hd107273_)))
                                                      (_cmp107286_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?107152_
                                                              _hd107273_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp112334
                                                         (let ((__tmp112335
                                                                (let ((__tmp112345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112346
                                      (let ((__tmp112347
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen107285_ '()))))
                                        (declare (not safe))
                                        (cons _len107217_ __tmp112347))))
                                 (declare (not safe))
                                 (cons _cmp107286_ __tmp112346)))
                              (__tmp112336
                               (let ((__tmp112339
                                      (let ((__tmp112340
                                             (let ((__tmp112341
                                                    (let ((__tmp112343
                                                           (let ((__tmp112344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause107245_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp112344)))
                  (__tmp112342
                   (let () (declare (not safe)) (cons _args107216_ '()))))
              (declare (not safe))
              (cons __tmp112343 __tmp112342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp112341))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112340 _stx107150_)))
                                     (__tmp112337
                                      (let ((__tmp112338
                                             (let ()
                                               (declare (not safe))
                                               (_generate107154_
                                                _rest107247_
                                                _args107216_
                                                _len107217_))))
                                        (declare (not safe))
                                        (cons __tmp112338 '()))))
                                 (declare (not safe))
                                 (cons __tmp112339 __tmp112337))))
                          (declare (not safe))
                          (cons __tmp112345 __tmp112336))))
                   (declare (not safe))
                   (cons 'if __tmp112335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp112334
                                                     _stx107150_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107251107260_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107251107260_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E107251107260_)))))
                          (let () (declare (not safe)) (_$E107221107232_)))))))
          (let* ((_$e107156_ _stx107150_)
                 (_$E107158107190_
                  (lambda ()
                    (let ((_$E107159107172_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e107156_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107156_))
                          (let* ((_$tgt107160107175_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107156_)))
                                 (_$hd107161107178_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107160107175_)))
                                 (_$tl107162107181_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107160107175_))))
                            (let ((_clauses107185_ _$tl107162107181_))
                              (let ((_args107187_
                                     (let ((__tmp112349 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112349 _stx107150_)))
                                    (_len107188_
                                     (let ((__tmp112350 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112350 _stx107150_))))
                                (let ((__tmp112351
                                       (let ((__tmp112352
                                              (let ((__tmp112353
                                                     (let ((__tmp112354
                                                            (let ((__tmp112355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112356
                                  (let ((__tmp112359
                                         (let ((__tmp112360
                                                (let ((__tmp112361
                                                       (let ((__tmp112362
                                                              (let ((__tmp112363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112364
                                    (let ()
                                      (declare (not safe))
                                      (cons _args107187_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp112364))))
                        (declare (not safe))
                        (__SRC__% __tmp112363 _stx107150_))))
                 (declare (not safe))
                 (cons __tmp112362 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len107188_
                                                        __tmp112361))))
                                           (declare (not safe))
                                           (cons __tmp112360 '())))
                                        (__tmp112357
                                         (let ((__tmp112358
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate107154_
                                                   _clauses107185_
                                                   _args107187_
                                                   _len107188_))))
                                           (declare (not safe))
                                           (cons __tmp112358 '()))))
                                    (declare (not safe))
                                    (cons __tmp112359 __tmp112357))))
                             (declare (not safe))
                             (cons 'let __tmp112356))))
                      (declare (not safe))
                      (__SRC__% __tmp112355 _stx107150_))))
               (declare (not safe))
               (cons __tmp112354 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args107187_
                                                      __tmp112353))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp112352))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112351 _stx107150_)))))
                          (let () (declare (not safe)) (_$E107159107172_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107156_))
                (let* ((_$tgt107163107193_
                        (let () (declare (not safe)) (__AST-e _$e107156_)))
                       (_$hd107164107196_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107163107193_)))
                       (_$tl107165107199_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107163107193_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl107165107199_))
                      (let* ((_$tgt107166107203_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl107165107199_)))
                             (_$hd107167107206_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt107166107203_)))
                             (_$tl107168107209_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt107166107203_))))
                        (let ((_clause107213_ _$hd107167107206_))
                          (if (let ((__tmp112366
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl107168107209_))))
                                (declare (not safe))
                                (equal? __tmp112366 '()))
                              (let ((__tmp112365
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause107213_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp112365))
                              (let ()
                                (declare (not safe))
                                (_$E107158107190_)))))
                      (let () (declare (not safe)) (_$E107158107190_))))
                (let () (declare (not safe)) (_$E107158107190_)))))))
    (define __compile-let-form
      (lambda (_stx106919_ _compile-simple106920_ _compile-values106921_)
        (letrec ((_simple-bind?106923_
                  (lambda (_hd107108_)
                    (let* ((_hd107109107119_ _hd107108_)
                           (_else107112107127_ (lambda () '#f)))
                      (let ((_K107115107140_ (lambda (_id107138_) '#t))
                            (_K107114107132_ (lambda () '#t)))
                        (let ((_try-match107111107135_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd107109107119_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K107114107132_))
                                     (let ()
                                       (declare (not safe))
                                       (_else107112107127_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd107109107119_))
                              (let ((_tl107117107145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd107109107119_)))
                                    (_hd107116107143_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd107109107119_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl107117107145_))
                                    (let ((_id107148_ _hd107116107143_))
                                      (declare (not safe))
                                      (_K107115107140_ _id107148_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match107111107135_))))
                              (let ()
                                (declare (not safe))
                                (_try-match107111107135_))))))))
                 (_car-e106924_
                  (lambda (_hd107106_)
                    (if (let () (declare (not safe)) (pair? _hd107106_))
                        (car _hd107106_)
                        _hd107106_))))
          (let* ((_$e106926_ _stx106919_)
                 (_$E106928107071_
                  (lambda ()
                    (let ((_$E106929106951_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e106926_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e106926_))
                          (let* ((_$tgt106930106954_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e106926_)))
                                 (_$hd106931106957_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt106930106954_)))
                                 (_$tl106932106960_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt106930106954_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106932106960_))
                                (let* ((_$tgt106933106964_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106932106960_)))
                                       (_$hd106934106967_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106933106964_)))
                                       (_$tl106935106970_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106933106964_))))
                                  (let ((_hd106974_ _$hd106934106967_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl106935106970_))
                                        (let* ((_$tgt106936106976_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl106935106970_)))
                                               (_$hd106937106979_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt106936106976_)))
                                               (_$tl106938106982_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt106936106976_))))
                                          (let ((_body106986_
                                                 _$hd106937106979_))
                                            (if (let ((__tmp112369
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl106938106982_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112369 '()))
                                                (let* ((_hd-ids107026_
                                                        (map (lambda (_bind106988_)
                                                               (let* ((_$e106990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind106988_)
                              (_$E106992107001_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e106990_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e106990_))
                             (let* ((_$tgt106993107004_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e106990_)))
                                    (_$hd106994107007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt106993107004_)))
                                    (_$tl106995107010_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt106993107004_))))
                               (let ((_ids107014_ _$hd106994107007_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl106995107010_))
                                     (let* ((_$tgt106996107016_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl106995107010_)))
                                            (_$hd106997107019_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt106996107016_)))
                                            (_$tl106998107022_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt106996107016_))))
                                       (if (let ((__tmp112367
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl106998107022_))))
                                             (declare (not safe))
                                             (equal? __tmp112367 '()))
                                           _ids107014_
                                           (let ()
                                             (declare (not safe))
                                             (_$E106992107001_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E106992107001_)))))
                             (let ()
                               (declare (not safe))
                               (_$E106992107001_)))))
                     _hd106974_))
               (_exprs107066_
                (map (lambda (_bind107028_)
                       (let* ((_$e107030_ _bind107028_)
                              (_$E107032107041_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e107030_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e107030_))
                             (let* ((_$tgt107033107044_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e107030_)))
                                    (_$hd107034107047_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt107033107044_)))
                                    (_$tl107035107050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt107033107044_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl107035107050_))
                                   (let* ((_$tgt107036107054_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107035107050_)))
                                          (_$hd107037107057_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt107036107054_)))
                                          (_$tl107038107060_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt107036107054_))))
                                     (let ((_expr107064_ _$hd107037107057_))
                                       (if (let ((__tmp112368
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107038107060_))))
                                             (declare (not safe))
                                             (equal? __tmp112368 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr107064_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E107032107041_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E107032107041_))))
                             (let ()
                               (declare (not safe))
                               (_$E107032107041_)))))
                     _hd106974_))
               (_body107068_
                (let () (declare (not safe)) (__compile _body106986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?106923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids107026_))
              (_compile-simple106920_
               (map _car-e106924_ _hd-ids107026_)
               _exprs107066_
               _body107068_)
              (_compile-values106921_
               _hd-ids107026_
               _exprs107066_
               _body107068_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E106929106951_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106929106951_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106929106951_))))
                          (let () (declare (not safe)) (_$E106929106951_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e106926_))
                (let* ((_$tgt106939107074_
                        (let () (declare (not safe)) (__AST-e _$e106926_)))
                       (_$hd106940107077_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt106939107074_)))
                       (_$tl106941107080_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt106939107074_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl106941107080_))
                      (let* ((_$tgt106942107084_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl106941107080_)))
                             (_$hd106943107087_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt106942107084_)))
                             (_$tl106944107090_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt106942107084_))))
                        (if (let ((__tmp112371
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd106943107087_))))
                              (declare (not safe))
                              (equal? __tmp112371 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106944107090_))
                                (let* ((_$tgt106945107094_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106944107090_)))
                                       (_$hd106946107097_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106945107094_)))
                                       (_$tl106947107100_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106945107094_))))
                                  (let ((_body107104_ _$hd106946107097_))
                                    (if (let ((__tmp112370
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl106947107100_))))
                                          (declare (not safe))
                                          (equal? __tmp112370 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body107104_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106928107071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106928107071_)))
                            (let () (declare (not safe)) (_$E106928107071_))))
                      (let () (declare (not safe)) (_$E106928107071_))))
                (let () (declare (not safe)) (_$E106928107071_)))))))
    (define __compile-let-values%
      (lambda (_stx106734_)
        (letrec ((_compile-simple106736_
                  (lambda (_hd-ids106915_ _exprs106916_ _body106917_)
                    (let ((__tmp112372
                           (let ((__tmp112373
                                  (let ((__tmp112375
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106915_)
                                              _exprs106916_))
                                        (__tmp112374
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106917_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112375 __tmp112374))))
                             (declare (not safe))
                             (cons 'let __tmp112373))))
                      (declare (not safe))
                      (__SRC__% __tmp112372 _stx106734_))))
                 (_compile-values106737_
                  (lambda (_hd-ids106833_ _exprs106834_ _body106835_)
                    (let _lp106837_ ((_rest106839_ _hd-ids106833_)
                                     (_exprs106840_ _exprs106834_)
                                     (_bind106841_ '())
                                     (_post106842_ '()))
                      (let* ((_rest106843106857_ _rest106839_)
                             (_else106846106865_
                              (lambda ()
                                (let ((__tmp112376
                                       (let ((__tmp112377
                                              (let ((__tmp112380
                                                     (reverse _bind106841_))
                                                    (__tmp112378
                                                     (let ((__tmp112379
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post106738_
                                                               _post106842_
                                                               _body106835_))))
                                                       (declare (not safe))
                                                       (cons __tmp112379
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp112380
                                                      __tmp112378))))
                                         (declare (not safe))
                                         (cons 'let __tmp112377))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112376 _stx106734_)))))
                        (let ((_K106851106898_
                               (lambda (_rest106895_ _id106896_)
                                 (let ((__tmp112386 (cdr _exprs106840_))
                                       (__tmp112381
                                        (let ((__tmp112382
                                               (let ((__tmp112385
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106896_)))
                                                     (__tmp112383
                                                      (let ((__tmp112384
                                                             (car _exprs106840_)))
                                                        (declare (not safe))
                                                        (cons __tmp112384
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112385
                                                       __tmp112383))))
                                          (declare (not safe))
                                          (cons __tmp112382 _bind106841_))))
                                   (declare (not safe))
                                   (_lp106837_
                                    _rest106895_
                                    __tmp112386
                                    __tmp112381
                                    _post106842_))))
                              (_K106848106880_
                               (lambda (_rest106869_ _hd106870_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106870_))
                                     (let ((__tmp112407 (cdr _exprs106840_))
                                           (__tmp112400
                                            (let ((__tmp112401
                                                   (let ((__tmp112406
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106870_)))
                                                         (__tmp112402
                                                          (let ((__tmp112403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112404
                                (let ((__tmp112405 (car _exprs106840_)))
                                  (declare (not safe))
                                  (cons __tmp112405 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112404))))
                    (declare (not safe))
                    (cons __tmp112403 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112406
                                                           __tmp112402))))
                                              (declare (not safe))
                                              (cons __tmp112401
                                                    _bind106841_))))
                                       (declare (not safe))
                                       (_lp106837_
                                        _rest106869_
                                        __tmp112407
                                        __tmp112400
                                        _post106842_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106870_))
                                         (let* ((_len106872_
                                                 (length _hd106870_))
                                                (_tmp106874_
                                                 (let ((__tmp112387 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112387))))
                                           (let ((__tmp112399
                                                  (cdr _exprs106840_))
                                                 (__tmp112395
                                                  (let ((__tmp112396
                                                         (let ((__tmp112397
                                                                (let ((__tmp112398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106840_)))
                          (declare (not safe))
                          (cons __tmp112398 '()))))
                   (declare (not safe))
                   (cons _tmp106874_ __tmp112397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112396
                                                          _bind106841_)))
                                                 (__tmp112388
                                                  (let ((__tmp112389
                                                         (let ((__tmp112390
                                                                (let ((__tmp112391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112393
                                      (lambda (_id106877_ _k106878_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106877_))
                                            (let ((__tmp112394
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106877_))))
                                              (declare (not safe))
                                              (cons __tmp112394 _k106878_))
                                            '#f)))
                                     (__tmp112392
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106872_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112393
                                  _hd106870_
                                  __tmp112392))))
                          (declare (not safe))
                          (cons _len106872_ __tmp112391))))
                   (declare (not safe))
                   (cons _tmp106874_ __tmp112390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112389
                                                          _post106842_))))
                                             (declare (not safe))
                                             (_lp106837_
                                              _rest106869_
                                              __tmp112399
                                              __tmp112395
                                              __tmp112388)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106734_
                                            _hd106870_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106843106857_))
                              (let ((_tl106853106903_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106843106857_)))
                                    (_hd106852106901_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106843106857_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106852106901_))
                                    (let ((_tl106855106908_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106852106901_)))
                                          (_hd106854106906_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106852106901_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106855106908_))
                                          (let ((_id106911_ _hd106854106906_)
                                                (_rest106913_
                                                 _tl106853106903_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106851106898_
                                               _rest106913_
                                               _id106911_)))
                                          (let ((_hd106888_ _hd106852106901_)
                                                (_rest106890_
                                                 _tl106853106903_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106848106880_
                                               _rest106890_
                                               _hd106888_)))))
                                    (let ((_hd106888_ _hd106852106901_)
                                          (_rest106890_ _tl106853106903_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106848106880_
                                         _rest106890_
                                         _hd106888_)))))
                              (let ()
                                (declare (not safe))
                                (_else106846106865_))))))))
                 (_compile-post106738_
                  (lambda (_post106740_ _body106741_)
                    (let _lp106743_ ((_rest106745_ _post106740_)
                                     (_check106746_ '())
                                     (_bind106747_ '()))
                      (let* ((_rest106748106760_ _rest106745_)
                             (_else106750106768_
                              (lambda ()
                                (let ((__tmp112408
                                       (let ((__tmp112409
                                              (let ((__tmp112410
                                                     (let ((__tmp112411
                                                            (let ((__tmp112412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112413
                                  (let ((__tmp112414
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106741_ '()))))
                                    (declare (not safe))
                                    (cons _bind106747_ __tmp112414))))
                             (declare (not safe))
                             (cons 'let __tmp112413))))
                      (declare (not safe))
                      (__SRC__% __tmp112412 _stx106734_))))
               (declare (not safe))
               (cons __tmp112411 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112410
                                                        _check106746_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112409))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112408 _stx106734_))))
                             (_K106752106807_
                              (lambda (_rest106771_
                                       _init106772_
                                       _len106773_
                                       _tmp106774_)
                                (let ((__tmp112422
                                       (let ((__tmp112423
                                              (let ((__tmp112424
                                                     (let ((__tmp112425
                                                            (let ((__tmp112426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106773_ '()))))
                      (declare (not safe))
                      (cons _tmp106774_ __tmp112426))))
               (declare (not safe))
               (cons '__check-values __tmp112425))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112424
                                                 _stx106734_))))
                                         (declare (not safe))
                                         (cons __tmp112423 _check106746_)))
                                      (__tmp112415
                                       (let ((__tmp112416
                                              (lambda (_hd106776_ _r106777_)
                                                (let* ((_hd106778106785_
                                                        _hd106776_)
                                                       (_E106780106789_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106778106785_)))
               (_K106781106795_
                (lambda (_k106792_ _id106793_)
                  (let ((__tmp112417
                         (let ((__tmp112418
                                (let ((__tmp112419
                                       (let ((__tmp112420
                                              (let ((__tmp112421
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k106792_ '()))))
                                                (declare (not safe))
                                                (cons _tmp106774_
                                                      __tmp112421))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp112420))))
                                  (declare (not safe))
                                  (cons __tmp112419 '()))))
                           (declare (not safe))
                           (cons _id106793_ __tmp112418))))
                    (declare (not safe))
                    (cons __tmp112417 _r106777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106778106785_))
                                                      (let ((_hd106782106798_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106778106785_)))
                    (_tl106783106800_
                     (let () (declare (not safe)) (##cdr _hd106778106785_))))
                (let* ((_id106803_ _hd106782106798_)
                       (_k106805_ _tl106783106800_))
                  (declare (not safe))
                  (_K106781106795_ _k106805_ _id106803_)))
              (let () (declare (not safe)) (_E106780106789_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112416
                                                 _bind106747_
                                                 _init106772_))))
                                  (declare (not safe))
                                  (_lp106743_
                                   _rest106771_
                                   __tmp112422
                                   __tmp112415)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106748106760_))
                            (let ((_hd106753106810_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106748106760_)))
                                  (_tl106754106812_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106748106760_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106753106810_))
                                  (let ((_hd106755106815_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106753106810_)))
                                        (_tl106756106817_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106753106810_))))
                                    (let ((_tmp106820_ _hd106755106815_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106756106817_))
                                          (let ((_hd106757106822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106756106817_)))
                                                (_tl106758106824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106756106817_))))
                                            (let* ((_len106827_
                                                    _hd106757106822_)
                                                   (_init106829_
                                                    _tl106758106824_)
                                                   (_rest106831_
                                                    _tl106754106812_))
                                              (declare (not safe))
                                              (_K106752106807_
                                               _rest106831_
                                               _init106829_
                                               _len106827_
                                               _tmp106820_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106750106768_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106750106768_))))
                            (let ()
                              (declare (not safe))
                              (_else106750106768_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106734_
             _compile-simple106736_
             _compile-values106737_)))))
    (define __compile-letrec-values%
      (lambda (_stx106534_)
        (letrec ((_compile-simple106536_
                  (lambda (_hd-ids106730_ _exprs106731_ _body106732_)
                    (let ((__tmp112427
                           (let ((__tmp112428
                                  (let ((__tmp112430
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106730_)
                                              _exprs106731_))
                                        (__tmp112429
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106732_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112430 __tmp112429))))
                             (declare (not safe))
                             (cons 'letrec __tmp112428))))
                      (declare (not safe))
                      (__SRC__% __tmp112427 _stx106534_))))
                 (_compile-values106537_
                  (lambda (_hd-ids106644_ _exprs106645_ _body106646_)
                    (let _lp106648_ ((_rest106650_ _hd-ids106644_)
                                     (_exprs106651_ _exprs106645_)
                                     (_pre106652_ '())
                                     (_bind106653_ '())
                                     (_post106654_ '()))
                      (let* ((_rest106655106669_ _rest106650_)
                             (_else106658106677_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner106538_
                                   _pre106652_
                                   _bind106653_
                                   _post106654_
                                   _body106646_)))))
                        (let ((_K106663106713_
                               (lambda (_rest106710_ _id106711_)
                                 (let ((__tmp112436 (cdr _exprs106651_))
                                       (__tmp112431
                                        (let ((__tmp112432
                                               (let ((__tmp112435
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106711_)))
                                                     (__tmp112433
                                                      (let ((__tmp112434
                                                             (car _exprs106651_)))
                                                        (declare (not safe))
                                                        (cons __tmp112434
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112435
                                                       __tmp112433))))
                                          (declare (not safe))
                                          (cons __tmp112432 _bind106653_))))
                                   (declare (not safe))
                                   (_lp106648_
                                    _rest106710_
                                    __tmp112436
                                    _pre106652_
                                    __tmp112431
                                    _post106654_))))
                              (_K106660106695_
                               (lambda (_rest106681_ _hd106682_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106682_))
                                     (let ((__tmp112464 (cdr _exprs106651_))
                                           (__tmp112457
                                            (let ((__tmp112458
                                                   (let ((__tmp112463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106682_)))
                                                         (__tmp112459
                                                          (let ((__tmp112460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112461
                                (let ((__tmp112462 (car _exprs106651_)))
                                  (declare (not safe))
                                  (cons __tmp112462 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112461))))
                    (declare (not safe))
                    (cons __tmp112460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112463
                                                           __tmp112459))))
                                              (declare (not safe))
                                              (cons __tmp112458
                                                    _bind106653_))))
                                       (declare (not safe))
                                       (_lp106648_
                                        _rest106681_
                                        __tmp112464
                                        _pre106652_
                                        __tmp112457
                                        _post106654_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106682_))
                                         (let* ((_len106684_
                                                 (length _hd106682_))
                                                (_tmp106686_
                                                 (let ((__tmp112437 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112437))))
                                           (let ((__tmp112456
                                                  (cdr _exprs106651_))
                                                 (__tmp112449
                                                  (let ((__tmp112450
                                                         (lambda (_id106689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r106690_)
                   (if (let () (declare (not safe)) (__AST-e _id106689_))
                       (let ((__tmp112451
                              (let ((__tmp112455
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id106689_)))
                                    (__tmp112452
                                     (let ((__tmp112453
                                            (let ((__tmp112454
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp112454))))
                                       (declare (not safe))
                                       (cons __tmp112453 '()))))
                                (declare (not safe))
                                (cons __tmp112455 __tmp112452))))
                         (declare (not safe))
                         (cons __tmp112451 _r106690_))
                       _r106690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp112450
                                                            _pre106652_
                                                            _hd106682_)))
                                                 (__tmp112445
                                                  (let ((__tmp112446
                                                         (let ((__tmp112447
                                                                (let ((__tmp112448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106651_)))
                          (declare (not safe))
                          (cons __tmp112448 '()))))
                   (declare (not safe))
                   (cons _tmp106686_ __tmp112447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112446
                                                          _bind106653_)))
                                                 (__tmp112438
                                                  (let ((__tmp112439
                                                         (let ((__tmp112440
                                                                (let ((__tmp112441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112443
                                      (lambda (_id106692_ _k106693_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106692_))
                                            (let ((__tmp112444
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106692_))))
                                              (declare (not safe))
                                              (cons __tmp112444 _k106693_))
                                            '#f)))
                                     (__tmp112442
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106684_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112443
                                  _hd106682_
                                  __tmp112442))))
                          (declare (not safe))
                          (cons _len106684_ __tmp112441))))
                   (declare (not safe))
                   (cons _tmp106686_ __tmp112440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112439
                                                          _post106654_))))
                                             (declare (not safe))
                                             (_lp106648_
                                              _rest106681_
                                              __tmp112456
                                              __tmp112449
                                              __tmp112445
                                              __tmp112438)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106534_
                                            _hd106682_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106655106669_))
                              (let ((_tl106665106718_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106655106669_)))
                                    (_hd106664106716_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106655106669_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106664106716_))
                                    (let ((_tl106667106723_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106664106716_)))
                                          (_hd106666106721_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106664106716_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106667106723_))
                                          (let ((_id106726_ _hd106666106721_)
                                                (_rest106728_
                                                 _tl106665106718_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106663106713_
                                               _rest106728_
                                               _id106726_)))
                                          (let ((_hd106703_ _hd106664106716_)
                                                (_rest106705_
                                                 _tl106665106718_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106660106695_
                                               _rest106705_
                                               _hd106703_)))))
                                    (let ((_hd106703_ _hd106664106716_)
                                          (_rest106705_ _tl106665106718_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106660106695_
                                         _rest106705_
                                         _hd106703_)))))
                              (let ()
                                (declare (not safe))
                                (_else106658106677_))))))))
                 (_compile-inner106538_
                  (lambda (_pre106639_ _bind106640_ _post106641_ _body106642_)
                    (if (let () (declare (not safe)) (null? _pre106639_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind106539_
                           _bind106640_
                           _post106641_
                           _body106642_))
                        (let ((__tmp112465
                               (let ((__tmp112466
                                      (let ((__tmp112469 (reverse _pre106639_))
                                            (__tmp112467
                                             (let ((__tmp112468
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind106539_
                                                       _bind106640_
                                                       _post106641_
                                                       _body106642_))))
                                               (declare (not safe))
                                               (cons __tmp112468 '()))))
                                        (declare (not safe))
                                        (cons __tmp112469 __tmp112467))))
                                 (declare (not safe))
                                 (cons 'let __tmp112466))))
                          (declare (not safe))
                          (__SRC__% __tmp112465 _stx106534_)))))
                 (_compile-bind106539_
                  (lambda (_bind106635_ _post106636_ _body106637_)
                    (let ((__tmp112470
                           (let ((__tmp112471
                                  (let ((__tmp112474 (reverse _bind106635_))
                                        (__tmp112472
                                         (let ((__tmp112473
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106540_
                                                   _post106636_
                                                   _body106637_))))
                                           (declare (not safe))
                                           (cons __tmp112473 '()))))
                                    (declare (not safe))
                                    (cons __tmp112474 __tmp112472))))
                             (declare (not safe))
                             (cons 'letrec __tmp112471))))
                      (declare (not safe))
                      (__SRC__% __tmp112470 _stx106534_))))
                 (_compile-post106540_
                  (lambda (_post106542_ _body106543_)
                    (let _lp106545_ ((_rest106547_ _post106542_)
                                     (_check106548_ '())
                                     (_bind106549_ '()))
                      (let* ((_rest106550106562_ _rest106547_)
                             (_else106552106570_
                              (lambda ()
                                (let ((__tmp112475
                                       (let ((__tmp112476
                                              (let ((__tmp112477
                                                     (let ((__tmp112478
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body106543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp112478 _bind106549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112477
                                                        _check106548_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112476))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112475 _stx106534_))))
                             (_K106554106609_
                              (lambda (_rest106573_
                                       _init106574_
                                       _len106575_
                                       _tmp106576_)
                                (let ((__tmp112487
                                       (let ((__tmp112488
                                              (let ((__tmp112489
                                                     (let ((__tmp112490
                                                            (let ((__tmp112491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106575_ '()))))
                      (declare (not safe))
                      (cons _tmp106576_ __tmp112491))))
               (declare (not safe))
               (cons '__check-values __tmp112490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112489
                                                 _stx106534_))))
                                         (declare (not safe))
                                         (cons __tmp112488 _check106548_)))
                                      (__tmp112479
                                       (let ((__tmp112480
                                              (lambda (_hd106578_ _r106579_)
                                                (let* ((_hd106580106587_
                                                        _hd106578_)
                                                       (_E106582106591_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106580106587_)))
               (_K106583106597_
                (lambda (_k106594_ _id106595_)
                  (let ((__tmp112481
                         (let ((__tmp112482
                                (let ((__tmp112483
                                       (let ((__tmp112484
                                              (let ((__tmp112485
                                                     (let ((__tmp112486
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k106594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp106576_ __tmp112486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp112485))))
                                         (declare (not safe))
                                         (cons __tmp112484 '()))))
                                  (declare (not safe))
                                  (cons _id106595_ __tmp112483))))
                           (declare (not safe))
                           (cons 'set! __tmp112482))))
                    (declare (not safe))
                    (cons __tmp112481 _r106579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106580106587_))
                                                      (let ((_hd106584106600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106580106587_)))
                    (_tl106585106602_
                     (let () (declare (not safe)) (##cdr _hd106580106587_))))
                (let* ((_id106605_ _hd106584106600_)
                       (_k106607_ _tl106585106602_))
                  (declare (not safe))
                  (_K106583106597_ _k106607_ _id106605_)))
              (let () (declare (not safe)) (_E106582106591_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112480
                                                 _bind106549_
                                                 _init106574_))))
                                  (declare (not safe))
                                  (_lp106545_
                                   _rest106573_
                                   __tmp112487
                                   __tmp112479)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106550106562_))
                            (let ((_hd106555106612_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106550106562_)))
                                  (_tl106556106614_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106550106562_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106555106612_))
                                  (let ((_hd106557106617_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106555106612_)))
                                        (_tl106558106619_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106555106612_))))
                                    (let ((_tmp106622_ _hd106557106617_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106558106619_))
                                          (let ((_hd106559106624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106558106619_)))
                                                (_tl106560106626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106558106619_))))
                                            (let* ((_len106629_
                                                    _hd106559106624_)
                                                   (_init106631_
                                                    _tl106560106626_)
                                                   (_rest106633_
                                                    _tl106556106614_))
                                              (declare (not safe))
                                              (_K106554106609_
                                               _rest106633_
                                               _init106631_
                                               _len106629_
                                               _tmp106622_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106552106570_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106552106570_))))
                            (let ()
                              (declare (not safe))
                              (_else106552106570_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106534_
             _compile-simple106536_
             _compile-values106537_)))))
    (define __compile-letrec*-values%
      (lambda (_stx106289_)
        (letrec ((_compile-simple106291_
                  (lambda (_hd-ids106530_ _exprs106531_ _body106532_)
                    (let ((__tmp112492
                           (let ((__tmp112493
                                  (let ((__tmp112495
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106530_)
                                              _exprs106531_))
                                        (__tmp112494
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106532_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112495 __tmp112494))))
                             (declare (not safe))
                             (cons 'letrec* __tmp112493))))
                      (declare (not safe))
                      (__SRC__% __tmp112492 _stx106289_))))
                 (_compile-values106292_
                  (lambda (_hd-ids106441_ _exprs106442_ _body106443_)
                    (let _lp106445_ ((_rest106447_ _hd-ids106441_)
                                     (_exprs106448_ _exprs106442_)
                                     (_bind106449_ '())
                                     (_post106450_ '()))
                      (let* ((_rest106451106465_ _rest106447_)
                             (_else106454106473_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind106293_
                                   _bind106449_
                                   _post106450_
                                   _body106443_)))))
                        (let ((_K106459106513_
                               (lambda (_rest106508_ _hd106509_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106509_))
                                     (let ((_id106511_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106509_))))
                                       (let ((__tmp112510 (cdr _exprs106448_))
                                             (__tmp112505
                                              (let ((__tmp112506
                                                     (let ((__tmp112507
                                                            (let ((__tmp112508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112509
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112509))))
                      (declare (not safe))
                      (cons __tmp112508 '()))))
               (declare (not safe))
               (cons _id106511_ __tmp112507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112506
                                                      _bind106449_)))
                                             (__tmp112501
                                              (let ((__tmp112502
                                                     (let ((__tmp112503
                                                            (let ((__tmp112504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs106448_)))
                      (declare (not safe))
                      (cons __tmp112504 '()))))
               (declare (not safe))
               (cons _id106511_ __tmp112503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112502
                                                      _post106450_))))
                                         (declare (not safe))
                                         (_lp106445_
                                          _rest106508_
                                          __tmp112510
                                          __tmp112505
                                          __tmp112501)))
                                     (let ((__tmp112500 (cdr _exprs106448_))
                                           (__tmp112496
                                            (let ((__tmp112497
                                                   (let ((__tmp112498
                                                          (let ((__tmp112499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs106448_)))
                    (declare (not safe))
                    (cons __tmp112499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp112498))))
                                              (declare (not safe))
                                              (cons __tmp112497
                                                    _post106450_))))
                                       (declare (not safe))
                                       (_lp106445_
                                        _rest106508_
                                        __tmp112500
                                        _bind106449_
                                        __tmp112496)))))
                              (_K106456106493_
                               (lambda (_rest106477_ _hd106478_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106478_))
                                     (let ((_id106480_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106478_))))
                                       (let ((__tmp112546 (cdr _exprs106448_))
                                             (__tmp112541
                                              (let ((__tmp112542
                                                     (let ((__tmp112543
                                                            (let ((__tmp112544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112545
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112545))))
                      (declare (not safe))
                      (cons __tmp112544 '()))))
               (declare (not safe))
               (cons _id106480_ __tmp112543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112542
                                                      _bind106449_)))
                                             (__tmp112535
                                              (let ((__tmp112536
                                                     (let ((__tmp112537
                                                            (let ((__tmp112538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112539
                                  (let ((__tmp112540 (car _exprs106448_)))
                                    (declare (not safe))
                                    (cons __tmp112540 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp112539))))
                      (declare (not safe))
                      (cons __tmp112538 '()))))
               (declare (not safe))
               (cons _id106480_ __tmp112537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112536
                                                      _post106450_))))
                                         (declare (not safe))
                                         (_lp106445_
                                          _rest106477_
                                          __tmp112546
                                          __tmp112541
                                          __tmp112535)))
                                     (if (let ((__tmp112534
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd106478_))))
                                           (declare (not safe))
                                           (not __tmp112534))
                                         (let ((__tmp112533
                                                (cdr _exprs106448_))
                                               (__tmp112529
                                                (let ((__tmp112530
                                                       (let ((__tmp112531
                                                              (let ((__tmp112532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs106448_)))
                        (declare (not safe))
                        (cons __tmp112532 '()))))
                 (declare (not safe))
                 (cons '#f __tmp112531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112530
                                                        _post106450_))))
                                           (declare (not safe))
                                           (_lp106445_
                                            _rest106477_
                                            __tmp112533
                                            _bind106449_
                                            __tmp112529))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd106478_))
                                             (let* ((_len106482_
                                                     (length _hd106478_))
                                                    (_tmp106484_
                                                     (let ((__tmp112511
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp112511))))
                                               (let ((__tmp112528
                                                      (cdr _exprs106448_))
                                                     (__tmp112521
                                                      (let ((__tmp112522
                                                             (lambda (_id106487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r106488_)
                       (if (let () (declare (not safe)) (__AST-e _id106487_))
                           (let ((__tmp112523
                                  (let ((__tmp112527
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id106487_)))
                                        (__tmp112524
                                         (let ((__tmp112525
                                                (let ((__tmp112526
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp112526))))
                                           (declare (not safe))
                                           (cons __tmp112525 '()))))
                                    (declare (not safe))
                                    (cons __tmp112527 __tmp112524))))
                             (declare (not safe))
                             (cons __tmp112523 _r106488_))
                           _r106488_))))
                (declare (not safe))
                (foldl1 __tmp112522 _bind106449_ _hd106478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112512
                                                      (let ((__tmp112513
                                                             (let ((__tmp112514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112520 (car _exprs106448_))
                                  (__tmp112515
                                   (let ((__tmp112516
                                          (let ((__tmp112518
                                                 (lambda (_id106490_ _k106491_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id106490_))
                                                       (let ((__tmp112519
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id106490_))))
                 (declare (not safe))
                 (cons __tmp112519 _k106491_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp112517
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len106482_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp112518
                                             _hd106478_
                                             __tmp112517))))
                                     (declare (not safe))
                                     (cons _len106482_ __tmp112516))))
                              (declare (not safe))
                              (cons __tmp112520 __tmp112515))))
                       (declare (not safe))
                       (cons _tmp106484_ __tmp112514))))
                (declare (not safe))
                (cons __tmp112513 _post106450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp106445_
                                                  _rest106477_
                                                  __tmp112528
                                                  __tmp112521
                                                  __tmp112512)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx106289_
                                                _hd106478_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106451106465_))
                              (let ((_tl106461106518_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106451106465_)))
                                    (_hd106460106516_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106451106465_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106460106516_))
                                    (let ((_tl106463106523_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106460106516_)))
                                          (_hd106462106521_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106460106516_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106463106523_))
                                          (let ((_hd106526_ _hd106462106521_)
                                                (_rest106528_
                                                 _tl106461106518_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106459106513_
                                               _rest106528_
                                               _hd106526_)))
                                          (let ((_hd106501_ _hd106460106516_)
                                                (_rest106503_
                                                 _tl106461106518_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106456106493_
                                               _rest106503_
                                               _hd106501_)))))
                                    (let ((_hd106501_ _hd106460106516_)
                                          (_rest106503_ _tl106461106518_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106456106493_
                                         _rest106503_
                                         _hd106501_)))))
                              (let ()
                                (declare (not safe))
                                (_else106454106473_))))))))
                 (_compile-bind106293_
                  (lambda (_bind106437_ _post106438_ _body106439_)
                    (let ((__tmp112547
                           (let ((__tmp112548
                                  (let ((__tmp112551 (reverse _bind106437_))
                                        (__tmp112549
                                         (let ((__tmp112550
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106294_
                                                   _post106438_
                                                   _body106439_))))
                                           (declare (not safe))
                                           (cons __tmp112550 '()))))
                                    (declare (not safe))
                                    (cons __tmp112551 __tmp112549))))
                             (declare (not safe))
                             (cons 'let __tmp112548))))
                      (declare (not safe))
                      (__SRC__% __tmp112547 _stx106289_))))
                 (_compile-post106294_
                  (lambda (_post106296_ _body106297_)
                    (let ((__tmp112552
                           (let ((__tmp112553
                                  (let ((__tmp112554
                                         (let ((__tmp112556
                                                (lambda (_hd106299_ _r106300_)
                                                  (let* ((_hd106301106324_
                                                          _hd106299_)
                                                         (_E106305106328_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd106301106324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K106318106422_
                                                           (lambda (_expr106420_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr106420_ _r106300_))))
                  (_K106313106400_
                   (lambda (_expr106397_ _id106398_)
                     (let ((__tmp112557
                            (let ((__tmp112558
                                   (let ((__tmp112559
                                          (let ((__tmp112560
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr106397_ '()))))
                                            (declare (not safe))
                                            (cons _id106398_ __tmp112560))))
                                     (declare (not safe))
                                     (cons 'set! __tmp112559))))
                              (declare (not safe))
                              (__SRC__% __tmp112558 _stx106289_))))
                       (declare (not safe))
                       (cons __tmp112557 _r106300_))))
                  (_K106306106367_
                   (lambda (_init106332_ _len106333_ _expr106334_ _tmp106335_)
                     (let ((__tmp112561
                            (let ((__tmp112562
                                   (let ((__tmp112563
                                          (let ((__tmp112577
                                                 (let ((__tmp112578
                                                        (let ((__tmp112579
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr106334_ '()))))
                  (declare (not safe))
                  (cons _tmp106335_ __tmp112579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112578 '())))
                                                (__tmp112564
                                                 (let ((__tmp112573
                                                        (let ((__tmp112574
                                                               (let ((__tmp112575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp112576
                                     (let ()
                                       (declare (not safe))
                                       (cons _len106333_ '()))))
                                (declare (not safe))
                                (cons _tmp106335_ __tmp112576))))
                         (declare (not safe))
                         (cons '__check-values __tmp112575))))
                  (declare (not safe))
                  (__SRC__% __tmp112574 _stx106289_)))
               (__tmp112565
                (let ((__tmp112566
                       (map (lambda (_hd106337_)
                              (let* ((_hd106338106345_ _hd106337_)
                                     (_E106340106349_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd106338106345_)))
                                     (_K106341106355_
                                      (lambda (_k106352_ _id106353_)
                                        (let ((__tmp112567
                                               (let ((__tmp112568
                                                      (let ((__tmp112569
                                                             (let ((__tmp112570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112571
                                   (let ((__tmp112572
                                          (let ()
                                            (declare (not safe))
                                            (cons _k106352_ '()))))
                                     (declare (not safe))
                                     (cons _tmp106335_ __tmp112572))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp112571))))
                       (declare (not safe))
                       (cons __tmp112570 '()))))
                (declare (not safe))
                (cons _id106353_ __tmp112569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp112568))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp112567
                                           _stx106289_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106338106345_))
                                    (let ((_hd106342106358_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106338106345_)))
                                          (_tl106343106360_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106338106345_))))
                                      (let* ((_id106363_ _hd106342106358_)
                                             (_k106365_ _tl106343106360_))
                                        (declare (not safe))
                                        (_K106341106355_
                                         _k106365_
                                         _id106363_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E106340106349_)))))
                            _init106332_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp112566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112573
                                                         __tmp112565))))
                                            (declare (not safe))
                                            (cons __tmp112577 __tmp112564))))
                                     (declare (not safe))
                                     (cons 'let __tmp112563))))
                              (declare (not safe))
                              (__SRC__% __tmp112562 _stx106289_))))
                       (declare (not safe))
                       (cons __tmp112561 _r106300_)))))
              (if (let () (declare (not safe)) (##pair? _hd106301106324_))
                  (let ((_tl106320106427_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd106301106324_)))
                        (_hd106319106425_
                         (let ()
                           (declare (not safe))
                           (##car _hd106301106324_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd106319106425_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106320106427_))
                            (let ((_tl106322106432_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106320106427_)))
                                  (_hd106321106430_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106320106427_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106322106432_))
                                  (let ((_expr106435_ _hd106321106430_))
                                    (declare (not safe))
                                    (_K106318106422_ _expr106435_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106322106432_))
                                      (let ((_tl106312106386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106322106432_)))
                                            (_hd106311106384_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106322106432_))))
                                        (let ((_tmp106375_ _hd106319106425_)
                                              (_expr106382_ _hd106321106430_)
                                              (_len106389_ _hd106311106384_)
                                              (_init106391_ _tl106312106386_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106306106367_
                                             _init106391_
                                             _len106389_
                                             _expr106382_
                                             _tmp106375_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106305106328_)))))
                            (let () (declare (not safe)) (_E106305106328_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106320106427_))
                            (let ((_tl106317106412_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106320106427_)))
                                  (_hd106316106410_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106320106427_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106317106412_))
                                  (let ((_id106408_ _hd106319106425_)
                                        (_expr106415_ _hd106316106410_))
                                    (let ()
                                      (declare (not safe))
                                      (_K106313106400_
                                       _expr106415_
                                       _id106408_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106317106412_))
                                      (let ((_tl106312106386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106317106412_)))
                                            (_hd106311106384_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106317106412_))))
                                        (let ((_tmp106375_ _hd106319106425_)
                                              (_expr106382_ _hd106316106410_)
                                              (_len106389_ _hd106311106384_)
                                              (_init106391_ _tl106312106386_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106306106367_
                                             _init106391_
                                             _len106389_
                                             _expr106382_
                                             _tmp106375_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106305106328_)))))
                            (let () (declare (not safe)) (_E106305106328_)))))
                  (let () (declare (not safe)) (_E106305106328_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp112555
                                                (list _body106297_)))
                                           (declare (not safe))
                                           (foldl1 __tmp112556
                                                   __tmp112555
                                                   _post106296_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp112554))))
                             (declare (not safe))
                             (cons 'begin __tmp112553))))
                      (declare (not safe))
                      (__SRC__% __tmp112552 _stx106289_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106289_
             _compile-simple106291_
             _compile-values106292_)))))
    (define __compile-call%
      (lambda (_stx106249_)
        (let* ((_$e106251_ _stx106249_)
               (_$E106253106262_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106251_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106251_))
              (let* ((_$tgt106254106265_
                      (let () (declare (not safe)) (__AST-e _$e106251_)))
                     (_$hd106255106268_
                      (let () (declare (not safe)) (##car _$tgt106254106265_)))
                     (_$tl106256106271_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106254106265_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106256106271_))
                    (let* ((_$tgt106257106275_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106256106271_)))
                           (_$hd106258106278_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106257106275_)))
                           (_$tl106259106281_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106257106275_))))
                      (let* ((_rator106285_ _$hd106258106278_)
                             (_rands106287_ _$tl106259106281_)
                             (__tmp112580
                              (let ((__tmp112582
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator106285_)))
                                    (__tmp112581
                                     (map __compile _rands106287_)))
                                (declare (not safe))
                                (cons __tmp112582 __tmp112581))))
                        (declare (not safe))
                        (__SRC__% __tmp112580 _stx106249_)))
                    (let () (declare (not safe)) (_$E106253106262_))))
              (let () (declare (not safe)) (_$E106253106262_))))))
    (define __compile-ref%
      (lambda (_stx106211_)
        (let* ((_$e106213_ _stx106211_)
               (_$E106215106224_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106213_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106213_))
              (let* ((_$tgt106216106227_
                      (let () (declare (not safe)) (__AST-e _$e106213_)))
                     (_$hd106217106230_
                      (let () (declare (not safe)) (##car _$tgt106216106227_)))
                     (_$tl106218106233_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106216106227_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106218106233_))
                    (let* ((_$tgt106219106237_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106218106233_)))
                           (_$hd106220106240_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106219106237_)))
                           (_$tl106221106243_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106219106237_))))
                      (let ((_id106247_ _$hd106220106240_))
                        (if (let ((__tmp112583
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106221106243_))))
                              (declare (not safe))
                              (equal? __tmp112583 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id106247_ _stx106211_))
                            (let () (declare (not safe)) (_$E106215106224_)))))
                    (let () (declare (not safe)) (_$E106215106224_))))
              (let () (declare (not safe)) (_$E106215106224_))))))
    (define __compile-setq%
      (lambda (_stx106158_)
        (let* ((_$e106160_ _stx106158_)
               (_$E106162106174_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106160_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106160_))
              (let* ((_$tgt106163106177_
                      (let () (declare (not safe)) (__AST-e _$e106160_)))
                     (_$hd106164106180_
                      (let () (declare (not safe)) (##car _$tgt106163106177_)))
                     (_$tl106165106183_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106163106177_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106165106183_))
                    (let* ((_$tgt106166106187_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106165106183_)))
                           (_$hd106167106190_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106166106187_)))
                           (_$tl106168106193_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106166106187_))))
                      (let ((_id106197_ _$hd106167106190_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl106168106193_))
                            (let* ((_$tgt106169106199_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl106168106193_)))
                                   (_$hd106170106202_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt106169106199_)))
                                   (_$tl106171106205_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt106169106199_))))
                              (let ((_expr106209_ _$hd106170106202_))
                                (if (let ((__tmp112589
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl106171106205_))))
                                      (declare (not safe))
                                      (equal? __tmp112589 '()))
                                    (let ((__tmp112584
                                           (let ((__tmp112585
                                                  (let ((__tmp112588
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id106197_
                                                            _stx106158_)))
                                                        (__tmp112586
                                                         (let ((__tmp112587
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr106209_))))
                   (declare (not safe))
                   (cons __tmp112587 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112588
                                                          __tmp112586))))
                                             (declare (not safe))
                                             (cons 'set! __tmp112585))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112584 _stx106158_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E106162106174_)))))
                            (let () (declare (not safe)) (_$E106162106174_)))))
                    (let () (declare (not safe)) (_$E106162106174_))))
              (let () (declare (not safe)) (_$E106162106174_))))))
    (define __compile-if%
      (lambda (_stx106090_)
        (let* ((_$e106092_ _stx106090_)
               (_$E106094106109_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106092_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106092_))
              (let* ((_$tgt106095106112_
                      (let () (declare (not safe)) (__AST-e _$e106092_)))
                     (_$hd106096106115_
                      (let () (declare (not safe)) (##car _$tgt106095106112_)))
                     (_$tl106097106118_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106095106112_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106097106118_))
                    (let* ((_$tgt106098106122_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106097106118_)))
                           (_$hd106099106125_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106098106122_)))
                           (_$tl106100106128_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106098106122_))))
                      (let ((_p106132_ _$hd106099106125_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl106100106128_))
                            (let* ((_$tgt106101106134_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl106100106128_)))
                                   (_$hd106102106137_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt106101106134_)))
                                   (_$tl106103106140_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt106101106134_))))
                              (let ((_t106144_ _$hd106102106137_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl106103106140_))
                                    (let* ((_$tgt106104106146_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl106103106140_)))
                                           (_$hd106105106149_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt106104106146_)))
                                           (_$tl106106106152_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt106104106146_))))
                                      (let ((_f106156_ _$hd106105106149_))
                                        (if (let ((__tmp112597
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl106106106152_))))
                                              (declare (not safe))
                                              (equal? __tmp112597 '()))
                                            (let ((__tmp112590
                                                   (let ((__tmp112591
                                                          (let ((__tmp112596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p106132_)))
                        (__tmp112592
                         (let ((__tmp112595
                                (let ()
                                  (declare (not safe))
                                  (__compile _t106144_)))
                               (__tmp112593
                                (let ((__tmp112594
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f106156_))))
                                  (declare (not safe))
                                  (cons __tmp112594 '()))))
                           (declare (not safe))
                           (cons __tmp112595 __tmp112593))))
                    (declare (not safe))
                    (cons __tmp112596 __tmp112592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp112591))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp112590
                                               _stx106090_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E106094106109_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E106094106109_)))))
                            (let () (declare (not safe)) (_$E106094106109_)))))
                    (let () (declare (not safe)) (_$E106094106109_))))
              (let () (declare (not safe)) (_$E106094106109_))))))
    (define __compile-quote%
      (lambda (_stx106052_)
        (let* ((_$e106054_ _stx106052_)
               (_$E106056106065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106054_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106054_))
              (let* ((_$tgt106057106068_
                      (let () (declare (not safe)) (__AST-e _$e106054_)))
                     (_$hd106058106071_
                      (let () (declare (not safe)) (##car _$tgt106057106068_)))
                     (_$tl106059106074_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106057106068_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106059106074_))
                    (let* ((_$tgt106060106078_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106059106074_)))
                           (_$hd106061106081_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106060106078_)))
                           (_$tl106062106084_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106060106078_))))
                      (let ((_e106088_ _$hd106061106081_))
                        (if (let ((__tmp112601
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106062106084_))))
                              (declare (not safe))
                              (equal? __tmp112601 '()))
                            (let ((__tmp112598
                                   (let ((__tmp112599
                                          (let ((__tmp112600
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e106088_))))
                                            (declare (not safe))
                                            (cons __tmp112600 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112599))))
                              (declare (not safe))
                              (__SRC__% __tmp112598 _stx106052_))
                            (let () (declare (not safe)) (_$E106056106065_)))))
                    (let () (declare (not safe)) (_$E106056106065_))))
              (let () (declare (not safe)) (_$E106056106065_))))))
    (define __compile-quote-syntax%
      (lambda (_stx106014_)
        (let* ((_$e106016_ _stx106014_)
               (_$E106018106027_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106016_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106016_))
              (let* ((_$tgt106019106030_
                      (let () (declare (not safe)) (__AST-e _$e106016_)))
                     (_$hd106020106033_
                      (let () (declare (not safe)) (##car _$tgt106019106030_)))
                     (_$tl106021106036_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106019106030_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106021106036_))
                    (let* ((_$tgt106022106040_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106021106036_)))
                           (_$hd106023106043_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106022106040_)))
                           (_$tl106024106046_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106022106040_))))
                      (let ((_e106050_ _$hd106023106043_))
                        (if (let ((__tmp112604
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106024106046_))))
                              (declare (not safe))
                              (equal? __tmp112604 '()))
                            (let ((__tmp112602
                                   (let ((__tmp112603
                                          (let ()
                                            (declare (not safe))
                                            (cons _e106050_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112603))))
                              (declare (not safe))
                              (__SRC__% __tmp112602 _stx106014_))
                            (let () (declare (not safe)) (_$E106018106027_)))))
                    (let () (declare (not safe)) (_$E106018106027_))))
              (let () (declare (not safe)) (_$E106018106027_))))))
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
