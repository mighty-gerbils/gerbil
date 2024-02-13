(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707840754)
  (begin
    (define __context::t
      (let ((__tmp116212 (list))
            (__tmp116210
             (let ((__tmp116211
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116211 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp116212
         '(t ns super table)
         __tmp116210
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args111446_ (apply make-instance __context::t _$args111446_)))
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
      (let ((__tmp116215 (list))
            (__tmp116213
             (let ((__tmp116214
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116214 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp116215
         '(id)
         __tmp116213
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args111443_ (apply make-instance __runtime::t _$args111443_)))
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
      (let ((__tmp116218 (list))
            (__tmp116216
             (let ((__tmp116217
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116217 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116218
         '(e id)
         __tmp116216
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args111440_ (apply make-instance __syntax::t _$args111440_)))
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
      (let ((__tmp116221 (list __syntax::t))
            (__tmp116219
             (let ((__tmp116220
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116220 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp116221
         '()
         __tmp116219
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args111437_ (apply make-instance __macro::t _$args111437_)))
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
      (let ((__tmp116224 (list __macro::t))
            (__tmp116222
             (let ((__tmp116223
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116223 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp116224
         '()
         __tmp116222
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args111434_
        (apply make-instance __special-form::t _$args111434_)))
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
      (let ((__tmp116227 (list __syntax::t))
            (__tmp116225
             (let ((__tmp116226
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116226 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116227
         '()
         __tmp116225
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args111431_
        (apply make-instance __core-form::t _$args111431_)))
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
      (let ((__tmp116230 (list __core-form::t))
            (__tmp116228
             (let ((__tmp116229
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116229 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116230
         '()
         __tmp116228
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args111428_
        (apply make-instance __core-expression::t _$args111428_)))
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
      (let ((__tmp116233 (list __core-form::t))
            (__tmp116231
             (let ((__tmp116232
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116232 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116233
         '()
         __tmp116231
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args111425_
        (apply make-instance __core-special-form::t _$args111425_)))
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
      (let ((__tmp116236 (list __syntax::t))
            (__tmp116234
             (let ((__tmp116235
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116235 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp116236
         '()
         __tmp116234
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args111422_
        (apply make-instance __struct-info::t _$args111422_)))
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
      (let ((__tmp116239 (list __syntax::t))
            (__tmp116237
             (let ((__tmp116238
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116238 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp116239
         '()
         __tmp116237
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args111419_ (apply make-instance __feature::t _$args111419_)))
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
      (let ((__tmp116242 (list __context::t))
            (__tmp116240
             (let ((__tmp116241
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116241 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp116242
         '(id path import export)
         __tmp116240
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args111416_ (apply make-instance __module::t _$args111416_)))
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
      (let ((__tmp116244
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp116243
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp116244 __tmp116243)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id111391_ _ctx111392_)
        (if _ctx111392_
            (let ((_id111394_
                   (let () (declare (not safe)) (__AST-e _id111391_))))
              (let _lp111396_ ((_ctx111398_ _ctx111392_))
                (let ((_$e111400_
                       (table-ref
                        (##structure-ref _ctx111398_ '4 __context::t '#f)
                        _id111394_
                        '#f)))
                  (if _$e111400_
                      (values _$e111400_)
                      (let ((_$e111403_
                             (##structure-ref
                              _ctx111398_
                              '3
                              __context::t
                              '#f)))
                        (if _$e111403_
                            (let ()
                              (declare (not safe))
                              (_lp111396_ _$e111403_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id111409_)
        (let ((_ctx111411_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id111409_ _ctx111411_))))
    (define __core-resolve
      (lambda _g116246_
        (let ((_g116245_ (let () (declare (not safe)) (##length _g116246_))))
          (cond ((let () (declare (not safe)) (##fx= _g116245_ 1))
                 (apply (lambda (_id111409_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id111409_)))
                        _g116246_))
                ((let () (declare (not safe)) (##fx= _g116245_ 2))
                 (apply (lambda (_id111413_ _ctx111414_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id111413_ _ctx111414_)))
                        _g116246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g116246_))))))
    (define __core-bound-id?__%
      (lambda (_id111374_ _is?111375_)
        (let ((_$e111377_
               (let () (declare (not safe)) (__core-resolve__0 _id111374_))))
          (if _$e111377_ (_is?111375_ _$e111377_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id111383_)
        (let ((_is?111385_ true))
          (declare (not safe))
          (__core-bound-id?__% _id111383_ _is?111385_))))
    (define __core-bound-id?
      (lambda _g116248_
        (let ((_g116247_ (let () (declare (not safe)) (##length _g116248_))))
          (cond ((let () (declare (not safe)) (##fx= _g116247_ 1))
                 (apply (lambda (_id111383_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id111383_)))
                        _g116248_))
                ((let () (declare (not safe)) (##fx= _g116247_ 2))
                 (apply (lambda (_id111387_ _is?111388_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id111387_ _is?111388_)))
                        _g116248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116248_))))))
    (define __core-bind-runtime!__%
      (lambda (_id111357_ _eid111358_ _ctx111359_)
        (if _eid111358_
            (let ((__tmp116251
                   (##structure-ref _ctx111359_ '4 __context::t '#f))
                  (__tmp116250
                   (let () (declare (not safe)) (__AST-e _id111357_)))
                  (__tmp116249
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid111358_))))
              (declare (not safe))
              (table-set! __tmp116251 __tmp116250 __tmp116249))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id111364_ _eid111365_)
        (let ((_ctx111367_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id111364_ _eid111365_ _ctx111367_))))
    (define __core-bind-runtime!
      (lambda _g116253_
        (let ((_g116252_ (let () (declare (not safe)) (##length _g116253_))))
          (cond ((let () (declare (not safe)) (##fx= _g116252_ 2))
                 (apply (lambda (_id111364_ _eid111365_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id111364_ _eid111365_)))
                        _g116253_))
                ((let () (declare (not safe)) (##fx= _g116252_ 3))
                 (apply (lambda (_id111369_ _eid111370_ _ctx111371_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id111369_
                             _eid111370_
                             _ctx111371_)))
                        _g116253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g116253_))))))
    (define __core-bind-syntax!__%
      (lambda (_id111340_ _e111341_ _make111342_)
        (let ((__tmp116254
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111341_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111341_
                   (_make111342_ _e111341_ _id111340_))))
          (declare (not safe))
          (table-set! __*core* _id111340_ __tmp116254))))
    (define __core-bind-syntax!__0
      (lambda (_id111347_ _e111348_)
        (let ((_make111350_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id111347_ _e111348_ _make111350_))))
    (define __core-bind-syntax!
      (lambda _g116256_
        (let ((_g116255_ (let () (declare (not safe)) (##length _g116256_))))
          (cond ((let () (declare (not safe)) (##fx= _g116255_ 2))
                 (apply (lambda (_id111347_ _e111348_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id111347_ _e111348_)))
                        _g116256_))
                ((let () (declare (not safe)) (##fx= _g116255_ 3))
                 (apply (lambda (_id111352_ _e111353_ _make111354_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id111352_
                             _e111353_
                             _make111354_)))
                        _g116256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116256_))))))
    (define __core-bind-macro!
      (lambda (_id111336_ _e111337_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111336_ _e111337_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id111333_ _e111334_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id111333_ _e111334_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id111317_ _e111318_ _ctx111319_)
        (let ((__tmp116260 (##structure-ref _ctx111319_ '4 __context::t '#f))
              (__tmp116259 (let () (declare (not safe)) (__AST-e _id111317_)))
              (__tmp116257
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e111318_
                      'gerbil/runtime/eval#__syntax::t))
                   _e111318_
                   (let ((__tmp116258
                          (let () (declare (not safe)) (__AST-e _id111317_))))
                     (declare (not safe))
                     (##structure __syntax::t _e111318_ __tmp116258)))))
          (declare (not safe))
          (table-set! __tmp116260 __tmp116259 __tmp116257))))
    (define __core-bind-user-syntax!__0
      (lambda (_id111324_ _e111325_)
        (let ((_ctx111327_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id111324_ _e111325_ _ctx111327_))))
    (define __core-bind-user-syntax!
      (lambda _g116262_
        (let ((_g116261_ (let () (declare (not safe)) (##length _g116262_))))
          (cond ((let () (declare (not safe)) (##fx= _g116261_ 2))
                 (apply (lambda (_id111324_ _e111325_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id111324_
                             _e111325_)))
                        _g116262_))
                ((let () (declare (not safe)) (##fx= _g116261_ 3))
                 (apply (lambda (_id111329_ _e111330_ _ctx111331_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id111329_
                             _e111330_
                             _ctx111331_)))
                        _g116262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g116262_))))))
    (define make-__runtime-id__%
      (lambda (_id111298_ _ctx111299_)
        (let ((_id111301_ (let () (declare (not safe)) (__AST-e _id111298_))))
          (if (let () (declare (not safe)) (eq? _id111301_ '_))
              '#f
              (if (uninterned-symbol? _id111301_)
                  (gensym _id111301_)
                  (if (let () (declare (not safe)) (symbol? _id111301_))
                      (let ((_$e111303_
                             (##structure-ref
                              _ctx111299_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e111303_))
                            (gensym _id111301_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e111303_))
                                (let ((__tmp116263
                                       (##structure-ref
                                        _ctx111299_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp116263 '"#" _id111301_))
                                _id111301_)))
                      (error '"Illegal runtime identifier" _id111301_)))))))
    (define make-__runtime-id__0
      (lambda (_id111309_)
        (let ((_ctx111311_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id111309_ _ctx111311_))))
    (define make-__runtime-id
      (lambda _g116265_
        (let ((_g116264_ (let () (declare (not safe)) (##length _g116265_))))
          (cond ((let () (declare (not safe)) (##fx= _g116264_ 1))
                 (apply (lambda (_id111309_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id111309_)))
                        _g116265_))
                ((let () (declare (not safe)) (##fx= _g116264_ 2))
                 (apply (lambda (_id111313_ _ctx111314_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id111313_ _ctx111314_)))
                        _g116265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g116265_))))))
    (define make-__context-local__%
      (lambda (_super111287_)
        (let ((__tmp116266
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super111287_ __tmp116266))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super111293_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super111293_))))
    (define make-__context-local
      (lambda _g116268_
        (let ((_g116267_ (let () (declare (not safe)) (##length _g116268_))))
          (cond ((let () (declare (not safe)) (##fx= _g116267_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g116268_))
                ((let () (declare (not safe)) (##fx= _g116267_ 1))
                 (apply (lambda (_super111295_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super111295_)))
                        _g116268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g116268_))))))
    (define make-__context-module__%
      (lambda (_id111267_ _ns111268_ _path111269_ _super111270_)
        (let ((__tmp116269
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns111268_
           _super111270_
           __tmp116269
           _id111267_
           _path111269_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id111275_ _ns111276_ _path111277_)
        (let ((_super111279_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id111275_
           _ns111276_
           _path111277_
           _super111279_))))
    (define make-__context-module
      (lambda _g116271_
        (let ((_g116270_ (let () (declare (not safe)) (##length _g116271_))))
          (cond ((let () (declare (not safe)) (##fx= _g116270_ 3))
                 (apply (lambda (_id111275_ _ns111276_ _path111277_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id111275_
                             _ns111276_
                             _path111277_)))
                        _g116271_))
                ((let () (declare (not safe)) (##fx= _g116270_ 4))
                 (apply (lambda (_id111281_
                                 _ns111282_
                                 _path111283_
                                 _super111284_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id111281_
                             _ns111282_
                             _path111283_
                             _super111284_)))
                        _g116271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g116271_))))))
    (define __SRC__%
      (lambda (_e111250_ _src-stx111251_)
        (if (or (let () (declare (not safe)) (pair? _e111250_))
                (let () (declare (not safe)) (symbol? _e111250_)))
            (let ((__tmp116275
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx111251_
                          'gerbil#AST::t))
                       (let ((__tmp116276
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx111251_))))
                         (declare (not safe))
                         (__locat __tmp116276))
                       '#f)))
              (declare (not safe))
              (##make-source _e111250_ __tmp116275))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e111250_ 'gerbil#AST::t))
                (let ((__tmp116274
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e111250_ '1 AST::t '#f)))
                      (__tmp116272
                       (let ((__tmp116273
                              (let ()
                                (declare (not safe))
                                (__AST-source _e111250_))))
                         (declare (not safe))
                         (__locat __tmp116273))))
                  (declare (not safe))
                  (##make-source __tmp116274 __tmp116272))
                (error '"BUG! Cannot sourcify object" _e111250_)))))
    (define __SRC__0
      (lambda (_e111259_)
        (let ((_src-stx111261_ '#f))
          (declare (not safe))
          (__SRC__% _e111259_ _src-stx111261_))))
    (define __SRC
      (lambda _g116278_
        (let ((_g116277_ (let () (declare (not safe)) (##length _g116278_))))
          (cond ((let () (declare (not safe)) (##fx= _g116277_ 1))
                 (apply (lambda (_e111259_)
                          (let () (declare (not safe)) (__SRC__0 _e111259_)))
                        _g116278_))
                ((let () (declare (not safe)) (##fx= _g116277_ 2))
                 (apply (lambda (_e111263_ _src-stx111264_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e111263_ _src-stx111264_)))
                        _g116278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116278_))))))
    (define __locat
      (lambda (_loc111247_)
        (if (let () (declare (not safe)) (##locat? _loc111247_))
            _loc111247_
            '#f)))
    (define __check-values
      (lambda (_obj111242_ _k111243_)
        (let ((_count111245_
               (if (let () (declare (not safe)) (##values? _obj111242_))
                   (let () (declare (not safe)) (##vector-length _obj111242_))
                   '1)))
          (if (fx= _count111245_ _k111243_)
              '#!void
              (error (if (fx< _count111245_ _k111243_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj111242_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj111242_))
                         _obj111242_)
                     _k111243_)))))
    (define __compile
      (lambda (_stx111212_)
        (let* ((_$e111214_ _stx111212_)
               (_$E111216111222_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111214_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111214_))
              (let* ((_$tgt111217111225_
                      (let () (declare (not safe)) (__AST-e _$e111214_)))
                     (_$hd111218111228_
                      (let () (declare (not safe)) (##car _$tgt111217111225_)))
                     (_$tl111219111231_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111217111225_))))
                (let* ((_form111235_ _$hd111218111228_)
                       (_$e111237_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form111235_))))
                  (if _$e111237_
                      ((lambda (_bind111240_)
                         ((##structure-ref _bind111240_ '1 __syntax::t '#f)
                          _stx111212_))
                       _$e111237_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx111212_
                         _form111235_)))))
              (let () (declare (not safe)) (_$E111216111222_))))))
    (define __compile-error__%
      (lambda (_stx111199_ _detail111200_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx111199_
           _detail111200_))))
    (define __compile-error__0
      (lambda (_stx111205_)
        (let ((_detail111207_ '#f))
          (declare (not safe))
          (__compile-error__% _stx111205_ _detail111207_))))
    (define __compile-error
      (lambda _g116280_
        (let ((_g116279_ (let () (declare (not safe)) (##length _g116280_))))
          (cond ((let () (declare (not safe)) (##fx= _g116279_ 1))
                 (apply (lambda (_stx111205_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx111205_)))
                        _g116280_))
                ((let () (declare (not safe)) (##fx= _g116279_ 2))
                 (apply (lambda (_stx111209_ _detail111210_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx111209_ _detail111210_)))
                        _g116280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116280_))))))
    (define __compile-ignore%
      (lambda (_stx111196_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx111196_))))
    (define __compile-begin%
      (lambda (_stx111171_)
        (let* ((_$e111173_ _stx111171_)
               (_$E111175111181_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111173_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111173_))
              (let* ((_$tgt111176111184_
                      (let () (declare (not safe)) (__AST-e _$e111173_)))
                     (_$hd111177111187_
                      (let () (declare (not safe)) (##car _$tgt111176111184_)))
                     (_$tl111178111190_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111176111184_))))
                (let* ((_body111194_ _$tl111178111190_)
                       (__tmp116281
                        (let ((__tmp116282 (map __compile _body111194_)))
                          (declare (not safe))
                          (cons 'begin __tmp116282))))
                  (declare (not safe))
                  (__SRC__% __tmp116281 _stx111171_)))
              (let () (declare (not safe)) (_$E111175111181_))))))
    (define __compile-begin-foreign%
      (lambda (_stx111146_)
        (let* ((_$e111148_ _stx111146_)
               (_$E111150111156_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111148_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111148_))
              (let* ((_$tgt111151111159_
                      (let () (declare (not safe)) (__AST-e _$e111148_)))
                     (_$hd111152111162_
                      (let () (declare (not safe)) (##car _$tgt111151111159_)))
                     (_$tl111153111165_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111151111159_))))
                (let* ((_body111169_ _$tl111153111165_)
                       (__tmp116283
                        (let ((__tmp116284
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body111169_))))
                          (declare (not safe))
                          (cons 'begin __tmp116284))))
                  (declare (not safe))
                  (__SRC__% __tmp116283 _stx111146_)))
              (let () (declare (not safe)) (_$E111150111156_))))))
    (define __compile-import%
      (lambda (_stx111121_)
        (let* ((_$e111123_ _stx111121_)
               (_$E111125111131_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111123_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111123_))
              (let* ((_$tgt111126111134_
                      (let () (declare (not safe)) (__AST-e _$e111123_)))
                     (_$hd111127111137_
                      (let () (declare (not safe)) (##car _$tgt111126111134_)))
                     (_$tl111128111140_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111126111134_))))
                (let* ((_body111144_ _$tl111128111140_)
                       (__tmp116285
                        (let ((__tmp116286
                               (let ((__tmp116287
                                      (let ((__tmp116288
                                             (let ()
                                               (declare (not safe))
                                               (cons _body111144_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp116288))))
                                 (declare (not safe))
                                 (cons __tmp116287 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp116286))))
                  (declare (not safe))
                  (__SRC__% __tmp116285 _stx111121_)))
              (let () (declare (not safe)) (_$E111125111131_))))))
    (define __compile-begin-annotation%
      (lambda (_stx111068_)
        (let* ((_$e111070_ _stx111068_)
               (_$E111072111084_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111070_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111070_))
              (let* ((_$tgt111073111087_
                      (let () (declare (not safe)) (__AST-e _$e111070_)))
                     (_$hd111074111090_
                      (let () (declare (not safe)) (##car _$tgt111073111087_)))
                     (_$tl111075111093_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111073111087_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111075111093_))
                    (let* ((_$tgt111076111097_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111075111093_)))
                           (_$hd111077111100_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111076111097_)))
                           (_$tl111078111103_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111076111097_))))
                      (let ((_ann111107_ _$hd111077111100_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl111078111103_))
                            (let* ((_$tgt111079111109_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl111078111103_)))
                                   (_$hd111080111112_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt111079111109_)))
                                   (_$tl111081111115_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt111079111109_))))
                              (let ((_expr111119_ _$hd111080111112_))
                                (if (let ((__tmp116289
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl111081111115_))))
                                      (declare (not safe))
                                      (equal? __tmp116289 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr111119_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E111072111084_)))))
                            (let () (declare (not safe)) (_$E111072111084_)))))
                    (let () (declare (not safe)) (_$E111072111084_))))
              (let () (declare (not safe)) (_$E111072111084_))))))
    (define __compile-define-values%
      (lambda (_stx110959_)
        (let* ((_$e110961_ _stx110959_)
               (_$E110963110975_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110961_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110961_))
              (let* ((_$tgt110964110978_
                      (let () (declare (not safe)) (__AST-e _$e110961_)))
                     (_$hd110965110981_
                      (let () (declare (not safe)) (##car _$tgt110964110978_)))
                     (_$tl110966110984_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110964110978_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110966110984_))
                    (let* ((_$tgt110967110988_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110966110984_)))
                           (_$hd110968110991_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110967110988_)))
                           (_$tl110969110994_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110967110988_))))
                      (let ((_hd110998_ _$hd110968110991_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110969110994_))
                            (let* ((_$tgt110970111000_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110969110994_)))
                                   (_$hd110971111003_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110970111000_)))
                                   (_$tl110972111006_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110970111000_))))
                              (let ((_expr111010_ _$hd110971111003_))
                                (if (let ((__tmp116322
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110972111006_))))
                                      (declare (not safe))
                                      (equal? __tmp116322 '()))
                                    (let* ((_$e111012_ _hd110998_)
                                           (_$E111014111055_
                                            (lambda ()
                                              (let ((_$E111015111040_
                                                     (lambda ()
                                                       (let* ((_$E111016111027_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e111012_))))
                      (_ids111030_ _hd110998_)
                      (_len111032_ (length _ids111030_))
                      (_tmp111034_
                       (let ((__tmp116290 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp116290))))
                 (let ((__tmp116291
                        (let ((__tmp116292
                               (let ((__tmp116309
                                      (let ((__tmp116310
                                             (let ((__tmp116311
                                                    (let ((__tmp116312
                                                           (let ((__tmp116313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr111010_))))
                     (declare (not safe))
                     (cons __tmp116313 '()))))
              (declare (not safe))
              (cons _tmp111034_ __tmp116312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp116311))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116310 _stx110959_)))
                                     (__tmp116293
                                      (let ((__tmp116305
                                             (let ((__tmp116306
                                                    (let ((__tmp116307
                                                           (let ((__tmp116308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len111032_ '()))))
                     (declare (not safe))
                     (cons _tmp111034_ __tmp116308))))
              (declare (not safe))
              (cons '__check-values __tmp116307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp116306
                                                _stx110959_)))
                                            (__tmp116294
                                             (let ((__tmp116295
                                                    (let ((__tmp116297
                                                           (lambda (_id111037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k111038_)
                     (if (let () (declare (not safe)) (__AST-e _id111037_))
                         (let ((__tmp116298
                                (let ((__tmp116299
                                       (let ((__tmp116304
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id111037_)))
                                             (__tmp116300
                                              (let ((__tmp116301
                                                     (let ((__tmp116302
                                                            (let ((__tmp116303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k111038_ '()))))
                      (declare (not safe))
                      (cons _tmp111034_ __tmp116303))))
               (declare (not safe))
               (cons '##vector-ref __tmp116302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116301 '()))))
                                         (declare (not safe))
                                         (cons __tmp116304 __tmp116300))))
                                  (declare (not safe))
                                  (cons 'define __tmp116299))))
                           (declare (not safe))
                           (__SRC__% __tmp116298 _stx110959_))
                         '#f)))
                  (__tmp116296
                   (let () (declare (not safe)) (iota _len111032_))))
              (declare (not safe))
              (filter-map2 __tmp116297 _ids111030_ __tmp116296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp116295))))
                                        (declare (not safe))
                                        (cons __tmp116305 __tmp116294))))
                                 (declare (not safe))
                                 (cons __tmp116309 __tmp116293))))
                          (declare (not safe))
                          (cons 'begin __tmp116292))))
                   (declare (not safe))
                   (__SRC__% __tmp116291 _stx110959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e111012_))
                                                    (let* ((_$tgt111017111043_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e111012_)))
                                                           (_$hd111018111046_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt111017111043_)))
                                                           (_$tl111019111049_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt111017111043_))))
                                                      (let ((_id111053_
                                                             _$hd111018111046_))
                                                        (if (let ((__tmp116319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl111019111049_))))
                      (declare (not safe))
                      (equal? __tmp116319 '()))
                    (let ((__tmp116314
                           (let ((__tmp116315
                                  (let ((__tmp116318
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id111053_)))
                                        (__tmp116316
                                         (let ((__tmp116317
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr111010_))))
                                           (declare (not safe))
                                           (cons __tmp116317 '()))))
                                    (declare (not safe))
                                    (cons __tmp116318 __tmp116316))))
                             (declare (not safe))
                             (cons 'define __tmp116315))))
                      (declare (not safe))
                      (__SRC__% __tmp116314 _stx110959_))
                    (let () (declare (not safe)) (_$E111015111040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E111015111040_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e111012_))
                                          (let* ((_$tgt111020111058_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e111012_)))
                                                 (_$hd111021111061_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt111020111058_)))
                                                 (_$tl111022111064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt111020111058_))))
                                            (if (let ((__tmp116321
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd111021111061_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116321 '#f))
                                                (if (let ((__tmp116320
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl111022111064_))))
                                                      (declare (not safe))
                                                      (equal? __tmp116320 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr111010_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E111014111055_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E111014111055_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E111014111055_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110963110975_)))))
                            (let () (declare (not safe)) (_$E110963110975_)))))
                    (let () (declare (not safe)) (_$E110963110975_))))
              (let () (declare (not safe)) (_$E110963110975_))))))
    (define __compile-head-id
      (lambda (_e110957_)
        (let ((__tmp116323
               (if (let () (declare (not safe)) (__AST-e _e110957_))
                   _e110957_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp116323))))
    (define __compile-lambda-head
      (lambda (_hd110914_)
        (let _recur110916_ ((_rest110918_ _hd110914_))
          (let* ((_$e110920_ _rest110918_)
                 (_$E110922110940_
                  (lambda ()
                    (let ((_$E110923110937_
                           (lambda ()
                             (let* ((_$E110924110932_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e110920_))))
                                    (_tail110935_ _$e110920_))
                               (declare (not safe))
                               (__compile-head-id _tail110935_)))))
                      (if (let ((__tmp116324
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e110920_))))
                            (declare (not safe))
                            (equal? __tmp116324 '()))
                          '()
                          (let () (declare (not safe)) (_$E110923110937_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110920_))
                (let* ((_$tgt110925110943_
                        (let () (declare (not safe)) (__AST-e _$e110920_)))
                       (_$hd110926110946_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110925110943_)))
                       (_$tl110927110949_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110925110943_))))
                  (let* ((_hd110953_ _$hd110926110946_)
                         (_rest110955_ _$tl110927110949_))
                    (let ((__tmp116326
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd110953_)))
                          (__tmp116325
                           (let ()
                             (declare (not safe))
                             (_recur110916_ _rest110955_))))
                      (declare (not safe))
                      (cons __tmp116326 __tmp116325))))
                (let () (declare (not safe)) (_$E110922110940_)))))))
    (define __compile-lambda%
      (lambda (_stx110861_)
        (let* ((_$e110863_ _stx110861_)
               (_$E110865110877_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e110863_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e110863_))
              (let* ((_$tgt110866110880_
                      (let () (declare (not safe)) (__AST-e _$e110863_)))
                     (_$hd110867110883_
                      (let () (declare (not safe)) (##car _$tgt110866110880_)))
                     (_$tl110868110886_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt110866110880_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl110868110886_))
                    (let* ((_$tgt110869110890_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl110868110886_)))
                           (_$hd110870110893_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt110869110890_)))
                           (_$tl110871110896_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt110869110890_))))
                      (let ((_hd110900_ _$hd110870110893_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl110871110896_))
                            (let* ((_$tgt110872110902_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl110871110896_)))
                                   (_$hd110873110905_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110872110902_)))
                                   (_$tl110874110908_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110872110902_))))
                              (let ((_body110912_ _$hd110873110905_))
                                (if (let ((__tmp116332
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110874110908_))))
                                      (declare (not safe))
                                      (equal? __tmp116332 '()))
                                    (let ((__tmp116327
                                           (let ((__tmp116328
                                                  (let ((__tmp116331
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd110900_)))
                                                        (__tmp116329
                                                         (let ((__tmp116330
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body110912_))))
                   (declare (not safe))
                   (cons __tmp116330 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116331
                                                          __tmp116329))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp116328))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116327 _stx110861_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E110865110877_)))))
                            (let () (declare (not safe)) (_$E110865110877_)))))
                    (let () (declare (not safe)) (_$E110865110877_))))
              (let () (declare (not safe)) (_$E110865110877_))))))
    (define __compile-case-lambda%
      (lambda (_stx110653_)
        (letrec ((_variadic?110655_
                  (lambda (_hd110826_)
                    (let* ((_$e110828_ _hd110826_)
                           (_$E110830110846_
                            (lambda ()
                              (let ((_$E110831110843_
                                     (lambda ()
                                       (let ((_$E110832110840_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e110828_)))))
                                         '#t))))
                                (if (let ((__tmp116333
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e110828_))))
                                      (declare (not safe))
                                      (equal? __tmp116333 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E110831110843_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110828_))
                          (let* ((_$tgt110833110849_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110828_)))
                                 (_$hd110834110852_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110833110849_)))
                                 (_$tl110835110855_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110833110849_))))
                            (let ((_rest110859_ _$tl110835110855_))
                              (declare (not safe))
                              (_variadic?110655_ _rest110859_)))
                          (let () (declare (not safe)) (_$E110830110846_))))))
                 (_arity110656_
                  (lambda (_hd110791_)
                    (let _lp110793_ ((_rest110795_ _hd110791_) (_k110796_ '0))
                      (let* ((_$e110798_ _rest110795_)
                             (_$E110800110811_
                              (lambda ()
                                (let ((_$E110801110808_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e110798_)))))
                                  _k110796_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e110798_))
                            (let* ((_$tgt110802110814_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e110798_)))
                                   (_$hd110803110817_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt110802110814_)))
                                   (_$tl110804110820_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt110802110814_))))
                              (let* ((_rest110824_ _$tl110804110820_)
                                     (__tmp116334
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k110796_ '1))))
                                (declare (not safe))
                                (_lp110793_ _rest110824_ __tmp116334)))
                            (let ()
                              (declare (not safe))
                              (_$E110800110811_)))))))
                 (_generate110657_
                  (lambda (_rest110718_ _args110719_ _len110720_)
                    (let* ((_$e110722_ _rest110718_)
                           (_$E110724110735_
                            (lambda ()
                              (let* ((_$E110725110732_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e110722_))))
                                     (__tmp116335
                                      (let ((__tmp116336
                                             (let ((__tmp116337
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110719_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp116337))))
                                        (declare (not safe))
                                        (cons 'error __tmp116336))))
                                (declare (not safe))
                                (__SRC__% __tmp116335 _stx110653_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110722_))
                          (let* ((_$tgt110726110738_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110722_)))
                                 (_$hd110727110741_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110726110738_)))
                                 (_$tl110728110744_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110726110738_))))
                            (let* ((_clause110748_ _$hd110727110741_)
                                   (_rest110750_ _$tl110728110744_)
                                   (_$e110752_ _clause110748_)
                                   (_$E110754110763_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e110752_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e110752_))
                                  (let* ((_$tgt110755110766_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e110752_)))
                                         (_$hd110756110769_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt110755110766_)))
                                         (_$tl110757110772_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt110755110766_))))
                                    (let ((_hd110776_ _$hd110756110769_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl110757110772_))
                                          (let* ((_$tgt110758110778_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110757110772_)))
                                                 (_$hd110759110781_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt110758110778_)))
                                                 (_$tl110760110784_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt110758110778_))))
                                            (if (let ((__tmp116352
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110760110784_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116352 '()))
                                                (let ((_clen110788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity110656_
                                                          _hd110776_)))
                                                      (_cmp110789_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?110655_
                                                              _hd110776_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp116338
                                                         (let ((__tmp116339
                                                                (let ((__tmp116349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116350
                                      (let ((__tmp116351
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen110788_ '()))))
                                        (declare (not safe))
                                        (cons _len110720_ __tmp116351))))
                                 (declare (not safe))
                                 (cons _cmp110789_ __tmp116350)))
                              (__tmp116340
                               (let ((__tmp116343
                                      (let ((__tmp116344
                                             (let ((__tmp116345
                                                    (let ((__tmp116347
                                                           (let ((__tmp116348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause110748_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp116348)))
                  (__tmp116346
                   (let () (declare (not safe)) (cons _args110719_ '()))))
              (declare (not safe))
              (cons __tmp116347 __tmp116346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp116345))))
                                        (declare (not safe))
                                        (__SRC__% __tmp116344 _stx110653_)))
                                     (__tmp116341
                                      (let ((__tmp116342
                                             (let ()
                                               (declare (not safe))
                                               (_generate110657_
                                                _rest110750_
                                                _args110719_
                                                _len110720_))))
                                        (declare (not safe))
                                        (cons __tmp116342 '()))))
                                 (declare (not safe))
                                 (cons __tmp116343 __tmp116341))))
                          (declare (not safe))
                          (cons __tmp116349 __tmp116340))))
                   (declare (not safe))
                   (cons 'if __tmp116339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp116338
                                                     _stx110653_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110754110763_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E110754110763_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E110754110763_)))))
                          (let () (declare (not safe)) (_$E110724110735_)))))))
          (let* ((_$e110659_ _stx110653_)
                 (_$E110661110693_
                  (lambda ()
                    (let ((_$E110662110675_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110659_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110659_))
                          (let* ((_$tgt110663110678_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110659_)))
                                 (_$hd110664110681_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110663110678_)))
                                 (_$tl110665110684_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110663110678_))))
                            (let ((_clauses110688_ _$tl110665110684_))
                              (let ((_args110690_
                                     (let ((__tmp116353 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116353 _stx110653_)))
                                    (_len110691_
                                     (let ((__tmp116354 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp116354 _stx110653_))))
                                (let ((__tmp116355
                                       (let ((__tmp116356
                                              (let ((__tmp116357
                                                     (let ((__tmp116358
                                                            (let ((__tmp116359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116360
                                  (let ((__tmp116363
                                         (let ((__tmp116364
                                                (let ((__tmp116365
                                                       (let ((__tmp116366
                                                              (let ((__tmp116367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp116368
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110690_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp116368))))
                        (declare (not safe))
                        (__SRC__% __tmp116367 _stx110653_))))
                 (declare (not safe))
                 (cons __tmp116366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len110691_
                                                        __tmp116365))))
                                           (declare (not safe))
                                           (cons __tmp116364 '())))
                                        (__tmp116361
                                         (let ((__tmp116362
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate110657_
                                                   _clauses110688_
                                                   _args110690_
                                                   _len110691_))))
                                           (declare (not safe))
                                           (cons __tmp116362 '()))))
                                    (declare (not safe))
                                    (cons __tmp116363 __tmp116361))))
                             (declare (not safe))
                             (cons 'let __tmp116360))))
                      (declare (not safe))
                      (__SRC__% __tmp116359 _stx110653_))))
               (declare (not safe))
               (cons __tmp116358 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args110690_
                                                      __tmp116357))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp116356))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116355 _stx110653_)))))
                          (let () (declare (not safe)) (_$E110662110675_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110659_))
                (let* ((_$tgt110666110696_
                        (let () (declare (not safe)) (__AST-e _$e110659_)))
                       (_$hd110667110699_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110666110696_)))
                       (_$tl110668110702_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110666110696_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110668110702_))
                      (let* ((_$tgt110669110706_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110668110702_)))
                             (_$hd110670110709_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110669110706_)))
                             (_$tl110671110712_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110669110706_))))
                        (let ((_clause110716_ _$hd110670110709_))
                          (if (let ((__tmp116370
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl110671110712_))))
                                (declare (not safe))
                                (equal? __tmp116370 '()))
                              (let ((__tmp116369
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause110716_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp116369))
                              (let ()
                                (declare (not safe))
                                (_$E110661110693_)))))
                      (let () (declare (not safe)) (_$E110661110693_))))
                (let () (declare (not safe)) (_$E110661110693_)))))))
    (define __compile-let-form
      (lambda (_stx110422_ _compile-simple110423_ _compile-values110424_)
        (letrec ((_simple-bind?110426_
                  (lambda (_hd110611_)
                    (let* ((_hd110612110622_ _hd110611_)
                           (_else110615110630_ (lambda () '#f)))
                      (let ((_K110618110643_ (lambda (_id110641_) '#t))
                            (_K110617110635_ (lambda () '#t)))
                        (let ((_try-match110614110638_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd110612110622_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K110617110635_))
                                     (let ()
                                       (declare (not safe))
                                       (_else110615110630_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd110612110622_))
                              (let ((_tl110620110648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd110612110622_)))
                                    (_hd110619110646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd110612110622_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl110620110648_))
                                    (let ((_id110651_ _hd110619110646_))
                                      (declare (not safe))
                                      (_K110618110643_ _id110651_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match110614110638_))))
                              (let ()
                                (declare (not safe))
                                (_try-match110614110638_))))))))
                 (_car-e110427_
                  (lambda (_hd110609_)
                    (if (let () (declare (not safe)) (pair? _hd110609_))
                        (car _hd110609_)
                        _hd110609_))))
          (let* ((_$e110429_ _stx110422_)
                 (_$E110431110574_
                  (lambda ()
                    (let ((_$E110432110454_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e110429_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e110429_))
                          (let* ((_$tgt110433110457_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e110429_)))
                                 (_$hd110434110460_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt110433110457_)))
                                 (_$tl110435110463_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt110433110457_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110435110463_))
                                (let* ((_$tgt110436110467_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110435110463_)))
                                       (_$hd110437110470_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110436110467_)))
                                       (_$tl110438110473_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110436110467_))))
                                  (let ((_hd110477_ _$hd110437110470_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl110438110473_))
                                        (let* ((_$tgt110439110479_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl110438110473_)))
                                               (_$hd110440110482_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt110439110479_)))
                                               (_$tl110441110485_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt110439110479_))))
                                          (let ((_body110489_
                                                 _$hd110440110482_))
                                            (if (let ((__tmp116373
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl110441110485_))))
                                                  (declare (not safe))
                                                  (equal? __tmp116373 '()))
                                                (let* ((_hd-ids110529_
                                                        (map (lambda (_bind110491_)
                                                               (let* ((_$e110493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind110491_)
                              (_$E110495110504_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110493_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110493_))
                             (let* ((_$tgt110496110507_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110493_)))
                                    (_$hd110497110510_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110496110507_)))
                                    (_$tl110498110513_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110496110507_))))
                               (let ((_ids110517_ _$hd110497110510_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl110498110513_))
                                     (let* ((_$tgt110499110519_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl110498110513_)))
                                            (_$hd110500110522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt110499110519_)))
                                            (_$tl110501110525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt110499110519_))))
                                       (if (let ((__tmp116371
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110501110525_))))
                                             (declare (not safe))
                                             (equal? __tmp116371 '()))
                                           _ids110517_
                                           (let ()
                                             (declare (not safe))
                                             (_$E110495110504_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E110495110504_)))))
                             (let ()
                               (declare (not safe))
                               (_$E110495110504_)))))
                     _hd110477_))
               (_exprs110569_
                (map (lambda (_bind110531_)
                       (let* ((_$e110533_ _bind110531_)
                              (_$E110535110544_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e110533_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e110533_))
                             (let* ((_$tgt110536110547_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e110533_)))
                                    (_$hd110537110550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt110536110547_)))
                                    (_$tl110538110553_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt110536110547_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl110538110553_))
                                   (let* ((_$tgt110539110557_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl110538110553_)))
                                          (_$hd110540110560_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt110539110557_)))
                                          (_$tl110541110563_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt110539110557_))))
                                     (let ((_expr110567_ _$hd110540110560_))
                                       (if (let ((__tmp116372
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl110541110563_))))
                                             (declare (not safe))
                                             (equal? __tmp116372 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr110567_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E110535110544_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E110535110544_))))
                             (let ()
                               (declare (not safe))
                               (_$E110535110544_)))))
                     _hd110477_))
               (_body110571_
                (let () (declare (not safe)) (__compile _body110489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?110426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids110529_))
              (_compile-simple110423_
               (map _car-e110427_ _hd-ids110529_)
               _exprs110569_
               _body110571_)
              (_compile-values110424_
               _hd-ids110529_
               _exprs110569_
               _body110571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E110432110454_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110432110454_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110432110454_))))
                          (let () (declare (not safe)) (_$E110432110454_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e110429_))
                (let* ((_$tgt110442110577_
                        (let () (declare (not safe)) (__AST-e _$e110429_)))
                       (_$hd110443110580_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt110442110577_)))
                       (_$tl110444110583_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt110442110577_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl110444110583_))
                      (let* ((_$tgt110445110587_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl110444110583_)))
                             (_$hd110446110590_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt110445110587_)))
                             (_$tl110447110593_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt110445110587_))))
                        (if (let ((__tmp116375
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd110446110590_))))
                              (declare (not safe))
                              (equal? __tmp116375 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl110447110593_))
                                (let* ((_$tgt110448110597_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl110447110593_)))
                                       (_$hd110449110600_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt110448110597_)))
                                       (_$tl110450110603_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt110448110597_))))
                                  (let ((_body110607_ _$hd110449110600_))
                                    (if (let ((__tmp116374
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl110450110603_))))
                                          (declare (not safe))
                                          (equal? __tmp116374 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body110607_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E110431110574_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E110431110574_)))
                            (let () (declare (not safe)) (_$E110431110574_))))
                      (let () (declare (not safe)) (_$E110431110574_))))
                (let () (declare (not safe)) (_$E110431110574_)))))))
    (define __compile-let-values%
      (lambda (_stx110237_)
        (letrec ((_compile-simple110239_
                  (lambda (_hd-ids110418_ _exprs110419_ _body110420_)
                    (let ((__tmp116376
                           (let ((__tmp116377
                                  (let ((__tmp116379
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110418_)
                                              _exprs110419_))
                                        (__tmp116378
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110420_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116379 __tmp116378))))
                             (declare (not safe))
                             (cons 'let __tmp116377))))
                      (declare (not safe))
                      (__SRC__% __tmp116376 _stx110237_))))
                 (_compile-values110240_
                  (lambda (_hd-ids110336_ _exprs110337_ _body110338_)
                    (let _lp110340_ ((_rest110342_ _hd-ids110336_)
                                     (_exprs110343_ _exprs110337_)
                                     (_bind110344_ '())
                                     (_post110345_ '()))
                      (let* ((_rest110346110360_ _rest110342_)
                             (_else110349110368_
                              (lambda ()
                                (let ((__tmp116380
                                       (let ((__tmp116381
                                              (let ((__tmp116384
                                                     (reverse _bind110344_))
                                                    (__tmp116382
                                                     (let ((__tmp116383
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post110241_
                                                               _post110345_
                                                               _body110338_))))
                                                       (declare (not safe))
                                                       (cons __tmp116383
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp116384
                                                      __tmp116382))))
                                         (declare (not safe))
                                         (cons 'let __tmp116381))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116380 _stx110237_)))))
                        (let ((_K110354110401_
                               (lambda (_rest110398_ _id110399_)
                                 (let ((__tmp116390 (cdr _exprs110343_))
                                       (__tmp116385
                                        (let ((__tmp116386
                                               (let ((__tmp116389
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110399_)))
                                                     (__tmp116387
                                                      (let ((__tmp116388
                                                             (car _exprs110343_)))
                                                        (declare (not safe))
                                                        (cons __tmp116388
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116389
                                                       __tmp116387))))
                                          (declare (not safe))
                                          (cons __tmp116386 _bind110344_))))
                                   (declare (not safe))
                                   (_lp110340_
                                    _rest110398_
                                    __tmp116390
                                    __tmp116385
                                    _post110345_))))
                              (_K110351110383_
                               (lambda (_rest110372_ _hd110373_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110373_))
                                     (let ((__tmp116411 (cdr _exprs110343_))
                                           (__tmp116404
                                            (let ((__tmp116405
                                                   (let ((__tmp116410
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110373_)))
                                                         (__tmp116406
                                                          (let ((__tmp116407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116408
                                (let ((__tmp116409 (car _exprs110343_)))
                                  (declare (not safe))
                                  (cons __tmp116409 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116408))))
                    (declare (not safe))
                    (cons __tmp116407 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116410
                                                           __tmp116406))))
                                              (declare (not safe))
                                              (cons __tmp116405
                                                    _bind110344_))))
                                       (declare (not safe))
                                       (_lp110340_
                                        _rest110372_
                                        __tmp116411
                                        __tmp116404
                                        _post110345_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110373_))
                                         (let* ((_len110375_
                                                 (length _hd110373_))
                                                (_tmp110377_
                                                 (let ((__tmp116391 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116391))))
                                           (let ((__tmp116403
                                                  (cdr _exprs110343_))
                                                 (__tmp116399
                                                  (let ((__tmp116400
                                                         (let ((__tmp116401
                                                                (let ((__tmp116402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110343_)))
                          (declare (not safe))
                          (cons __tmp116402 '()))))
                   (declare (not safe))
                   (cons _tmp110377_ __tmp116401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116400
                                                          _bind110344_)))
                                                 (__tmp116392
                                                  (let ((__tmp116393
                                                         (let ((__tmp116394
                                                                (let ((__tmp116395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116397
                                      (lambda (_id110380_ _k110381_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110380_))
                                            (let ((__tmp116398
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110380_))))
                                              (declare (not safe))
                                              (cons __tmp116398 _k110381_))
                                            '#f)))
                                     (__tmp116396
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110375_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116397
                                  _hd110373_
                                  __tmp116396))))
                          (declare (not safe))
                          (cons _len110375_ __tmp116395))))
                   (declare (not safe))
                   (cons _tmp110377_ __tmp116394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116393
                                                          _post110345_))))
                                             (declare (not safe))
                                             (_lp110340_
                                              _rest110372_
                                              __tmp116403
                                              __tmp116399
                                              __tmp116392)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx110237_
                                            _hd110373_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110346110360_))
                              (let ((_tl110356110406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110346110360_)))
                                    (_hd110355110404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110346110360_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110355110404_))
                                    (let ((_tl110358110411_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110355110404_)))
                                          (_hd110357110409_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110355110404_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110358110411_))
                                          (let ((_id110414_ _hd110357110409_)
                                                (_rest110416_
                                                 _tl110356110406_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110354110401_
                                               _rest110416_
                                               _id110414_)))
                                          (let ((_hd110391_ _hd110355110404_)
                                                (_rest110393_
                                                 _tl110356110406_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110351110383_
                                               _rest110393_
                                               _hd110391_)))))
                                    (let ((_hd110391_ _hd110355110404_)
                                          (_rest110393_ _tl110356110406_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110351110383_
                                         _rest110393_
                                         _hd110391_)))))
                              (let ()
                                (declare (not safe))
                                (_else110349110368_))))))))
                 (_compile-post110241_
                  (lambda (_post110243_ _body110244_)
                    (let _lp110246_ ((_rest110248_ _post110243_)
                                     (_check110249_ '())
                                     (_bind110250_ '()))
                      (let* ((_rest110251110263_ _rest110248_)
                             (_else110253110271_
                              (lambda ()
                                (let ((__tmp116412
                                       (let ((__tmp116413
                                              (let ((__tmp116414
                                                     (let ((__tmp116415
                                                            (let ((__tmp116416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116417
                                  (let ((__tmp116418
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110244_ '()))))
                                    (declare (not safe))
                                    (cons _bind110250_ __tmp116418))))
                             (declare (not safe))
                             (cons 'let __tmp116417))))
                      (declare (not safe))
                      (__SRC__% __tmp116416 _stx110237_))))
               (declare (not safe))
               (cons __tmp116415 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116414
                                                        _check110249_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116413))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116412 _stx110237_))))
                             (_K110255110310_
                              (lambda (_rest110274_
                                       _init110275_
                                       _len110276_
                                       _tmp110277_)
                                (let ((__tmp116426
                                       (let ((__tmp116427
                                              (let ((__tmp116428
                                                     (let ((__tmp116429
                                                            (let ((__tmp116430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len110276_ '()))))
                      (declare (not safe))
                      (cons _tmp110277_ __tmp116430))))
               (declare (not safe))
               (cons '__check-values __tmp116429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116428
                                                 _stx110237_))))
                                         (declare (not safe))
                                         (cons __tmp116427 _check110249_)))
                                      (__tmp116419
                                       (let ((__tmp116420
                                              (lambda (_hd110279_ _r110280_)
                                                (let* ((_hd110281110288_
                                                        _hd110279_)
                                                       (_E110283110292_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd110281110288_)))
               (_K110284110298_
                (lambda (_k110295_ _id110296_)
                  (let ((__tmp116421
                         (let ((__tmp116422
                                (let ((__tmp116423
                                       (let ((__tmp116424
                                              (let ((__tmp116425
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k110295_ '()))))
                                                (declare (not safe))
                                                (cons _tmp110277_
                                                      __tmp116425))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp116424))))
                                  (declare (not safe))
                                  (cons __tmp116423 '()))))
                           (declare (not safe))
                           (cons _id110296_ __tmp116422))))
                    (declare (not safe))
                    (cons __tmp116421 _r110280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd110281110288_))
                                                      (let ((_hd110285110301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd110281110288_)))
                    (_tl110286110303_
                     (let () (declare (not safe)) (##cdr _hd110281110288_))))
                (let* ((_id110306_ _hd110285110301_)
                       (_k110308_ _tl110286110303_))
                  (declare (not safe))
                  (_K110284110298_ _k110308_ _id110306_)))
              (let () (declare (not safe)) (_E110283110292_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116420
                                                 _bind110250_
                                                 _init110275_))))
                                  (declare (not safe))
                                  (_lp110246_
                                   _rest110274_
                                   __tmp116426
                                   __tmp116419)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110251110263_))
                            (let ((_hd110256110313_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110251110263_)))
                                  (_tl110257110315_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110251110263_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd110256110313_))
                                  (let ((_hd110258110318_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd110256110313_)))
                                        (_tl110259110320_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd110256110313_))))
                                    (let ((_tmp110323_ _hd110258110318_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl110259110320_))
                                          (let ((_hd110260110325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl110259110320_)))
                                                (_tl110261110327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl110259110320_))))
                                            (let* ((_len110330_
                                                    _hd110260110325_)
                                                   (_init110332_
                                                    _tl110261110327_)
                                                   (_rest110334_
                                                    _tl110257110315_))
                                              (declare (not safe))
                                              (_K110255110310_
                                               _rest110334_
                                               _init110332_
                                               _len110330_
                                               _tmp110323_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else110253110271_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else110253110271_))))
                            (let ()
                              (declare (not safe))
                              (_else110253110271_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx110237_
             _compile-simple110239_
             _compile-values110240_)))))
    (define __compile-letrec-values%
      (lambda (_stx110037_)
        (letrec ((_compile-simple110039_
                  (lambda (_hd-ids110233_ _exprs110234_ _body110235_)
                    (let ((__tmp116431
                           (let ((__tmp116432
                                  (let ((__tmp116434
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110233_)
                                              _exprs110234_))
                                        (__tmp116433
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110235_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116434 __tmp116433))))
                             (declare (not safe))
                             (cons 'letrec __tmp116432))))
                      (declare (not safe))
                      (__SRC__% __tmp116431 _stx110037_))))
                 (_compile-values110040_
                  (lambda (_hd-ids110147_ _exprs110148_ _body110149_)
                    (let _lp110151_ ((_rest110153_ _hd-ids110147_)
                                     (_exprs110154_ _exprs110148_)
                                     (_pre110155_ '())
                                     (_bind110156_ '())
                                     (_post110157_ '()))
                      (let* ((_rest110158110172_ _rest110153_)
                             (_else110161110180_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner110041_
                                   _pre110155_
                                   _bind110156_
                                   _post110157_
                                   _body110149_)))))
                        (let ((_K110166110216_
                               (lambda (_rest110213_ _id110214_)
                                 (let ((__tmp116440 (cdr _exprs110154_))
                                       (__tmp116435
                                        (let ((__tmp116436
                                               (let ((__tmp116439
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id110214_)))
                                                     (__tmp116437
                                                      (let ((__tmp116438
                                                             (car _exprs110154_)))
                                                        (declare (not safe))
                                                        (cons __tmp116438
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp116439
                                                       __tmp116437))))
                                          (declare (not safe))
                                          (cons __tmp116436 _bind110156_))))
                                   (declare (not safe))
                                   (_lp110151_
                                    _rest110213_
                                    __tmp116440
                                    _pre110155_
                                    __tmp116435
                                    _post110157_))))
                              (_K110163110198_
                               (lambda (_rest110184_ _hd110185_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110185_))
                                     (let ((__tmp116468 (cdr _exprs110154_))
                                           (__tmp116461
                                            (let ((__tmp116462
                                                   (let ((__tmp116467
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd110185_)))
                                                         (__tmp116463
                                                          (let ((__tmp116464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp116465
                                (let ((__tmp116466 (car _exprs110154_)))
                                  (declare (not safe))
                                  (cons __tmp116466 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp116465))))
                    (declare (not safe))
                    (cons __tmp116464 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp116467
                                                           __tmp116463))))
                                              (declare (not safe))
                                              (cons __tmp116462
                                                    _bind110156_))))
                                       (declare (not safe))
                                       (_lp110151_
                                        _rest110184_
                                        __tmp116468
                                        _pre110155_
                                        __tmp116461
                                        _post110157_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd110185_))
                                         (let* ((_len110187_
                                                 (length _hd110185_))
                                                (_tmp110189_
                                                 (let ((__tmp116441 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp116441))))
                                           (let ((__tmp116460
                                                  (cdr _exprs110154_))
                                                 (__tmp116453
                                                  (let ((__tmp116454
                                                         (lambda (_id110192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r110193_)
                   (if (let () (declare (not safe)) (__AST-e _id110192_))
                       (let ((__tmp116455
                              (let ((__tmp116459
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id110192_)))
                                    (__tmp116456
                                     (let ((__tmp116457
                                            (let ((__tmp116458
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp116458))))
                                       (declare (not safe))
                                       (cons __tmp116457 '()))))
                                (declare (not safe))
                                (cons __tmp116459 __tmp116456))))
                         (declare (not safe))
                         (cons __tmp116455 _r110193_))
                       _r110193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp116454
                                                            _pre110155_
                                                            _hd110185_)))
                                                 (__tmp116449
                                                  (let ((__tmp116450
                                                         (let ((__tmp116451
                                                                (let ((__tmp116452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs110154_)))
                          (declare (not safe))
                          (cons __tmp116452 '()))))
                   (declare (not safe))
                   (cons _tmp110189_ __tmp116451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116450
                                                          _bind110156_)))
                                                 (__tmp116442
                                                  (let ((__tmp116443
                                                         (let ((__tmp116444
                                                                (let ((__tmp116445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116447
                                      (lambda (_id110195_ _k110196_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id110195_))
                                            (let ((__tmp116448
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id110195_))))
                                              (declare (not safe))
                                              (cons __tmp116448 _k110196_))
                                            '#f)))
                                     (__tmp116446
                                      (let ()
                                        (declare (not safe))
                                        (iota _len110187_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp116447
                                  _hd110185_
                                  __tmp116446))))
                          (declare (not safe))
                          (cons _len110187_ __tmp116445))))
                   (declare (not safe))
                   (cons _tmp110189_ __tmp116444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116443
                                                          _post110157_))))
                                             (declare (not safe))
                                             (_lp110151_
                                              _rest110184_
                                              __tmp116460
                                              __tmp116453
                                              __tmp116449
                                              __tmp116442)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx110037_
                                            _hd110185_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110158110172_))
                              (let ((_tl110168110221_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110158110172_)))
                                    (_hd110167110219_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110158110172_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd110167110219_))
                                    (let ((_tl110170110226_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd110167110219_)))
                                          (_hd110169110224_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd110167110219_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl110170110226_))
                                          (let ((_id110229_ _hd110169110224_)
                                                (_rest110231_
                                                 _tl110168110221_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110166110216_
                                               _rest110231_
                                               _id110229_)))
                                          (let ((_hd110206_ _hd110167110219_)
                                                (_rest110208_
                                                 _tl110168110221_))
                                            (let ()
                                              (declare (not safe))
                                              (_K110163110198_
                                               _rest110208_
                                               _hd110206_)))))
                                    (let ((_hd110206_ _hd110167110219_)
                                          (_rest110208_ _tl110168110221_))
                                      (let ()
                                        (declare (not safe))
                                        (_K110163110198_
                                         _rest110208_
                                         _hd110206_)))))
                              (let ()
                                (declare (not safe))
                                (_else110161110180_))))))))
                 (_compile-inner110041_
                  (lambda (_pre110142_ _bind110143_ _post110144_ _body110145_)
                    (if (let () (declare (not safe)) (null? _pre110142_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind110042_
                           _bind110143_
                           _post110144_
                           _body110145_))
                        (let ((__tmp116469
                               (let ((__tmp116470
                                      (let ((__tmp116473 (reverse _pre110142_))
                                            (__tmp116471
                                             (let ((__tmp116472
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind110042_
                                                       _bind110143_
                                                       _post110144_
                                                       _body110145_))))
                                               (declare (not safe))
                                               (cons __tmp116472 '()))))
                                        (declare (not safe))
                                        (cons __tmp116473 __tmp116471))))
                                 (declare (not safe))
                                 (cons 'let __tmp116470))))
                          (declare (not safe))
                          (__SRC__% __tmp116469 _stx110037_)))))
                 (_compile-bind110042_
                  (lambda (_bind110138_ _post110139_ _body110140_)
                    (let ((__tmp116474
                           (let ((__tmp116475
                                  (let ((__tmp116478 (reverse _bind110138_))
                                        (__tmp116476
                                         (let ((__tmp116477
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post110043_
                                                   _post110139_
                                                   _body110140_))))
                                           (declare (not safe))
                                           (cons __tmp116477 '()))))
                                    (declare (not safe))
                                    (cons __tmp116478 __tmp116476))))
                             (declare (not safe))
                             (cons 'letrec __tmp116475))))
                      (declare (not safe))
                      (__SRC__% __tmp116474 _stx110037_))))
                 (_compile-post110043_
                  (lambda (_post110045_ _body110046_)
                    (let _lp110048_ ((_rest110050_ _post110045_)
                                     (_check110051_ '())
                                     (_bind110052_ '()))
                      (let* ((_rest110053110065_ _rest110050_)
                             (_else110055110073_
                              (lambda ()
                                (let ((__tmp116479
                                       (let ((__tmp116480
                                              (let ((__tmp116481
                                                     (let ((__tmp116482
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body110046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp116482 _bind110052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp116481
                                                        _check110051_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp116480))))
                                  (declare (not safe))
                                  (__SRC__% __tmp116479 _stx110037_))))
                             (_K110057110112_
                              (lambda (_rest110076_
                                       _init110077_
                                       _len110078_
                                       _tmp110079_)
                                (let ((__tmp116491
                                       (let ((__tmp116492
                                              (let ((__tmp116493
                                                     (let ((__tmp116494
                                                            (let ((__tmp116495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len110078_ '()))))
                      (declare (not safe))
                      (cons _tmp110079_ __tmp116495))))
               (declare (not safe))
               (cons '__check-values __tmp116494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp116493
                                                 _stx110037_))))
                                         (declare (not safe))
                                         (cons __tmp116492 _check110051_)))
                                      (__tmp116483
                                       (let ((__tmp116484
                                              (lambda (_hd110081_ _r110082_)
                                                (let* ((_hd110083110090_
                                                        _hd110081_)
                                                       (_E110085110094_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd110083110090_)))
               (_K110086110100_
                (lambda (_k110097_ _id110098_)
                  (let ((__tmp116485
                         (let ((__tmp116486
                                (let ((__tmp116487
                                       (let ((__tmp116488
                                              (let ((__tmp116489
                                                     (let ((__tmp116490
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k110097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp110079_ __tmp116490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp116489))))
                                         (declare (not safe))
                                         (cons __tmp116488 '()))))
                                  (declare (not safe))
                                  (cons _id110098_ __tmp116487))))
                           (declare (not safe))
                           (cons 'set! __tmp116486))))
                    (declare (not safe))
                    (cons __tmp116485 _r110082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd110083110090_))
                                                      (let ((_hd110087110103_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd110083110090_)))
                    (_tl110088110105_
                     (let () (declare (not safe)) (##cdr _hd110083110090_))))
                (let* ((_id110108_ _hd110087110103_)
                       (_k110110_ _tl110088110105_))
                  (declare (not safe))
                  (_K110086110100_ _k110110_ _id110108_)))
              (let () (declare (not safe)) (_E110085110094_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp116484
                                                 _bind110052_
                                                 _init110077_))))
                                  (declare (not safe))
                                  (_lp110048_
                                   _rest110076_
                                   __tmp116491
                                   __tmp116483)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110053110065_))
                            (let ((_hd110058110115_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110053110065_)))
                                  (_tl110059110117_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110053110065_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd110058110115_))
                                  (let ((_hd110060110120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd110058110115_)))
                                        (_tl110061110122_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd110058110115_))))
                                    (let ((_tmp110125_ _hd110060110120_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl110061110122_))
                                          (let ((_hd110062110127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl110061110122_)))
                                                (_tl110063110129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl110061110122_))))
                                            (let* ((_len110132_
                                                    _hd110062110127_)
                                                   (_init110134_
                                                    _tl110063110129_)
                                                   (_rest110136_
                                                    _tl110059110117_))
                                              (declare (not safe))
                                              (_K110057110112_
                                               _rest110136_
                                               _init110134_
                                               _len110132_
                                               _tmp110125_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else110055110073_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else110055110073_))))
                            (let ()
                              (declare (not safe))
                              (_else110055110073_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx110037_
             _compile-simple110039_
             _compile-values110040_)))))
    (define __compile-letrec*-values%
      (lambda (_stx109792_)
        (letrec ((_compile-simple109794_
                  (lambda (_hd-ids110033_ _exprs110034_ _body110035_)
                    (let ((__tmp116496
                           (let ((__tmp116497
                                  (let ((__tmp116499
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids110033_)
                                              _exprs110034_))
                                        (__tmp116498
                                         (let ()
                                           (declare (not safe))
                                           (cons _body110035_ '()))))
                                    (declare (not safe))
                                    (cons __tmp116499 __tmp116498))))
                             (declare (not safe))
                             (cons 'letrec* __tmp116497))))
                      (declare (not safe))
                      (__SRC__% __tmp116496 _stx109792_))))
                 (_compile-values109795_
                  (lambda (_hd-ids109944_ _exprs109945_ _body109946_)
                    (let _lp109948_ ((_rest109950_ _hd-ids109944_)
                                     (_exprs109951_ _exprs109945_)
                                     (_bind109952_ '())
                                     (_post109953_ '()))
                      (let* ((_rest109954109968_ _rest109950_)
                             (_else109957109976_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind109796_
                                   _bind109952_
                                   _post109953_
                                   _body109946_)))))
                        (let ((_K109962110016_
                               (lambda (_rest110011_ _hd110012_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd110012_))
                                     (let ((_id110014_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd110012_))))
                                       (let ((__tmp116514 (cdr _exprs109951_))
                                             (__tmp116509
                                              (let ((__tmp116510
                                                     (let ((__tmp116511
                                                            (let ((__tmp116512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116513
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116513))))
                      (declare (not safe))
                      (cons __tmp116512 '()))))
               (declare (not safe))
               (cons _id110014_ __tmp116511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116510
                                                      _bind109952_)))
                                             (__tmp116505
                                              (let ((__tmp116506
                                                     (let ((__tmp116507
                                                            (let ((__tmp116508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs109951_)))
                      (declare (not safe))
                      (cons __tmp116508 '()))))
               (declare (not safe))
               (cons _id110014_ __tmp116507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116506
                                                      _post109953_))))
                                         (declare (not safe))
                                         (_lp109948_
                                          _rest110011_
                                          __tmp116514
                                          __tmp116509
                                          __tmp116505)))
                                     (let ((__tmp116504 (cdr _exprs109951_))
                                           (__tmp116500
                                            (let ((__tmp116501
                                                   (let ((__tmp116502
                                                          (let ((__tmp116503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs109951_)))
                    (declare (not safe))
                    (cons __tmp116503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp116502))))
                                              (declare (not safe))
                                              (cons __tmp116501
                                                    _post109953_))))
                                       (declare (not safe))
                                       (_lp109948_
                                        _rest110011_
                                        __tmp116504
                                        _bind109952_
                                        __tmp116500)))))
                              (_K109959109996_
                               (lambda (_rest109980_ _hd109981_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109981_))
                                     (let ((_id109983_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd109981_))))
                                       (let ((__tmp116550 (cdr _exprs109951_))
                                             (__tmp116545
                                              (let ((__tmp116546
                                                     (let ((__tmp116547
                                                            (let ((__tmp116548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116549
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp116549))))
                      (declare (not safe))
                      (cons __tmp116548 '()))))
               (declare (not safe))
               (cons _id109983_ __tmp116547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116546
                                                      _bind109952_)))
                                             (__tmp116539
                                              (let ((__tmp116540
                                                     (let ((__tmp116541
                                                            (let ((__tmp116542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp116543
                                  (let ((__tmp116544 (car _exprs109951_)))
                                    (declare (not safe))
                                    (cons __tmp116544 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp116543))))
                      (declare (not safe))
                      (cons __tmp116542 '()))))
               (declare (not safe))
               (cons _id109983_ __tmp116541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp116540
                                                      _post109953_))))
                                         (declare (not safe))
                                         (_lp109948_
                                          _rest109980_
                                          __tmp116550
                                          __tmp116545
                                          __tmp116539)))
                                     (if (let ((__tmp116538
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd109981_))))
                                           (declare (not safe))
                                           (not __tmp116538))
                                         (let ((__tmp116537
                                                (cdr _exprs109951_))
                                               (__tmp116533
                                                (let ((__tmp116534
                                                       (let ((__tmp116535
                                                              (let ((__tmp116536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs109951_)))
                        (declare (not safe))
                        (cons __tmp116536 '()))))
                 (declare (not safe))
                 (cons '#f __tmp116535))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp116534
                                                        _post109953_))))
                                           (declare (not safe))
                                           (_lp109948_
                                            _rest109980_
                                            __tmp116537
                                            _bind109952_
                                            __tmp116533))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd109981_))
                                             (let* ((_len109985_
                                                     (length _hd109981_))
                                                    (_tmp109987_
                                                     (let ((__tmp116515
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp116515))))
                                               (let ((__tmp116532
                                                      (cdr _exprs109951_))
                                                     (__tmp116525
                                                      (let ((__tmp116526
                                                             (lambda (_id109990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r109991_)
                       (if (let () (declare (not safe)) (__AST-e _id109990_))
                           (let ((__tmp116527
                                  (let ((__tmp116531
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109990_)))
                                        (__tmp116528
                                         (let ((__tmp116529
                                                (let ((__tmp116530
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp116530))))
                                           (declare (not safe))
                                           (cons __tmp116529 '()))))
                                    (declare (not safe))
                                    (cons __tmp116531 __tmp116528))))
                             (declare (not safe))
                             (cons __tmp116527 _r109991_))
                           _r109991_))))
                (declare (not safe))
                (foldl1 __tmp116526 _bind109952_ _hd109981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp116516
                                                      (let ((__tmp116517
                                                             (let ((__tmp116518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116524 (car _exprs109951_))
                                  (__tmp116519
                                   (let ((__tmp116520
                                          (let ((__tmp116522
                                                 (lambda (_id109993_ _k109994_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id109993_))
                                                       (let ((__tmp116523
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id109993_))))
                 (declare (not safe))
                 (cons __tmp116523 _k109994_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp116521
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len109985_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp116522
                                             _hd109981_
                                             __tmp116521))))
                                     (declare (not safe))
                                     (cons _len109985_ __tmp116520))))
                              (declare (not safe))
                              (cons __tmp116524 __tmp116519))))
                       (declare (not safe))
                       (cons _tmp109987_ __tmp116518))))
                (declare (not safe))
                (cons __tmp116517 _post109953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp109948_
                                                  _rest109980_
                                                  __tmp116532
                                                  __tmp116525
                                                  __tmp116516)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx109792_
                                                _hd109981_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109954109968_))
                              (let ((_tl109964110021_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109954109968_)))
                                    (_hd109963110019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109954109968_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109963110019_))
                                    (let ((_tl109966110026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109963110019_)))
                                          (_hd109965110024_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109963110019_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109966110026_))
                                          (let ((_hd110029_ _hd109965110024_)
                                                (_rest110031_
                                                 _tl109964110021_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109962110016_
                                               _rest110031_
                                               _hd110029_)))
                                          (let ((_hd110004_ _hd109963110019_)
                                                (_rest110006_
                                                 _tl109964110021_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109959109996_
                                               _rest110006_
                                               _hd110004_)))))
                                    (let ((_hd110004_ _hd109963110019_)
                                          (_rest110006_ _tl109964110021_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109959109996_
                                         _rest110006_
                                         _hd110004_)))))
                              (let ()
                                (declare (not safe))
                                (_else109957109976_))))))))
                 (_compile-bind109796_
                  (lambda (_bind109940_ _post109941_ _body109942_)
                    (let ((__tmp116551
                           (let ((__tmp116552
                                  (let ((__tmp116555 (reverse _bind109940_))
                                        (__tmp116553
                                         (let ((__tmp116554
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post109797_
                                                   _post109941_
                                                   _body109942_))))
                                           (declare (not safe))
                                           (cons __tmp116554 '()))))
                                    (declare (not safe))
                                    (cons __tmp116555 __tmp116553))))
                             (declare (not safe))
                             (cons 'let __tmp116552))))
                      (declare (not safe))
                      (__SRC__% __tmp116551 _stx109792_))))
                 (_compile-post109797_
                  (lambda (_post109799_ _body109800_)
                    (let ((__tmp116556
                           (let ((__tmp116557
                                  (let ((__tmp116558
                                         (let ((__tmp116560
                                                (lambda (_hd109802_ _r109803_)
                                                  (let* ((_hd109804109827_
                                                          _hd109802_)
                                                         (_E109808109831_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd109804109827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K109821109925_
                                                           (lambda (_expr109923_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr109923_ _r109803_))))
                  (_K109816109903_
                   (lambda (_expr109900_ _id109901_)
                     (let ((__tmp116561
                            (let ((__tmp116562
                                   (let ((__tmp116563
                                          (let ((__tmp116564
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr109900_ '()))))
                                            (declare (not safe))
                                            (cons _id109901_ __tmp116564))))
                                     (declare (not safe))
                                     (cons 'set! __tmp116563))))
                              (declare (not safe))
                              (__SRC__% __tmp116562 _stx109792_))))
                       (declare (not safe))
                       (cons __tmp116561 _r109803_))))
                  (_K109809109870_
                   (lambda (_init109835_ _len109836_ _expr109837_ _tmp109838_)
                     (let ((__tmp116565
                            (let ((__tmp116566
                                   (let ((__tmp116567
                                          (let ((__tmp116581
                                                 (let ((__tmp116582
                                                        (let ((__tmp116583
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr109837_ '()))))
                  (declare (not safe))
                  (cons _tmp109838_ __tmp116583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116582 '())))
                                                (__tmp116568
                                                 (let ((__tmp116577
                                                        (let ((__tmp116578
                                                               (let ((__tmp116579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp116580
                                     (let ()
                                       (declare (not safe))
                                       (cons _len109836_ '()))))
                                (declare (not safe))
                                (cons _tmp109838_ __tmp116580))))
                         (declare (not safe))
                         (cons '__check-values __tmp116579))))
                  (declare (not safe))
                  (__SRC__% __tmp116578 _stx109792_)))
               (__tmp116569
                (let ((__tmp116570
                       (map (lambda (_hd109840_)
                              (let* ((_hd109841109848_ _hd109840_)
                                     (_E109843109852_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd109841109848_)))
                                     (_K109844109858_
                                      (lambda (_k109855_ _id109856_)
                                        (let ((__tmp116571
                                               (let ((__tmp116572
                                                      (let ((__tmp116573
                                                             (let ((__tmp116574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp116575
                                   (let ((__tmp116576
                                          (let ()
                                            (declare (not safe))
                                            (cons _k109855_ '()))))
                                     (declare (not safe))
                                     (cons _tmp109838_ __tmp116576))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp116575))))
                       (declare (not safe))
                       (cons __tmp116574 '()))))
                (declare (not safe))
                (cons _id109856_ __tmp116573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp116572))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp116571
                                           _stx109792_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109841109848_))
                                    (let ((_hd109845109861_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109841109848_)))
                                          (_tl109846109863_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109841109848_))))
                                      (let* ((_id109866_ _hd109845109861_)
                                             (_k109868_ _tl109846109863_))
                                        (declare (not safe))
                                        (_K109844109858_
                                         _k109868_
                                         _id109866_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E109843109852_)))))
                            _init109835_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp116570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp116577
                                                         __tmp116569))))
                                            (declare (not safe))
                                            (cons __tmp116581 __tmp116568))))
                                     (declare (not safe))
                                     (cons 'let __tmp116567))))
                              (declare (not safe))
                              (__SRC__% __tmp116566 _stx109792_))))
                       (declare (not safe))
                       (cons __tmp116565 _r109803_)))))
              (if (let () (declare (not safe)) (##pair? _hd109804109827_))
                  (let ((_tl109823109930_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd109804109827_)))
                        (_hd109822109928_
                         (let ()
                           (declare (not safe))
                           (##car _hd109804109827_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd109822109928_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109823109930_))
                            (let ((_tl109825109935_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109823109930_)))
                                  (_hd109824109933_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109823109930_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109825109935_))
                                  (let ((_expr109938_ _hd109824109933_))
                                    (declare (not safe))
                                    (_K109821109925_ _expr109938_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109825109935_))
                                      (let ((_tl109815109889_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109825109935_)))
                                            (_hd109814109887_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109825109935_))))
                                        (let ((_tmp109878_ _hd109822109928_)
                                              (_expr109885_ _hd109824109933_)
                                              (_len109892_ _hd109814109887_)
                                              (_init109894_ _tl109815109889_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109809109870_
                                             _init109894_
                                             _len109892_
                                             _expr109885_
                                             _tmp109878_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109808109831_)))))
                            (let () (declare (not safe)) (_E109808109831_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109823109930_))
                            (let ((_tl109820109915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109823109930_)))
                                  (_hd109819109913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109823109930_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109820109915_))
                                  (let ((_id109911_ _hd109822109928_)
                                        (_expr109918_ _hd109819109913_))
                                    (let ()
                                      (declare (not safe))
                                      (_K109816109903_
                                       _expr109918_
                                       _id109911_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109820109915_))
                                      (let ((_tl109815109889_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109820109915_)))
                                            (_hd109814109887_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109820109915_))))
                                        (let ((_tmp109878_ _hd109822109928_)
                                              (_expr109885_ _hd109819109913_)
                                              (_len109892_ _hd109814109887_)
                                              (_init109894_ _tl109815109889_))
                                          (let ()
                                            (declare (not safe))
                                            (_K109809109870_
                                             _init109894_
                                             _len109892_
                                             _expr109885_
                                             _tmp109878_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E109808109831_)))))
                            (let () (declare (not safe)) (_E109808109831_)))))
                  (let () (declare (not safe)) (_E109808109831_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp116559
                                                (list _body109800_)))
                                           (declare (not safe))
                                           (foldl1 __tmp116560
                                                   __tmp116559
                                                   _post109799_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp116558))))
                             (declare (not safe))
                             (cons 'begin __tmp116557))))
                      (declare (not safe))
                      (__SRC__% __tmp116556 _stx109792_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx109792_
             _compile-simple109794_
             _compile-values109795_)))))
    (define __compile-call%
      (lambda (_stx109752_)
        (let* ((_$e109754_ _stx109752_)
               (_$E109756109765_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109754_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109754_))
              (let* ((_$tgt109757109768_
                      (let () (declare (not safe)) (__AST-e _$e109754_)))
                     (_$hd109758109771_
                      (let () (declare (not safe)) (##car _$tgt109757109768_)))
                     (_$tl109759109774_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109757109768_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109759109774_))
                    (let* ((_$tgt109760109778_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109759109774_)))
                           (_$hd109761109781_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109760109778_)))
                           (_$tl109762109784_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109760109778_))))
                      (let* ((_rator109788_ _$hd109761109781_)
                             (_rands109790_ _$tl109762109784_)
                             (__tmp116584
                              (let ((__tmp116586
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator109788_)))
                                    (__tmp116585
                                     (map __compile _rands109790_)))
                                (declare (not safe))
                                (cons __tmp116586 __tmp116585))))
                        (declare (not safe))
                        (__SRC__% __tmp116584 _stx109752_)))
                    (let () (declare (not safe)) (_$E109756109765_))))
              (let () (declare (not safe)) (_$E109756109765_))))))
    (define __compile-ref%
      (lambda (_stx109714_)
        (let* ((_$e109716_ _stx109714_)
               (_$E109718109727_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109716_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109716_))
              (let* ((_$tgt109719109730_
                      (let () (declare (not safe)) (__AST-e _$e109716_)))
                     (_$hd109720109733_
                      (let () (declare (not safe)) (##car _$tgt109719109730_)))
                     (_$tl109721109736_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109719109730_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109721109736_))
                    (let* ((_$tgt109722109740_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109721109736_)))
                           (_$hd109723109743_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109722109740_)))
                           (_$tl109724109746_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109722109740_))))
                      (let ((_id109750_ _$hd109723109743_))
                        (if (let ((__tmp116587
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109724109746_))))
                              (declare (not safe))
                              (equal? __tmp116587 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id109750_ _stx109714_))
                            (let () (declare (not safe)) (_$E109718109727_)))))
                    (let () (declare (not safe)) (_$E109718109727_))))
              (let () (declare (not safe)) (_$E109718109727_))))))
    (define __compile-setq%
      (lambda (_stx109661_)
        (let* ((_$e109663_ _stx109661_)
               (_$E109665109677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109663_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109663_))
              (let* ((_$tgt109666109680_
                      (let () (declare (not safe)) (__AST-e _$e109663_)))
                     (_$hd109667109683_
                      (let () (declare (not safe)) (##car _$tgt109666109680_)))
                     (_$tl109668109686_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109666109680_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109668109686_))
                    (let* ((_$tgt109669109690_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109668109686_)))
                           (_$hd109670109693_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109669109690_)))
                           (_$tl109671109696_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109669109690_))))
                      (let ((_id109700_ _$hd109670109693_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109671109696_))
                            (let* ((_$tgt109672109702_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109671109696_)))
                                   (_$hd109673109705_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109672109702_)))
                                   (_$tl109674109708_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109672109702_))))
                              (let ((_expr109712_ _$hd109673109705_))
                                (if (let ((__tmp116593
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109674109708_))))
                                      (declare (not safe))
                                      (equal? __tmp116593 '()))
                                    (let ((__tmp116588
                                           (let ((__tmp116589
                                                  (let ((__tmp116592
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id109700_
                                                            _stx109661_)))
                                                        (__tmp116590
                                                         (let ((__tmp116591
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr109712_))))
                   (declare (not safe))
                   (cons __tmp116591 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp116592
                                                          __tmp116590))))
                                             (declare (not safe))
                                             (cons 'set! __tmp116589))))
                                      (declare (not safe))
                                      (__SRC__% __tmp116588 _stx109661_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109665109677_)))))
                            (let () (declare (not safe)) (_$E109665109677_)))))
                    (let () (declare (not safe)) (_$E109665109677_))))
              (let () (declare (not safe)) (_$E109665109677_))))))
    (define __compile-if%
      (lambda (_stx109593_)
        (let* ((_$e109595_ _stx109593_)
               (_$E109597109612_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109595_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109595_))
              (let* ((_$tgt109598109615_
                      (let () (declare (not safe)) (__AST-e _$e109595_)))
                     (_$hd109599109618_
                      (let () (declare (not safe)) (##car _$tgt109598109615_)))
                     (_$tl109600109621_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109598109615_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109600109621_))
                    (let* ((_$tgt109601109625_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109600109621_)))
                           (_$hd109602109628_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109601109625_)))
                           (_$tl109603109631_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109601109625_))))
                      (let ((_p109635_ _$hd109602109628_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109603109631_))
                            (let* ((_$tgt109604109637_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109603109631_)))
                                   (_$hd109605109640_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109604109637_)))
                                   (_$tl109606109643_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109604109637_))))
                              (let ((_t109647_ _$hd109605109640_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl109606109643_))
                                    (let* ((_$tgt109607109649_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl109606109643_)))
                                           (_$hd109608109652_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt109607109649_)))
                                           (_$tl109609109655_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt109607109649_))))
                                      (let ((_f109659_ _$hd109608109652_))
                                        (if (let ((__tmp116601
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl109609109655_))))
                                              (declare (not safe))
                                              (equal? __tmp116601 '()))
                                            (let ((__tmp116594
                                                   (let ((__tmp116595
                                                          (let ((__tmp116600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p109635_)))
                        (__tmp116596
                         (let ((__tmp116599
                                (let ()
                                  (declare (not safe))
                                  (__compile _t109647_)))
                               (__tmp116597
                                (let ((__tmp116598
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f109659_))))
                                  (declare (not safe))
                                  (cons __tmp116598 '()))))
                           (declare (not safe))
                           (cons __tmp116599 __tmp116597))))
                    (declare (not safe))
                    (cons __tmp116600 __tmp116596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp116595))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp116594
                                               _stx109593_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E109597109612_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109597109612_)))))
                            (let () (declare (not safe)) (_$E109597109612_)))))
                    (let () (declare (not safe)) (_$E109597109612_))))
              (let () (declare (not safe)) (_$E109597109612_))))))
    (define __compile-quote%
      (lambda (_stx109555_)
        (let* ((_$e109557_ _stx109555_)
               (_$E109559109568_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109557_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109557_))
              (let* ((_$tgt109560109571_
                      (let () (declare (not safe)) (__AST-e _$e109557_)))
                     (_$hd109561109574_
                      (let () (declare (not safe)) (##car _$tgt109560109571_)))
                     (_$tl109562109577_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109560109571_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109562109577_))
                    (let* ((_$tgt109563109581_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109562109577_)))
                           (_$hd109564109584_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109563109581_)))
                           (_$tl109565109587_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109563109581_))))
                      (let ((_e109591_ _$hd109564109584_))
                        (if (let ((__tmp116605
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109565109587_))))
                              (declare (not safe))
                              (equal? __tmp116605 '()))
                            (let ((__tmp116602
                                   (let ((__tmp116603
                                          (let ((__tmp116604
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e109591_))))
                                            (declare (not safe))
                                            (cons __tmp116604 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116603))))
                              (declare (not safe))
                              (__SRC__% __tmp116602 _stx109555_))
                            (let () (declare (not safe)) (_$E109559109568_)))))
                    (let () (declare (not safe)) (_$E109559109568_))))
              (let () (declare (not safe)) (_$E109559109568_))))))
    (define __compile-quote-syntax%
      (lambda (_stx109517_)
        (let* ((_$e109519_ _stx109517_)
               (_$E109521109530_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109519_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109519_))
              (let* ((_$tgt109522109533_
                      (let () (declare (not safe)) (__AST-e _$e109519_)))
                     (_$hd109523109536_
                      (let () (declare (not safe)) (##car _$tgt109522109533_)))
                     (_$tl109524109539_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109522109533_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109524109539_))
                    (let* ((_$tgt109525109543_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109524109539_)))
                           (_$hd109526109546_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109525109543_)))
                           (_$tl109527109549_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109525109543_))))
                      (let ((_e109553_ _$hd109526109546_))
                        (if (let ((__tmp116608
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl109527109549_))))
                              (declare (not safe))
                              (equal? __tmp116608 '()))
                            (let ((__tmp116606
                                   (let ((__tmp116607
                                          (let ()
                                            (declare (not safe))
                                            (cons _e109553_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp116607))))
                              (declare (not safe))
                              (__SRC__% __tmp116606 _stx109517_))
                            (let () (declare (not safe)) (_$E109521109530_)))))
                    (let () (declare (not safe)) (_$E109521109530_))))
              (let () (declare (not safe)) (_$E109521109530_))))))
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
