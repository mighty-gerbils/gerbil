(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708168068)
  (begin
    (define __context::t
      (let ((__tmp122802 (list))
            (__tmp122800
             (let ((__tmp122801
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122801 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp122802
         '(t ns super table)
         __tmp122800
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args118036_ (apply make-instance __context::t _$args118036_)))
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
      (let ((__tmp122805 (list))
            (__tmp122803
             (let ((__tmp122804
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122804 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp122805
         '(id)
         __tmp122803
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args118033_ (apply make-instance __runtime::t _$args118033_)))
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
      (let ((__tmp122808 (list))
            (__tmp122806
             (let ((__tmp122807
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122807 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp122808
         '(e id)
         __tmp122806
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args118030_ (apply make-instance __syntax::t _$args118030_)))
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
      (let ((__tmp122811 (list __syntax::t))
            (__tmp122809
             (let ((__tmp122810
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122810 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp122811
         '()
         __tmp122809
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args118027_ (apply make-instance __macro::t _$args118027_)))
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
      (let ((__tmp122814 (list __macro::t))
            (__tmp122812
             (let ((__tmp122813
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122813 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp122814
         '()
         __tmp122812
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args118024_
        (apply make-instance __special-form::t _$args118024_)))
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
      (let ((__tmp122817 (list __syntax::t))
            (__tmp122815
             (let ((__tmp122816
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122816 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp122817
         '()
         __tmp122815
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args118021_
        (apply make-instance __core-form::t _$args118021_)))
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
      (let ((__tmp122820 (list __core-form::t))
            (__tmp122818
             (let ((__tmp122819
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122819 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp122820
         '()
         __tmp122818
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args118018_
        (apply make-instance __core-expression::t _$args118018_)))
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
      (let ((__tmp122823 (list __core-form::t))
            (__tmp122821
             (let ((__tmp122822
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122822 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp122823
         '()
         __tmp122821
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args118015_
        (apply make-instance __core-special-form::t _$args118015_)))
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
      (let ((__tmp122826 (list __syntax::t))
            (__tmp122824
             (let ((__tmp122825
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122825 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp122826
         '()
         __tmp122824
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args118012_
        (apply make-instance __struct-info::t _$args118012_)))
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
      (let ((__tmp122829 (list __syntax::t))
            (__tmp122827
             (let ((__tmp122828
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122828 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp122829
         '()
         __tmp122827
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args118009_ (apply make-instance __feature::t _$args118009_)))
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
      (let ((__tmp122832 (list __context::t))
            (__tmp122830
             (let ((__tmp122831
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp122831 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp122832
         '(id path import export)
         __tmp122830
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args118006_ (apply make-instance __module::t _$args118006_)))
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
      (let ((__tmp122834
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp122833
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp122834 __tmp122833)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id117981_ _ctx117982_)
        (if _ctx117982_
            (let ((_id117984_
                   (let () (declare (not safe)) (__AST-e _id117981_))))
              (let _lp117986_ ((_ctx117988_ _ctx117982_))
                (let ((_$e117990_
                       (table-ref
                        (##structure-ref _ctx117988_ '4 __context::t '#f)
                        _id117984_
                        '#f)))
                  (if _$e117990_
                      (values _$e117990_)
                      (let ((_$e117993_
                             (##structure-ref
                              _ctx117988_
                              '3
                              __context::t
                              '#f)))
                        (if _$e117993_
                            (let ()
                              (declare (not safe))
                              (_lp117986_ _$e117993_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id117999_)
        (let ((_ctx118001_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id117999_ _ctx118001_))))
    (define __core-resolve
      (lambda _g122836_
        (let ((_g122835_ (let () (declare (not safe)) (##length _g122836_))))
          (cond ((let () (declare (not safe)) (##fx= _g122835_ 1))
                 (apply (lambda (_id117999_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id117999_)))
                        _g122836_))
                ((let () (declare (not safe)) (##fx= _g122835_ 2))
                 (apply (lambda (_id118003_ _ctx118004_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id118003_ _ctx118004_)))
                        _g122836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g122836_))))))
    (define __core-bound-id?__%
      (lambda (_id117964_ _is?117965_)
        (let ((_$e117967_
               (let () (declare (not safe)) (__core-resolve__0 _id117964_))))
          (if _$e117967_ (_is?117965_ _$e117967_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id117973_)
        (let ((_is?117975_ true))
          (declare (not safe))
          (__core-bound-id?__% _id117973_ _is?117975_))))
    (define __core-bound-id?
      (lambda _g122838_
        (let ((_g122837_ (let () (declare (not safe)) (##length _g122838_))))
          (cond ((let () (declare (not safe)) (##fx= _g122837_ 1))
                 (apply (lambda (_id117973_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id117973_)))
                        _g122838_))
                ((let () (declare (not safe)) (##fx= _g122837_ 2))
                 (apply (lambda (_id117977_ _is?117978_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id117977_ _is?117978_)))
                        _g122838_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g122838_))))))
    (define __core-bind-runtime!__%
      (lambda (_id117947_ _eid117948_ _ctx117949_)
        (if _eid117948_
            (let ((__tmp122841
                   (##structure-ref _ctx117949_ '4 __context::t '#f))
                  (__tmp122840
                   (let () (declare (not safe)) (__AST-e _id117947_)))
                  (__tmp122839
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid117948_))))
              (declare (not safe))
              (table-set! __tmp122841 __tmp122840 __tmp122839))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id117954_ _eid117955_)
        (let ((_ctx117957_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id117954_ _eid117955_ _ctx117957_))))
    (define __core-bind-runtime!
      (lambda _g122843_
        (let ((_g122842_ (let () (declare (not safe)) (##length _g122843_))))
          (cond ((let () (declare (not safe)) (##fx= _g122842_ 2))
                 (apply (lambda (_id117954_ _eid117955_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id117954_ _eid117955_)))
                        _g122843_))
                ((let () (declare (not safe)) (##fx= _g122842_ 3))
                 (apply (lambda (_id117959_ _eid117960_ _ctx117961_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id117959_
                             _eid117960_
                             _ctx117961_)))
                        _g122843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g122843_))))))
    (define __core-bind-syntax!__%
      (lambda (_id117930_ _e117931_ _make117932_)
        (let ((__tmp122844
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e117931_
                      'gerbil/runtime/eval#__syntax::t))
                   _e117931_
                   (_make117932_ _e117931_ _id117930_))))
          (declare (not safe))
          (table-set! __*core* _id117930_ __tmp122844))))
    (define __core-bind-syntax!__0
      (lambda (_id117937_ _e117938_)
        (let ((_make117940_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id117937_ _e117938_ _make117940_))))
    (define __core-bind-syntax!
      (lambda _g122846_
        (let ((_g122845_ (let () (declare (not safe)) (##length _g122846_))))
          (cond ((let () (declare (not safe)) (##fx= _g122845_ 2))
                 (apply (lambda (_id117937_ _e117938_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id117937_ _e117938_)))
                        _g122846_))
                ((let () (declare (not safe)) (##fx= _g122845_ 3))
                 (apply (lambda (_id117942_ _e117943_ _make117944_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id117942_
                             _e117943_
                             _make117944_)))
                        _g122846_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g122846_))))))
    (define __core-bind-macro!
      (lambda (_id117926_ _e117927_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id117926_ _e117927_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id117923_ _e117924_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id117923_ _e117924_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id117907_ _e117908_ _ctx117909_)
        (let ((__tmp122850 (##structure-ref _ctx117909_ '4 __context::t '#f))
              (__tmp122849 (let () (declare (not safe)) (__AST-e _id117907_)))
              (__tmp122847
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e117908_
                      'gerbil/runtime/eval#__syntax::t))
                   _e117908_
                   (let ((__tmp122848
                          (let () (declare (not safe)) (__AST-e _id117907_))))
                     (declare (not safe))
                     (##structure __syntax::t _e117908_ __tmp122848)))))
          (declare (not safe))
          (table-set! __tmp122850 __tmp122849 __tmp122847))))
    (define __core-bind-user-syntax!__0
      (lambda (_id117914_ _e117915_)
        (let ((_ctx117917_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id117914_ _e117915_ _ctx117917_))))
    (define __core-bind-user-syntax!
      (lambda _g122852_
        (let ((_g122851_ (let () (declare (not safe)) (##length _g122852_))))
          (cond ((let () (declare (not safe)) (##fx= _g122851_ 2))
                 (apply (lambda (_id117914_ _e117915_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id117914_
                             _e117915_)))
                        _g122852_))
                ((let () (declare (not safe)) (##fx= _g122851_ 3))
                 (apply (lambda (_id117919_ _e117920_ _ctx117921_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id117919_
                             _e117920_
                             _ctx117921_)))
                        _g122852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g122852_))))))
    (define make-__runtime-id__%
      (lambda (_id117888_ _ctx117889_)
        (let ((_id117891_ (let () (declare (not safe)) (__AST-e _id117888_))))
          (if (let () (declare (not safe)) (eq? _id117891_ '_))
              '#f
              (if (uninterned-symbol? _id117891_)
                  (gensym _id117891_)
                  (if (let () (declare (not safe)) (symbol? _id117891_))
                      (let ((_$e117893_
                             (##structure-ref
                              _ctx117889_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e117893_))
                            (gensym _id117891_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e117893_))
                                (let ((__tmp122853
                                       (##structure-ref
                                        _ctx117889_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp122853 '"#" _id117891_))
                                _id117891_)))
                      (error '"Illegal runtime identifier" _id117891_)))))))
    (define make-__runtime-id__0
      (lambda (_id117899_)
        (let ((_ctx117901_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id117899_ _ctx117901_))))
    (define make-__runtime-id
      (lambda _g122855_
        (let ((_g122854_ (let () (declare (not safe)) (##length _g122855_))))
          (cond ((let () (declare (not safe)) (##fx= _g122854_ 1))
                 (apply (lambda (_id117899_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id117899_)))
                        _g122855_))
                ((let () (declare (not safe)) (##fx= _g122854_ 2))
                 (apply (lambda (_id117903_ _ctx117904_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id117903_ _ctx117904_)))
                        _g122855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g122855_))))))
    (define make-__context-local__%
      (lambda (_super117877_)
        (let ((__tmp122856
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super117877_ __tmp122856))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super117883_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super117883_))))
    (define make-__context-local
      (lambda _g122858_
        (let ((_g122857_ (let () (declare (not safe)) (##length _g122858_))))
          (cond ((let () (declare (not safe)) (##fx= _g122857_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g122858_))
                ((let () (declare (not safe)) (##fx= _g122857_ 1))
                 (apply (lambda (_super117885_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super117885_)))
                        _g122858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g122858_))))))
    (define make-__context-module__%
      (lambda (_id117857_ _ns117858_ _path117859_ _super117860_)
        (let ((__tmp122859
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns117858_
           _super117860_
           __tmp122859
           _id117857_
           _path117859_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id117865_ _ns117866_ _path117867_)
        (let ((_super117869_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id117865_
           _ns117866_
           _path117867_
           _super117869_))))
    (define make-__context-module
      (lambda _g122861_
        (let ((_g122860_ (let () (declare (not safe)) (##length _g122861_))))
          (cond ((let () (declare (not safe)) (##fx= _g122860_ 3))
                 (apply (lambda (_id117865_ _ns117866_ _path117867_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id117865_
                             _ns117866_
                             _path117867_)))
                        _g122861_))
                ((let () (declare (not safe)) (##fx= _g122860_ 4))
                 (apply (lambda (_id117871_
                                 _ns117872_
                                 _path117873_
                                 _super117874_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id117871_
                             _ns117872_
                             _path117873_
                             _super117874_)))
                        _g122861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g122861_))))))
    (define __SRC__%
      (lambda (_e117840_ _src-stx117841_)
        (if (or (let () (declare (not safe)) (pair? _e117840_))
                (let () (declare (not safe)) (symbol? _e117840_)))
            (let ((__tmp122865
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx117841_
                          'gerbil#AST::t))
                       (let ((__tmp122866
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx117841_))))
                         (declare (not safe))
                         (__locat __tmp122866))
                       '#f)))
              (declare (not safe))
              (##make-source _e117840_ __tmp122865))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e117840_ 'gerbil#AST::t))
                (let ((__tmp122864
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e117840_ '1 AST::t '#f)))
                      (__tmp122862
                       (let ((__tmp122863
                              (let ()
                                (declare (not safe))
                                (__AST-source _e117840_))))
                         (declare (not safe))
                         (__locat __tmp122863))))
                  (declare (not safe))
                  (##make-source __tmp122864 __tmp122862))
                (error '"BUG! Cannot sourcify object" _e117840_)))))
    (define __SRC__0
      (lambda (_e117849_)
        (let ((_src-stx117851_ '#f))
          (declare (not safe))
          (__SRC__% _e117849_ _src-stx117851_))))
    (define __SRC
      (lambda _g122868_
        (let ((_g122867_ (let () (declare (not safe)) (##length _g122868_))))
          (cond ((let () (declare (not safe)) (##fx= _g122867_ 1))
                 (apply (lambda (_e117849_)
                          (let () (declare (not safe)) (__SRC__0 _e117849_)))
                        _g122868_))
                ((let () (declare (not safe)) (##fx= _g122867_ 2))
                 (apply (lambda (_e117853_ _src-stx117854_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e117853_ _src-stx117854_)))
                        _g122868_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g122868_))))))
    (define __locat
      (lambda (_loc117837_)
        (if (let () (declare (not safe)) (##locat? _loc117837_))
            _loc117837_
            '#f)))
    (define __check-values
      (lambda (_obj117832_ _k117833_)
        (let ((_count117835_
               (if (let () (declare (not safe)) (##values? _obj117832_))
                   (let () (declare (not safe)) (##vector-length _obj117832_))
                   '1)))
          (if (fx= _count117835_ _k117833_)
              '#!void
              (error (if (fx< _count117835_ _k117833_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj117832_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj117832_))
                         _obj117832_)
                     _k117833_)))))
    (define __compile
      (lambda (_stx117802_)
        (let* ((_$e117804_ _stx117802_)
               (_$E117806117812_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117804_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117804_))
              (let* ((_$tgt117807117815_
                      (let () (declare (not safe)) (__AST-e _$e117804_)))
                     (_$hd117808117818_
                      (let () (declare (not safe)) (##car _$tgt117807117815_)))
                     (_$tl117809117821_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117807117815_))))
                (let* ((_form117825_ _$hd117808117818_)
                       (_$e117827_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form117825_))))
                  (if _$e117827_
                      ((lambda (_bind117830_)
                         ((##structure-ref _bind117830_ '1 __syntax::t '#f)
                          _stx117802_))
                       _$e117827_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx117802_
                         _form117825_)))))
              (let () (declare (not safe)) (_$E117806117812_))))))
    (define __compile-error__%
      (lambda (_stx117789_ _detail117790_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx117789_
           _detail117790_))))
    (define __compile-error__0
      (lambda (_stx117795_)
        (let ((_detail117797_ '#f))
          (declare (not safe))
          (__compile-error__% _stx117795_ _detail117797_))))
    (define __compile-error
      (lambda _g122870_
        (let ((_g122869_ (let () (declare (not safe)) (##length _g122870_))))
          (cond ((let () (declare (not safe)) (##fx= _g122869_ 1))
                 (apply (lambda (_stx117795_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx117795_)))
                        _g122870_))
                ((let () (declare (not safe)) (##fx= _g122869_ 2))
                 (apply (lambda (_stx117799_ _detail117800_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx117799_ _detail117800_)))
                        _g122870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g122870_))))))
    (define __compile-ignore%
      (lambda (_stx117786_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx117786_))))
    (define __compile-begin%
      (lambda (_stx117761_)
        (let* ((_$e117763_ _stx117761_)
               (_$E117765117771_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117763_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117763_))
              (let* ((_$tgt117766117774_
                      (let () (declare (not safe)) (__AST-e _$e117763_)))
                     (_$hd117767117777_
                      (let () (declare (not safe)) (##car _$tgt117766117774_)))
                     (_$tl117768117780_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117766117774_))))
                (let* ((_body117784_ _$tl117768117780_)
                       (__tmp122871
                        (let ((__tmp122872 (map __compile _body117784_)))
                          (declare (not safe))
                          (cons 'begin __tmp122872))))
                  (declare (not safe))
                  (__SRC__% __tmp122871 _stx117761_)))
              (let () (declare (not safe)) (_$E117765117771_))))))
    (define __compile-begin-foreign%
      (lambda (_stx117736_)
        (let* ((_$e117738_ _stx117736_)
               (_$E117740117746_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117738_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117738_))
              (let* ((_$tgt117741117749_
                      (let () (declare (not safe)) (__AST-e _$e117738_)))
                     (_$hd117742117752_
                      (let () (declare (not safe)) (##car _$tgt117741117749_)))
                     (_$tl117743117755_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117741117749_))))
                (let* ((_body117759_ _$tl117743117755_)
                       (__tmp122873
                        (let ((__tmp122874
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body117759_))))
                          (declare (not safe))
                          (cons 'begin __tmp122874))))
                  (declare (not safe))
                  (__SRC__% __tmp122873 _stx117736_)))
              (let () (declare (not safe)) (_$E117740117746_))))))
    (define __compile-import%
      (lambda (_stx117711_)
        (let* ((_$e117713_ _stx117711_)
               (_$E117715117721_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117713_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117713_))
              (let* ((_$tgt117716117724_
                      (let () (declare (not safe)) (__AST-e _$e117713_)))
                     (_$hd117717117727_
                      (let () (declare (not safe)) (##car _$tgt117716117724_)))
                     (_$tl117718117730_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117716117724_))))
                (let* ((_body117734_ _$tl117718117730_)
                       (__tmp122875
                        (let ((__tmp122876
                               (let ((__tmp122877
                                      (let ((__tmp122878
                                             (let ()
                                               (declare (not safe))
                                               (cons _body117734_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp122878))))
                                 (declare (not safe))
                                 (cons __tmp122877 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp122876))))
                  (declare (not safe))
                  (__SRC__% __tmp122875 _stx117711_)))
              (let () (declare (not safe)) (_$E117715117721_))))))
    (define __compile-begin-annotation%
      (lambda (_stx117658_)
        (let* ((_$e117660_ _stx117658_)
               (_$E117662117674_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117660_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117660_))
              (let* ((_$tgt117663117677_
                      (let () (declare (not safe)) (__AST-e _$e117660_)))
                     (_$hd117664117680_
                      (let () (declare (not safe)) (##car _$tgt117663117677_)))
                     (_$tl117665117683_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117663117677_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117665117683_))
                    (let* ((_$tgt117666117687_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117665117683_)))
                           (_$hd117667117690_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117666117687_)))
                           (_$tl117668117693_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117666117687_))))
                      (let ((_ann117697_ _$hd117667117690_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117668117693_))
                            (let* ((_$tgt117669117699_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117668117693_)))
                                   (_$hd117670117702_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117669117699_)))
                                   (_$tl117671117705_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117669117699_))))
                              (let ((_expr117709_ _$hd117670117702_))
                                (if (let ((__tmp122879
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117671117705_))))
                                      (declare (not safe))
                                      (equal? __tmp122879 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr117709_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117662117674_)))))
                            (let () (declare (not safe)) (_$E117662117674_)))))
                    (let () (declare (not safe)) (_$E117662117674_))))
              (let () (declare (not safe)) (_$E117662117674_))))))
    (define __compile-define-values%
      (lambda (_stx117549_)
        (let* ((_$e117551_ _stx117549_)
               (_$E117553117565_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117551_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117551_))
              (let* ((_$tgt117554117568_
                      (let () (declare (not safe)) (__AST-e _$e117551_)))
                     (_$hd117555117571_
                      (let () (declare (not safe)) (##car _$tgt117554117568_)))
                     (_$tl117556117574_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117554117568_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117556117574_))
                    (let* ((_$tgt117557117578_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117556117574_)))
                           (_$hd117558117581_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117557117578_)))
                           (_$tl117559117584_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117557117578_))))
                      (let ((_hd117588_ _$hd117558117581_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117559117584_))
                            (let* ((_$tgt117560117590_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117559117584_)))
                                   (_$hd117561117593_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117560117590_)))
                                   (_$tl117562117596_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117560117590_))))
                              (let ((_expr117600_ _$hd117561117593_))
                                (if (let ((__tmp122912
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117562117596_))))
                                      (declare (not safe))
                                      (equal? __tmp122912 '()))
                                    (let* ((_$e117602_ _hd117588_)
                                           (_$E117604117645_
                                            (lambda ()
                                              (let ((_$E117605117630_
                                                     (lambda ()
                                                       (let* ((_$E117606117617_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e117602_))))
                      (_ids117620_ _hd117588_)
                      (_len117622_ (length _ids117620_))
                      (_tmp117624_
                       (let ((__tmp122880 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp122880))))
                 (let ((__tmp122881
                        (let ((__tmp122882
                               (let ((__tmp122899
                                      (let ((__tmp122900
                                             (let ((__tmp122901
                                                    (let ((__tmp122902
                                                           (let ((__tmp122903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr117600_))))
                     (declare (not safe))
                     (cons __tmp122903 '()))))
              (declare (not safe))
              (cons _tmp117624_ __tmp122902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp122901))))
                                        (declare (not safe))
                                        (__SRC__% __tmp122900 _stx117549_)))
                                     (__tmp122883
                                      (let ((__tmp122895
                                             (let ((__tmp122896
                                                    (let ((__tmp122897
                                                           (let ((__tmp122898
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len117622_ '()))))
                     (declare (not safe))
                     (cons _tmp117624_ __tmp122898))))
              (declare (not safe))
              (cons '__check-values __tmp122897))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp122896
                                                _stx117549_)))
                                            (__tmp122884
                                             (let ((__tmp122885
                                                    (let ((__tmp122887
                                                           (lambda (_id117627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k117628_)
                     (if (let () (declare (not safe)) (__AST-e _id117627_))
                         (let ((__tmp122888
                                (let ((__tmp122889
                                       (let ((__tmp122894
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id117627_)))
                                             (__tmp122890
                                              (let ((__tmp122891
                                                     (let ((__tmp122892
                                                            (let ((__tmp122893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k117628_ '()))))
                      (declare (not safe))
                      (cons _tmp117624_ __tmp122893))))
               (declare (not safe))
               (cons '##vector-ref __tmp122892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp122891 '()))))
                                         (declare (not safe))
                                         (cons __tmp122894 __tmp122890))))
                                  (declare (not safe))
                                  (cons 'define __tmp122889))))
                           (declare (not safe))
                           (__SRC__% __tmp122888 _stx117549_))
                         '#f)))
                  (__tmp122886
                   (let () (declare (not safe)) (iota _len117622_))))
              (declare (not safe))
              (filter-map2 __tmp122887 _ids117620_ __tmp122886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp122885))))
                                        (declare (not safe))
                                        (cons __tmp122895 __tmp122884))))
                                 (declare (not safe))
                                 (cons __tmp122899 __tmp122883))))
                          (declare (not safe))
                          (cons 'begin __tmp122882))))
                   (declare (not safe))
                   (__SRC__% __tmp122881 _stx117549_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e117602_))
                                                    (let* ((_$tgt117607117633_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e117602_)))
                                                           (_$hd117608117636_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt117607117633_)))
                                                           (_$tl117609117639_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt117607117633_))))
                                                      (let ((_id117643_
                                                             _$hd117608117636_))
                                                        (if (let ((__tmp122909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl117609117639_))))
                      (declare (not safe))
                      (equal? __tmp122909 '()))
                    (let ((__tmp122904
                           (let ((__tmp122905
                                  (let ((__tmp122908
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id117643_)))
                                        (__tmp122906
                                         (let ((__tmp122907
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr117600_))))
                                           (declare (not safe))
                                           (cons __tmp122907 '()))))
                                    (declare (not safe))
                                    (cons __tmp122908 __tmp122906))))
                             (declare (not safe))
                             (cons 'define __tmp122905))))
                      (declare (not safe))
                      (__SRC__% __tmp122904 _stx117549_))
                    (let () (declare (not safe)) (_$E117605117630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E117605117630_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e117602_))
                                          (let* ((_$tgt117610117648_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e117602_)))
                                                 (_$hd117611117651_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt117610117648_)))
                                                 (_$tl117612117654_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt117610117648_))))
                                            (if (let ((__tmp122911
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd117611117651_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122911 '#f))
                                                (if (let ((__tmp122910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl117612117654_))))
                                                      (declare (not safe))
                                                      (equal? __tmp122910 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr117600_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E117604117645_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E117604117645_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E117604117645_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117553117565_)))))
                            (let () (declare (not safe)) (_$E117553117565_)))))
                    (let () (declare (not safe)) (_$E117553117565_))))
              (let () (declare (not safe)) (_$E117553117565_))))))
    (define __compile-head-id
      (lambda (_e117547_)
        (let ((__tmp122913
               (if (let () (declare (not safe)) (__AST-e _e117547_))
                   _e117547_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp122913))))
    (define __compile-lambda-head
      (lambda (_hd117504_)
        (let _recur117506_ ((_rest117508_ _hd117504_))
          (let* ((_$e117510_ _rest117508_)
                 (_$E117512117530_
                  (lambda ()
                    (let ((_$E117513117527_
                           (lambda ()
                             (let* ((_$E117514117522_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e117510_))))
                                    (_tail117525_ _$e117510_))
                               (declare (not safe))
                               (__compile-head-id _tail117525_)))))
                      (if (let ((__tmp122914
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e117510_))))
                            (declare (not safe))
                            (equal? __tmp122914 '()))
                          '()
                          (let () (declare (not safe)) (_$E117513117527_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e117510_))
                (let* ((_$tgt117515117533_
                        (let () (declare (not safe)) (__AST-e _$e117510_)))
                       (_$hd117516117536_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt117515117533_)))
                       (_$tl117517117539_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt117515117533_))))
                  (let* ((_hd117543_ _$hd117516117536_)
                         (_rest117545_ _$tl117517117539_))
                    (let ((__tmp122916
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd117543_)))
                          (__tmp122915
                           (let ()
                             (declare (not safe))
                             (_recur117506_ _rest117545_))))
                      (declare (not safe))
                      (cons __tmp122916 __tmp122915))))
                (let () (declare (not safe)) (_$E117512117530_)))))))
    (define __compile-lambda%
      (lambda (_stx117451_)
        (let* ((_$e117453_ _stx117451_)
               (_$E117455117467_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e117453_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e117453_))
              (let* ((_$tgt117456117470_
                      (let () (declare (not safe)) (__AST-e _$e117453_)))
                     (_$hd117457117473_
                      (let () (declare (not safe)) (##car _$tgt117456117470_)))
                     (_$tl117458117476_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt117456117470_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl117458117476_))
                    (let* ((_$tgt117459117480_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl117458117476_)))
                           (_$hd117460117483_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt117459117480_)))
                           (_$tl117461117486_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt117459117480_))))
                      (let ((_hd117490_ _$hd117460117483_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl117461117486_))
                            (let* ((_$tgt117462117492_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl117461117486_)))
                                   (_$hd117463117495_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117462117492_)))
                                   (_$tl117464117498_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117462117492_))))
                              (let ((_body117502_ _$hd117463117495_))
                                (if (let ((__tmp122922
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117464117498_))))
                                      (declare (not safe))
                                      (equal? __tmp122922 '()))
                                    (let ((__tmp122917
                                           (let ((__tmp122918
                                                  (let ((__tmp122921
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd117490_)))
                                                        (__tmp122919
                                                         (let ((__tmp122920
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body117502_))))
                   (declare (not safe))
                   (cons __tmp122920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122921
                                                          __tmp122919))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp122918))))
                                      (declare (not safe))
                                      (__SRC__% __tmp122917 _stx117451_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E117455117467_)))))
                            (let () (declare (not safe)) (_$E117455117467_)))))
                    (let () (declare (not safe)) (_$E117455117467_))))
              (let () (declare (not safe)) (_$E117455117467_))))))
    (define __compile-case-lambda%
      (lambda (_stx117243_)
        (letrec ((_variadic?117245_
                  (lambda (_hd117416_)
                    (let* ((_$e117418_ _hd117416_)
                           (_$E117420117436_
                            (lambda ()
                              (let ((_$E117421117433_
                                     (lambda ()
                                       (let ((_$E117422117430_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e117418_)))))
                                         '#t))))
                                (if (let ((__tmp122923
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e117418_))))
                                      (declare (not safe))
                                      (equal? __tmp122923 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E117421117433_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e117418_))
                          (let* ((_$tgt117423117439_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e117418_)))
                                 (_$hd117424117442_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt117423117439_)))
                                 (_$tl117425117445_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt117423117439_))))
                            (let ((_rest117449_ _$tl117425117445_))
                              (declare (not safe))
                              (_variadic?117245_ _rest117449_)))
                          (let () (declare (not safe)) (_$E117420117436_))))))
                 (_arity117246_
                  (lambda (_hd117381_)
                    (let _lp117383_ ((_rest117385_ _hd117381_) (_k117386_ '0))
                      (let* ((_$e117388_ _rest117385_)
                             (_$E117390117401_
                              (lambda ()
                                (let ((_$E117391117398_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e117388_)))))
                                  _k117386_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e117388_))
                            (let* ((_$tgt117392117404_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e117388_)))
                                   (_$hd117393117407_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt117392117404_)))
                                   (_$tl117394117410_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt117392117404_))))
                              (let* ((_rest117414_ _$tl117394117410_)
                                     (__tmp122924
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k117386_ '1))))
                                (declare (not safe))
                                (_lp117383_ _rest117414_ __tmp122924)))
                            (let ()
                              (declare (not safe))
                              (_$E117390117401_)))))))
                 (_generate117247_
                  (lambda (_rest117308_ _args117309_ _len117310_)
                    (let* ((_$e117312_ _rest117308_)
                           (_$E117314117325_
                            (lambda ()
                              (let* ((_$E117315117322_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e117312_))))
                                     (__tmp122925
                                      (let ((__tmp122926
                                             (let ((__tmp122927
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args117309_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp122927))))
                                        (declare (not safe))
                                        (cons 'error __tmp122926))))
                                (declare (not safe))
                                (__SRC__% __tmp122925 _stx117243_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e117312_))
                          (let* ((_$tgt117316117328_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e117312_)))
                                 (_$hd117317117331_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt117316117328_)))
                                 (_$tl117318117334_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt117316117328_))))
                            (let* ((_clause117338_ _$hd117317117331_)
                                   (_rest117340_ _$tl117318117334_)
                                   (_$e117342_ _clause117338_)
                                   (_$E117344117353_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e117342_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e117342_))
                                  (let* ((_$tgt117345117356_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e117342_)))
                                         (_$hd117346117359_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt117345117356_)))
                                         (_$tl117347117362_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt117345117356_))))
                                    (let ((_hd117366_ _$hd117346117359_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl117347117362_))
                                          (let* ((_$tgt117348117368_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl117347117362_)))
                                                 (_$hd117349117371_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt117348117368_)))
                                                 (_$tl117350117374_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt117348117368_))))
                                            (if (let ((__tmp122942
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl117350117374_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122942 '()))
                                                (let ((_clen117378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity117246_
                                                          _hd117366_)))
                                                      (_cmp117379_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?117245_
                                                              _hd117366_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp122928
                                                         (let ((__tmp122929
                                                                (let ((__tmp122939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp122940
                                      (let ((__tmp122941
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen117378_ '()))))
                                        (declare (not safe))
                                        (cons _len117310_ __tmp122941))))
                                 (declare (not safe))
                                 (cons _cmp117379_ __tmp122940)))
                              (__tmp122930
                               (let ((__tmp122933
                                      (let ((__tmp122934
                                             (let ((__tmp122935
                                                    (let ((__tmp122937
                                                           (let ((__tmp122938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause117338_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp122938)))
                  (__tmp122936
                   (let () (declare (not safe)) (cons _args117309_ '()))))
              (declare (not safe))
              (cons __tmp122937 __tmp122936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp122935))))
                                        (declare (not safe))
                                        (__SRC__% __tmp122934 _stx117243_)))
                                     (__tmp122931
                                      (let ((__tmp122932
                                             (let ()
                                               (declare (not safe))
                                               (_generate117247_
                                                _rest117340_
                                                _args117309_
                                                _len117310_))))
                                        (declare (not safe))
                                        (cons __tmp122932 '()))))
                                 (declare (not safe))
                                 (cons __tmp122933 __tmp122931))))
                          (declare (not safe))
                          (cons __tmp122939 __tmp122930))))
                   (declare (not safe))
                   (cons 'if __tmp122929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp122928
                                                     _stx117243_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E117344117353_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E117344117353_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E117344117353_)))))
                          (let () (declare (not safe)) (_$E117314117325_)))))))
          (let* ((_$e117249_ _stx117243_)
                 (_$E117251117283_
                  (lambda ()
                    (let ((_$E117252117265_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e117249_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e117249_))
                          (let* ((_$tgt117253117268_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e117249_)))
                                 (_$hd117254117271_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt117253117268_)))
                                 (_$tl117255117274_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt117253117268_))))
                            (let ((_clauses117278_ _$tl117255117274_))
                              (let ((_args117280_
                                     (let ((__tmp122943 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp122943 _stx117243_)))
                                    (_len117281_
                                     (let ((__tmp122944 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp122944 _stx117243_))))
                                (let ((__tmp122945
                                       (let ((__tmp122946
                                              (let ((__tmp122947
                                                     (let ((__tmp122948
                                                            (let ((__tmp122949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp122950
                                  (let ((__tmp122953
                                         (let ((__tmp122954
                                                (let ((__tmp122955
                                                       (let ((__tmp122956
                                                              (let ((__tmp122957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp122958
                                    (let ()
                                      (declare (not safe))
                                      (cons _args117280_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp122958))))
                        (declare (not safe))
                        (__SRC__% __tmp122957 _stx117243_))))
                 (declare (not safe))
                 (cons __tmp122956 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len117281_
                                                        __tmp122955))))
                                           (declare (not safe))
                                           (cons __tmp122954 '())))
                                        (__tmp122951
                                         (let ((__tmp122952
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate117247_
                                                   _clauses117278_
                                                   _args117280_
                                                   _len117281_))))
                                           (declare (not safe))
                                           (cons __tmp122952 '()))))
                                    (declare (not safe))
                                    (cons __tmp122953 __tmp122951))))
                             (declare (not safe))
                             (cons 'let __tmp122950))))
                      (declare (not safe))
                      (__SRC__% __tmp122949 _stx117243_))))
               (declare (not safe))
               (cons __tmp122948 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args117280_
                                                      __tmp122947))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp122946))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122945 _stx117243_)))))
                          (let () (declare (not safe)) (_$E117252117265_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e117249_))
                (let* ((_$tgt117256117286_
                        (let () (declare (not safe)) (__AST-e _$e117249_)))
                       (_$hd117257117289_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt117256117286_)))
                       (_$tl117258117292_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt117256117286_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl117258117292_))
                      (let* ((_$tgt117259117296_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl117258117292_)))
                             (_$hd117260117299_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt117259117296_)))
                             (_$tl117261117302_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt117259117296_))))
                        (let ((_clause117306_ _$hd117260117299_))
                          (if (let ((__tmp122960
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl117261117302_))))
                                (declare (not safe))
                                (equal? __tmp122960 '()))
                              (let ((__tmp122959
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause117306_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp122959))
                              (let ()
                                (declare (not safe))
                                (_$E117251117283_)))))
                      (let () (declare (not safe)) (_$E117251117283_))))
                (let () (declare (not safe)) (_$E117251117283_)))))))
    (define __compile-let-form
      (lambda (_stx117012_ _compile-simple117013_ _compile-values117014_)
        (letrec ((_simple-bind?117016_
                  (lambda (_hd117201_)
                    (let* ((_hd117202117212_ _hd117201_)
                           (_else117205117220_ (lambda () '#f)))
                      (let ((_K117208117233_ (lambda (_id117231_) '#t))
                            (_K117207117225_ (lambda () '#t)))
                        (let ((_try-match117204117228_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd117202117212_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K117207117225_))
                                     (let ()
                                       (declare (not safe))
                                       (_else117205117220_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd117202117212_))
                              (let ((_tl117210117238_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd117202117212_)))
                                    (_hd117209117236_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd117202117212_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl117210117238_))
                                    (let ((_id117241_ _hd117209117236_))
                                      (declare (not safe))
                                      (_K117208117233_ _id117241_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match117204117228_))))
                              (let ()
                                (declare (not safe))
                                (_try-match117204117228_))))))))
                 (_car-e117017_
                  (lambda (_hd117199_)
                    (if (let () (declare (not safe)) (pair? _hd117199_))
                        (car _hd117199_)
                        _hd117199_))))
          (let* ((_$e117019_ _stx117012_)
                 (_$E117021117164_
                  (lambda ()
                    (let ((_$E117022117044_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e117019_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e117019_))
                          (let* ((_$tgt117023117047_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e117019_)))
                                 (_$hd117024117050_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt117023117047_)))
                                 (_$tl117025117053_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt117023117047_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl117025117053_))
                                (let* ((_$tgt117026117057_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl117025117053_)))
                                       (_$hd117027117060_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt117026117057_)))
                                       (_$tl117028117063_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt117026117057_))))
                                  (let ((_hd117067_ _$hd117027117060_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl117028117063_))
                                        (let* ((_$tgt117029117069_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl117028117063_)))
                                               (_$hd117030117072_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt117029117069_)))
                                               (_$tl117031117075_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt117029117069_))))
                                          (let ((_body117079_
                                                 _$hd117030117072_))
                                            (if (let ((__tmp122963
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl117031117075_))))
                                                  (declare (not safe))
                                                  (equal? __tmp122963 '()))
                                                (let* ((_hd-ids117119_
                                                        (map (lambda (_bind117081_)
                                                               (let* ((_$e117083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind117081_)
                              (_$E117085117094_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e117083_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e117083_))
                             (let* ((_$tgt117086117097_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e117083_)))
                                    (_$hd117087117100_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt117086117097_)))
                                    (_$tl117088117103_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt117086117097_))))
                               (let ((_ids117107_ _$hd117087117100_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl117088117103_))
                                     (let* ((_$tgt117089117109_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl117088117103_)))
                                            (_$hd117090117112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt117089117109_)))
                                            (_$tl117091117115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt117089117109_))))
                                       (if (let ((__tmp122961
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl117091117115_))))
                                             (declare (not safe))
                                             (equal? __tmp122961 '()))
                                           _ids117107_
                                           (let ()
                                             (declare (not safe))
                                             (_$E117085117094_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E117085117094_)))))
                             (let ()
                               (declare (not safe))
                               (_$E117085117094_)))))
                     _hd117067_))
               (_exprs117159_
                (map (lambda (_bind117121_)
                       (let* ((_$e117123_ _bind117121_)
                              (_$E117125117134_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e117123_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e117123_))
                             (let* ((_$tgt117126117137_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e117123_)))
                                    (_$hd117127117140_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt117126117137_)))
                                    (_$tl117128117143_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt117126117137_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl117128117143_))
                                   (let* ((_$tgt117129117147_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl117128117143_)))
                                          (_$hd117130117150_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt117129117147_)))
                                          (_$tl117131117153_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt117129117147_))))
                                     (let ((_expr117157_ _$hd117130117150_))
                                       (if (let ((__tmp122962
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl117131117153_))))
                                             (declare (not safe))
                                             (equal? __tmp122962 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr117157_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E117125117134_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E117125117134_))))
                             (let ()
                               (declare (not safe))
                               (_$E117125117134_)))))
                     _hd117067_))
               (_body117161_
                (let () (declare (not safe)) (__compile _body117079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?117016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids117119_))
              (_compile-simple117013_
               (map _car-e117017_ _hd-ids117119_)
               _exprs117159_
               _body117161_)
              (_compile-values117014_
               _hd-ids117119_
               _exprs117159_
               _body117161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E117022117044_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E117022117044_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E117022117044_))))
                          (let () (declare (not safe)) (_$E117022117044_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e117019_))
                (let* ((_$tgt117032117167_
                        (let () (declare (not safe)) (__AST-e _$e117019_)))
                       (_$hd117033117170_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt117032117167_)))
                       (_$tl117034117173_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt117032117167_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl117034117173_))
                      (let* ((_$tgt117035117177_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl117034117173_)))
                             (_$hd117036117180_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt117035117177_)))
                             (_$tl117037117183_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt117035117177_))))
                        (if (let ((__tmp122965
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd117036117180_))))
                              (declare (not safe))
                              (equal? __tmp122965 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl117037117183_))
                                (let* ((_$tgt117038117187_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl117037117183_)))
                                       (_$hd117039117190_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt117038117187_)))
                                       (_$tl117040117193_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt117038117187_))))
                                  (let ((_body117197_ _$hd117039117190_))
                                    (if (let ((__tmp122964
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl117040117193_))))
                                          (declare (not safe))
                                          (equal? __tmp122964 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body117197_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E117021117164_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E117021117164_)))
                            (let () (declare (not safe)) (_$E117021117164_))))
                      (let () (declare (not safe)) (_$E117021117164_))))
                (let () (declare (not safe)) (_$E117021117164_)))))))
    (define __compile-let-values%
      (lambda (_stx116827_)
        (letrec ((_compile-simple116829_
                  (lambda (_hd-ids117008_ _exprs117009_ _body117010_)
                    (let ((__tmp122966
                           (let ((__tmp122967
                                  (let ((__tmp122969
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids117008_)
                                              _exprs117009_))
                                        (__tmp122968
                                         (let ()
                                           (declare (not safe))
                                           (cons _body117010_ '()))))
                                    (declare (not safe))
                                    (cons __tmp122969 __tmp122968))))
                             (declare (not safe))
                             (cons 'let __tmp122967))))
                      (declare (not safe))
                      (__SRC__% __tmp122966 _stx116827_))))
                 (_compile-values116830_
                  (lambda (_hd-ids116926_ _exprs116927_ _body116928_)
                    (let _lp116930_ ((_rest116932_ _hd-ids116926_)
                                     (_exprs116933_ _exprs116927_)
                                     (_bind116934_ '())
                                     (_post116935_ '()))
                      (let* ((_rest116936116950_ _rest116932_)
                             (_else116939116958_
                              (lambda ()
                                (let ((__tmp122970
                                       (let ((__tmp122971
                                              (let ((__tmp122974
                                                     (reverse _bind116934_))
                                                    (__tmp122972
                                                     (let ((__tmp122973
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post116831_
                                                               _post116935_
                                                               _body116928_))))
                                                       (declare (not safe))
                                                       (cons __tmp122973
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp122974
                                                      __tmp122972))))
                                         (declare (not safe))
                                         (cons 'let __tmp122971))))
                                  (declare (not safe))
                                  (__SRC__% __tmp122970 _stx116827_)))))
                        (let ((_K116944116991_
                               (lambda (_rest116988_ _id116989_)
                                 (let ((__tmp122980 (cdr _exprs116933_))
                                       (__tmp122975
                                        (let ((__tmp122976
                                               (let ((__tmp122979
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id116989_)))
                                                     (__tmp122977
                                                      (let ((__tmp122978
                                                             (car _exprs116933_)))
                                                        (declare (not safe))
                                                        (cons __tmp122978
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp122979
                                                       __tmp122977))))
                                          (declare (not safe))
                                          (cons __tmp122976 _bind116934_))))
                                   (declare (not safe))
                                   (_lp116930_
                                    _rest116988_
                                    __tmp122980
                                    __tmp122975
                                    _post116935_))))
                              (_K116941116973_
                               (lambda (_rest116962_ _hd116963_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116963_))
                                     (let ((__tmp123001 (cdr _exprs116933_))
                                           (__tmp122994
                                            (let ((__tmp122995
                                                   (let ((__tmp123000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd116963_)))
                                                         (__tmp122996
                                                          (let ((__tmp122997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp122998
                                (let ((__tmp122999 (car _exprs116933_)))
                                  (declare (not safe))
                                  (cons __tmp122999 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp122998))))
                    (declare (not safe))
                    (cons __tmp122997 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp123000
                                                           __tmp122996))))
                                              (declare (not safe))
                                              (cons __tmp122995
                                                    _bind116934_))))
                                       (declare (not safe))
                                       (_lp116930_
                                        _rest116962_
                                        __tmp123001
                                        __tmp122994
                                        _post116935_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd116963_))
                                         (let* ((_len116965_
                                                 (length _hd116963_))
                                                (_tmp116967_
                                                 (let ((__tmp122981 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp122981))))
                                           (let ((__tmp122993
                                                  (cdr _exprs116933_))
                                                 (__tmp122989
                                                  (let ((__tmp122990
                                                         (let ((__tmp122991
                                                                (let ((__tmp122992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs116933_)))
                          (declare (not safe))
                          (cons __tmp122992 '()))))
                   (declare (not safe))
                   (cons _tmp116967_ __tmp122991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122990
                                                          _bind116934_)))
                                                 (__tmp122982
                                                  (let ((__tmp122983
                                                         (let ((__tmp122984
                                                                (let ((__tmp122985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp122987
                                      (lambda (_id116970_ _k116971_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id116970_))
                                            (let ((__tmp122988
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id116970_))))
                                              (declare (not safe))
                                              (cons __tmp122988 _k116971_))
                                            '#f)))
                                     (__tmp122986
                                      (let ()
                                        (declare (not safe))
                                        (iota _len116965_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp122987
                                  _hd116963_
                                  __tmp122986))))
                          (declare (not safe))
                          (cons _len116965_ __tmp122985))))
                   (declare (not safe))
                   (cons _tmp116967_ __tmp122984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp122983
                                                          _post116935_))))
                                             (declare (not safe))
                                             (_lp116930_
                                              _rest116962_
                                              __tmp122993
                                              __tmp122989
                                              __tmp122982)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx116827_
                                            _hd116963_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116936116950_))
                              (let ((_tl116946116996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116936116950_)))
                                    (_hd116945116994_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116936116950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116945116994_))
                                    (let ((_tl116948117001_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116945116994_)))
                                          (_hd116947116999_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116945116994_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116948117001_))
                                          (let ((_id117004_ _hd116947116999_)
                                                (_rest117006_
                                                 _tl116946116996_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116944116991_
                                               _rest117006_
                                               _id117004_)))
                                          (let ((_hd116981_ _hd116945116994_)
                                                (_rest116983_
                                                 _tl116946116996_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116941116973_
                                               _rest116983_
                                               _hd116981_)))))
                                    (let ((_hd116981_ _hd116945116994_)
                                          (_rest116983_ _tl116946116996_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116941116973_
                                         _rest116983_
                                         _hd116981_)))))
                              (let ()
                                (declare (not safe))
                                (_else116939116958_))))))))
                 (_compile-post116831_
                  (lambda (_post116833_ _body116834_)
                    (let _lp116836_ ((_rest116838_ _post116833_)
                                     (_check116839_ '())
                                     (_bind116840_ '()))
                      (let* ((_rest116841116853_ _rest116838_)
                             (_else116843116861_
                              (lambda ()
                                (let ((__tmp123002
                                       (let ((__tmp123003
                                              (let ((__tmp123004
                                                     (let ((__tmp123005
                                                            (let ((__tmp123006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp123007
                                  (let ((__tmp123008
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116834_ '()))))
                                    (declare (not safe))
                                    (cons _bind116840_ __tmp123008))))
                             (declare (not safe))
                             (cons 'let __tmp123007))))
                      (declare (not safe))
                      (__SRC__% __tmp123006 _stx116827_))))
               (declare (not safe))
               (cons __tmp123005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp123004
                                                        _check116839_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp123003))))
                                  (declare (not safe))
                                  (__SRC__% __tmp123002 _stx116827_))))
                             (_K116845116900_
                              (lambda (_rest116864_
                                       _init116865_
                                       _len116866_
                                       _tmp116867_)
                                (let ((__tmp123016
                                       (let ((__tmp123017
                                              (let ((__tmp123018
                                                     (let ((__tmp123019
                                                            (let ((__tmp123020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len116866_ '()))))
                      (declare (not safe))
                      (cons _tmp116867_ __tmp123020))))
               (declare (not safe))
               (cons '__check-values __tmp123019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp123018
                                                 _stx116827_))))
                                         (declare (not safe))
                                         (cons __tmp123017 _check116839_)))
                                      (__tmp123009
                                       (let ((__tmp123010
                                              (lambda (_hd116869_ _r116870_)
                                                (let* ((_hd116871116878_
                                                        _hd116869_)
                                                       (_E116873116882_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd116871116878_)))
               (_K116874116888_
                (lambda (_k116885_ _id116886_)
                  (let ((__tmp123011
                         (let ((__tmp123012
                                (let ((__tmp123013
                                       (let ((__tmp123014
                                              (let ((__tmp123015
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k116885_ '()))))
                                                (declare (not safe))
                                                (cons _tmp116867_
                                                      __tmp123015))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp123014))))
                                  (declare (not safe))
                                  (cons __tmp123013 '()))))
                           (declare (not safe))
                           (cons _id116886_ __tmp123012))))
                    (declare (not safe))
                    (cons __tmp123011 _r116870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd116871116878_))
                                                      (let ((_hd116875116891_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd116871116878_)))
                    (_tl116876116893_
                     (let () (declare (not safe)) (##cdr _hd116871116878_))))
                (let* ((_id116896_ _hd116875116891_)
                       (_k116898_ _tl116876116893_))
                  (declare (not safe))
                  (_K116874116888_ _k116898_ _id116896_)))
              (let () (declare (not safe)) (_E116873116882_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp123010
                                                 _bind116840_
                                                 _init116865_))))
                                  (declare (not safe))
                                  (_lp116836_
                                   _rest116864_
                                   __tmp123016
                                   __tmp123009)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest116841116853_))
                            (let ((_hd116846116903_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest116841116853_)))
                                  (_tl116847116905_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest116841116853_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd116846116903_))
                                  (let ((_hd116848116908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd116846116903_)))
                                        (_tl116849116910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd116846116903_))))
                                    (let ((_tmp116913_ _hd116848116908_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl116849116910_))
                                          (let ((_hd116850116915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl116849116910_)))
                                                (_tl116851116917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl116849116910_))))
                                            (let* ((_len116920_
                                                    _hd116850116915_)
                                                   (_init116922_
                                                    _tl116851116917_)
                                                   (_rest116924_
                                                    _tl116847116905_))
                                              (declare (not safe))
                                              (_K116845116900_
                                               _rest116924_
                                               _init116922_
                                               _len116920_
                                               _tmp116913_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else116843116861_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else116843116861_))))
                            (let ()
                              (declare (not safe))
                              (_else116843116861_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx116827_
             _compile-simple116829_
             _compile-values116830_)))))
    (define __compile-letrec-values%
      (lambda (_stx116627_)
        (letrec ((_compile-simple116629_
                  (lambda (_hd-ids116823_ _exprs116824_ _body116825_)
                    (let ((__tmp123021
                           (let ((__tmp123022
                                  (let ((__tmp123024
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids116823_)
                                              _exprs116824_))
                                        (__tmp123023
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116825_ '()))))
                                    (declare (not safe))
                                    (cons __tmp123024 __tmp123023))))
                             (declare (not safe))
                             (cons 'letrec __tmp123022))))
                      (declare (not safe))
                      (__SRC__% __tmp123021 _stx116627_))))
                 (_compile-values116630_
                  (lambda (_hd-ids116737_ _exprs116738_ _body116739_)
                    (let _lp116741_ ((_rest116743_ _hd-ids116737_)
                                     (_exprs116744_ _exprs116738_)
                                     (_pre116745_ '())
                                     (_bind116746_ '())
                                     (_post116747_ '()))
                      (let* ((_rest116748116762_ _rest116743_)
                             (_else116751116770_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner116631_
                                   _pre116745_
                                   _bind116746_
                                   _post116747_
                                   _body116739_)))))
                        (let ((_K116756116806_
                               (lambda (_rest116803_ _id116804_)
                                 (let ((__tmp123030 (cdr _exprs116744_))
                                       (__tmp123025
                                        (let ((__tmp123026
                                               (let ((__tmp123029
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id116804_)))
                                                     (__tmp123027
                                                      (let ((__tmp123028
                                                             (car _exprs116744_)))
                                                        (declare (not safe))
                                                        (cons __tmp123028
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp123029
                                                       __tmp123027))))
                                          (declare (not safe))
                                          (cons __tmp123026 _bind116746_))))
                                   (declare (not safe))
                                   (_lp116741_
                                    _rest116803_
                                    __tmp123030
                                    _pre116745_
                                    __tmp123025
                                    _post116747_))))
                              (_K116753116788_
                               (lambda (_rest116774_ _hd116775_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116775_))
                                     (let ((__tmp123058 (cdr _exprs116744_))
                                           (__tmp123051
                                            (let ((__tmp123052
                                                   (let ((__tmp123057
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd116775_)))
                                                         (__tmp123053
                                                          (let ((__tmp123054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp123055
                                (let ((__tmp123056 (car _exprs116744_)))
                                  (declare (not safe))
                                  (cons __tmp123056 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp123055))))
                    (declare (not safe))
                    (cons __tmp123054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp123057
                                                           __tmp123053))))
                                              (declare (not safe))
                                              (cons __tmp123052
                                                    _bind116746_))))
                                       (declare (not safe))
                                       (_lp116741_
                                        _rest116774_
                                        __tmp123058
                                        _pre116745_
                                        __tmp123051
                                        _post116747_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd116775_))
                                         (let* ((_len116777_
                                                 (length _hd116775_))
                                                (_tmp116779_
                                                 (let ((__tmp123031 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp123031))))
                                           (let ((__tmp123050
                                                  (cdr _exprs116744_))
                                                 (__tmp123043
                                                  (let ((__tmp123044
                                                         (lambda (_id116782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r116783_)
                   (if (let () (declare (not safe)) (__AST-e _id116782_))
                       (let ((__tmp123045
                              (let ((__tmp123049
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id116782_)))
                                    (__tmp123046
                                     (let ((__tmp123047
                                            (let ((__tmp123048
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp123048))))
                                       (declare (not safe))
                                       (cons __tmp123047 '()))))
                                (declare (not safe))
                                (cons __tmp123049 __tmp123046))))
                         (declare (not safe))
                         (cons __tmp123045 _r116783_))
                       _r116783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp123044
                                                            _pre116745_
                                                            _hd116775_)))
                                                 (__tmp123039
                                                  (let ((__tmp123040
                                                         (let ((__tmp123041
                                                                (let ((__tmp123042
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs116744_)))
                          (declare (not safe))
                          (cons __tmp123042 '()))))
                   (declare (not safe))
                   (cons _tmp116779_ __tmp123041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp123040
                                                          _bind116746_)))
                                                 (__tmp123032
                                                  (let ((__tmp123033
                                                         (let ((__tmp123034
                                                                (let ((__tmp123035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp123037
                                      (lambda (_id116785_ _k116786_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id116785_))
                                            (let ((__tmp123038
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id116785_))))
                                              (declare (not safe))
                                              (cons __tmp123038 _k116786_))
                                            '#f)))
                                     (__tmp123036
                                      (let ()
                                        (declare (not safe))
                                        (iota _len116777_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp123037
                                  _hd116775_
                                  __tmp123036))))
                          (declare (not safe))
                          (cons _len116777_ __tmp123035))))
                   (declare (not safe))
                   (cons _tmp116779_ __tmp123034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp123033
                                                          _post116747_))))
                                             (declare (not safe))
                                             (_lp116741_
                                              _rest116774_
                                              __tmp123050
                                              __tmp123043
                                              __tmp123039
                                              __tmp123032)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx116627_
                                            _hd116775_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116748116762_))
                              (let ((_tl116758116811_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116748116762_)))
                                    (_hd116757116809_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116748116762_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116757116809_))
                                    (let ((_tl116760116816_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116757116809_)))
                                          (_hd116759116814_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116757116809_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116760116816_))
                                          (let ((_id116819_ _hd116759116814_)
                                                (_rest116821_
                                                 _tl116758116811_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116756116806_
                                               _rest116821_
                                               _id116819_)))
                                          (let ((_hd116796_ _hd116757116809_)
                                                (_rest116798_
                                                 _tl116758116811_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116753116788_
                                               _rest116798_
                                               _hd116796_)))))
                                    (let ((_hd116796_ _hd116757116809_)
                                          (_rest116798_ _tl116758116811_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116753116788_
                                         _rest116798_
                                         _hd116796_)))))
                              (let ()
                                (declare (not safe))
                                (_else116751116770_))))))))
                 (_compile-inner116631_
                  (lambda (_pre116732_ _bind116733_ _post116734_ _body116735_)
                    (if (let () (declare (not safe)) (null? _pre116732_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind116632_
                           _bind116733_
                           _post116734_
                           _body116735_))
                        (let ((__tmp123059
                               (let ((__tmp123060
                                      (let ((__tmp123063 (reverse _pre116732_))
                                            (__tmp123061
                                             (let ((__tmp123062
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind116632_
                                                       _bind116733_
                                                       _post116734_
                                                       _body116735_))))
                                               (declare (not safe))
                                               (cons __tmp123062 '()))))
                                        (declare (not safe))
                                        (cons __tmp123063 __tmp123061))))
                                 (declare (not safe))
                                 (cons 'let __tmp123060))))
                          (declare (not safe))
                          (__SRC__% __tmp123059 _stx116627_)))))
                 (_compile-bind116632_
                  (lambda (_bind116728_ _post116729_ _body116730_)
                    (let ((__tmp123064
                           (let ((__tmp123065
                                  (let ((__tmp123068 (reverse _bind116728_))
                                        (__tmp123066
                                         (let ((__tmp123067
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post116633_
                                                   _post116729_
                                                   _body116730_))))
                                           (declare (not safe))
                                           (cons __tmp123067 '()))))
                                    (declare (not safe))
                                    (cons __tmp123068 __tmp123066))))
                             (declare (not safe))
                             (cons 'letrec __tmp123065))))
                      (declare (not safe))
                      (__SRC__% __tmp123064 _stx116627_))))
                 (_compile-post116633_
                  (lambda (_post116635_ _body116636_)
                    (let _lp116638_ ((_rest116640_ _post116635_)
                                     (_check116641_ '())
                                     (_bind116642_ '()))
                      (let* ((_rest116643116655_ _rest116640_)
                             (_else116645116663_
                              (lambda ()
                                (let ((__tmp123069
                                       (let ((__tmp123070
                                              (let ((__tmp123071
                                                     (let ((__tmp123072
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body116636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp123072 _bind116642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp123071
                                                        _check116641_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp123070))))
                                  (declare (not safe))
                                  (__SRC__% __tmp123069 _stx116627_))))
                             (_K116647116702_
                              (lambda (_rest116666_
                                       _init116667_
                                       _len116668_
                                       _tmp116669_)
                                (let ((__tmp123081
                                       (let ((__tmp123082
                                              (let ((__tmp123083
                                                     (let ((__tmp123084
                                                            (let ((__tmp123085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len116668_ '()))))
                      (declare (not safe))
                      (cons _tmp116669_ __tmp123085))))
               (declare (not safe))
               (cons '__check-values __tmp123084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp123083
                                                 _stx116627_))))
                                         (declare (not safe))
                                         (cons __tmp123082 _check116641_)))
                                      (__tmp123073
                                       (let ((__tmp123074
                                              (lambda (_hd116671_ _r116672_)
                                                (let* ((_hd116673116680_
                                                        _hd116671_)
                                                       (_E116675116684_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd116673116680_)))
               (_K116676116690_
                (lambda (_k116687_ _id116688_)
                  (let ((__tmp123075
                         (let ((__tmp123076
                                (let ((__tmp123077
                                       (let ((__tmp123078
                                              (let ((__tmp123079
                                                     (let ((__tmp123080
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k116687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp116669_ __tmp123080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp123079))))
                                         (declare (not safe))
                                         (cons __tmp123078 '()))))
                                  (declare (not safe))
                                  (cons _id116688_ __tmp123077))))
                           (declare (not safe))
                           (cons 'set! __tmp123076))))
                    (declare (not safe))
                    (cons __tmp123075 _r116672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd116673116680_))
                                                      (let ((_hd116677116693_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd116673116680_)))
                    (_tl116678116695_
                     (let () (declare (not safe)) (##cdr _hd116673116680_))))
                (let* ((_id116698_ _hd116677116693_)
                       (_k116700_ _tl116678116695_))
                  (declare (not safe))
                  (_K116676116690_ _k116700_ _id116698_)))
              (let () (declare (not safe)) (_E116675116684_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp123074
                                                 _bind116642_
                                                 _init116667_))))
                                  (declare (not safe))
                                  (_lp116638_
                                   _rest116666_
                                   __tmp123081
                                   __tmp123073)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest116643116655_))
                            (let ((_hd116648116705_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest116643116655_)))
                                  (_tl116649116707_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest116643116655_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd116648116705_))
                                  (let ((_hd116650116710_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd116648116705_)))
                                        (_tl116651116712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd116648116705_))))
                                    (let ((_tmp116715_ _hd116650116710_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl116651116712_))
                                          (let ((_hd116652116717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl116651116712_)))
                                                (_tl116653116719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl116651116712_))))
                                            (let* ((_len116722_
                                                    _hd116652116717_)
                                                   (_init116724_
                                                    _tl116653116719_)
                                                   (_rest116726_
                                                    _tl116649116707_))
                                              (declare (not safe))
                                              (_K116647116702_
                                               _rest116726_
                                               _init116724_
                                               _len116722_
                                               _tmp116715_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else116645116663_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else116645116663_))))
                            (let ()
                              (declare (not safe))
                              (_else116645116663_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx116627_
             _compile-simple116629_
             _compile-values116630_)))))
    (define __compile-letrec*-values%
      (lambda (_stx116382_)
        (letrec ((_compile-simple116384_
                  (lambda (_hd-ids116623_ _exprs116624_ _body116625_)
                    (let ((__tmp123086
                           (let ((__tmp123087
                                  (let ((__tmp123089
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids116623_)
                                              _exprs116624_))
                                        (__tmp123088
                                         (let ()
                                           (declare (not safe))
                                           (cons _body116625_ '()))))
                                    (declare (not safe))
                                    (cons __tmp123089 __tmp123088))))
                             (declare (not safe))
                             (cons 'letrec* __tmp123087))))
                      (declare (not safe))
                      (__SRC__% __tmp123086 _stx116382_))))
                 (_compile-values116385_
                  (lambda (_hd-ids116534_ _exprs116535_ _body116536_)
                    (let _lp116538_ ((_rest116540_ _hd-ids116534_)
                                     (_exprs116541_ _exprs116535_)
                                     (_bind116542_ '())
                                     (_post116543_ '()))
                      (let* ((_rest116544116558_ _rest116540_)
                             (_else116547116566_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind116386_
                                   _bind116542_
                                   _post116543_
                                   _body116536_)))))
                        (let ((_K116552116606_
                               (lambda (_rest116601_ _hd116602_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116602_))
                                     (let ((_id116604_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd116602_))))
                                       (let ((__tmp123104 (cdr _exprs116541_))
                                             (__tmp123099
                                              (let ((__tmp123100
                                                     (let ((__tmp123101
                                                            (let ((__tmp123102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp123103
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp123103))))
                      (declare (not safe))
                      (cons __tmp123102 '()))))
               (declare (not safe))
               (cons _id116604_ __tmp123101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp123100
                                                      _bind116542_)))
                                             (__tmp123095
                                              (let ((__tmp123096
                                                     (let ((__tmp123097
                                                            (let ((__tmp123098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs116541_)))
                      (declare (not safe))
                      (cons __tmp123098 '()))))
               (declare (not safe))
               (cons _id116604_ __tmp123097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp123096
                                                      _post116543_))))
                                         (declare (not safe))
                                         (_lp116538_
                                          _rest116601_
                                          __tmp123104
                                          __tmp123099
                                          __tmp123095)))
                                     (let ((__tmp123094 (cdr _exprs116541_))
                                           (__tmp123090
                                            (let ((__tmp123091
                                                   (let ((__tmp123092
                                                          (let ((__tmp123093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs116541_)))
                    (declare (not safe))
                    (cons __tmp123093 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp123092))))
                                              (declare (not safe))
                                              (cons __tmp123091
                                                    _post116543_))))
                                       (declare (not safe))
                                       (_lp116538_
                                        _rest116601_
                                        __tmp123094
                                        _bind116542_
                                        __tmp123090)))))
                              (_K116549116586_
                               (lambda (_rest116570_ _hd116571_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd116571_))
                                     (let ((_id116573_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd116571_))))
                                       (let ((__tmp123140 (cdr _exprs116541_))
                                             (__tmp123135
                                              (let ((__tmp123136
                                                     (let ((__tmp123137
                                                            (let ((__tmp123138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp123139
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp123139))))
                      (declare (not safe))
                      (cons __tmp123138 '()))))
               (declare (not safe))
               (cons _id116573_ __tmp123137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp123136
                                                      _bind116542_)))
                                             (__tmp123129
                                              (let ((__tmp123130
                                                     (let ((__tmp123131
                                                            (let ((__tmp123132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp123133
                                  (let ((__tmp123134 (car _exprs116541_)))
                                    (declare (not safe))
                                    (cons __tmp123134 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp123133))))
                      (declare (not safe))
                      (cons __tmp123132 '()))))
               (declare (not safe))
               (cons _id116573_ __tmp123131))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp123130
                                                      _post116543_))))
                                         (declare (not safe))
                                         (_lp116538_
                                          _rest116570_
                                          __tmp123140
                                          __tmp123135
                                          __tmp123129)))
                                     (if (let ((__tmp123128
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd116571_))))
                                           (declare (not safe))
                                           (not __tmp123128))
                                         (let ((__tmp123127
                                                (cdr _exprs116541_))
                                               (__tmp123123
                                                (let ((__tmp123124
                                                       (let ((__tmp123125
                                                              (let ((__tmp123126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs116541_)))
                        (declare (not safe))
                        (cons __tmp123126 '()))))
                 (declare (not safe))
                 (cons '#f __tmp123125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp123124
                                                        _post116543_))))
                                           (declare (not safe))
                                           (_lp116538_
                                            _rest116570_
                                            __tmp123127
                                            _bind116542_
                                            __tmp123123))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd116571_))
                                             (let* ((_len116575_
                                                     (length _hd116571_))
                                                    (_tmp116577_
                                                     (let ((__tmp123105
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp123105))))
                                               (let ((__tmp123122
                                                      (cdr _exprs116541_))
                                                     (__tmp123115
                                                      (let ((__tmp123116
                                                             (lambda (_id116580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r116581_)
                       (if (let () (declare (not safe)) (__AST-e _id116580_))
                           (let ((__tmp123117
                                  (let ((__tmp123121
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id116580_)))
                                        (__tmp123118
                                         (let ((__tmp123119
                                                (let ((__tmp123120
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp123120))))
                                           (declare (not safe))
                                           (cons __tmp123119 '()))))
                                    (declare (not safe))
                                    (cons __tmp123121 __tmp123118))))
                             (declare (not safe))
                             (cons __tmp123117 _r116581_))
                           _r116581_))))
                (declare (not safe))
                (foldl1 __tmp123116 _bind116542_ _hd116571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp123106
                                                      (let ((__tmp123107
                                                             (let ((__tmp123108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp123114 (car _exprs116541_))
                                  (__tmp123109
                                   (let ((__tmp123110
                                          (let ((__tmp123112
                                                 (lambda (_id116583_ _k116584_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id116583_))
                                                       (let ((__tmp123113
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id116583_))))
                 (declare (not safe))
                 (cons __tmp123113 _k116584_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp123111
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len116575_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp123112
                                             _hd116571_
                                             __tmp123111))))
                                     (declare (not safe))
                                     (cons _len116575_ __tmp123110))))
                              (declare (not safe))
                              (cons __tmp123114 __tmp123109))))
                       (declare (not safe))
                       (cons _tmp116577_ __tmp123108))))
                (declare (not safe))
                (cons __tmp123107 _post116543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp116538_
                                                  _rest116570_
                                                  __tmp123122
                                                  __tmp123115
                                                  __tmp123106)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx116382_
                                                _hd116571_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116544116558_))
                              (let ((_tl116554116611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116544116558_)))
                                    (_hd116553116609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116544116558_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116553116609_))
                                    (let ((_tl116556116616_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116553116609_)))
                                          (_hd116555116614_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116553116609_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl116556116616_))
                                          (let ((_hd116619_ _hd116555116614_)
                                                (_rest116621_
                                                 _tl116554116611_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116552116606_
                                               _rest116621_
                                               _hd116619_)))
                                          (let ((_hd116594_ _hd116553116609_)
                                                (_rest116596_
                                                 _tl116554116611_))
                                            (let ()
                                              (declare (not safe))
                                              (_K116549116586_
                                               _rest116596_
                                               _hd116594_)))))
                                    (let ((_hd116594_ _hd116553116609_)
                                          (_rest116596_ _tl116554116611_))
                                      (let ()
                                        (declare (not safe))
                                        (_K116549116586_
                                         _rest116596_
                                         _hd116594_)))))
                              (let ()
                                (declare (not safe))
                                (_else116547116566_))))))))
                 (_compile-bind116386_
                  (lambda (_bind116530_ _post116531_ _body116532_)
                    (let ((__tmp123141
                           (let ((__tmp123142
                                  (let ((__tmp123145 (reverse _bind116530_))
                                        (__tmp123143
                                         (let ((__tmp123144
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post116387_
                                                   _post116531_
                                                   _body116532_))))
                                           (declare (not safe))
                                           (cons __tmp123144 '()))))
                                    (declare (not safe))
                                    (cons __tmp123145 __tmp123143))))
                             (declare (not safe))
                             (cons 'let __tmp123142))))
                      (declare (not safe))
                      (__SRC__% __tmp123141 _stx116382_))))
                 (_compile-post116387_
                  (lambda (_post116389_ _body116390_)
                    (let ((__tmp123146
                           (let ((__tmp123147
                                  (let ((__tmp123148
                                         (let ((__tmp123150
                                                (lambda (_hd116392_ _r116393_)
                                                  (let* ((_hd116394116417_
                                                          _hd116392_)
                                                         (_E116398116421_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd116394116417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K116411116515_
                                                           (lambda (_expr116513_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr116513_ _r116393_))))
                  (_K116406116493_
                   (lambda (_expr116490_ _id116491_)
                     (let ((__tmp123151
                            (let ((__tmp123152
                                   (let ((__tmp123153
                                          (let ((__tmp123154
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr116490_ '()))))
                                            (declare (not safe))
                                            (cons _id116491_ __tmp123154))))
                                     (declare (not safe))
                                     (cons 'set! __tmp123153))))
                              (declare (not safe))
                              (__SRC__% __tmp123152 _stx116382_))))
                       (declare (not safe))
                       (cons __tmp123151 _r116393_))))
                  (_K116399116460_
                   (lambda (_init116425_ _len116426_ _expr116427_ _tmp116428_)
                     (let ((__tmp123155
                            (let ((__tmp123156
                                   (let ((__tmp123157
                                          (let ((__tmp123171
                                                 (let ((__tmp123172
                                                        (let ((__tmp123173
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr116427_ '()))))
                  (declare (not safe))
                  (cons _tmp116428_ __tmp123173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp123172 '())))
                                                (__tmp123158
                                                 (let ((__tmp123167
                                                        (let ((__tmp123168
                                                               (let ((__tmp123169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp123170
                                     (let ()
                                       (declare (not safe))
                                       (cons _len116426_ '()))))
                                (declare (not safe))
                                (cons _tmp116428_ __tmp123170))))
                         (declare (not safe))
                         (cons '__check-values __tmp123169))))
                  (declare (not safe))
                  (__SRC__% __tmp123168 _stx116382_)))
               (__tmp123159
                (let ((__tmp123160
                       (map (lambda (_hd116430_)
                              (let* ((_hd116431116438_ _hd116430_)
                                     (_E116433116442_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd116431116438_)))
                                     (_K116434116448_
                                      (lambda (_k116445_ _id116446_)
                                        (let ((__tmp123161
                                               (let ((__tmp123162
                                                      (let ((__tmp123163
                                                             (let ((__tmp123164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp123165
                                   (let ((__tmp123166
                                          (let ()
                                            (declare (not safe))
                                            (cons _k116445_ '()))))
                                     (declare (not safe))
                                     (cons _tmp116428_ __tmp123166))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp123165))))
                       (declare (not safe))
                       (cons __tmp123164 '()))))
                (declare (not safe))
                (cons _id116446_ __tmp123163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp123162))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp123161
                                           _stx116382_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd116431116438_))
                                    (let ((_hd116435116451_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd116431116438_)))
                                          (_tl116436116453_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd116431116438_))))
                                      (let* ((_id116456_ _hd116435116451_)
                                             (_k116458_ _tl116436116453_))
                                        (declare (not safe))
                                        (_K116434116448_
                                         _k116458_
                                         _id116456_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E116433116442_)))))
                            _init116425_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp123160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp123167
                                                         __tmp123159))))
                                            (declare (not safe))
                                            (cons __tmp123171 __tmp123158))))
                                     (declare (not safe))
                                     (cons 'let __tmp123157))))
                              (declare (not safe))
                              (__SRC__% __tmp123156 _stx116382_))))
                       (declare (not safe))
                       (cons __tmp123155 _r116393_)))))
              (if (let () (declare (not safe)) (##pair? _hd116394116417_))
                  (let ((_tl116413116520_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd116394116417_)))
                        (_hd116412116518_
                         (let ()
                           (declare (not safe))
                           (##car _hd116394116417_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd116412116518_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl116413116520_))
                            (let ((_tl116415116525_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl116413116520_)))
                                  (_hd116414116523_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl116413116520_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl116415116525_))
                                  (let ((_expr116528_ _hd116414116523_))
                                    (declare (not safe))
                                    (_K116411116515_ _expr116528_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl116415116525_))
                                      (let ((_tl116405116479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl116415116525_)))
                                            (_hd116404116477_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl116415116525_))))
                                        (let ((_tmp116468_ _hd116412116518_)
                                              (_expr116475_ _hd116414116523_)
                                              (_len116482_ _hd116404116477_)
                                              (_init116484_ _tl116405116479_))
                                          (let ()
                                            (declare (not safe))
                                            (_K116399116460_
                                             _init116484_
                                             _len116482_
                                             _expr116475_
                                             _tmp116468_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E116398116421_)))))
                            (let () (declare (not safe)) (_E116398116421_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl116413116520_))
                            (let ((_tl116410116505_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl116413116520_)))
                                  (_hd116409116503_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl116413116520_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl116410116505_))
                                  (let ((_id116501_ _hd116412116518_)
                                        (_expr116508_ _hd116409116503_))
                                    (let ()
                                      (declare (not safe))
                                      (_K116406116493_
                                       _expr116508_
                                       _id116501_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl116410116505_))
                                      (let ((_tl116405116479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl116410116505_)))
                                            (_hd116404116477_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl116410116505_))))
                                        (let ((_tmp116468_ _hd116412116518_)
                                              (_expr116475_ _hd116409116503_)
                                              (_len116482_ _hd116404116477_)
                                              (_init116484_ _tl116405116479_))
                                          (let ()
                                            (declare (not safe))
                                            (_K116399116460_
                                             _init116484_
                                             _len116482_
                                             _expr116475_
                                             _tmp116468_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E116398116421_)))))
                            (let () (declare (not safe)) (_E116398116421_)))))
                  (let () (declare (not safe)) (_E116398116421_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp123149
                                                (list _body116390_)))
                                           (declare (not safe))
                                           (foldl1 __tmp123150
                                                   __tmp123149
                                                   _post116389_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp123148))))
                             (declare (not safe))
                             (cons 'begin __tmp123147))))
                      (declare (not safe))
                      (__SRC__% __tmp123146 _stx116382_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx116382_
             _compile-simple116384_
             _compile-values116385_)))))
    (define __compile-call%
      (lambda (_stx116342_)
        (let* ((_$e116344_ _stx116342_)
               (_$E116346116355_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116344_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116344_))
              (let* ((_$tgt116347116358_
                      (let () (declare (not safe)) (__AST-e _$e116344_)))
                     (_$hd116348116361_
                      (let () (declare (not safe)) (##car _$tgt116347116358_)))
                     (_$tl116349116364_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116347116358_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116349116364_))
                    (let* ((_$tgt116350116368_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116349116364_)))
                           (_$hd116351116371_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116350116368_)))
                           (_$tl116352116374_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116350116368_))))
                      (let* ((_rator116378_ _$hd116351116371_)
                             (_rands116380_ _$tl116352116374_)
                             (__tmp123174
                              (let ((__tmp123176
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator116378_)))
                                    (__tmp123175
                                     (map __compile _rands116380_)))
                                (declare (not safe))
                                (cons __tmp123176 __tmp123175))))
                        (declare (not safe))
                        (__SRC__% __tmp123174 _stx116342_)))
                    (let () (declare (not safe)) (_$E116346116355_))))
              (let () (declare (not safe)) (_$E116346116355_))))))
    (define __compile-ref%
      (lambda (_stx116304_)
        (let* ((_$e116306_ _stx116304_)
               (_$E116308116317_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116306_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116306_))
              (let* ((_$tgt116309116320_
                      (let () (declare (not safe)) (__AST-e _$e116306_)))
                     (_$hd116310116323_
                      (let () (declare (not safe)) (##car _$tgt116309116320_)))
                     (_$tl116311116326_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116309116320_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116311116326_))
                    (let* ((_$tgt116312116330_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116311116326_)))
                           (_$hd116313116333_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116312116330_)))
                           (_$tl116314116336_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116312116330_))))
                      (let ((_id116340_ _$hd116313116333_))
                        (if (let ((__tmp123177
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl116314116336_))))
                              (declare (not safe))
                              (equal? __tmp123177 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id116340_ _stx116304_))
                            (let () (declare (not safe)) (_$E116308116317_)))))
                    (let () (declare (not safe)) (_$E116308116317_))))
              (let () (declare (not safe)) (_$E116308116317_))))))
    (define __compile-setq%
      (lambda (_stx116251_)
        (let* ((_$e116253_ _stx116251_)
               (_$E116255116267_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116253_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116253_))
              (let* ((_$tgt116256116270_
                      (let () (declare (not safe)) (__AST-e _$e116253_)))
                     (_$hd116257116273_
                      (let () (declare (not safe)) (##car _$tgt116256116270_)))
                     (_$tl116258116276_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116256116270_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116258116276_))
                    (let* ((_$tgt116259116280_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116258116276_)))
                           (_$hd116260116283_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116259116280_)))
                           (_$tl116261116286_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116259116280_))))
                      (let ((_id116290_ _$hd116260116283_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl116261116286_))
                            (let* ((_$tgt116262116292_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl116261116286_)))
                                   (_$hd116263116295_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt116262116292_)))
                                   (_$tl116264116298_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt116262116292_))))
                              (let ((_expr116302_ _$hd116263116295_))
                                (if (let ((__tmp123183
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl116264116298_))))
                                      (declare (not safe))
                                      (equal? __tmp123183 '()))
                                    (let ((__tmp123178
                                           (let ((__tmp123179
                                                  (let ((__tmp123182
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id116290_
                                                            _stx116251_)))
                                                        (__tmp123180
                                                         (let ((__tmp123181
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr116302_))))
                   (declare (not safe))
                   (cons __tmp123181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp123182
                                                          __tmp123180))))
                                             (declare (not safe))
                                             (cons 'set! __tmp123179))))
                                      (declare (not safe))
                                      (__SRC__% __tmp123178 _stx116251_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E116255116267_)))))
                            (let () (declare (not safe)) (_$E116255116267_)))))
                    (let () (declare (not safe)) (_$E116255116267_))))
              (let () (declare (not safe)) (_$E116255116267_))))))
    (define __compile-if%
      (lambda (_stx116183_)
        (let* ((_$e116185_ _stx116183_)
               (_$E116187116202_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116185_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116185_))
              (let* ((_$tgt116188116205_
                      (let () (declare (not safe)) (__AST-e _$e116185_)))
                     (_$hd116189116208_
                      (let () (declare (not safe)) (##car _$tgt116188116205_)))
                     (_$tl116190116211_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116188116205_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116190116211_))
                    (let* ((_$tgt116191116215_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116190116211_)))
                           (_$hd116192116218_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116191116215_)))
                           (_$tl116193116221_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116191116215_))))
                      (let ((_p116225_ _$hd116192116218_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl116193116221_))
                            (let* ((_$tgt116194116227_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl116193116221_)))
                                   (_$hd116195116230_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt116194116227_)))
                                   (_$tl116196116233_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt116194116227_))))
                              (let ((_t116237_ _$hd116195116230_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl116196116233_))
                                    (let* ((_$tgt116197116239_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl116196116233_)))
                                           (_$hd116198116242_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt116197116239_)))
                                           (_$tl116199116245_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt116197116239_))))
                                      (let ((_f116249_ _$hd116198116242_))
                                        (if (let ((__tmp123191
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl116199116245_))))
                                              (declare (not safe))
                                              (equal? __tmp123191 '()))
                                            (let ((__tmp123184
                                                   (let ((__tmp123185
                                                          (let ((__tmp123190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p116225_)))
                        (__tmp123186
                         (let ((__tmp123189
                                (let ()
                                  (declare (not safe))
                                  (__compile _t116237_)))
                               (__tmp123187
                                (let ((__tmp123188
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f116249_))))
                                  (declare (not safe))
                                  (cons __tmp123188 '()))))
                           (declare (not safe))
                           (cons __tmp123189 __tmp123187))))
                    (declare (not safe))
                    (cons __tmp123190 __tmp123186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp123185))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp123184
                                               _stx116183_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E116187116202_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E116187116202_)))))
                            (let () (declare (not safe)) (_$E116187116202_)))))
                    (let () (declare (not safe)) (_$E116187116202_))))
              (let () (declare (not safe)) (_$E116187116202_))))))
    (define __compile-quote%
      (lambda (_stx116145_)
        (let* ((_$e116147_ _stx116145_)
               (_$E116149116158_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116147_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116147_))
              (let* ((_$tgt116150116161_
                      (let () (declare (not safe)) (__AST-e _$e116147_)))
                     (_$hd116151116164_
                      (let () (declare (not safe)) (##car _$tgt116150116161_)))
                     (_$tl116152116167_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116150116161_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116152116167_))
                    (let* ((_$tgt116153116171_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116152116167_)))
                           (_$hd116154116174_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116153116171_)))
                           (_$tl116155116177_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116153116171_))))
                      (let ((_e116181_ _$hd116154116174_))
                        (if (let ((__tmp123195
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl116155116177_))))
                              (declare (not safe))
                              (equal? __tmp123195 '()))
                            (let ((__tmp123192
                                   (let ((__tmp123193
                                          (let ((__tmp123194
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e116181_))))
                                            (declare (not safe))
                                            (cons __tmp123194 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp123193))))
                              (declare (not safe))
                              (__SRC__% __tmp123192 _stx116145_))
                            (let () (declare (not safe)) (_$E116149116158_)))))
                    (let () (declare (not safe)) (_$E116149116158_))))
              (let () (declare (not safe)) (_$E116149116158_))))))
    (define __compile-quote-syntax%
      (lambda (_stx116107_)
        (let* ((_$e116109_ _stx116107_)
               (_$E116111116120_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e116109_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e116109_))
              (let* ((_$tgt116112116123_
                      (let () (declare (not safe)) (__AST-e _$e116109_)))
                     (_$hd116113116126_
                      (let () (declare (not safe)) (##car _$tgt116112116123_)))
                     (_$tl116114116129_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt116112116123_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl116114116129_))
                    (let* ((_$tgt116115116133_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl116114116129_)))
                           (_$hd116116116136_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt116115116133_)))
                           (_$tl116117116139_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt116115116133_))))
                      (let ((_e116143_ _$hd116116116136_))
                        (if (let ((__tmp123198
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl116117116139_))))
                              (declare (not safe))
                              (equal? __tmp123198 '()))
                            (let ((__tmp123196
                                   (let ((__tmp123197
                                          (let ()
                                            (declare (not safe))
                                            (cons _e116143_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp123197))))
                              (declare (not safe))
                              (__SRC__% __tmp123196 _stx116107_))
                            (let () (declare (not safe)) (_$E116111116120_)))))
                    (let () (declare (not safe)) (_$E116111116120_))))
              (let () (declare (not safe)) (_$E116111116120_))))))
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
