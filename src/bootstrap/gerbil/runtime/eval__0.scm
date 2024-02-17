(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708194419)
  (begin
    (define __context::t
      (let ((__tmp112033 (list))
            (__tmp112031
             (let ((__tmp112032
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112032 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp112033
         '(t ns super table)
         __tmp112031
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args107768_ (apply make-instance __context::t _$args107768_)))
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
      (let ((__tmp112036 (list))
            (__tmp112034
             (let ((__tmp112035
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112035 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp112036
         '(id)
         __tmp112034
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args107765_ (apply make-instance __runtime::t _$args107765_)))
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
      (let ((__tmp112039 (list))
            (__tmp112037
             (let ((__tmp112038
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112038 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp112039
         '(e id)
         __tmp112037
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args107762_ (apply make-instance __syntax::t _$args107762_)))
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
      (let ((__tmp112042 (list __syntax::t))
            (__tmp112040
             (let ((__tmp112041
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112041 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp112042
         '()
         __tmp112040
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args107759_ (apply make-instance __macro::t _$args107759_)))
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
      (let ((__tmp112045 (list __macro::t))
            (__tmp112043
             (let ((__tmp112044
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112044 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp112045
         '()
         __tmp112043
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args107756_
        (apply make-instance __special-form::t _$args107756_)))
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
      (let ((__tmp112048 (list __syntax::t))
            (__tmp112046
             (let ((__tmp112047
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112047 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp112048
         '()
         __tmp112046
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args107753_
        (apply make-instance __core-form::t _$args107753_)))
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
      (let ((__tmp112051 (list __core-form::t))
            (__tmp112049
             (let ((__tmp112050
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112050 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp112051
         '()
         __tmp112049
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args107750_
        (apply make-instance __core-expression::t _$args107750_)))
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
      (let ((__tmp112054 (list __core-form::t))
            (__tmp112052
             (let ((__tmp112053
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112053 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp112054
         '()
         __tmp112052
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args107747_
        (apply make-instance __core-special-form::t _$args107747_)))
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
      (let ((__tmp112057 (list __syntax::t))
            (__tmp112055
             (let ((__tmp112056
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112056 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp112057
         '()
         __tmp112055
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args107744_
        (apply make-instance __struct-info::t _$args107744_)))
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
      (let ((__tmp112060 (list __syntax::t))
            (__tmp112058
             (let ((__tmp112059
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112059 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp112060
         '()
         __tmp112058
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args107741_ (apply make-instance __feature::t _$args107741_)))
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
      (let ((__tmp112063 (list __context::t))
            (__tmp112061
             (let ((__tmp112062
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112062 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp112063
         '(id path import export)
         __tmp112061
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args107738_ (apply make-instance __module::t _$args107738_)))
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
      (let ((__tmp112065
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp112064 (let () (declare (not safe)) (make-hash-table-eq))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp112065 __tmp112064)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id107713_ _ctx107714_)
        (if _ctx107714_
            (let ((_id107716_
                   (let () (declare (not safe)) (__AST-e _id107713_))))
              (let _lp107718_ ((_ctx107720_ _ctx107714_))
                (let ((_$e107722_
                       (table-ref
                        (##structure-ref _ctx107720_ '4 __context::t '#f)
                        _id107716_
                        '#f)))
                  (if _$e107722_
                      (values _$e107722_)
                      (let ((_$e107725_
                             (##structure-ref
                              _ctx107720_
                              '3
                              __context::t
                              '#f)))
                        (if _$e107725_
                            (let ()
                              (declare (not safe))
                              (_lp107718_ _$e107725_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id107731_)
        (let ((_ctx107733_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id107731_ _ctx107733_))))
    (define __core-resolve
      (lambda _g112067_
        (let ((_g112066_ (let () (declare (not safe)) (##length _g112067_))))
          (cond ((let () (declare (not safe)) (##fx= _g112066_ 1))
                 (apply (lambda (_id107731_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id107731_)))
                        _g112067_))
                ((let () (declare (not safe)) (##fx= _g112066_ 2))
                 (apply (lambda (_id107735_ _ctx107736_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id107735_ _ctx107736_)))
                        _g112067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g112067_))))))
    (define __core-bound-id?__%
      (lambda (_id107696_ _is?107697_)
        (let ((_$e107699_
               (let () (declare (not safe)) (__core-resolve__0 _id107696_))))
          (if _$e107699_ (_is?107697_ _$e107699_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id107705_)
        (let ((_is?107707_ true))
          (declare (not safe))
          (__core-bound-id?__% _id107705_ _is?107707_))))
    (define __core-bound-id?
      (lambda _g112069_
        (let ((_g112068_ (let () (declare (not safe)) (##length _g112069_))))
          (cond ((let () (declare (not safe)) (##fx= _g112068_ 1))
                 (apply (lambda (_id107705_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id107705_)))
                        _g112069_))
                ((let () (declare (not safe)) (##fx= _g112068_ 2))
                 (apply (lambda (_id107709_ _is?107710_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id107709_ _is?107710_)))
                        _g112069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g112069_))))))
    (define __core-bind-runtime!__%
      (lambda (_id107679_ _eid107680_ _ctx107681_)
        (if _eid107680_
            (let ((__tmp112072
                   (##structure-ref _ctx107681_ '4 __context::t '#f))
                  (__tmp112071
                   (let () (declare (not safe)) (__AST-e _id107679_)))
                  (__tmp112070
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid107680_))))
              (declare (not safe))
              (table-set! __tmp112072 __tmp112071 __tmp112070))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id107686_ _eid107687_)
        (let ((_ctx107689_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id107686_ _eid107687_ _ctx107689_))))
    (define __core-bind-runtime!
      (lambda _g112074_
        (let ((_g112073_ (let () (declare (not safe)) (##length _g112074_))))
          (cond ((let () (declare (not safe)) (##fx= _g112073_ 2))
                 (apply (lambda (_id107686_ _eid107687_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id107686_ _eid107687_)))
                        _g112074_))
                ((let () (declare (not safe)) (##fx= _g112073_ 3))
                 (apply (lambda (_id107691_ _eid107692_ _ctx107693_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id107691_
                             _eid107692_
                             _ctx107693_)))
                        _g112074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g112074_))))))
    (define __core-bind-syntax!__%
      (lambda (_id107662_ _e107663_ _make107664_)
        (let ((__tmp112075
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107663_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107663_
                   (_make107664_ _e107663_ _id107662_))))
          (declare (not safe))
          (table-set! __*core* _id107662_ __tmp112075))))
    (define __core-bind-syntax!__0
      (lambda (_id107669_ _e107670_)
        (let ((_make107672_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id107669_ _e107670_ _make107672_))))
    (define __core-bind-syntax!
      (lambda _g112077_
        (let ((_g112076_ (let () (declare (not safe)) (##length _g112077_))))
          (cond ((let () (declare (not safe)) (##fx= _g112076_ 2))
                 (apply (lambda (_id107669_ _e107670_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id107669_ _e107670_)))
                        _g112077_))
                ((let () (declare (not safe)) (##fx= _g112076_ 3))
                 (apply (lambda (_id107674_ _e107675_ _make107676_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id107674_
                             _e107675_
                             _make107676_)))
                        _g112077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g112077_))))))
    (define __core-bind-macro!
      (lambda (_id107658_ _e107659_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107658_ _e107659_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id107655_ _e107656_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id107655_ _e107656_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id107639_ _e107640_ _ctx107641_)
        (let ((__tmp112081 (##structure-ref _ctx107641_ '4 __context::t '#f))
              (__tmp112080 (let () (declare (not safe)) (__AST-e _id107639_)))
              (__tmp112078
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e107640_
                      'gerbil/runtime/eval#__syntax::t))
                   _e107640_
                   (let ((__tmp112079
                          (let () (declare (not safe)) (__AST-e _id107639_))))
                     (declare (not safe))
                     (##structure __syntax::t _e107640_ __tmp112079)))))
          (declare (not safe))
          (table-set! __tmp112081 __tmp112080 __tmp112078))))
    (define __core-bind-user-syntax!__0
      (lambda (_id107646_ _e107647_)
        (let ((_ctx107649_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id107646_ _e107647_ _ctx107649_))))
    (define __core-bind-user-syntax!
      (lambda _g112083_
        (let ((_g112082_ (let () (declare (not safe)) (##length _g112083_))))
          (cond ((let () (declare (not safe)) (##fx= _g112082_ 2))
                 (apply (lambda (_id107646_ _e107647_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id107646_
                             _e107647_)))
                        _g112083_))
                ((let () (declare (not safe)) (##fx= _g112082_ 3))
                 (apply (lambda (_id107651_ _e107652_ _ctx107653_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id107651_
                             _e107652_
                             _ctx107653_)))
                        _g112083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g112083_))))))
    (define make-__runtime-id__%
      (lambda (_id107620_ _ctx107621_)
        (let ((_id107623_ (let () (declare (not safe)) (__AST-e _id107620_))))
          (if (let () (declare (not safe)) (eq? _id107623_ '_))
              '#f
              (if (uninterned-symbol? _id107623_)
                  (gensym _id107623_)
                  (if (let () (declare (not safe)) (symbol? _id107623_))
                      (let ((_$e107625_
                             (##structure-ref
                              _ctx107621_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e107625_))
                            (gensym _id107623_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e107625_))
                                (let ((__tmp112084
                                       (##structure-ref
                                        _ctx107621_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp112084 '"#" _id107623_))
                                _id107623_)))
                      (error '"Illegal runtime identifier" _id107623_)))))))
    (define make-__runtime-id__0
      (lambda (_id107631_)
        (let ((_ctx107633_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id107631_ _ctx107633_))))
    (define make-__runtime-id
      (lambda _g112086_
        (let ((_g112085_ (let () (declare (not safe)) (##length _g112086_))))
          (cond ((let () (declare (not safe)) (##fx= _g112085_ 1))
                 (apply (lambda (_id107631_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id107631_)))
                        _g112086_))
                ((let () (declare (not safe)) (##fx= _g112085_ 2))
                 (apply (lambda (_id107635_ _ctx107636_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id107635_ _ctx107636_)))
                        _g112086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g112086_))))))
    (define make-__context-local__%
      (lambda (_super107609_)
        (let ((__tmp112087 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super107609_ __tmp112087))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super107615_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super107615_))))
    (define make-__context-local
      (lambda _g112089_
        (let ((_g112088_ (let () (declare (not safe)) (##length _g112089_))))
          (cond ((let () (declare (not safe)) (##fx= _g112088_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g112089_))
                ((let () (declare (not safe)) (##fx= _g112088_ 1))
                 (apply (lambda (_super107617_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super107617_)))
                        _g112089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g112089_))))))
    (define make-__context-module__%
      (lambda (_id107589_ _ns107590_ _path107591_ _super107592_)
        (let ((__tmp112090 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns107590_
           _super107592_
           __tmp112090
           _id107589_
           _path107591_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id107597_ _ns107598_ _path107599_)
        (let ((_super107601_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id107597_
           _ns107598_
           _path107599_
           _super107601_))))
    (define make-__context-module
      (lambda _g112092_
        (let ((_g112091_ (let () (declare (not safe)) (##length _g112092_))))
          (cond ((let () (declare (not safe)) (##fx= _g112091_ 3))
                 (apply (lambda (_id107597_ _ns107598_ _path107599_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id107597_
                             _ns107598_
                             _path107599_)))
                        _g112092_))
                ((let () (declare (not safe)) (##fx= _g112091_ 4))
                 (apply (lambda (_id107603_
                                 _ns107604_
                                 _path107605_
                                 _super107606_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id107603_
                             _ns107604_
                             _path107605_
                             _super107606_)))
                        _g112092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g112092_))))))
    (define __SRC__%
      (lambda (_e107572_ _src-stx107573_)
        (if (or (let () (declare (not safe)) (pair? _e107572_))
                (let () (declare (not safe)) (symbol? _e107572_)))
            (let ((__tmp112093
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx107573_
                          'gerbil#AST::t))
                       (let ((__tmp112094
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx107573_))))
                         (declare (not safe))
                         (__locat __tmp112094))
                       '#f)))
              (declare (not safe))
              (##make-source _e107572_ __tmp112093))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e107572_ 'gerbil#AST::t))
                (let ((__tmp112097
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e107572_ '1 AST::t '#f)))
                      (__tmp112095
                       (let ((__tmp112096
                              (let ()
                                (declare (not safe))
                                (__AST-source _e107572_))))
                         (declare (not safe))
                         (__locat __tmp112096))))
                  (declare (not safe))
                  (##make-source __tmp112097 __tmp112095))
                (error '"BUG! Cannot sourcify object" _e107572_)))))
    (define __SRC__0
      (lambda (_e107581_)
        (let ((_src-stx107583_ '#f))
          (declare (not safe))
          (__SRC__% _e107581_ _src-stx107583_))))
    (define __SRC
      (lambda _g112099_
        (let ((_g112098_ (let () (declare (not safe)) (##length _g112099_))))
          (cond ((let () (declare (not safe)) (##fx= _g112098_ 1))
                 (apply (lambda (_e107581_)
                          (let () (declare (not safe)) (__SRC__0 _e107581_)))
                        _g112099_))
                ((let () (declare (not safe)) (##fx= _g112098_ 2))
                 (apply (lambda (_e107585_ _src-stx107586_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e107585_ _src-stx107586_)))
                        _g112099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g112099_))))))
    (define __locat
      (lambda (_loc107569_)
        (if (let () (declare (not safe)) (##locat? _loc107569_))
            _loc107569_
            '#f)))
    (define __check-values
      (lambda (_obj107564_ _k107565_)
        (let ((_count107567_
               (if (let () (declare (not safe)) (##values? _obj107564_))
                   (let () (declare (not safe)) (##vector-length _obj107564_))
                   '1)))
          (if (fx= _count107567_ _k107565_)
              '#!void
              (error (if (fx< _count107567_ _k107565_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj107564_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj107564_))
                         _obj107564_)
                     _k107565_)))))
    (define __compile
      (lambda (_stx107534_)
        (let* ((_$e107536_ _stx107534_)
               (_$E107538107544_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107536_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107536_))
              (let* ((_$tgt107539107547_
                      (let () (declare (not safe)) (__AST-e _$e107536_)))
                     (_$hd107540107550_
                      (let () (declare (not safe)) (##car _$tgt107539107547_)))
                     (_$tl107541107553_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107539107547_))))
                (let* ((_form107557_ _$hd107540107550_)
                       (_$e107559_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form107557_))))
                  (if _$e107559_
                      ((lambda (_bind107562_)
                         ((##structure-ref _bind107562_ '1 __syntax::t '#f)
                          _stx107534_))
                       _$e107559_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx107534_
                         _form107557_)))))
              (let () (declare (not safe)) (_$E107538107544_))))))
    (define __compile-error__%
      (lambda (_stx107521_ _detail107522_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx107521_
           _detail107522_))))
    (define __compile-error__0
      (lambda (_stx107527_)
        (let ((_detail107529_ '#f))
          (declare (not safe))
          (__compile-error__% _stx107527_ _detail107529_))))
    (define __compile-error
      (lambda _g112101_
        (let ((_g112100_ (let () (declare (not safe)) (##length _g112101_))))
          (cond ((let () (declare (not safe)) (##fx= _g112100_ 1))
                 (apply (lambda (_stx107527_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx107527_)))
                        _g112101_))
                ((let () (declare (not safe)) (##fx= _g112100_ 2))
                 (apply (lambda (_stx107531_ _detail107532_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx107531_ _detail107532_)))
                        _g112101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g112101_))))))
    (define __compile-ignore%
      (lambda (_stx107518_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx107518_))))
    (define __compile-begin%
      (lambda (_stx107493_)
        (let* ((_$e107495_ _stx107493_)
               (_$E107497107503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107495_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107495_))
              (let* ((_$tgt107498107506_
                      (let () (declare (not safe)) (__AST-e _$e107495_)))
                     (_$hd107499107509_
                      (let () (declare (not safe)) (##car _$tgt107498107506_)))
                     (_$tl107500107512_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107498107506_))))
                (let* ((_body107516_ _$tl107500107512_)
                       (__tmp112102
                        (let ((__tmp112103 (map __compile _body107516_)))
                          (declare (not safe))
                          (cons 'begin __tmp112103))))
                  (declare (not safe))
                  (__SRC__% __tmp112102 _stx107493_)))
              (let () (declare (not safe)) (_$E107497107503_))))))
    (define __compile-begin-foreign%
      (lambda (_stx107468_)
        (let* ((_$e107470_ _stx107468_)
               (_$E107472107478_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107470_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107470_))
              (let* ((_$tgt107473107481_
                      (let () (declare (not safe)) (__AST-e _$e107470_)))
                     (_$hd107474107484_
                      (let () (declare (not safe)) (##car _$tgt107473107481_)))
                     (_$tl107475107487_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107473107481_))))
                (let* ((_body107491_ _$tl107475107487_)
                       (__tmp112104
                        (let ((__tmp112105
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body107491_))))
                          (declare (not safe))
                          (cons 'begin __tmp112105))))
                  (declare (not safe))
                  (__SRC__% __tmp112104 _stx107468_)))
              (let () (declare (not safe)) (_$E107472107478_))))))
    (define __compile-import%
      (lambda (_stx107443_)
        (let* ((_$e107445_ _stx107443_)
               (_$E107447107453_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107445_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107445_))
              (let* ((_$tgt107448107456_
                      (let () (declare (not safe)) (__AST-e _$e107445_)))
                     (_$hd107449107459_
                      (let () (declare (not safe)) (##car _$tgt107448107456_)))
                     (_$tl107450107462_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107448107456_))))
                (let* ((_body107466_ _$tl107450107462_)
                       (__tmp112106
                        (let ((__tmp112107
                               (let ((__tmp112108
                                      (let ((__tmp112109
                                             (let ()
                                               (declare (not safe))
                                               (cons _body107466_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp112109))))
                                 (declare (not safe))
                                 (cons __tmp112108 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp112107))))
                  (declare (not safe))
                  (__SRC__% __tmp112106 _stx107443_)))
              (let () (declare (not safe)) (_$E107447107453_))))))
    (define __compile-begin-annotation%
      (lambda (_stx107390_)
        (let* ((_$e107392_ _stx107390_)
               (_$E107394107406_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107392_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107392_))
              (let* ((_$tgt107395107409_
                      (let () (declare (not safe)) (__AST-e _$e107392_)))
                     (_$hd107396107412_
                      (let () (declare (not safe)) (##car _$tgt107395107409_)))
                     (_$tl107397107415_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107395107409_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107397107415_))
                    (let* ((_$tgt107398107419_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107397107415_)))
                           (_$hd107399107422_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107398107419_)))
                           (_$tl107400107425_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107398107419_))))
                      (let ((_ann107429_ _$hd107399107422_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107400107425_))
                            (let* ((_$tgt107401107431_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107400107425_)))
                                   (_$hd107402107434_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107401107431_)))
                                   (_$tl107403107437_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107401107431_))))
                              (let ((_expr107441_ _$hd107402107434_))
                                (if (let ((__tmp112110
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107403107437_))))
                                      (declare (not safe))
                                      (equal? __tmp112110 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr107441_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107394107406_)))))
                            (let () (declare (not safe)) (_$E107394107406_)))))
                    (let () (declare (not safe)) (_$E107394107406_))))
              (let () (declare (not safe)) (_$E107394107406_))))))
    (define __compile-define-values%
      (lambda (_stx107281_)
        (let* ((_$e107283_ _stx107281_)
               (_$E107285107297_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107283_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107283_))
              (let* ((_$tgt107286107300_
                      (let () (declare (not safe)) (__AST-e _$e107283_)))
                     (_$hd107287107303_
                      (let () (declare (not safe)) (##car _$tgt107286107300_)))
                     (_$tl107288107306_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107286107300_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107288107306_))
                    (let* ((_$tgt107289107310_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107288107306_)))
                           (_$hd107290107313_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107289107310_)))
                           (_$tl107291107316_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107289107310_))))
                      (let ((_hd107320_ _$hd107290107313_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107291107316_))
                            (let* ((_$tgt107292107322_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107291107316_)))
                                   (_$hd107293107325_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107292107322_)))
                                   (_$tl107294107328_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107292107322_))))
                              (let ((_expr107332_ _$hd107293107325_))
                                (if (let ((__tmp112111
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107294107328_))))
                                      (declare (not safe))
                                      (equal? __tmp112111 '()))
                                    (let* ((_$e107334_ _hd107320_)
                                           (_$E107336107377_
                                            (lambda ()
                                              (let ((_$E107337107362_
                                                     (lambda ()
                                                       (let* ((_$E107338107349_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e107334_))))
                      (_ids107352_ _hd107320_)
                      (_len107354_ (length _ids107352_))
                      (_tmp107356_
                       (let ((__tmp112112 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp112112))))
                 (let ((__tmp112113
                        (let ((__tmp112114
                               (let ((__tmp112131
                                      (let ((__tmp112132
                                             (let ((__tmp112133
                                                    (let ((__tmp112134
                                                           (let ((__tmp112135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr107332_))))
                     (declare (not safe))
                     (cons __tmp112135 '()))))
              (declare (not safe))
              (cons _tmp107356_ __tmp112134))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp112133))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112132 _stx107281_)))
                                     (__tmp112115
                                      (let ((__tmp112127
                                             (let ((__tmp112128
                                                    (let ((__tmp112129
                                                           (let ((__tmp112130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len107354_ '()))))
                     (declare (not safe))
                     (cons _tmp107356_ __tmp112130))))
              (declare (not safe))
              (cons '__check-values __tmp112129))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp112128
                                                _stx107281_)))
                                            (__tmp112116
                                             (let ((__tmp112117
                                                    (let ((__tmp112119
                                                           (lambda (_id107359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k107360_)
                     (if (let () (declare (not safe)) (__AST-e _id107359_))
                         (let ((__tmp112120
                                (let ((__tmp112121
                                       (let ((__tmp112126
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id107359_)))
                                             (__tmp112122
                                              (let ((__tmp112123
                                                     (let ((__tmp112124
                                                            (let ((__tmp112125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k107360_ '()))))
                      (declare (not safe))
                      (cons _tmp107356_ __tmp112125))))
               (declare (not safe))
               (cons '##vector-ref __tmp112124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112123 '()))))
                                         (declare (not safe))
                                         (cons __tmp112126 __tmp112122))))
                                  (declare (not safe))
                                  (cons 'define __tmp112121))))
                           (declare (not safe))
                           (__SRC__% __tmp112120 _stx107281_))
                         '#f)))
                  (__tmp112118
                   (let () (declare (not safe)) (iota _len107354_))))
              (declare (not safe))
              (filter-map2 __tmp112119 _ids107352_ __tmp112118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp112117))))
                                        (declare (not safe))
                                        (cons __tmp112127 __tmp112116))))
                                 (declare (not safe))
                                 (cons __tmp112131 __tmp112115))))
                          (declare (not safe))
                          (cons 'begin __tmp112114))))
                   (declare (not safe))
                   (__SRC__% __tmp112113 _stx107281_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e107334_))
                                                    (let* ((_$tgt107339107365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e107334_)))
                                                           (_$hd107340107368_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt107339107365_)))
                                                           (_$tl107341107371_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt107339107365_))))
                                                      (let ((_id107375_
                                                             _$hd107340107368_))
                                                        (if (let ((__tmp112136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl107341107371_))))
                      (declare (not safe))
                      (equal? __tmp112136 '()))
                    (let ((__tmp112137
                           (let ((__tmp112138
                                  (let ((__tmp112141
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107375_)))
                                        (__tmp112139
                                         (let ((__tmp112140
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr107332_))))
                                           (declare (not safe))
                                           (cons __tmp112140 '()))))
                                    (declare (not safe))
                                    (cons __tmp112141 __tmp112139))))
                             (declare (not safe))
                             (cons 'define __tmp112138))))
                      (declare (not safe))
                      (__SRC__% __tmp112137 _stx107281_))
                    (let () (declare (not safe)) (_$E107337107362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107337107362_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e107334_))
                                          (let* ((_$tgt107342107380_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e107334_)))
                                                 (_$hd107343107383_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107342107380_)))
                                                 (_$tl107344107386_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107342107380_))))
                                            (if (let ((__tmp112142
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd107343107383_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112142 '#f))
                                                (if (let ((__tmp112143
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl107344107386_))))
                                                      (declare (not safe))
                                                      (equal? __tmp112143 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr107332_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E107336107377_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107336107377_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107336107377_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107285107297_)))))
                            (let () (declare (not safe)) (_$E107285107297_)))))
                    (let () (declare (not safe)) (_$E107285107297_))))
              (let () (declare (not safe)) (_$E107285107297_))))))
    (define __compile-head-id
      (lambda (_e107279_)
        (let ((__tmp112144
               (if (let () (declare (not safe)) (__AST-e _e107279_))
                   _e107279_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp112144))))
    (define __compile-lambda-head
      (lambda (_hd107236_)
        (let _recur107238_ ((_rest107240_ _hd107236_))
          (let* ((_$e107242_ _rest107240_)
                 (_$E107244107262_
                  (lambda ()
                    (let ((_$E107245107259_
                           (lambda ()
                             (let* ((_$E107246107254_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e107242_))))
                                    (_tail107257_ _$e107242_))
                               (declare (not safe))
                               (__compile-head-id _tail107257_)))))
                      (if (let ((__tmp112145
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e107242_))))
                            (declare (not safe))
                            (equal? __tmp112145 '()))
                          '()
                          (let () (declare (not safe)) (_$E107245107259_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107242_))
                (let* ((_$tgt107247107265_
                        (let () (declare (not safe)) (__AST-e _$e107242_)))
                       (_$hd107248107268_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107247107265_)))
                       (_$tl107249107271_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107247107265_))))
                  (let* ((_hd107275_ _$hd107248107268_)
                         (_rest107277_ _$tl107249107271_))
                    (let ((__tmp112147
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd107275_)))
                          (__tmp112146
                           (let ()
                             (declare (not safe))
                             (_recur107238_ _rest107277_))))
                      (declare (not safe))
                      (cons __tmp112147 __tmp112146))))
                (let () (declare (not safe)) (_$E107244107262_)))))))
    (define __compile-lambda%
      (lambda (_stx107183_)
        (let* ((_$e107185_ _stx107183_)
               (_$E107187107199_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107185_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107185_))
              (let* ((_$tgt107188107202_
                      (let () (declare (not safe)) (__AST-e _$e107185_)))
                     (_$hd107189107205_
                      (let () (declare (not safe)) (##car _$tgt107188107202_)))
                     (_$tl107190107208_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107188107202_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107190107208_))
                    (let* ((_$tgt107191107212_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107190107208_)))
                           (_$hd107192107215_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107191107212_)))
                           (_$tl107193107218_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107191107212_))))
                      (let ((_hd107222_ _$hd107192107215_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107193107218_))
                            (let* ((_$tgt107194107224_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107193107218_)))
                                   (_$hd107195107227_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107194107224_)))
                                   (_$tl107196107230_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107194107224_))))
                              (let ((_body107234_ _$hd107195107227_))
                                (if (let ((__tmp112148
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107196107230_))))
                                      (declare (not safe))
                                      (equal? __tmp112148 '()))
                                    (let ((__tmp112149
                                           (let ((__tmp112150
                                                  (let ((__tmp112153
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd107222_)))
                                                        (__tmp112151
                                                         (let ((__tmp112152
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body107234_))))
                   (declare (not safe))
                   (cons __tmp112152 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112153
                                                          __tmp112151))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp112150))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112149 _stx107183_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107187107199_)))))
                            (let () (declare (not safe)) (_$E107187107199_)))))
                    (let () (declare (not safe)) (_$E107187107199_))))
              (let () (declare (not safe)) (_$E107187107199_))))))
    (define __compile-case-lambda%
      (lambda (_stx106975_)
        (letrec ((_variadic?106977_
                  (lambda (_hd107148_)
                    (let* ((_$e107150_ _hd107148_)
                           (_$E107152107168_
                            (lambda ()
                              (let ((_$E107153107165_
                                     (lambda ()
                                       (let ((_$E107154107162_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e107150_)))))
                                         '#t))))
                                (if (let ((__tmp112154
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e107150_))))
                                      (declare (not safe))
                                      (equal? __tmp112154 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E107153107165_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107150_))
                          (let* ((_$tgt107155107171_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107150_)))
                                 (_$hd107156107174_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107155107171_)))
                                 (_$tl107157107177_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107155107171_))))
                            (let ((_rest107181_ _$tl107157107177_))
                              (declare (not safe))
                              (_variadic?106977_ _rest107181_)))
                          (let () (declare (not safe)) (_$E107152107168_))))))
                 (_arity106978_
                  (lambda (_hd107113_)
                    (let _lp107115_ ((_rest107117_ _hd107113_) (_k107118_ '0))
                      (let* ((_$e107120_ _rest107117_)
                             (_$E107122107133_
                              (lambda ()
                                (let ((_$E107123107130_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e107120_)))))
                                  _k107118_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e107120_))
                            (let* ((_$tgt107124107136_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e107120_)))
                                   (_$hd107125107139_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107124107136_)))
                                   (_$tl107126107142_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107124107136_))))
                              (let* ((_rest107146_ _$tl107126107142_)
                                     (__tmp112155
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k107118_ '1))))
                                (declare (not safe))
                                (_lp107115_ _rest107146_ __tmp112155)))
                            (let ()
                              (declare (not safe))
                              (_$E107122107133_)))))))
                 (_generate106979_
                  (lambda (_rest107040_ _args107041_ _len107042_)
                    (let* ((_$e107044_ _rest107040_)
                           (_$E107046107057_
                            (lambda ()
                              (let* ((_$E107047107054_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e107044_))))
                                     (__tmp112156
                                      (let ((__tmp112157
                                             (let ((__tmp112158
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args107041_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp112158))))
                                        (declare (not safe))
                                        (cons 'error __tmp112157))))
                                (declare (not safe))
                                (__SRC__% __tmp112156 _stx106975_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107044_))
                          (let* ((_$tgt107048107060_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107044_)))
                                 (_$hd107049107063_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107048107060_)))
                                 (_$tl107050107066_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107048107060_))))
                            (let* ((_clause107070_ _$hd107049107063_)
                                   (_rest107072_ _$tl107050107066_)
                                   (_$e107074_ _clause107070_)
                                   (_$E107076107085_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e107074_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e107074_))
                                  (let* ((_$tgt107077107088_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e107074_)))
                                         (_$hd107078107091_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt107077107088_)))
                                         (_$tl107079107094_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt107077107088_))))
                                    (let ((_hd107098_ _$hd107078107091_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl107079107094_))
                                          (let* ((_$tgt107080107100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107079107094_)))
                                                 (_$hd107081107103_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt107080107100_)))
                                                 (_$tl107082107106_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt107080107100_))))
                                            (if (let ((__tmp112159
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107082107106_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112159 '()))
                                                (let ((_clen107110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity106978_
                                                          _hd107098_)))
                                                      (_cmp107111_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?106977_
                                                              _hd107098_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp112160
                                                         (let ((__tmp112161
                                                                (let ((__tmp112171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112172
                                      (let ((__tmp112173
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen107110_ '()))))
                                        (declare (not safe))
                                        (cons _len107042_ __tmp112173))))
                                 (declare (not safe))
                                 (cons _cmp107111_ __tmp112172)))
                              (__tmp112162
                               (let ((__tmp112165
                                      (let ((__tmp112166
                                             (let ((__tmp112167
                                                    (let ((__tmp112169
                                                           (let ((__tmp112170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause107070_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp112170)))
                  (__tmp112168
                   (let () (declare (not safe)) (cons _args107041_ '()))))
              (declare (not safe))
              (cons __tmp112169 __tmp112168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp112167))))
                                        (declare (not safe))
                                        (__SRC__% __tmp112166 _stx106975_)))
                                     (__tmp112163
                                      (let ((__tmp112164
                                             (let ()
                                               (declare (not safe))
                                               (_generate106979_
                                                _rest107072_
                                                _args107041_
                                                _len107042_))))
                                        (declare (not safe))
                                        (cons __tmp112164 '()))))
                                 (declare (not safe))
                                 (cons __tmp112165 __tmp112163))))
                          (declare (not safe))
                          (cons __tmp112171 __tmp112162))))
                   (declare (not safe))
                   (cons 'if __tmp112161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp112160
                                                     _stx106975_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107076107085_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E107076107085_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E107076107085_)))))
                          (let () (declare (not safe)) (_$E107046107057_)))))))
          (let* ((_$e106981_ _stx106975_)
                 (_$E106983107015_
                  (lambda ()
                    (let ((_$E106984106997_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e106981_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e106981_))
                          (let* ((_$tgt106985107000_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e106981_)))
                                 (_$hd106986107003_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt106985107000_)))
                                 (_$tl106987107006_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt106985107000_))))
                            (let ((_clauses107010_ _$tl106987107006_))
                              (let ((_args107012_
                                     (let ((__tmp112174 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112174 _stx106975_)))
                                    (_len107013_
                                     (let ((__tmp112175 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp112175 _stx106975_))))
                                (let ((__tmp112176
                                       (let ((__tmp112177
                                              (let ((__tmp112178
                                                     (let ((__tmp112179
                                                            (let ((__tmp112180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112181
                                  (let ((__tmp112184
                                         (let ((__tmp112185
                                                (let ((__tmp112186
                                                       (let ((__tmp112187
                                                              (let ((__tmp112188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112189
                                    (let ()
                                      (declare (not safe))
                                      (cons _args107012_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp112189))))
                        (declare (not safe))
                        (__SRC__% __tmp112188 _stx106975_))))
                 (declare (not safe))
                 (cons __tmp112187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len107013_
                                                        __tmp112186))))
                                           (declare (not safe))
                                           (cons __tmp112185 '())))
                                        (__tmp112182
                                         (let ((__tmp112183
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate106979_
                                                   _clauses107010_
                                                   _args107012_
                                                   _len107013_))))
                                           (declare (not safe))
                                           (cons __tmp112183 '()))))
                                    (declare (not safe))
                                    (cons __tmp112184 __tmp112182))))
                             (declare (not safe))
                             (cons 'let __tmp112181))))
                      (declare (not safe))
                      (__SRC__% __tmp112180 _stx106975_))))
               (declare (not safe))
               (cons __tmp112179 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args107012_
                                                      __tmp112178))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp112177))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112176 _stx106975_)))))
                          (let () (declare (not safe)) (_$E106984106997_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e106981_))
                (let* ((_$tgt106988107018_
                        (let () (declare (not safe)) (__AST-e _$e106981_)))
                       (_$hd106989107021_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt106988107018_)))
                       (_$tl106990107024_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt106988107018_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl106990107024_))
                      (let* ((_$tgt106991107028_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl106990107024_)))
                             (_$hd106992107031_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt106991107028_)))
                             (_$tl106993107034_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt106991107028_))))
                        (let ((_clause107038_ _$hd106992107031_))
                          (if (let ((__tmp112190
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl106993107034_))))
                                (declare (not safe))
                                (equal? __tmp112190 '()))
                              (let ((__tmp112191
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause107038_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp112191))
                              (let ()
                                (declare (not safe))
                                (_$E106983107015_)))))
                      (let () (declare (not safe)) (_$E106983107015_))))
                (let () (declare (not safe)) (_$E106983107015_)))))))
    (define __compile-let-form
      (lambda (_stx106744_ _compile-simple106745_ _compile-values106746_)
        (letrec ((_simple-bind?106748_
                  (lambda (_hd106933_)
                    (let* ((_hd106934106944_ _hd106933_)
                           (_else106937106952_ (lambda () '#f)))
                      (let ((_K106940106965_ (lambda (_id106963_) '#t))
                            (_K106939106957_ (lambda () '#t)))
                        (let ((_try-match106936106960_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd106934106944_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K106939106957_))
                                     (let ()
                                       (declare (not safe))
                                       (_else106937106952_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd106934106944_))
                              (let ((_tl106942106970_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd106934106944_)))
                                    (_hd106941106968_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd106934106944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl106942106970_))
                                    (let ((_id106973_ _hd106941106968_))
                                      (declare (not safe))
                                      (_K106940106965_ _id106973_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match106936106960_))))
                              (let ()
                                (declare (not safe))
                                (_try-match106936106960_))))))))
                 (_car-e106749_
                  (lambda (_hd106931_)
                    (if (let () (declare (not safe)) (pair? _hd106931_))
                        (car _hd106931_)
                        _hd106931_))))
          (let* ((_$e106751_ _stx106744_)
                 (_$E106753106896_
                  (lambda ()
                    (let ((_$E106754106776_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e106751_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e106751_))
                          (let* ((_$tgt106755106779_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e106751_)))
                                 (_$hd106756106782_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt106755106779_)))
                                 (_$tl106757106785_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt106755106779_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106757106785_))
                                (let* ((_$tgt106758106789_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106757106785_)))
                                       (_$hd106759106792_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106758106789_)))
                                       (_$tl106760106795_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106758106789_))))
                                  (let ((_hd106799_ _$hd106759106792_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl106760106795_))
                                        (let* ((_$tgt106761106801_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl106760106795_)))
                                               (_$hd106762106804_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt106761106801_)))
                                               (_$tl106763106807_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt106761106801_))))
                                          (let ((_body106811_
                                                 _$hd106762106804_))
                                            (if (let ((__tmp112192
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl106763106807_))))
                                                  (declare (not safe))
                                                  (equal? __tmp112192 '()))
                                                (let* ((_hd-ids106851_
                                                        (map (lambda (_bind106813_)
                                                               (let* ((_$e106815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind106813_)
                              (_$E106817106826_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e106815_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e106815_))
                             (let* ((_$tgt106818106829_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e106815_)))
                                    (_$hd106819106832_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt106818106829_)))
                                    (_$tl106820106835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt106818106829_))))
                               (let ((_ids106839_ _$hd106819106832_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl106820106835_))
                                     (let* ((_$tgt106821106841_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl106820106835_)))
                                            (_$hd106822106844_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt106821106841_)))
                                            (_$tl106823106847_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt106821106841_))))
                                       (if (let ((__tmp112193
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl106823106847_))))
                                             (declare (not safe))
                                             (equal? __tmp112193 '()))
                                           _ids106839_
                                           (let ()
                                             (declare (not safe))
                                             (_$E106817106826_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E106817106826_)))))
                             (let ()
                               (declare (not safe))
                               (_$E106817106826_)))))
                     _hd106799_))
               (_exprs106891_
                (map (lambda (_bind106853_)
                       (let* ((_$e106855_ _bind106853_)
                              (_$E106857106866_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e106855_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e106855_))
                             (let* ((_$tgt106858106869_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e106855_)))
                                    (_$hd106859106872_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt106858106869_)))
                                    (_$tl106860106875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt106858106869_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl106860106875_))
                                   (let* ((_$tgt106861106879_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl106860106875_)))
                                          (_$hd106862106882_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt106861106879_)))
                                          (_$tl106863106885_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt106861106879_))))
                                     (let ((_expr106889_ _$hd106862106882_))
                                       (if (let ((__tmp112194
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl106863106885_))))
                                             (declare (not safe))
                                             (equal? __tmp112194 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr106889_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E106857106866_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E106857106866_))))
                             (let ()
                               (declare (not safe))
                               (_$E106857106866_)))))
                     _hd106799_))
               (_body106893_
                (let () (declare (not safe)) (__compile _body106811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?106748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids106851_))
              (_compile-simple106745_
               (map _car-e106749_ _hd-ids106851_)
               _exprs106891_
               _body106893_)
              (_compile-values106746_
               _hd-ids106851_
               _exprs106891_
               _body106893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E106754106776_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106754106776_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106754106776_))))
                          (let () (declare (not safe)) (_$E106754106776_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e106751_))
                (let* ((_$tgt106764106899_
                        (let () (declare (not safe)) (__AST-e _$e106751_)))
                       (_$hd106765106902_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt106764106899_)))
                       (_$tl106766106905_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt106764106899_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl106766106905_))
                      (let* ((_$tgt106767106909_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl106766106905_)))
                             (_$hd106768106912_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt106767106909_)))
                             (_$tl106769106915_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt106767106909_))))
                        (if (let ((__tmp112195
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd106768106912_))))
                              (declare (not safe))
                              (equal? __tmp112195 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl106769106915_))
                                (let* ((_$tgt106770106919_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl106769106915_)))
                                       (_$hd106771106922_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt106770106919_)))
                                       (_$tl106772106925_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt106770106919_))))
                                  (let ((_body106929_ _$hd106771106922_))
                                    (if (let ((__tmp112196
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl106772106925_))))
                                          (declare (not safe))
                                          (equal? __tmp112196 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body106929_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E106753106896_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E106753106896_)))
                            (let () (declare (not safe)) (_$E106753106896_))))
                      (let () (declare (not safe)) (_$E106753106896_))))
                (let () (declare (not safe)) (_$E106753106896_)))))))
    (define __compile-let-values%
      (lambda (_stx106559_)
        (letrec ((_compile-simple106561_
                  (lambda (_hd-ids106740_ _exprs106741_ _body106742_)
                    (let ((__tmp112197
                           (let ((__tmp112198
                                  (let ((__tmp112200
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106740_)
                                              _exprs106741_))
                                        (__tmp112199
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106742_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112200 __tmp112199))))
                             (declare (not safe))
                             (cons 'let __tmp112198))))
                      (declare (not safe))
                      (__SRC__% __tmp112197 _stx106559_))))
                 (_compile-values106562_
                  (lambda (_hd-ids106658_ _exprs106659_ _body106660_)
                    (let _lp106662_ ((_rest106664_ _hd-ids106658_)
                                     (_exprs106665_ _exprs106659_)
                                     (_bind106666_ '())
                                     (_post106667_ '()))
                      (let* ((_rest106668106682_ _rest106664_)
                             (_else106671106690_
                              (lambda ()
                                (let ((__tmp112201
                                       (let ((__tmp112202
                                              (let ((__tmp112205
                                                     (reverse _bind106666_))
                                                    (__tmp112203
                                                     (let ((__tmp112204
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post106563_
                                                               _post106667_
                                                               _body106660_))))
                                                       (declare (not safe))
                                                       (cons __tmp112204
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp112205
                                                      __tmp112203))))
                                         (declare (not safe))
                                         (cons 'let __tmp112202))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112201 _stx106559_)))))
                        (let ((_K106676106723_
                               (lambda (_rest106720_ _id106721_)
                                 (let ((__tmp112211 (cdr _exprs106665_))
                                       (__tmp112206
                                        (let ((__tmp112207
                                               (let ((__tmp112210
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106721_)))
                                                     (__tmp112208
                                                      (let ((__tmp112209
                                                             (car _exprs106665_)))
                                                        (declare (not safe))
                                                        (cons __tmp112209
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112210
                                                       __tmp112208))))
                                          (declare (not safe))
                                          (cons __tmp112207 _bind106666_))))
                                   (declare (not safe))
                                   (_lp106662_
                                    _rest106720_
                                    __tmp112211
                                    __tmp112206
                                    _post106667_))))
                              (_K106673106705_
                               (lambda (_rest106694_ _hd106695_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106695_))
                                     (let ((__tmp112219 (cdr _exprs106665_))
                                           (__tmp112212
                                            (let ((__tmp112213
                                                   (let ((__tmp112218
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106695_)))
                                                         (__tmp112214
                                                          (let ((__tmp112215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112216
                                (let ((__tmp112217 (car _exprs106665_)))
                                  (declare (not safe))
                                  (cons __tmp112217 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112216))))
                    (declare (not safe))
                    (cons __tmp112215 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112218
                                                           __tmp112214))))
                                              (declare (not safe))
                                              (cons __tmp112213
                                                    _bind106666_))))
                                       (declare (not safe))
                                       (_lp106662_
                                        _rest106694_
                                        __tmp112219
                                        __tmp112212
                                        _post106667_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106695_))
                                         (let* ((_len106697_
                                                 (length _hd106695_))
                                                (_tmp106699_
                                                 (let ((__tmp112220 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112220))))
                                           (let ((__tmp112232
                                                  (cdr _exprs106665_))
                                                 (__tmp112228
                                                  (let ((__tmp112229
                                                         (let ((__tmp112230
                                                                (let ((__tmp112231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106665_)))
                          (declare (not safe))
                          (cons __tmp112231 '()))))
                   (declare (not safe))
                   (cons _tmp106699_ __tmp112230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112229
                                                          _bind106666_)))
                                                 (__tmp112221
                                                  (let ((__tmp112222
                                                         (let ((__tmp112223
                                                                (let ((__tmp112224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112226
                                      (lambda (_id106702_ _k106703_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106702_))
                                            (let ((__tmp112227
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106702_))))
                                              (declare (not safe))
                                              (cons __tmp112227 _k106703_))
                                            '#f)))
                                     (__tmp112225
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106697_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112226
                                  _hd106695_
                                  __tmp112225))))
                          (declare (not safe))
                          (cons _len106697_ __tmp112224))))
                   (declare (not safe))
                   (cons _tmp106699_ __tmp112223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112222
                                                          _post106667_))))
                                             (declare (not safe))
                                             (_lp106662_
                                              _rest106694_
                                              __tmp112232
                                              __tmp112228
                                              __tmp112221)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106559_
                                            _hd106695_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106668106682_))
                              (let ((_tl106678106728_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106668106682_)))
                                    (_hd106677106726_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106668106682_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106677106726_))
                                    (let ((_tl106680106733_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106677106726_)))
                                          (_hd106679106731_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106677106726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106680106733_))
                                          (let ((_id106736_ _hd106679106731_)
                                                (_rest106738_
                                                 _tl106678106728_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106676106723_
                                               _rest106738_
                                               _id106736_)))
                                          (let ((_hd106713_ _hd106677106726_)
                                                (_rest106715_
                                                 _tl106678106728_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106673106705_
                                               _rest106715_
                                               _hd106713_)))))
                                    (let ((_hd106713_ _hd106677106726_)
                                          (_rest106715_ _tl106678106728_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106673106705_
                                         _rest106715_
                                         _hd106713_)))))
                              (let ()
                                (declare (not safe))
                                (_else106671106690_))))))))
                 (_compile-post106563_
                  (lambda (_post106565_ _body106566_)
                    (let _lp106568_ ((_rest106570_ _post106565_)
                                     (_check106571_ '())
                                     (_bind106572_ '()))
                      (let* ((_rest106573106585_ _rest106570_)
                             (_else106575106593_
                              (lambda ()
                                (let ((__tmp112233
                                       (let ((__tmp112234
                                              (let ((__tmp112235
                                                     (let ((__tmp112236
                                                            (let ((__tmp112237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112238
                                  (let ((__tmp112239
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106566_ '()))))
                                    (declare (not safe))
                                    (cons _bind106572_ __tmp112239))))
                             (declare (not safe))
                             (cons 'let __tmp112238))))
                      (declare (not safe))
                      (__SRC__% __tmp112237 _stx106559_))))
               (declare (not safe))
               (cons __tmp112236 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112235
                                                        _check106571_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112234))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112233 _stx106559_))))
                             (_K106577106632_
                              (lambda (_rest106596_
                                       _init106597_
                                       _len106598_
                                       _tmp106599_)
                                (let ((__tmp112247
                                       (let ((__tmp112248
                                              (let ((__tmp112249
                                                     (let ((__tmp112250
                                                            (let ((__tmp112251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106598_ '()))))
                      (declare (not safe))
                      (cons _tmp106599_ __tmp112251))))
               (declare (not safe))
               (cons '__check-values __tmp112250))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112249
                                                 _stx106559_))))
                                         (declare (not safe))
                                         (cons __tmp112248 _check106571_)))
                                      (__tmp112240
                                       (let ((__tmp112241
                                              (lambda (_hd106601_ _r106602_)
                                                (let* ((_hd106603106610_
                                                        _hd106601_)
                                                       (_E106605106614_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106603106610_)))
               (_K106606106620_
                (lambda (_k106617_ _id106618_)
                  (let ((__tmp112242
                         (let ((__tmp112243
                                (let ((__tmp112244
                                       (let ((__tmp112245
                                              (let ((__tmp112246
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k106617_ '()))))
                                                (declare (not safe))
                                                (cons _tmp106599_
                                                      __tmp112246))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp112245))))
                                  (declare (not safe))
                                  (cons __tmp112244 '()))))
                           (declare (not safe))
                           (cons _id106618_ __tmp112243))))
                    (declare (not safe))
                    (cons __tmp112242 _r106602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106603106610_))
                                                      (let ((_hd106607106623_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106603106610_)))
                    (_tl106608106625_
                     (let () (declare (not safe)) (##cdr _hd106603106610_))))
                (let* ((_id106628_ _hd106607106623_)
                       (_k106630_ _tl106608106625_))
                  (declare (not safe))
                  (_K106606106620_ _k106630_ _id106628_)))
              (let () (declare (not safe)) (_E106605106614_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112241
                                                 _bind106572_
                                                 _init106597_))))
                                  (declare (not safe))
                                  (_lp106568_
                                   _rest106596_
                                   __tmp112247
                                   __tmp112240)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106573106585_))
                            (let ((_hd106578106635_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106573106585_)))
                                  (_tl106579106637_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106573106585_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106578106635_))
                                  (let ((_hd106580106640_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106578106635_)))
                                        (_tl106581106642_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106578106635_))))
                                    (let ((_tmp106645_ _hd106580106640_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106581106642_))
                                          (let ((_hd106582106647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106581106642_)))
                                                (_tl106583106649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106581106642_))))
                                            (let* ((_len106652_
                                                    _hd106582106647_)
                                                   (_init106654_
                                                    _tl106583106649_)
                                                   (_rest106656_
                                                    _tl106579106637_))
                                              (declare (not safe))
                                              (_K106577106632_
                                               _rest106656_
                                               _init106654_
                                               _len106652_
                                               _tmp106645_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106575106593_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106575106593_))))
                            (let ()
                              (declare (not safe))
                              (_else106575106593_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106559_
             _compile-simple106561_
             _compile-values106562_)))))
    (define __compile-letrec-values%
      (lambda (_stx106359_)
        (letrec ((_compile-simple106361_
                  (lambda (_hd-ids106555_ _exprs106556_ _body106557_)
                    (let ((__tmp112252
                           (let ((__tmp112253
                                  (let ((__tmp112255
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106555_)
                                              _exprs106556_))
                                        (__tmp112254
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106557_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112255 __tmp112254))))
                             (declare (not safe))
                             (cons 'letrec __tmp112253))))
                      (declare (not safe))
                      (__SRC__% __tmp112252 _stx106359_))))
                 (_compile-values106362_
                  (lambda (_hd-ids106469_ _exprs106470_ _body106471_)
                    (let _lp106473_ ((_rest106475_ _hd-ids106469_)
                                     (_exprs106476_ _exprs106470_)
                                     (_pre106477_ '())
                                     (_bind106478_ '())
                                     (_post106479_ '()))
                      (let* ((_rest106480106494_ _rest106475_)
                             (_else106483106502_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner106363_
                                   _pre106477_
                                   _bind106478_
                                   _post106479_
                                   _body106471_)))))
                        (let ((_K106488106538_
                               (lambda (_rest106535_ _id106536_)
                                 (let ((__tmp112261 (cdr _exprs106476_))
                                       (__tmp112256
                                        (let ((__tmp112257
                                               (let ((__tmp112260
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id106536_)))
                                                     (__tmp112258
                                                      (let ((__tmp112259
                                                             (car _exprs106476_)))
                                                        (declare (not safe))
                                                        (cons __tmp112259
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp112260
                                                       __tmp112258))))
                                          (declare (not safe))
                                          (cons __tmp112257 _bind106478_))))
                                   (declare (not safe))
                                   (_lp106473_
                                    _rest106535_
                                    __tmp112261
                                    _pre106477_
                                    __tmp112256
                                    _post106479_))))
                              (_K106485106520_
                               (lambda (_rest106506_ _hd106507_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106507_))
                                     (let ((__tmp112269 (cdr _exprs106476_))
                                           (__tmp112262
                                            (let ((__tmp112263
                                                   (let ((__tmp112268
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd106507_)))
                                                         (__tmp112264
                                                          (let ((__tmp112265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp112266
                                (let ((__tmp112267 (car _exprs106476_)))
                                  (declare (not safe))
                                  (cons __tmp112267 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp112266))))
                    (declare (not safe))
                    (cons __tmp112265 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112268
                                                           __tmp112264))))
                                              (declare (not safe))
                                              (cons __tmp112263
                                                    _bind106478_))))
                                       (declare (not safe))
                                       (_lp106473_
                                        _rest106506_
                                        __tmp112269
                                        _pre106477_
                                        __tmp112262
                                        _post106479_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd106507_))
                                         (let* ((_len106509_
                                                 (length _hd106507_))
                                                (_tmp106511_
                                                 (let ((__tmp112270 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp112270))))
                                           (let ((__tmp112289
                                                  (cdr _exprs106476_))
                                                 (__tmp112282
                                                  (let ((__tmp112283
                                                         (lambda (_id106514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r106515_)
                   (if (let () (declare (not safe)) (__AST-e _id106514_))
                       (let ((__tmp112284
                              (let ((__tmp112288
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id106514_)))
                                    (__tmp112285
                                     (let ((__tmp112286
                                            (let ((__tmp112287
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp112287))))
                                       (declare (not safe))
                                       (cons __tmp112286 '()))))
                                (declare (not safe))
                                (cons __tmp112288 __tmp112285))))
                         (declare (not safe))
                         (cons __tmp112284 _r106515_))
                       _r106515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp112283
                                                            _pre106477_
                                                            _hd106507_)))
                                                 (__tmp112278
                                                  (let ((__tmp112279
                                                         (let ((__tmp112280
                                                                (let ((__tmp112281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs106476_)))
                          (declare (not safe))
                          (cons __tmp112281 '()))))
                   (declare (not safe))
                   (cons _tmp106511_ __tmp112280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112279
                                                          _bind106478_)))
                                                 (__tmp112271
                                                  (let ((__tmp112272
                                                         (let ((__tmp112273
                                                                (let ((__tmp112274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112276
                                      (lambda (_id106517_ _k106518_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id106517_))
                                            (let ((__tmp112277
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id106517_))))
                                              (declare (not safe))
                                              (cons __tmp112277 _k106518_))
                                            '#f)))
                                     (__tmp112275
                                      (let ()
                                        (declare (not safe))
                                        (iota _len106509_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp112276
                                  _hd106507_
                                  __tmp112275))))
                          (declare (not safe))
                          (cons _len106509_ __tmp112274))))
                   (declare (not safe))
                   (cons _tmp106511_ __tmp112273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112272
                                                          _post106479_))))
                                             (declare (not safe))
                                             (_lp106473_
                                              _rest106506_
                                              __tmp112289
                                              __tmp112282
                                              __tmp112278
                                              __tmp112271)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx106359_
                                            _hd106507_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106480106494_))
                              (let ((_tl106490106543_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106480106494_)))
                                    (_hd106489106541_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106480106494_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106489106541_))
                                    (let ((_tl106492106548_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106489106541_)))
                                          (_hd106491106546_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106489106541_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106492106548_))
                                          (let ((_id106551_ _hd106491106546_)
                                                (_rest106553_
                                                 _tl106490106543_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106488106538_
                                               _rest106553_
                                               _id106551_)))
                                          (let ((_hd106528_ _hd106489106541_)
                                                (_rest106530_
                                                 _tl106490106543_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106485106520_
                                               _rest106530_
                                               _hd106528_)))))
                                    (let ((_hd106528_ _hd106489106541_)
                                          (_rest106530_ _tl106490106543_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106485106520_
                                         _rest106530_
                                         _hd106528_)))))
                              (let ()
                                (declare (not safe))
                                (_else106483106502_))))))))
                 (_compile-inner106363_
                  (lambda (_pre106464_ _bind106465_ _post106466_ _body106467_)
                    (if (let () (declare (not safe)) (null? _pre106464_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind106364_
                           _bind106465_
                           _post106466_
                           _body106467_))
                        (let ((__tmp112290
                               (let ((__tmp112291
                                      (let ((__tmp112294 (reverse _pre106464_))
                                            (__tmp112292
                                             (let ((__tmp112293
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind106364_
                                                       _bind106465_
                                                       _post106466_
                                                       _body106467_))))
                                               (declare (not safe))
                                               (cons __tmp112293 '()))))
                                        (declare (not safe))
                                        (cons __tmp112294 __tmp112292))))
                                 (declare (not safe))
                                 (cons 'let __tmp112291))))
                          (declare (not safe))
                          (__SRC__% __tmp112290 _stx106359_)))))
                 (_compile-bind106364_
                  (lambda (_bind106460_ _post106461_ _body106462_)
                    (let ((__tmp112295
                           (let ((__tmp112296
                                  (let ((__tmp112299 (reverse _bind106460_))
                                        (__tmp112297
                                         (let ((__tmp112298
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106365_
                                                   _post106461_
                                                   _body106462_))))
                                           (declare (not safe))
                                           (cons __tmp112298 '()))))
                                    (declare (not safe))
                                    (cons __tmp112299 __tmp112297))))
                             (declare (not safe))
                             (cons 'letrec __tmp112296))))
                      (declare (not safe))
                      (__SRC__% __tmp112295 _stx106359_))))
                 (_compile-post106365_
                  (lambda (_post106367_ _body106368_)
                    (let _lp106370_ ((_rest106372_ _post106367_)
                                     (_check106373_ '())
                                     (_bind106374_ '()))
                      (let* ((_rest106375106387_ _rest106372_)
                             (_else106377106395_
                              (lambda ()
                                (let ((__tmp112300
                                       (let ((__tmp112301
                                              (let ((__tmp112302
                                                     (let ((__tmp112303
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body106368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp112303 _bind106374_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp112302
                                                        _check106373_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp112301))))
                                  (declare (not safe))
                                  (__SRC__% __tmp112300 _stx106359_))))
                             (_K106379106434_
                              (lambda (_rest106398_
                                       _init106399_
                                       _len106400_
                                       _tmp106401_)
                                (let ((__tmp112312
                                       (let ((__tmp112313
                                              (let ((__tmp112314
                                                     (let ((__tmp112315
                                                            (let ((__tmp112316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len106400_ '()))))
                      (declare (not safe))
                      (cons _tmp106401_ __tmp112316))))
               (declare (not safe))
               (cons '__check-values __tmp112315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp112314
                                                 _stx106359_))))
                                         (declare (not safe))
                                         (cons __tmp112313 _check106373_)))
                                      (__tmp112304
                                       (let ((__tmp112305
                                              (lambda (_hd106403_ _r106404_)
                                                (let* ((_hd106405106412_
                                                        _hd106403_)
                                                       (_E106407106416_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd106405106412_)))
               (_K106408106422_
                (lambda (_k106419_ _id106420_)
                  (let ((__tmp112306
                         (let ((__tmp112307
                                (let ((__tmp112308
                                       (let ((__tmp112309
                                              (let ((__tmp112310
                                                     (let ((__tmp112311
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k106419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp106401_ __tmp112311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp112310))))
                                         (declare (not safe))
                                         (cons __tmp112309 '()))))
                                  (declare (not safe))
                                  (cons _id106420_ __tmp112308))))
                           (declare (not safe))
                           (cons 'set! __tmp112307))))
                    (declare (not safe))
                    (cons __tmp112306 _r106404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd106405106412_))
                                                      (let ((_hd106409106425_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd106405106412_)))
                    (_tl106410106427_
                     (let () (declare (not safe)) (##cdr _hd106405106412_))))
                (let* ((_id106430_ _hd106409106425_)
                       (_k106432_ _tl106410106427_))
                  (declare (not safe))
                  (_K106408106422_ _k106432_ _id106430_)))
              (let () (declare (not safe)) (_E106407106416_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp112305
                                                 _bind106374_
                                                 _init106399_))))
                                  (declare (not safe))
                                  (_lp106370_
                                   _rest106398_
                                   __tmp112312
                                   __tmp112304)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106375106387_))
                            (let ((_hd106380106437_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106375106387_)))
                                  (_tl106381106439_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106375106387_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd106380106437_))
                                  (let ((_hd106382106442_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd106380106437_)))
                                        (_tl106383106444_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd106380106437_))))
                                    (let ((_tmp106447_ _hd106382106442_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106383106444_))
                                          (let ((_hd106384106449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl106383106444_)))
                                                (_tl106385106451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106383106444_))))
                                            (let* ((_len106454_
                                                    _hd106384106449_)
                                                   (_init106456_
                                                    _tl106385106451_)
                                                   (_rest106458_
                                                    _tl106381106439_))
                                              (declare (not safe))
                                              (_K106379106434_
                                               _rest106458_
                                               _init106456_
                                               _len106454_
                                               _tmp106447_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106377106395_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else106377106395_))))
                            (let ()
                              (declare (not safe))
                              (_else106377106395_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106359_
             _compile-simple106361_
             _compile-values106362_)))))
    (define __compile-letrec*-values%
      (lambda (_stx106114_)
        (letrec ((_compile-simple106116_
                  (lambda (_hd-ids106355_ _exprs106356_ _body106357_)
                    (let ((__tmp112317
                           (let ((__tmp112318
                                  (let ((__tmp112320
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids106355_)
                                              _exprs106356_))
                                        (__tmp112319
                                         (let ()
                                           (declare (not safe))
                                           (cons _body106357_ '()))))
                                    (declare (not safe))
                                    (cons __tmp112320 __tmp112319))))
                             (declare (not safe))
                             (cons 'letrec* __tmp112318))))
                      (declare (not safe))
                      (__SRC__% __tmp112317 _stx106114_))))
                 (_compile-values106117_
                  (lambda (_hd-ids106266_ _exprs106267_ _body106268_)
                    (let _lp106270_ ((_rest106272_ _hd-ids106266_)
                                     (_exprs106273_ _exprs106267_)
                                     (_bind106274_ '())
                                     (_post106275_ '()))
                      (let* ((_rest106276106290_ _rest106272_)
                             (_else106279106298_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind106118_
                                   _bind106274_
                                   _post106275_
                                   _body106268_)))))
                        (let ((_K106284106338_
                               (lambda (_rest106333_ _hd106334_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106334_))
                                     (let ((_id106336_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106334_))))
                                       (let ((__tmp112330 (cdr _exprs106273_))
                                             (__tmp112325
                                              (let ((__tmp112326
                                                     (let ((__tmp112327
                                                            (let ((__tmp112328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112329
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112329))))
                      (declare (not safe))
                      (cons __tmp112328 '()))))
               (declare (not safe))
               (cons _id106336_ __tmp112327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112326
                                                      _bind106274_)))
                                             (__tmp112321
                                              (let ((__tmp112322
                                                     (let ((__tmp112323
                                                            (let ((__tmp112324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs106273_)))
                      (declare (not safe))
                      (cons __tmp112324 '()))))
               (declare (not safe))
               (cons _id106336_ __tmp112323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112322
                                                      _post106275_))))
                                         (declare (not safe))
                                         (_lp106270_
                                          _rest106333_
                                          __tmp112330
                                          __tmp112325
                                          __tmp112321)))
                                     (let ((__tmp112335 (cdr _exprs106273_))
                                           (__tmp112331
                                            (let ((__tmp112332
                                                   (let ((__tmp112333
                                                          (let ((__tmp112334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs106273_)))
                    (declare (not safe))
                    (cons __tmp112334 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp112333))))
                                              (declare (not safe))
                                              (cons __tmp112332
                                                    _post106275_))))
                                       (declare (not safe))
                                       (_lp106270_
                                        _rest106333_
                                        __tmp112335
                                        _bind106274_
                                        __tmp112331)))))
                              (_K106281106318_
                               (lambda (_rest106302_ _hd106303_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd106303_))
                                     (let ((_id106305_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd106303_))))
                                       (let ((__tmp112347 (cdr _exprs106273_))
                                             (__tmp112342
                                              (let ((__tmp112343
                                                     (let ((__tmp112344
                                                            (let ((__tmp112345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112346
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp112346))))
                      (declare (not safe))
                      (cons __tmp112345 '()))))
               (declare (not safe))
               (cons _id106305_ __tmp112344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112343
                                                      _bind106274_)))
                                             (__tmp112336
                                              (let ((__tmp112337
                                                     (let ((__tmp112338
                                                            (let ((__tmp112339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112340
                                  (let ((__tmp112341 (car _exprs106273_)))
                                    (declare (not safe))
                                    (cons __tmp112341 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp112340))))
                      (declare (not safe))
                      (cons __tmp112339 '()))))
               (declare (not safe))
               (cons _id106305_ __tmp112338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112337
                                                      _post106275_))))
                                         (declare (not safe))
                                         (_lp106270_
                                          _rest106302_
                                          __tmp112347
                                          __tmp112342
                                          __tmp112336)))
                                     (if (let ((__tmp112348
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd106303_))))
                                           (declare (not safe))
                                           (not __tmp112348))
                                         (let ((__tmp112353
                                                (cdr _exprs106273_))
                                               (__tmp112349
                                                (let ((__tmp112350
                                                       (let ((__tmp112351
                                                              (let ((__tmp112352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs106273_)))
                        (declare (not safe))
                        (cons __tmp112352 '()))))
                 (declare (not safe))
                 (cons '#f __tmp112351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112350
                                                        _post106275_))))
                                           (declare (not safe))
                                           (_lp106270_
                                            _rest106302_
                                            __tmp112353
                                            _bind106274_
                                            __tmp112349))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd106303_))
                                             (let* ((_len106307_
                                                     (length _hd106303_))
                                                    (_tmp106309_
                                                     (let ((__tmp112354
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp112354))))
                                               (let ((__tmp112371
                                                      (cdr _exprs106273_))
                                                     (__tmp112364
                                                      (let ((__tmp112365
                                                             (lambda (_id106312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r106313_)
                       (if (let () (declare (not safe)) (__AST-e _id106312_))
                           (let ((__tmp112366
                                  (let ((__tmp112370
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id106312_)))
                                        (__tmp112367
                                         (let ((__tmp112368
                                                (let ((__tmp112369
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp112369))))
                                           (declare (not safe))
                                           (cons __tmp112368 '()))))
                                    (declare (not safe))
                                    (cons __tmp112370 __tmp112367))))
                             (declare (not safe))
                             (cons __tmp112366 _r106313_))
                           _r106313_))))
                (declare (not safe))
                (foldl1 __tmp112365 _bind106274_ _hd106303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112355
                                                      (let ((__tmp112356
                                                             (let ((__tmp112357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112363 (car _exprs106273_))
                                  (__tmp112358
                                   (let ((__tmp112359
                                          (let ((__tmp112361
                                                 (lambda (_id106315_ _k106316_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id106315_))
                                                       (let ((__tmp112362
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id106315_))))
                 (declare (not safe))
                 (cons __tmp112362 _k106316_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp112360
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len106307_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp112361
                                             _hd106303_
                                             __tmp112360))))
                                     (declare (not safe))
                                     (cons _len106307_ __tmp112359))))
                              (declare (not safe))
                              (cons __tmp112363 __tmp112358))))
                       (declare (not safe))
                       (cons _tmp106309_ __tmp112357))))
                (declare (not safe))
                (cons __tmp112356 _post106275_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp106270_
                                                  _rest106302_
                                                  __tmp112371
                                                  __tmp112364
                                                  __tmp112355)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx106114_
                                                _hd106303_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest106276106290_))
                              (let ((_tl106286106343_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest106276106290_)))
                                    (_hd106285106341_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest106276106290_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106285106341_))
                                    (let ((_tl106288106348_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106285106341_)))
                                          (_hd106287106346_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106285106341_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106288106348_))
                                          (let ((_hd106351_ _hd106287106346_)
                                                (_rest106353_
                                                 _tl106286106343_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106284106338_
                                               _rest106353_
                                               _hd106351_)))
                                          (let ((_hd106326_ _hd106285106341_)
                                                (_rest106328_
                                                 _tl106286106343_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106281106318_
                                               _rest106328_
                                               _hd106326_)))))
                                    (let ((_hd106326_ _hd106285106341_)
                                          (_rest106328_ _tl106286106343_))
                                      (let ()
                                        (declare (not safe))
                                        (_K106281106318_
                                         _rest106328_
                                         _hd106326_)))))
                              (let ()
                                (declare (not safe))
                                (_else106279106298_))))))))
                 (_compile-bind106118_
                  (lambda (_bind106262_ _post106263_ _body106264_)
                    (let ((__tmp112372
                           (let ((__tmp112373
                                  (let ((__tmp112376 (reverse _bind106262_))
                                        (__tmp112374
                                         (let ((__tmp112375
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post106119_
                                                   _post106263_
                                                   _body106264_))))
                                           (declare (not safe))
                                           (cons __tmp112375 '()))))
                                    (declare (not safe))
                                    (cons __tmp112376 __tmp112374))))
                             (declare (not safe))
                             (cons 'let __tmp112373))))
                      (declare (not safe))
                      (__SRC__% __tmp112372 _stx106114_))))
                 (_compile-post106119_
                  (lambda (_post106121_ _body106122_)
                    (let ((__tmp112377
                           (let ((__tmp112378
                                  (let ((__tmp112379
                                         (let ((__tmp112381
                                                (lambda (_hd106124_ _r106125_)
                                                  (let* ((_hd106126106149_
                                                          _hd106124_)
                                                         (_E106130106153_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd106126106149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K106143106247_
                                                           (lambda (_expr106245_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr106245_ _r106125_))))
                  (_K106138106225_
                   (lambda (_expr106222_ _id106223_)
                     (let ((__tmp112382
                            (let ((__tmp112383
                                   (let ((__tmp112384
                                          (let ((__tmp112385
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr106222_ '()))))
                                            (declare (not safe))
                                            (cons _id106223_ __tmp112385))))
                                     (declare (not safe))
                                     (cons 'set! __tmp112384))))
                              (declare (not safe))
                              (__SRC__% __tmp112383 _stx106114_))))
                       (declare (not safe))
                       (cons __tmp112382 _r106125_))))
                  (_K106131106192_
                   (lambda (_init106157_ _len106158_ _expr106159_ _tmp106160_)
                     (let ((__tmp112386
                            (let ((__tmp112387
                                   (let ((__tmp112388
                                          (let ((__tmp112402
                                                 (let ((__tmp112403
                                                        (let ((__tmp112404
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr106159_ '()))))
                  (declare (not safe))
                  (cons _tmp106160_ __tmp112404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112403 '())))
                                                (__tmp112389
                                                 (let ((__tmp112398
                                                        (let ((__tmp112399
                                                               (let ((__tmp112400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp112401
                                     (let ()
                                       (declare (not safe))
                                       (cons _len106158_ '()))))
                                (declare (not safe))
                                (cons _tmp106160_ __tmp112401))))
                         (declare (not safe))
                         (cons '__check-values __tmp112400))))
                  (declare (not safe))
                  (__SRC__% __tmp112399 _stx106114_)))
               (__tmp112390
                (let ((__tmp112391
                       (map (lambda (_hd106162_)
                              (let* ((_hd106163106170_ _hd106162_)
                                     (_E106165106174_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd106163106170_)))
                                     (_K106166106180_
                                      (lambda (_k106177_ _id106178_)
                                        (let ((__tmp112392
                                               (let ((__tmp112393
                                                      (let ((__tmp112394
                                                             (let ((__tmp112395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112396
                                   (let ((__tmp112397
                                          (let ()
                                            (declare (not safe))
                                            (cons _k106177_ '()))))
                                     (declare (not safe))
                                     (cons _tmp106160_ __tmp112397))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp112396))))
                       (declare (not safe))
                       (cons __tmp112395 '()))))
                (declare (not safe))
                (cons _id106178_ __tmp112394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp112393))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp112392
                                           _stx106114_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106163106170_))
                                    (let ((_hd106167106183_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106163106170_)))
                                          (_tl106168106185_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106163106170_))))
                                      (let* ((_id106188_ _hd106167106183_)
                                             (_k106190_ _tl106168106185_))
                                        (declare (not safe))
                                        (_K106166106180_
                                         _k106190_
                                         _id106188_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E106165106174_)))))
                            _init106157_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp112391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp112398
                                                         __tmp112390))))
                                            (declare (not safe))
                                            (cons __tmp112402 __tmp112389))))
                                     (declare (not safe))
                                     (cons 'let __tmp112388))))
                              (declare (not safe))
                              (__SRC__% __tmp112387 _stx106114_))))
                       (declare (not safe))
                       (cons __tmp112386 _r106125_)))))
              (if (let () (declare (not safe)) (##pair? _hd106126106149_))
                  (let ((_tl106145106252_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd106126106149_)))
                        (_hd106144106250_
                         (let ()
                           (declare (not safe))
                           (##car _hd106126106149_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd106144106250_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106145106252_))
                            (let ((_tl106147106257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106145106252_)))
                                  (_hd106146106255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106145106252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106147106257_))
                                  (let ((_expr106260_ _hd106146106255_))
                                    (declare (not safe))
                                    (_K106143106247_ _expr106260_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106147106257_))
                                      (let ((_tl106137106211_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106147106257_)))
                                            (_hd106136106209_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106147106257_))))
                                        (let ((_tmp106200_ _hd106144106250_)
                                              (_expr106207_ _hd106146106255_)
                                              (_len106214_ _hd106136106209_)
                                              (_init106216_ _tl106137106211_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106131106192_
                                             _init106216_
                                             _len106214_
                                             _expr106207_
                                             _tmp106200_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106130106153_)))))
                            (let () (declare (not safe)) (_E106130106153_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106145106252_))
                            (let ((_tl106142106237_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106145106252_)))
                                  (_hd106141106235_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106145106252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106142106237_))
                                  (let ((_id106233_ _hd106144106250_)
                                        (_expr106240_ _hd106141106235_))
                                    (let ()
                                      (declare (not safe))
                                      (_K106138106225_
                                       _expr106240_
                                       _id106233_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106142106237_))
                                      (let ((_tl106137106211_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106142106237_)))
                                            (_hd106136106209_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106142106237_))))
                                        (let ((_tmp106200_ _hd106144106250_)
                                              (_expr106207_ _hd106141106235_)
                                              (_len106214_ _hd106136106209_)
                                              (_init106216_ _tl106137106211_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106131106192_
                                             _init106216_
                                             _len106214_
                                             _expr106207_
                                             _tmp106200_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E106130106153_)))))
                            (let () (declare (not safe)) (_E106130106153_)))))
                  (let () (declare (not safe)) (_E106130106153_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp112380
                                                (list _body106122_)))
                                           (declare (not safe))
                                           (foldl1 __tmp112381
                                                   __tmp112380
                                                   _post106121_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp112379))))
                             (declare (not safe))
                             (cons 'begin __tmp112378))))
                      (declare (not safe))
                      (__SRC__% __tmp112377 _stx106114_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx106114_
             _compile-simple106116_
             _compile-values106117_)))))
    (define __compile-call%
      (lambda (_stx106074_)
        (let* ((_$e106076_ _stx106074_)
               (_$E106078106087_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106076_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106076_))
              (let* ((_$tgt106079106090_
                      (let () (declare (not safe)) (__AST-e _$e106076_)))
                     (_$hd106080106093_
                      (let () (declare (not safe)) (##car _$tgt106079106090_)))
                     (_$tl106081106096_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106079106090_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106081106096_))
                    (let* ((_$tgt106082106100_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106081106096_)))
                           (_$hd106083106103_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106082106100_)))
                           (_$tl106084106106_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106082106100_))))
                      (let* ((_rator106110_ _$hd106083106103_)
                             (_rands106112_ _$tl106084106106_)
                             (__tmp112405
                              (let ((__tmp112407
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator106110_)))
                                    (__tmp112406
                                     (map __compile _rands106112_)))
                                (declare (not safe))
                                (cons __tmp112407 __tmp112406))))
                        (declare (not safe))
                        (__SRC__% __tmp112405 _stx106074_)))
                    (let () (declare (not safe)) (_$E106078106087_))))
              (let () (declare (not safe)) (_$E106078106087_))))))
    (define __compile-ref%
      (lambda (_stx106036_)
        (let* ((_$e106038_ _stx106036_)
               (_$E106040106049_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106038_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106038_))
              (let* ((_$tgt106041106052_
                      (let () (declare (not safe)) (__AST-e _$e106038_)))
                     (_$hd106042106055_
                      (let () (declare (not safe)) (##car _$tgt106041106052_)))
                     (_$tl106043106058_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106041106052_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106043106058_))
                    (let* ((_$tgt106044106062_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106043106058_)))
                           (_$hd106045106065_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106044106062_)))
                           (_$tl106046106068_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106044106062_))))
                      (let ((_id106072_ _$hd106045106065_))
                        (if (let ((__tmp112408
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106046106068_))))
                              (declare (not safe))
                              (equal? __tmp112408 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id106072_ _stx106036_))
                            (let () (declare (not safe)) (_$E106040106049_)))))
                    (let () (declare (not safe)) (_$E106040106049_))))
              (let () (declare (not safe)) (_$E106040106049_))))))
    (define __compile-setq%
      (lambda (_stx105983_)
        (let* ((_$e105985_ _stx105983_)
               (_$E105987105999_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105985_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105985_))
              (let* ((_$tgt105988106002_
                      (let () (declare (not safe)) (__AST-e _$e105985_)))
                     (_$hd105989106005_
                      (let () (declare (not safe)) (##car _$tgt105988106002_)))
                     (_$tl105990106008_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105988106002_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105990106008_))
                    (let* ((_$tgt105991106012_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105990106008_)))
                           (_$hd105992106015_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105991106012_)))
                           (_$tl105993106018_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105991106012_))))
                      (let ((_id106022_ _$hd105992106015_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105993106018_))
                            (let* ((_$tgt105994106024_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105993106018_)))
                                   (_$hd105995106027_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105994106024_)))
                                   (_$tl105996106030_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105994106024_))))
                              (let ((_expr106034_ _$hd105995106027_))
                                (if (let ((__tmp112409
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl105996106030_))))
                                      (declare (not safe))
                                      (equal? __tmp112409 '()))
                                    (let ((__tmp112410
                                           (let ((__tmp112411
                                                  (let ((__tmp112414
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id106022_
                                                            _stx105983_)))
                                                        (__tmp112412
                                                         (let ((__tmp112413
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr106034_))))
                   (declare (not safe))
                   (cons __tmp112413 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112414
                                                          __tmp112412))))
                                             (declare (not safe))
                                             (cons 'set! __tmp112411))))
                                      (declare (not safe))
                                      (__SRC__% __tmp112410 _stx105983_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105987105999_)))))
                            (let () (declare (not safe)) (_$E105987105999_)))))
                    (let () (declare (not safe)) (_$E105987105999_))))
              (let () (declare (not safe)) (_$E105987105999_))))))
    (define __compile-if%
      (lambda (_stx105915_)
        (let* ((_$e105917_ _stx105915_)
               (_$E105919105934_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105917_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105917_))
              (let* ((_$tgt105920105937_
                      (let () (declare (not safe)) (__AST-e _$e105917_)))
                     (_$hd105921105940_
                      (let () (declare (not safe)) (##car _$tgt105920105937_)))
                     (_$tl105922105943_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105920105937_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105922105943_))
                    (let* ((_$tgt105923105947_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105922105943_)))
                           (_$hd105924105950_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105923105947_)))
                           (_$tl105925105953_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105923105947_))))
                      (let ((_p105957_ _$hd105924105950_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl105925105953_))
                            (let* ((_$tgt105926105959_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl105925105953_)))
                                   (_$hd105927105962_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt105926105959_)))
                                   (_$tl105928105965_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt105926105959_))))
                              (let ((_t105969_ _$hd105927105962_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl105928105965_))
                                    (let* ((_$tgt105929105971_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl105928105965_)))
                                           (_$hd105930105974_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt105929105971_)))
                                           (_$tl105931105977_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt105929105971_))))
                                      (let ((_f105981_ _$hd105930105974_))
                                        (if (let ((__tmp112415
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl105931105977_))))
                                              (declare (not safe))
                                              (equal? __tmp112415 '()))
                                            (let ((__tmp112416
                                                   (let ((__tmp112417
                                                          (let ((__tmp112422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p105957_)))
                        (__tmp112418
                         (let ((__tmp112421
                                (let ()
                                  (declare (not safe))
                                  (__compile _t105969_)))
                               (__tmp112419
                                (let ((__tmp112420
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f105981_))))
                                  (declare (not safe))
                                  (cons __tmp112420 '()))))
                           (declare (not safe))
                           (cons __tmp112421 __tmp112419))))
                    (declare (not safe))
                    (cons __tmp112422 __tmp112418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp112417))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp112416
                                               _stx105915_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E105919105934_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E105919105934_)))))
                            (let () (declare (not safe)) (_$E105919105934_)))))
                    (let () (declare (not safe)) (_$E105919105934_))))
              (let () (declare (not safe)) (_$E105919105934_))))))
    (define __compile-quote%
      (lambda (_stx105877_)
        (let* ((_$e105879_ _stx105877_)
               (_$E105881105890_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105879_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105879_))
              (let* ((_$tgt105882105893_
                      (let () (declare (not safe)) (__AST-e _$e105879_)))
                     (_$hd105883105896_
                      (let () (declare (not safe)) (##car _$tgt105882105893_)))
                     (_$tl105884105899_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105882105893_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105884105899_))
                    (let* ((_$tgt105885105903_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105884105899_)))
                           (_$hd105886105906_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105885105903_)))
                           (_$tl105887105909_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105885105903_))))
                      (let ((_e105913_ _$hd105886105906_))
                        (if (let ((__tmp112423
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl105887105909_))))
                              (declare (not safe))
                              (equal? __tmp112423 '()))
                            (let ((__tmp112424
                                   (let ((__tmp112425
                                          (let ((__tmp112426
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e105913_))))
                                            (declare (not safe))
                                            (cons __tmp112426 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112425))))
                              (declare (not safe))
                              (__SRC__% __tmp112424 _stx105877_))
                            (let () (declare (not safe)) (_$E105881105890_)))))
                    (let () (declare (not safe)) (_$E105881105890_))))
              (let () (declare (not safe)) (_$E105881105890_))))))
    (define __compile-quote-syntax%
      (lambda (_stx105839_)
        (let* ((_$e105841_ _stx105839_)
               (_$E105843105852_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e105841_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e105841_))
              (let* ((_$tgt105844105855_
                      (let () (declare (not safe)) (__AST-e _$e105841_)))
                     (_$hd105845105858_
                      (let () (declare (not safe)) (##car _$tgt105844105855_)))
                     (_$tl105846105861_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt105844105855_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl105846105861_))
                    (let* ((_$tgt105847105865_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl105846105861_)))
                           (_$hd105848105868_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt105847105865_)))
                           (_$tl105849105871_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt105847105865_))))
                      (let ((_e105875_ _$hd105848105868_))
                        (if (let ((__tmp112427
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl105849105871_))))
                              (declare (not safe))
                              (equal? __tmp112427 '()))
                            (let ((__tmp112428
                                   (let ((__tmp112429
                                          (let ()
                                            (declare (not safe))
                                            (cons _e105875_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp112429))))
                              (declare (not safe))
                              (__SRC__% __tmp112428 _stx105839_))
                            (let () (declare (not safe)) (_$E105843105852_)))))
                    (let () (declare (not safe)) (_$E105843105852_))))
              (let () (declare (not safe)) (_$E105843105852_))))))
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
