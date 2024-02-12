(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707773926)
  (begin
    (define __context::t
      (let ((__tmp114950 (list))
            (__tmp114948
             (let ((__tmp114949
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114949 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114950
         '(t ns super table)
         __tmp114948
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args110184_ (apply make-instance __context::t _$args110184_)))
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
      (let ((__tmp114953 (list))
            (__tmp114951
             (let ((__tmp114952
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114952 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114953
         '(id)
         __tmp114951
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args110181_ (apply make-instance __runtime::t _$args110181_)))
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
      (let ((__tmp114956 (list))
            (__tmp114954
             (let ((__tmp114955
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114955 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114956
         '(e id)
         __tmp114954
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args110178_ (apply make-instance __syntax::t _$args110178_)))
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
      (let ((__tmp114959 (list __syntax::t))
            (__tmp114957
             (let ((__tmp114958
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114958 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114959
         '()
         __tmp114957
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args110175_ (apply make-instance __macro::t _$args110175_)))
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
      (let ((__tmp114962 (list __macro::t))
            (__tmp114960
             (let ((__tmp114961
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114961 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114962
         '()
         __tmp114960
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args110172_
        (apply make-instance __special-form::t _$args110172_)))
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
      (let ((__tmp114965 (list __syntax::t))
            (__tmp114963
             (let ((__tmp114964
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114964 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114965
         '()
         __tmp114963
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args110169_
        (apply make-instance __core-form::t _$args110169_)))
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
      (let ((__tmp114968 (list __core-form::t))
            (__tmp114966
             (let ((__tmp114967
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114967 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114968
         '()
         __tmp114966
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args110166_
        (apply make-instance __core-expression::t _$args110166_)))
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
      (let ((__tmp114971 (list __core-form::t))
            (__tmp114969
             (let ((__tmp114970
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114970 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114971
         '()
         __tmp114969
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args110163_
        (apply make-instance __core-special-form::t _$args110163_)))
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
      (let ((__tmp114974 (list __syntax::t))
            (__tmp114972
             (let ((__tmp114973
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114973 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114974
         '()
         __tmp114972
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args110160_
        (apply make-instance __struct-info::t _$args110160_)))
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
      (let ((__tmp114977 (list __syntax::t))
            (__tmp114975
             (let ((__tmp114976
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114976 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114977
         '()
         __tmp114975
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args110157_ (apply make-instance __feature::t _$args110157_)))
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
      (let ((__tmp114980 (list __context::t))
            (__tmp114978
             (let ((__tmp114979
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114979 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114980
         '(id path import export)
         __tmp114978
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args110154_ (apply make-instance __module::t _$args110154_)))
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
      (let ((__tmp114982
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114981
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114982 __tmp114981)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id110129_ _ctx110130_)
        (if _ctx110130_
            (let ((_id110132_
                   (let () (declare (not safe)) (__AST-e _id110129_))))
              (let _lp110134_ ((_ctx110136_ _ctx110130_))
                (let ((_$e110138_
                       (table-ref
                        (##structure-ref _ctx110136_ '4 __context::t '#f)
                        _id110132_
                        '#f)))
                  (if _$e110138_
                      (values _$e110138_)
                      (let ((_$e110141_
                             (##structure-ref
                              _ctx110136_
                              '3
                              __context::t
                              '#f)))
                        (if _$e110141_
                            (let ()
                              (declare (not safe))
                              (_lp110134_ _$e110141_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id110147_)
        (let ((_ctx110149_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id110147_ _ctx110149_))))
    (define __core-resolve
      (lambda _g114984_
        (let ((_g114983_ (let () (declare (not safe)) (##length _g114984_))))
          (cond ((let () (declare (not safe)) (##fx= _g114983_ 1))
                 (apply (lambda (_id110147_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id110147_)))
                        _g114984_))
                ((let () (declare (not safe)) (##fx= _g114983_ 2))
                 (apply (lambda (_id110151_ _ctx110152_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id110151_ _ctx110152_)))
                        _g114984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114984_))))))
    (define __core-bound-id?__%
      (lambda (_id110112_ _is?110113_)
        (let ((_$e110115_
               (let () (declare (not safe)) (__core-resolve__0 _id110112_))))
          (if _$e110115_ (_is?110113_ _$e110115_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id110121_)
        (let ((_is?110123_ true))
          (declare (not safe))
          (__core-bound-id?__% _id110121_ _is?110123_))))
    (define __core-bound-id?
      (lambda _g114986_
        (let ((_g114985_ (let () (declare (not safe)) (##length _g114986_))))
          (cond ((let () (declare (not safe)) (##fx= _g114985_ 1))
                 (apply (lambda (_id110121_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id110121_)))
                        _g114986_))
                ((let () (declare (not safe)) (##fx= _g114985_ 2))
                 (apply (lambda (_id110125_ _is?110126_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id110125_ _is?110126_)))
                        _g114986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114986_))))))
    (define __core-bind-runtime!__%
      (lambda (_id110095_ _eid110096_ _ctx110097_)
        (if _eid110096_
            (let ((__tmp114989
                   (##structure-ref _ctx110097_ '4 __context::t '#f))
                  (__tmp114988
                   (let () (declare (not safe)) (__AST-e _id110095_)))
                  (__tmp114987
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid110096_))))
              (declare (not safe))
              (table-set! __tmp114989 __tmp114988 __tmp114987))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id110102_ _eid110103_)
        (let ((_ctx110105_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id110102_ _eid110103_ _ctx110105_))))
    (define __core-bind-runtime!
      (lambda _g114991_
        (let ((_g114990_ (let () (declare (not safe)) (##length _g114991_))))
          (cond ((let () (declare (not safe)) (##fx= _g114990_ 2))
                 (apply (lambda (_id110102_ _eid110103_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id110102_ _eid110103_)))
                        _g114991_))
                ((let () (declare (not safe)) (##fx= _g114990_ 3))
                 (apply (lambda (_id110107_ _eid110108_ _ctx110109_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id110107_
                             _eid110108_
                             _ctx110109_)))
                        _g114991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114991_))))))
    (define __core-bind-syntax!__%
      (lambda (_id110078_ _e110079_ _make110080_)
        (let ((__tmp114992
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e110079_
                      'gerbil/runtime/eval#__syntax::t))
                   _e110079_
                   (_make110080_ _e110079_ _id110078_))))
          (declare (not safe))
          (table-set! __*core* _id110078_ __tmp114992))))
    (define __core-bind-syntax!__0
      (lambda (_id110085_ _e110086_)
        (let ((_make110088_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id110085_ _e110086_ _make110088_))))
    (define __core-bind-syntax!
      (lambda _g114994_
        (let ((_g114993_ (let () (declare (not safe)) (##length _g114994_))))
          (cond ((let () (declare (not safe)) (##fx= _g114993_ 2))
                 (apply (lambda (_id110085_ _e110086_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id110085_ _e110086_)))
                        _g114994_))
                ((let () (declare (not safe)) (##fx= _g114993_ 3))
                 (apply (lambda (_id110090_ _e110091_ _make110092_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id110090_
                             _e110091_
                             _make110092_)))
                        _g114994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114994_))))))
    (define __core-bind-macro!
      (lambda (_id110074_ _e110075_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id110074_ _e110075_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id110071_ _e110072_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id110071_ _e110072_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id110055_ _e110056_ _ctx110057_)
        (let ((__tmp114998 (##structure-ref _ctx110057_ '4 __context::t '#f))
              (__tmp114997 (let () (declare (not safe)) (__AST-e _id110055_)))
              (__tmp114995
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e110056_
                      'gerbil/runtime/eval#__syntax::t))
                   _e110056_
                   (let ((__tmp114996
                          (let () (declare (not safe)) (__AST-e _id110055_))))
                     (declare (not safe))
                     (##structure __syntax::t _e110056_ __tmp114996)))))
          (declare (not safe))
          (table-set! __tmp114998 __tmp114997 __tmp114995))))
    (define __core-bind-user-syntax!__0
      (lambda (_id110062_ _e110063_)
        (let ((_ctx110065_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id110062_ _e110063_ _ctx110065_))))
    (define __core-bind-user-syntax!
      (lambda _g115000_
        (let ((_g114999_ (let () (declare (not safe)) (##length _g115000_))))
          (cond ((let () (declare (not safe)) (##fx= _g114999_ 2))
                 (apply (lambda (_id110062_ _e110063_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id110062_
                             _e110063_)))
                        _g115000_))
                ((let () (declare (not safe)) (##fx= _g114999_ 3))
                 (apply (lambda (_id110067_ _e110068_ _ctx110069_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id110067_
                             _e110068_
                             _ctx110069_)))
                        _g115000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g115000_))))))
    (define make-__runtime-id__%
      (lambda (_id110036_ _ctx110037_)
        (let ((_id110039_ (let () (declare (not safe)) (__AST-e _id110036_))))
          (if (let () (declare (not safe)) (eq? _id110039_ '_))
              '#f
              (if (uninterned-symbol? _id110039_)
                  (gensym _id110039_)
                  (if (let () (declare (not safe)) (symbol? _id110039_))
                      (let ((_$e110041_
                             (##structure-ref
                              _ctx110037_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e110041_))
                            (gensym _id110039_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e110041_))
                                (let ((__tmp115001
                                       (##structure-ref
                                        _ctx110037_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp115001 '"#" _id110039_))
                                _id110039_)))
                      (error '"Illegal runtime identifier" _id110039_)))))))
    (define make-__runtime-id__0
      (lambda (_id110047_)
        (let ((_ctx110049_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id110047_ _ctx110049_))))
    (define make-__runtime-id
      (lambda _g115003_
        (let ((_g115002_ (let () (declare (not safe)) (##length _g115003_))))
          (cond ((let () (declare (not safe)) (##fx= _g115002_ 1))
                 (apply (lambda (_id110047_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id110047_)))
                        _g115003_))
                ((let () (declare (not safe)) (##fx= _g115002_ 2))
                 (apply (lambda (_id110051_ _ctx110052_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id110051_ _ctx110052_)))
                        _g115003_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g115003_))))))
    (define make-__context-local__%
      (lambda (_super110025_)
        (let ((__tmp115004
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super110025_ __tmp115004))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super110031_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super110031_))))
    (define make-__context-local
      (lambda _g115006_
        (let ((_g115005_ (let () (declare (not safe)) (##length _g115006_))))
          (cond ((let () (declare (not safe)) (##fx= _g115005_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g115006_))
                ((let () (declare (not safe)) (##fx= _g115005_ 1))
                 (apply (lambda (_super110033_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super110033_)))
                        _g115006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g115006_))))))
    (define make-__context-module__%
      (lambda (_id110005_ _ns110006_ _path110007_ _super110008_)
        (let ((__tmp115007
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns110006_
           _super110008_
           __tmp115007
           _id110005_
           _path110007_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id110013_ _ns110014_ _path110015_)
        (let ((_super110017_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id110013_
           _ns110014_
           _path110015_
           _super110017_))))
    (define make-__context-module
      (lambda _g115009_
        (let ((_g115008_ (let () (declare (not safe)) (##length _g115009_))))
          (cond ((let () (declare (not safe)) (##fx= _g115008_ 3))
                 (apply (lambda (_id110013_ _ns110014_ _path110015_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id110013_
                             _ns110014_
                             _path110015_)))
                        _g115009_))
                ((let () (declare (not safe)) (##fx= _g115008_ 4))
                 (apply (lambda (_id110019_
                                 _ns110020_
                                 _path110021_
                                 _super110022_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id110019_
                             _ns110020_
                             _path110021_
                             _super110022_)))
                        _g115009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g115009_))))))
    (define __SRC__%
      (lambda (_e109988_ _src-stx109989_)
        (if (or (let () (declare (not safe)) (pair? _e109988_))
                (let () (declare (not safe)) (symbol? _e109988_)))
            (let ((__tmp115013
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109989_
                          'gerbil#AST::t))
                       (let ((__tmp115014
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109989_))))
                         (declare (not safe))
                         (__locat __tmp115014))
                       '#f)))
              (declare (not safe))
              (##make-source _e109988_ __tmp115013))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109988_ 'gerbil#AST::t))
                (let ((__tmp115012
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109988_ '1 AST::t '#f)))
                      (__tmp115010
                       (let ((__tmp115011
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109988_))))
                         (declare (not safe))
                         (__locat __tmp115011))))
                  (declare (not safe))
                  (##make-source __tmp115012 __tmp115010))
                (error '"BUG! Cannot sourcify object" _e109988_)))))
    (define __SRC__0
      (lambda (_e109997_)
        (let ((_src-stx109999_ '#f))
          (declare (not safe))
          (__SRC__% _e109997_ _src-stx109999_))))
    (define __SRC
      (lambda _g115016_
        (let ((_g115015_ (let () (declare (not safe)) (##length _g115016_))))
          (cond ((let () (declare (not safe)) (##fx= _g115015_ 1))
                 (apply (lambda (_e109997_)
                          (let () (declare (not safe)) (__SRC__0 _e109997_)))
                        _g115016_))
                ((let () (declare (not safe)) (##fx= _g115015_ 2))
                 (apply (lambda (_e110001_ _src-stx110002_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e110001_ _src-stx110002_)))
                        _g115016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g115016_))))))
    (define __locat
      (lambda (_loc109985_)
        (if (let () (declare (not safe)) (##locat? _loc109985_))
            _loc109985_
            '#f)))
    (define __check-values
      (lambda (_obj109980_ _k109981_)
        (let ((_count109983_
               (if (let () (declare (not safe)) (##values? _obj109980_))
                   (let () (declare (not safe)) (##vector-length _obj109980_))
                   '1)))
          (if (fx= _count109983_ _k109981_)
              '#!void
              (error (if (fx< _count109983_ _k109981_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109980_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109980_))
                         _obj109980_)
                     _k109981_)))))
    (define __compile
      (lambda (_stx109950_)
        (let* ((_$e109952_ _stx109950_)
               (_$E109954109960_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109952_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109952_))
              (let* ((_$tgt109955109963_
                      (let () (declare (not safe)) (__AST-e _$e109952_)))
                     (_$hd109956109966_
                      (let () (declare (not safe)) (##car _$tgt109955109963_)))
                     (_$tl109957109969_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109955109963_))))
                (let* ((_form109973_ _$hd109956109966_)
                       (_$e109975_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109973_))))
                  (if _$e109975_
                      ((lambda (_bind109978_)
                         ((##structure-ref _bind109978_ '1 __syntax::t '#f)
                          _stx109950_))
                       _$e109975_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109950_
                         _form109973_)))))
              (let () (declare (not safe)) (_$E109954109960_))))))
    (define __compile-error__%
      (lambda (_stx109937_ _detail109938_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109937_
           _detail109938_))))
    (define __compile-error__0
      (lambda (_stx109943_)
        (let ((_detail109945_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109943_ _detail109945_))))
    (define __compile-error
      (lambda _g115018_
        (let ((_g115017_ (let () (declare (not safe)) (##length _g115018_))))
          (cond ((let () (declare (not safe)) (##fx= _g115017_ 1))
                 (apply (lambda (_stx109943_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109943_)))
                        _g115018_))
                ((let () (declare (not safe)) (##fx= _g115017_ 2))
                 (apply (lambda (_stx109947_ _detail109948_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109947_ _detail109948_)))
                        _g115018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g115018_))))))
    (define __compile-ignore%
      (lambda (_stx109934_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109934_))))
    (define __compile-begin%
      (lambda (_stx109909_)
        (let* ((_$e109911_ _stx109909_)
               (_$E109913109919_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109911_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109911_))
              (let* ((_$tgt109914109922_
                      (let () (declare (not safe)) (__AST-e _$e109911_)))
                     (_$hd109915109925_
                      (let () (declare (not safe)) (##car _$tgt109914109922_)))
                     (_$tl109916109928_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109914109922_))))
                (let* ((_body109932_ _$tl109916109928_)
                       (__tmp115019
                        (let ((__tmp115020 (map __compile _body109932_)))
                          (declare (not safe))
                          (cons 'begin __tmp115020))))
                  (declare (not safe))
                  (__SRC__% __tmp115019 _stx109909_)))
              (let () (declare (not safe)) (_$E109913109919_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109884_)
        (let* ((_$e109886_ _stx109884_)
               (_$E109888109894_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109886_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109886_))
              (let* ((_$tgt109889109897_
                      (let () (declare (not safe)) (__AST-e _$e109886_)))
                     (_$hd109890109900_
                      (let () (declare (not safe)) (##car _$tgt109889109897_)))
                     (_$tl109891109903_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109889109897_))))
                (let* ((_body109907_ _$tl109891109903_)
                       (__tmp115021
                        (let ((__tmp115022
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109907_))))
                          (declare (not safe))
                          (cons 'begin __tmp115022))))
                  (declare (not safe))
                  (__SRC__% __tmp115021 _stx109884_)))
              (let () (declare (not safe)) (_$E109888109894_))))))
    (define __compile-import%
      (lambda (_stx109859_)
        (let* ((_$e109861_ _stx109859_)
               (_$E109863109869_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109861_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109861_))
              (let* ((_$tgt109864109872_
                      (let () (declare (not safe)) (__AST-e _$e109861_)))
                     (_$hd109865109875_
                      (let () (declare (not safe)) (##car _$tgt109864109872_)))
                     (_$tl109866109878_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109864109872_))))
                (let* ((_body109882_ _$tl109866109878_)
                       (__tmp115023
                        (let ((__tmp115024
                               (let ((__tmp115025
                                      (let ((__tmp115026
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109882_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp115026))))
                                 (declare (not safe))
                                 (cons __tmp115025 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp115024))))
                  (declare (not safe))
                  (__SRC__% __tmp115023 _stx109859_)))
              (let () (declare (not safe)) (_$E109863109869_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109806_)
        (let* ((_$e109808_ _stx109806_)
               (_$E109810109822_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109808_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109808_))
              (let* ((_$tgt109811109825_
                      (let () (declare (not safe)) (__AST-e _$e109808_)))
                     (_$hd109812109828_
                      (let () (declare (not safe)) (##car _$tgt109811109825_)))
                     (_$tl109813109831_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109811109825_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109813109831_))
                    (let* ((_$tgt109814109835_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109813109831_)))
                           (_$hd109815109838_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109814109835_)))
                           (_$tl109816109841_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109814109835_))))
                      (let ((_ann109845_ _$hd109815109838_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109816109841_))
                            (let* ((_$tgt109817109847_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109816109841_)))
                                   (_$hd109818109850_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109817109847_)))
                                   (_$tl109819109853_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109817109847_))))
                              (let ((_expr109857_ _$hd109818109850_))
                                (if (let ((__tmp115027
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109819109853_))))
                                      (declare (not safe))
                                      (equal? __tmp115027 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109857_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109810109822_)))))
                            (let () (declare (not safe)) (_$E109810109822_)))))
                    (let () (declare (not safe)) (_$E109810109822_))))
              (let () (declare (not safe)) (_$E109810109822_))))))
    (define __compile-define-values%
      (lambda (_stx109697_)
        (let* ((_$e109699_ _stx109697_)
               (_$E109701109713_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109699_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109699_))
              (let* ((_$tgt109702109716_
                      (let () (declare (not safe)) (__AST-e _$e109699_)))
                     (_$hd109703109719_
                      (let () (declare (not safe)) (##car _$tgt109702109716_)))
                     (_$tl109704109722_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109702109716_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109704109722_))
                    (let* ((_$tgt109705109726_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109704109722_)))
                           (_$hd109706109729_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109705109726_)))
                           (_$tl109707109732_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109705109726_))))
                      (let ((_hd109736_ _$hd109706109729_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109707109732_))
                            (let* ((_$tgt109708109738_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109707109732_)))
                                   (_$hd109709109741_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109708109738_)))
                                   (_$tl109710109744_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109708109738_))))
                              (let ((_expr109748_ _$hd109709109741_))
                                (if (let ((__tmp115060
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109710109744_))))
                                      (declare (not safe))
                                      (equal? __tmp115060 '()))
                                    (let* ((_$e109750_ _hd109736_)
                                           (_$E109752109793_
                                            (lambda ()
                                              (let ((_$E109753109778_
                                                     (lambda ()
                                                       (let* ((_$E109754109765_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109750_))))
                      (_ids109768_ _hd109736_)
                      (_len109770_ (length _ids109768_))
                      (_tmp109772_
                       (let ((__tmp115028 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp115028))))
                 (let ((__tmp115029
                        (let ((__tmp115030
                               (let ((__tmp115047
                                      (let ((__tmp115048
                                             (let ((__tmp115049
                                                    (let ((__tmp115050
                                                           (let ((__tmp115051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109748_))))
                     (declare (not safe))
                     (cons __tmp115051 '()))))
              (declare (not safe))
              (cons _tmp109772_ __tmp115050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp115049))))
                                        (declare (not safe))
                                        (__SRC__% __tmp115048 _stx109697_)))
                                     (__tmp115031
                                      (let ((__tmp115043
                                             (let ((__tmp115044
                                                    (let ((__tmp115045
                                                           (let ((__tmp115046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109770_ '()))))
                     (declare (not safe))
                     (cons _tmp109772_ __tmp115046))))
              (declare (not safe))
              (cons '__check-values __tmp115045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp115044
                                                _stx109697_)))
                                            (__tmp115032
                                             (let ((__tmp115033
                                                    (let ((__tmp115035
                                                           (lambda (_id109775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109776_)
                     (if (let () (declare (not safe)) (__AST-e _id109775_))
                         (let ((__tmp115036
                                (let ((__tmp115037
                                       (let ((__tmp115042
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109775_)))
                                             (__tmp115038
                                              (let ((__tmp115039
                                                     (let ((__tmp115040
                                                            (let ((__tmp115041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109776_ '()))))
                      (declare (not safe))
                      (cons _tmp109772_ __tmp115041))))
               (declare (not safe))
               (cons '##vector-ref __tmp115040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115039 '()))))
                                         (declare (not safe))
                                         (cons __tmp115042 __tmp115038))))
                                  (declare (not safe))
                                  (cons 'define __tmp115037))))
                           (declare (not safe))
                           (__SRC__% __tmp115036 _stx109697_))
                         '#f)))
                  (__tmp115034
                   (let () (declare (not safe)) (iota _len109770_))))
              (declare (not safe))
              (filter-map2 __tmp115035 _ids109768_ __tmp115034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp115033))))
                                        (declare (not safe))
                                        (cons __tmp115043 __tmp115032))))
                                 (declare (not safe))
                                 (cons __tmp115047 __tmp115031))))
                          (declare (not safe))
                          (cons 'begin __tmp115030))))
                   (declare (not safe))
                   (__SRC__% __tmp115029 _stx109697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109750_))
                                                    (let* ((_$tgt109755109781_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109750_)))
                                                           (_$hd109756109784_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109755109781_)))
                                                           (_$tl109757109787_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109755109781_))))
                                                      (let ((_id109791_
                                                             _$hd109756109784_))
                                                        (if (let ((__tmp115057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109757109787_))))
                      (declare (not safe))
                      (equal? __tmp115057 '()))
                    (let ((__tmp115052
                           (let ((__tmp115053
                                  (let ((__tmp115056
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109791_)))
                                        (__tmp115054
                                         (let ((__tmp115055
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109748_))))
                                           (declare (not safe))
                                           (cons __tmp115055 '()))))
                                    (declare (not safe))
                                    (cons __tmp115056 __tmp115054))))
                             (declare (not safe))
                             (cons 'define __tmp115053))))
                      (declare (not safe))
                      (__SRC__% __tmp115052 _stx109697_))
                    (let () (declare (not safe)) (_$E109753109778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109753109778_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109750_))
                                          (let* ((_$tgt109758109796_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109750_)))
                                                 (_$hd109759109799_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109758109796_)))
                                                 (_$tl109760109802_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109758109796_))))
                                            (if (let ((__tmp115059
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109759109799_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115059 '#f))
                                                (if (let ((__tmp115058
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109760109802_))))
                                                      (declare (not safe))
                                                      (equal? __tmp115058 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109748_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109752109793_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109752109793_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109752109793_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109701109713_)))))
                            (let () (declare (not safe)) (_$E109701109713_)))))
                    (let () (declare (not safe)) (_$E109701109713_))))
              (let () (declare (not safe)) (_$E109701109713_))))))
    (define __compile-head-id
      (lambda (_e109695_)
        (let ((__tmp115061
               (if (let () (declare (not safe)) (__AST-e _e109695_))
                   _e109695_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp115061))))
    (define __compile-lambda-head
      (lambda (_hd109652_)
        (let _recur109654_ ((_rest109656_ _hd109652_))
          (let* ((_$e109658_ _rest109656_)
                 (_$E109660109678_
                  (lambda ()
                    (let ((_$E109661109675_
                           (lambda ()
                             (let* ((_$E109662109670_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109658_))))
                                    (_tail109673_ _$e109658_))
                               (declare (not safe))
                               (__compile-head-id _tail109673_)))))
                      (if (let ((__tmp115062
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109658_))))
                            (declare (not safe))
                            (equal? __tmp115062 '()))
                          '()
                          (let () (declare (not safe)) (_$E109661109675_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109658_))
                (let* ((_$tgt109663109681_
                        (let () (declare (not safe)) (__AST-e _$e109658_)))
                       (_$hd109664109684_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109663109681_)))
                       (_$tl109665109687_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109663109681_))))
                  (let* ((_hd109691_ _$hd109664109684_)
                         (_rest109693_ _$tl109665109687_))
                    (let ((__tmp115064
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109691_)))
                          (__tmp115063
                           (let ()
                             (declare (not safe))
                             (_recur109654_ _rest109693_))))
                      (declare (not safe))
                      (cons __tmp115064 __tmp115063))))
                (let () (declare (not safe)) (_$E109660109678_)))))))
    (define __compile-lambda%
      (lambda (_stx109599_)
        (let* ((_$e109601_ _stx109599_)
               (_$E109603109615_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109601_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109601_))
              (let* ((_$tgt109604109618_
                      (let () (declare (not safe)) (__AST-e _$e109601_)))
                     (_$hd109605109621_
                      (let () (declare (not safe)) (##car _$tgt109604109618_)))
                     (_$tl109606109624_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109604109618_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109606109624_))
                    (let* ((_$tgt109607109628_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109606109624_)))
                           (_$hd109608109631_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109607109628_)))
                           (_$tl109609109634_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109607109628_))))
                      (let ((_hd109638_ _$hd109608109631_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109609109634_))
                            (let* ((_$tgt109610109640_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109609109634_)))
                                   (_$hd109611109643_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109610109640_)))
                                   (_$tl109612109646_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109610109640_))))
                              (let ((_body109650_ _$hd109611109643_))
                                (if (let ((__tmp115070
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109612109646_))))
                                      (declare (not safe))
                                      (equal? __tmp115070 '()))
                                    (let ((__tmp115065
                                           (let ((__tmp115066
                                                  (let ((__tmp115069
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109638_)))
                                                        (__tmp115067
                                                         (let ((__tmp115068
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109650_))))
                   (declare (not safe))
                   (cons __tmp115068 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115069
                                                          __tmp115067))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp115066))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115065 _stx109599_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109603109615_)))))
                            (let () (declare (not safe)) (_$E109603109615_)))))
                    (let () (declare (not safe)) (_$E109603109615_))))
              (let () (declare (not safe)) (_$E109603109615_))))))
    (define __compile-case-lambda%
      (lambda (_stx109391_)
        (letrec ((_variadic?109393_
                  (lambda (_hd109564_)
                    (let* ((_$e109566_ _hd109564_)
                           (_$E109568109584_
                            (lambda ()
                              (let ((_$E109569109581_
                                     (lambda ()
                                       (let ((_$E109570109578_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109566_)))))
                                         '#t))))
                                (if (let ((__tmp115071
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109566_))))
                                      (declare (not safe))
                                      (equal? __tmp115071 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109569109581_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109566_))
                          (let* ((_$tgt109571109587_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109566_)))
                                 (_$hd109572109590_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109571109587_)))
                                 (_$tl109573109593_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109571109587_))))
                            (let ((_rest109597_ _$tl109573109593_))
                              (declare (not safe))
                              (_variadic?109393_ _rest109597_)))
                          (let () (declare (not safe)) (_$E109568109584_))))))
                 (_arity109394_
                  (lambda (_hd109529_)
                    (let _lp109531_ ((_rest109533_ _hd109529_) (_k109534_ '0))
                      (let* ((_$e109536_ _rest109533_)
                             (_$E109538109549_
                              (lambda ()
                                (let ((_$E109539109546_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109536_)))))
                                  _k109534_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109536_))
                            (let* ((_$tgt109540109552_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109536_)))
                                   (_$hd109541109555_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109540109552_)))
                                   (_$tl109542109558_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109540109552_))))
                              (let* ((_rest109562_ _$tl109542109558_)
                                     (__tmp115072
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109534_ '1))))
                                (declare (not safe))
                                (_lp109531_ _rest109562_ __tmp115072)))
                            (let ()
                              (declare (not safe))
                              (_$E109538109549_)))))))
                 (_generate109395_
                  (lambda (_rest109456_ _args109457_ _len109458_)
                    (let* ((_$e109460_ _rest109456_)
                           (_$E109462109473_
                            (lambda ()
                              (let* ((_$E109463109470_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109460_))))
                                     (__tmp115073
                                      (let ((__tmp115074
                                             (let ((__tmp115075
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109457_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp115075))))
                                        (declare (not safe))
                                        (cons 'error __tmp115074))))
                                (declare (not safe))
                                (__SRC__% __tmp115073 _stx109391_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109460_))
                          (let* ((_$tgt109464109476_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109460_)))
                                 (_$hd109465109479_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109464109476_)))
                                 (_$tl109466109482_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109464109476_))))
                            (let* ((_clause109486_ _$hd109465109479_)
                                   (_rest109488_ _$tl109466109482_)
                                   (_$e109490_ _clause109486_)
                                   (_$E109492109501_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109490_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109490_))
                                  (let* ((_$tgt109493109504_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109490_)))
                                         (_$hd109494109507_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109493109504_)))
                                         (_$tl109495109510_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109493109504_))))
                                    (let ((_hd109514_ _$hd109494109507_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109495109510_))
                                          (let* ((_$tgt109496109516_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109495109510_)))
                                                 (_$hd109497109519_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109496109516_)))
                                                 (_$tl109498109522_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109496109516_))))
                                            (if (let ((__tmp115090
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109498109522_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115090 '()))
                                                (let ((_clen109526_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109394_
                                                          _hd109514_)))
                                                      (_cmp109527_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109393_
                                                              _hd109514_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp115076
                                                         (let ((__tmp115077
                                                                (let ((__tmp115087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115088
                                      (let ((__tmp115089
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109526_ '()))))
                                        (declare (not safe))
                                        (cons _len109458_ __tmp115089))))
                                 (declare (not safe))
                                 (cons _cmp109527_ __tmp115088)))
                              (__tmp115078
                               (let ((__tmp115081
                                      (let ((__tmp115082
                                             (let ((__tmp115083
                                                    (let ((__tmp115085
                                                           (let ((__tmp115086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109486_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp115086)))
                  (__tmp115084
                   (let () (declare (not safe)) (cons _args109457_ '()))))
              (declare (not safe))
              (cons __tmp115085 __tmp115084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp115083))))
                                        (declare (not safe))
                                        (__SRC__% __tmp115082 _stx109391_)))
                                     (__tmp115079
                                      (let ((__tmp115080
                                             (let ()
                                               (declare (not safe))
                                               (_generate109395_
                                                _rest109488_
                                                _args109457_
                                                _len109458_))))
                                        (declare (not safe))
                                        (cons __tmp115080 '()))))
                                 (declare (not safe))
                                 (cons __tmp115081 __tmp115079))))
                          (declare (not safe))
                          (cons __tmp115087 __tmp115078))))
                   (declare (not safe))
                   (cons 'if __tmp115077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp115076
                                                     _stx109391_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109492109501_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109492109501_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109492109501_)))))
                          (let () (declare (not safe)) (_$E109462109473_)))))))
          (let* ((_$e109397_ _stx109391_)
                 (_$E109399109431_
                  (lambda ()
                    (let ((_$E109400109413_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109397_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109397_))
                          (let* ((_$tgt109401109416_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109397_)))
                                 (_$hd109402109419_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109401109416_)))
                                 (_$tl109403109422_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109401109416_))))
                            (let ((_clauses109426_ _$tl109403109422_))
                              (let ((_args109428_
                                     (let ((__tmp115091 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp115091 _stx109391_)))
                                    (_len109429_
                                     (let ((__tmp115092 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp115092 _stx109391_))))
                                (let ((__tmp115093
                                       (let ((__tmp115094
                                              (let ((__tmp115095
                                                     (let ((__tmp115096
                                                            (let ((__tmp115097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115098
                                  (let ((__tmp115101
                                         (let ((__tmp115102
                                                (let ((__tmp115103
                                                       (let ((__tmp115104
                                                              (let ((__tmp115105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp115106
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109428_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp115106))))
                        (declare (not safe))
                        (__SRC__% __tmp115105 _stx109391_))))
                 (declare (not safe))
                 (cons __tmp115104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109429_
                                                        __tmp115103))))
                                           (declare (not safe))
                                           (cons __tmp115102 '())))
                                        (__tmp115099
                                         (let ((__tmp115100
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109395_
                                                   _clauses109426_
                                                   _args109428_
                                                   _len109429_))))
                                           (declare (not safe))
                                           (cons __tmp115100 '()))))
                                    (declare (not safe))
                                    (cons __tmp115101 __tmp115099))))
                             (declare (not safe))
                             (cons 'let __tmp115098))))
                      (declare (not safe))
                      (__SRC__% __tmp115097 _stx109391_))))
               (declare (not safe))
               (cons __tmp115096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109428_
                                                      __tmp115095))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp115094))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115093 _stx109391_)))))
                          (let () (declare (not safe)) (_$E109400109413_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109397_))
                (let* ((_$tgt109404109434_
                        (let () (declare (not safe)) (__AST-e _$e109397_)))
                       (_$hd109405109437_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109404109434_)))
                       (_$tl109406109440_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109404109434_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109406109440_))
                      (let* ((_$tgt109407109444_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109406109440_)))
                             (_$hd109408109447_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109407109444_)))
                             (_$tl109409109450_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109407109444_))))
                        (let ((_clause109454_ _$hd109408109447_))
                          (if (let ((__tmp115108
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109409109450_))))
                                (declare (not safe))
                                (equal? __tmp115108 '()))
                              (let ((__tmp115107
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109454_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp115107))
                              (let ()
                                (declare (not safe))
                                (_$E109399109431_)))))
                      (let () (declare (not safe)) (_$E109399109431_))))
                (let () (declare (not safe)) (_$E109399109431_)))))))
    (define __compile-let-form
      (lambda (_stx109160_ _compile-simple109161_ _compile-values109162_)
        (letrec ((_simple-bind?109164_
                  (lambda (_hd109349_)
                    (let* ((_hd109350109360_ _hd109349_)
                           (_else109353109368_ (lambda () '#f)))
                      (let ((_K109356109381_ (lambda (_id109379_) '#t))
                            (_K109355109373_ (lambda () '#t)))
                        (let ((_try-match109352109376_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109350109360_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109355109373_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109353109368_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109350109360_))
                              (let ((_tl109358109386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109350109360_)))
                                    (_hd109357109384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109350109360_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109358109386_))
                                    (let ((_id109389_ _hd109357109384_))
                                      (declare (not safe))
                                      (_K109356109381_ _id109389_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109352109376_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109352109376_))))))))
                 (_car-e109165_
                  (lambda (_hd109347_)
                    (if (let () (declare (not safe)) (pair? _hd109347_))
                        (car _hd109347_)
                        _hd109347_))))
          (let* ((_$e109167_ _stx109160_)
                 (_$E109169109312_
                  (lambda ()
                    (let ((_$E109170109192_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109167_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109167_))
                          (let* ((_$tgt109171109195_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109167_)))
                                 (_$hd109172109198_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109171109195_)))
                                 (_$tl109173109201_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109171109195_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl109173109201_))
                                (let* ((_$tgt109174109205_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl109173109201_)))
                                       (_$hd109175109208_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt109174109205_)))
                                       (_$tl109176109211_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt109174109205_))))
                                  (let ((_hd109215_ _$hd109175109208_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl109176109211_))
                                        (let* ((_$tgt109177109217_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl109176109211_)))
                                               (_$hd109178109220_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt109177109217_)))
                                               (_$tl109179109223_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt109177109217_))))
                                          (let ((_body109227_
                                                 _$hd109178109220_))
                                            (if (let ((__tmp115111
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109179109223_))))
                                                  (declare (not safe))
                                                  (equal? __tmp115111 '()))
                                                (let* ((_hd-ids109267_
                                                        (map (lambda (_bind109229_)
                                                               (let* ((_$e109231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109229_)
                              (_$E109233109242_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109231_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109231_))
                             (let* ((_$tgt109234109245_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109231_)))
                                    (_$hd109235109248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109234109245_)))
                                    (_$tl109236109251_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109234109245_))))
                               (let ((_ids109255_ _$hd109235109248_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109236109251_))
                                     (let* ((_$tgt109237109257_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109236109251_)))
                                            (_$hd109238109260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109237109257_)))
                                            (_$tl109239109263_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109237109257_))))
                                       (if (let ((__tmp115109
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109239109263_))))
                                             (declare (not safe))
                                             (equal? __tmp115109 '()))
                                           _ids109255_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109233109242_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109233109242_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109233109242_)))))
                     _hd109215_))
               (_exprs109307_
                (map (lambda (_bind109269_)
                       (let* ((_$e109271_ _bind109269_)
                              (_$E109273109282_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109271_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109271_))
                             (let* ((_$tgt109274109285_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109271_)))
                                    (_$hd109275109288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109274109285_)))
                                    (_$tl109276109291_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109274109285_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109276109291_))
                                   (let* ((_$tgt109277109295_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109276109291_)))
                                          (_$hd109278109298_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109277109295_)))
                                          (_$tl109279109301_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109277109295_))))
                                     (let ((_expr109305_ _$hd109278109298_))
                                       (if (let ((__tmp115110
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109279109301_))))
                                             (declare (not safe))
                                             (equal? __tmp115110 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109305_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109273109282_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109273109282_))))
                             (let ()
                               (declare (not safe))
                               (_$E109273109282_)))))
                     _hd109215_))
               (_body109309_
                (let () (declare (not safe)) (__compile _body109227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?109164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109267_))
              (_compile-simple109161_
               (map _car-e109165_ _hd-ids109267_)
               _exprs109307_
               _body109309_)
              (_compile-values109162_
               _hd-ids109267_
               _exprs109307_
               _body109309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109170109192_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E109170109192_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E109170109192_))))
                          (let () (declare (not safe)) (_$E109170109192_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109167_))
                (let* ((_$tgt109180109315_
                        (let () (declare (not safe)) (__AST-e _$e109167_)))
                       (_$hd109181109318_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109180109315_)))
                       (_$tl109182109321_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109180109315_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109182109321_))
                      (let* ((_$tgt109183109325_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109182109321_)))
                             (_$hd109184109328_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109183109325_)))
                             (_$tl109185109331_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109183109325_))))
                        (if (let ((__tmp115113
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd109184109328_))))
                              (declare (not safe))
                              (equal? __tmp115113 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl109185109331_))
                                (let* ((_$tgt109186109335_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl109185109331_)))
                                       (_$hd109187109338_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt109186109335_)))
                                       (_$tl109188109341_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt109186109335_))))
                                  (let ((_body109345_ _$hd109187109338_))
                                    (if (let ((__tmp115112
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl109188109341_))))
                                          (declare (not safe))
                                          (equal? __tmp115112 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109345_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E109169109312_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E109169109312_)))
                            (let () (declare (not safe)) (_$E109169109312_))))
                      (let () (declare (not safe)) (_$E109169109312_))))
                (let () (declare (not safe)) (_$E109169109312_)))))))
    (define __compile-let-values%
      (lambda (_stx108975_)
        (letrec ((_compile-simple108977_
                  (lambda (_hd-ids109156_ _exprs109157_ _body109158_)
                    (let ((__tmp115114
                           (let ((__tmp115115
                                  (let ((__tmp115117
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids109156_)
                                              _exprs109157_))
                                        (__tmp115116
                                         (let ()
                                           (declare (not safe))
                                           (cons _body109158_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115117 __tmp115116))))
                             (declare (not safe))
                             (cons 'let __tmp115115))))
                      (declare (not safe))
                      (__SRC__% __tmp115114 _stx108975_))))
                 (_compile-values108978_
                  (lambda (_hd-ids109074_ _exprs109075_ _body109076_)
                    (let _lp109078_ ((_rest109080_ _hd-ids109074_)
                                     (_exprs109081_ _exprs109075_)
                                     (_bind109082_ '())
                                     (_post109083_ '()))
                      (let* ((_rest109084109098_ _rest109080_)
                             (_else109087109106_
                              (lambda ()
                                (let ((__tmp115118
                                       (let ((__tmp115119
                                              (let ((__tmp115122
                                                     (reverse _bind109082_))
                                                    (__tmp115120
                                                     (let ((__tmp115121
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108979_
                                                               _post109083_
                                                               _body109076_))))
                                                       (declare (not safe))
                                                       (cons __tmp115121
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp115122
                                                      __tmp115120))))
                                         (declare (not safe))
                                         (cons 'let __tmp115119))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115118 _stx108975_)))))
                        (let ((_K109092109139_
                               (lambda (_rest109136_ _id109137_)
                                 (let ((__tmp115128 (cdr _exprs109081_))
                                       (__tmp115123
                                        (let ((__tmp115124
                                               (let ((__tmp115127
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id109137_)))
                                                     (__tmp115125
                                                      (let ((__tmp115126
                                                             (car _exprs109081_)))
                                                        (declare (not safe))
                                                        (cons __tmp115126
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp115127
                                                       __tmp115125))))
                                          (declare (not safe))
                                          (cons __tmp115124 _bind109082_))))
                                   (declare (not safe))
                                   (_lp109078_
                                    _rest109136_
                                    __tmp115128
                                    __tmp115123
                                    _post109083_))))
                              (_K109089109121_
                               (lambda (_rest109110_ _hd109111_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd109111_))
                                     (let ((__tmp115149 (cdr _exprs109081_))
                                           (__tmp115142
                                            (let ((__tmp115143
                                                   (let ((__tmp115148
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd109111_)))
                                                         (__tmp115144
                                                          (let ((__tmp115145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115146
                                (let ((__tmp115147 (car _exprs109081_)))
                                  (declare (not safe))
                                  (cons __tmp115147 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp115146))))
                    (declare (not safe))
                    (cons __tmp115145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115148
                                                           __tmp115144))))
                                              (declare (not safe))
                                              (cons __tmp115143
                                                    _bind109082_))))
                                       (declare (not safe))
                                       (_lp109078_
                                        _rest109110_
                                        __tmp115149
                                        __tmp115142
                                        _post109083_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd109111_))
                                         (let* ((_len109113_
                                                 (length _hd109111_))
                                                (_tmp109115_
                                                 (let ((__tmp115129 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp115129))))
                                           (let ((__tmp115141
                                                  (cdr _exprs109081_))
                                                 (__tmp115137
                                                  (let ((__tmp115138
                                                         (let ((__tmp115139
                                                                (let ((__tmp115140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs109081_)))
                          (declare (not safe))
                          (cons __tmp115140 '()))))
                   (declare (not safe))
                   (cons _tmp109115_ __tmp115139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115138
                                                          _bind109082_)))
                                                 (__tmp115130
                                                  (let ((__tmp115131
                                                         (let ((__tmp115132
                                                                (let ((__tmp115133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115135
                                      (lambda (_id109118_ _k109119_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id109118_))
                                            (let ((__tmp115136
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id109118_))))
                                              (declare (not safe))
                                              (cons __tmp115136 _k109119_))
                                            '#f)))
                                     (__tmp115134
                                      (let ()
                                        (declare (not safe))
                                        (iota _len109113_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp115135
                                  _hd109111_
                                  __tmp115134))))
                          (declare (not safe))
                          (cons _len109113_ __tmp115133))))
                   (declare (not safe))
                   (cons _tmp109115_ __tmp115132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115131
                                                          _post109083_))))
                                             (declare (not safe))
                                             (_lp109078_
                                              _rest109110_
                                              __tmp115141
                                              __tmp115137
                                              __tmp115130)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108975_
                                            _hd109111_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest109084109098_))
                              (let ((_tl109094109144_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest109084109098_)))
                                    (_hd109093109142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest109084109098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109093109142_))
                                    (let ((_tl109096109149_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109093109142_)))
                                          (_hd109095109147_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109093109142_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109096109149_))
                                          (let ((_id109152_ _hd109095109147_)
                                                (_rest109154_
                                                 _tl109094109144_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109092109139_
                                               _rest109154_
                                               _id109152_)))
                                          (let ((_hd109129_ _hd109093109142_)
                                                (_rest109131_
                                                 _tl109094109144_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109089109121_
                                               _rest109131_
                                               _hd109129_)))))
                                    (let ((_hd109129_ _hd109093109142_)
                                          (_rest109131_ _tl109094109144_))
                                      (let ()
                                        (declare (not safe))
                                        (_K109089109121_
                                         _rest109131_
                                         _hd109129_)))))
                              (let ()
                                (declare (not safe))
                                (_else109087109106_))))))))
                 (_compile-post108979_
                  (lambda (_post108981_ _body108982_)
                    (let _lp108984_ ((_rest108986_ _post108981_)
                                     (_check108987_ '())
                                     (_bind108988_ '()))
                      (let* ((_rest108989109001_ _rest108986_)
                             (_else108991109009_
                              (lambda ()
                                (let ((__tmp115150
                                       (let ((__tmp115151
                                              (let ((__tmp115152
                                                     (let ((__tmp115153
                                                            (let ((__tmp115154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115155
                                  (let ((__tmp115156
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108982_ '()))))
                                    (declare (not safe))
                                    (cons _bind108988_ __tmp115156))))
                             (declare (not safe))
                             (cons 'let __tmp115155))))
                      (declare (not safe))
                      (__SRC__% __tmp115154 _stx108975_))))
               (declare (not safe))
               (cons __tmp115153 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp115152
                                                        _check108987_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp115151))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115150 _stx108975_))))
                             (_K108993109048_
                              (lambda (_rest109012_
                                       _init109013_
                                       _len109014_
                                       _tmp109015_)
                                (let ((__tmp115164
                                       (let ((__tmp115165
                                              (let ((__tmp115166
                                                     (let ((__tmp115167
                                                            (let ((__tmp115168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len109014_ '()))))
                      (declare (not safe))
                      (cons _tmp109015_ __tmp115168))))
               (declare (not safe))
               (cons '__check-values __tmp115167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115166
                                                 _stx108975_))))
                                         (declare (not safe))
                                         (cons __tmp115165 _check108987_)))
                                      (__tmp115157
                                       (let ((__tmp115158
                                              (lambda (_hd109017_ _r109018_)
                                                (let* ((_hd109019109026_
                                                        _hd109017_)
                                                       (_E109021109030_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd109019109026_)))
               (_K109022109036_
                (lambda (_k109033_ _id109034_)
                  (let ((__tmp115159
                         (let ((__tmp115160
                                (let ((__tmp115161
                                       (let ((__tmp115162
                                              (let ((__tmp115163
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k109033_ '()))))
                                                (declare (not safe))
                                                (cons _tmp109015_
                                                      __tmp115163))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp115162))))
                                  (declare (not safe))
                                  (cons __tmp115161 '()))))
                           (declare (not safe))
                           (cons _id109034_ __tmp115160))))
                    (declare (not safe))
                    (cons __tmp115159 _r109018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd109019109026_))
                                                      (let ((_hd109023109039_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd109019109026_)))
                    (_tl109024109041_
                     (let () (declare (not safe)) (##cdr _hd109019109026_))))
                (let* ((_id109044_ _hd109023109039_)
                       (_k109046_ _tl109024109041_))
                  (declare (not safe))
                  (_K109022109036_ _k109046_ _id109044_)))
              (let () (declare (not safe)) (_E109021109030_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp115158
                                                 _bind108988_
                                                 _init109013_))))
                                  (declare (not safe))
                                  (_lp108984_
                                   _rest109012_
                                   __tmp115164
                                   __tmp115157)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108989109001_))
                            (let ((_hd108994109051_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108989109001_)))
                                  (_tl108995109053_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108989109001_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108994109051_))
                                  (let ((_hd108996109056_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108994109051_)))
                                        (_tl108997109058_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108994109051_))))
                                    (let ((_tmp109061_ _hd108996109056_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108997109058_))
                                          (let ((_hd108998109063_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108997109058_)))
                                                (_tl108999109065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108997109058_))))
                                            (let* ((_len109068_
                                                    _hd108998109063_)
                                                   (_init109070_
                                                    _tl108999109065_)
                                                   (_rest109072_
                                                    _tl108995109053_))
                                              (declare (not safe))
                                              (_K108993109048_
                                               _rest109072_
                                               _init109070_
                                               _len109068_
                                               _tmp109061_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108991109009_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108991109009_))))
                            (let ()
                              (declare (not safe))
                              (_else108991109009_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108975_
             _compile-simple108977_
             _compile-values108978_)))))
    (define __compile-letrec-values%
      (lambda (_stx108775_)
        (letrec ((_compile-simple108777_
                  (lambda (_hd-ids108971_ _exprs108972_ _body108973_)
                    (let ((__tmp115169
                           (let ((__tmp115170
                                  (let ((__tmp115172
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108971_)
                                              _exprs108972_))
                                        (__tmp115171
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108973_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115172 __tmp115171))))
                             (declare (not safe))
                             (cons 'letrec __tmp115170))))
                      (declare (not safe))
                      (__SRC__% __tmp115169 _stx108775_))))
                 (_compile-values108778_
                  (lambda (_hd-ids108885_ _exprs108886_ _body108887_)
                    (let _lp108889_ ((_rest108891_ _hd-ids108885_)
                                     (_exprs108892_ _exprs108886_)
                                     (_pre108893_ '())
                                     (_bind108894_ '())
                                     (_post108895_ '()))
                      (let* ((_rest108896108910_ _rest108891_)
                             (_else108899108918_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108779_
                                   _pre108893_
                                   _bind108894_
                                   _post108895_
                                   _body108887_)))))
                        (let ((_K108904108954_
                               (lambda (_rest108951_ _id108952_)
                                 (let ((__tmp115178 (cdr _exprs108892_))
                                       (__tmp115173
                                        (let ((__tmp115174
                                               (let ((__tmp115177
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108952_)))
                                                     (__tmp115175
                                                      (let ((__tmp115176
                                                             (car _exprs108892_)))
                                                        (declare (not safe))
                                                        (cons __tmp115176
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp115177
                                                       __tmp115175))))
                                          (declare (not safe))
                                          (cons __tmp115174 _bind108894_))))
                                   (declare (not safe))
                                   (_lp108889_
                                    _rest108951_
                                    __tmp115178
                                    _pre108893_
                                    __tmp115173
                                    _post108895_))))
                              (_K108901108936_
                               (lambda (_rest108922_ _hd108923_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108923_))
                                     (let ((__tmp115206 (cdr _exprs108892_))
                                           (__tmp115199
                                            (let ((__tmp115200
                                                   (let ((__tmp115205
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108923_)))
                                                         (__tmp115201
                                                          (let ((__tmp115202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115203
                                (let ((__tmp115204 (car _exprs108892_)))
                                  (declare (not safe))
                                  (cons __tmp115204 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp115203))))
                    (declare (not safe))
                    (cons __tmp115202 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115205
                                                           __tmp115201))))
                                              (declare (not safe))
                                              (cons __tmp115200
                                                    _bind108894_))))
                                       (declare (not safe))
                                       (_lp108889_
                                        _rest108922_
                                        __tmp115206
                                        _pre108893_
                                        __tmp115199
                                        _post108895_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108923_))
                                         (let* ((_len108925_
                                                 (length _hd108923_))
                                                (_tmp108927_
                                                 (let ((__tmp115179 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp115179))))
                                           (let ((__tmp115198
                                                  (cdr _exprs108892_))
                                                 (__tmp115191
                                                  (let ((__tmp115192
                                                         (lambda (_id108930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108931_)
                   (if (let () (declare (not safe)) (__AST-e _id108930_))
                       (let ((__tmp115193
                              (let ((__tmp115197
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108930_)))
                                    (__tmp115194
                                     (let ((__tmp115195
                                            (let ((__tmp115196
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp115196))))
                                       (declare (not safe))
                                       (cons __tmp115195 '()))))
                                (declare (not safe))
                                (cons __tmp115197 __tmp115194))))
                         (declare (not safe))
                         (cons __tmp115193 _r108931_))
                       _r108931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp115192
                                                            _pre108893_
                                                            _hd108923_)))
                                                 (__tmp115187
                                                  (let ((__tmp115188
                                                         (let ((__tmp115189
                                                                (let ((__tmp115190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108892_)))
                          (declare (not safe))
                          (cons __tmp115190 '()))))
                   (declare (not safe))
                   (cons _tmp108927_ __tmp115189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115188
                                                          _bind108894_)))
                                                 (__tmp115180
                                                  (let ((__tmp115181
                                                         (let ((__tmp115182
                                                                (let ((__tmp115183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115185
                                      (lambda (_id108933_ _k108934_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108933_))
                                            (let ((__tmp115186
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108933_))))
                                              (declare (not safe))
                                              (cons __tmp115186 _k108934_))
                                            '#f)))
                                     (__tmp115184
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108925_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp115185
                                  _hd108923_
                                  __tmp115184))))
                          (declare (not safe))
                          (cons _len108925_ __tmp115183))))
                   (declare (not safe))
                   (cons _tmp108927_ __tmp115182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115181
                                                          _post108895_))))
                                             (declare (not safe))
                                             (_lp108889_
                                              _rest108922_
                                              __tmp115198
                                              __tmp115191
                                              __tmp115187
                                              __tmp115180)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108775_
                                            _hd108923_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108896108910_))
                              (let ((_tl108906108959_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108896108910_)))
                                    (_hd108905108957_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108896108910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108905108957_))
                                    (let ((_tl108908108964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108905108957_)))
                                          (_hd108907108962_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108905108957_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108908108964_))
                                          (let ((_id108967_ _hd108907108962_)
                                                (_rest108969_
                                                 _tl108906108959_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108904108954_
                                               _rest108969_
                                               _id108967_)))
                                          (let ((_hd108944_ _hd108905108957_)
                                                (_rest108946_
                                                 _tl108906108959_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108901108936_
                                               _rest108946_
                                               _hd108944_)))))
                                    (let ((_hd108944_ _hd108905108957_)
                                          (_rest108946_ _tl108906108959_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108901108936_
                                         _rest108946_
                                         _hd108944_)))))
                              (let ()
                                (declare (not safe))
                                (_else108899108918_))))))))
                 (_compile-inner108779_
                  (lambda (_pre108880_ _bind108881_ _post108882_ _body108883_)
                    (if (let () (declare (not safe)) (null? _pre108880_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108780_
                           _bind108881_
                           _post108882_
                           _body108883_))
                        (let ((__tmp115207
                               (let ((__tmp115208
                                      (let ((__tmp115211 (reverse _pre108880_))
                                            (__tmp115209
                                             (let ((__tmp115210
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108780_
                                                       _bind108881_
                                                       _post108882_
                                                       _body108883_))))
                                               (declare (not safe))
                                               (cons __tmp115210 '()))))
                                        (declare (not safe))
                                        (cons __tmp115211 __tmp115209))))
                                 (declare (not safe))
                                 (cons 'let __tmp115208))))
                          (declare (not safe))
                          (__SRC__% __tmp115207 _stx108775_)))))
                 (_compile-bind108780_
                  (lambda (_bind108876_ _post108877_ _body108878_)
                    (let ((__tmp115212
                           (let ((__tmp115213
                                  (let ((__tmp115216 (reverse _bind108876_))
                                        (__tmp115214
                                         (let ((__tmp115215
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108781_
                                                   _post108877_
                                                   _body108878_))))
                                           (declare (not safe))
                                           (cons __tmp115215 '()))))
                                    (declare (not safe))
                                    (cons __tmp115216 __tmp115214))))
                             (declare (not safe))
                             (cons 'letrec __tmp115213))))
                      (declare (not safe))
                      (__SRC__% __tmp115212 _stx108775_))))
                 (_compile-post108781_
                  (lambda (_post108783_ _body108784_)
                    (let _lp108786_ ((_rest108788_ _post108783_)
                                     (_check108789_ '())
                                     (_bind108790_ '()))
                      (let* ((_rest108791108803_ _rest108788_)
                             (_else108793108811_
                              (lambda ()
                                (let ((__tmp115217
                                       (let ((__tmp115218
                                              (let ((__tmp115219
                                                     (let ((__tmp115220
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp115220 _bind108790_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp115219
                                                        _check108789_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp115218))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115217 _stx108775_))))
                             (_K108795108850_
                              (lambda (_rest108814_
                                       _init108815_
                                       _len108816_
                                       _tmp108817_)
                                (let ((__tmp115229
                                       (let ((__tmp115230
                                              (let ((__tmp115231
                                                     (let ((__tmp115232
                                                            (let ((__tmp115233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108816_ '()))))
                      (declare (not safe))
                      (cons _tmp108817_ __tmp115233))))
               (declare (not safe))
               (cons '__check-values __tmp115232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115231
                                                 _stx108775_))))
                                         (declare (not safe))
                                         (cons __tmp115230 _check108789_)))
                                      (__tmp115221
                                       (let ((__tmp115222
                                              (lambda (_hd108819_ _r108820_)
                                                (let* ((_hd108821108828_
                                                        _hd108819_)
                                                       (_E108823108832_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108821108828_)))
               (_K108824108838_
                (lambda (_k108835_ _id108836_)
                  (let ((__tmp115223
                         (let ((__tmp115224
                                (let ((__tmp115225
                                       (let ((__tmp115226
                                              (let ((__tmp115227
                                                     (let ((__tmp115228
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108817_ __tmp115228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115227))))
                                         (declare (not safe))
                                         (cons __tmp115226 '()))))
                                  (declare (not safe))
                                  (cons _id108836_ __tmp115225))))
                           (declare (not safe))
                           (cons 'set! __tmp115224))))
                    (declare (not safe))
                    (cons __tmp115223 _r108820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108821108828_))
                                                      (let ((_hd108825108841_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108821108828_)))
                    (_tl108826108843_
                     (let () (declare (not safe)) (##cdr _hd108821108828_))))
                (let* ((_id108846_ _hd108825108841_)
                       (_k108848_ _tl108826108843_))
                  (declare (not safe))
                  (_K108824108838_ _k108848_ _id108846_)))
              (let () (declare (not safe)) (_E108823108832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp115222
                                                 _bind108790_
                                                 _init108815_))))
                                  (declare (not safe))
                                  (_lp108786_
                                   _rest108814_
                                   __tmp115229
                                   __tmp115221)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108791108803_))
                            (let ((_hd108796108853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108791108803_)))
                                  (_tl108797108855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108791108803_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108796108853_))
                                  (let ((_hd108798108858_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108796108853_)))
                                        (_tl108799108860_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108796108853_))))
                                    (let ((_tmp108863_ _hd108798108858_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108799108860_))
                                          (let ((_hd108800108865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108799108860_)))
                                                (_tl108801108867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108799108860_))))
                                            (let* ((_len108870_
                                                    _hd108800108865_)
                                                   (_init108872_
                                                    _tl108801108867_)
                                                   (_rest108874_
                                                    _tl108797108855_))
                                              (declare (not safe))
                                              (_K108795108850_
                                               _rest108874_
                                               _init108872_
                                               _len108870_
                                               _tmp108863_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108793108811_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108793108811_))))
                            (let ()
                              (declare (not safe))
                              (_else108793108811_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108775_
             _compile-simple108777_
             _compile-values108778_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108530_)
        (letrec ((_compile-simple108532_
                  (lambda (_hd-ids108771_ _exprs108772_ _body108773_)
                    (let ((__tmp115234
                           (let ((__tmp115235
                                  (let ((__tmp115237
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108771_)
                                              _exprs108772_))
                                        (__tmp115236
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108773_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115237 __tmp115236))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115235))))
                      (declare (not safe))
                      (__SRC__% __tmp115234 _stx108530_))))
                 (_compile-values108533_
                  (lambda (_hd-ids108682_ _exprs108683_ _body108684_)
                    (let _lp108686_ ((_rest108688_ _hd-ids108682_)
                                     (_exprs108689_ _exprs108683_)
                                     (_bind108690_ '())
                                     (_post108691_ '()))
                      (let* ((_rest108692108706_ _rest108688_)
                             (_else108695108714_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108534_
                                   _bind108690_
                                   _post108691_
                                   _body108684_)))))
                        (let ((_K108700108754_
                               (lambda (_rest108749_ _hd108750_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108750_))
                                     (let ((_id108752_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108750_))))
                                       (let ((__tmp115252 (cdr _exprs108689_))
                                             (__tmp115247
                                              (let ((__tmp115248
                                                     (let ((__tmp115249
                                                            (let ((__tmp115250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115251
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115251))))
                      (declare (not safe))
                      (cons __tmp115250 '()))))
               (declare (not safe))
               (cons _id108752_ __tmp115249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115248
                                                      _bind108690_)))
                                             (__tmp115243
                                              (let ((__tmp115244
                                                     (let ((__tmp115245
                                                            (let ((__tmp115246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108689_)))
                      (declare (not safe))
                      (cons __tmp115246 '()))))
               (declare (not safe))
               (cons _id108752_ __tmp115245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115244
                                                      _post108691_))))
                                         (declare (not safe))
                                         (_lp108686_
                                          _rest108749_
                                          __tmp115252
                                          __tmp115247
                                          __tmp115243)))
                                     (let ((__tmp115242 (cdr _exprs108689_))
                                           (__tmp115238
                                            (let ((__tmp115239
                                                   (let ((__tmp115240
                                                          (let ((__tmp115241
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108689_)))
                    (declare (not safe))
                    (cons __tmp115241 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115240))))
                                              (declare (not safe))
                                              (cons __tmp115239
                                                    _post108691_))))
                                       (declare (not safe))
                                       (_lp108686_
                                        _rest108749_
                                        __tmp115242
                                        _bind108690_
                                        __tmp115238)))))
                              (_K108697108734_
                               (lambda (_rest108718_ _hd108719_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108719_))
                                     (let ((_id108721_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108719_))))
                                       (let ((__tmp115288 (cdr _exprs108689_))
                                             (__tmp115283
                                              (let ((__tmp115284
                                                     (let ((__tmp115285
                                                            (let ((__tmp115286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115287
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115287))))
                      (declare (not safe))
                      (cons __tmp115286 '()))))
               (declare (not safe))
               (cons _id108721_ __tmp115285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115284
                                                      _bind108690_)))
                                             (__tmp115277
                                              (let ((__tmp115278
                                                     (let ((__tmp115279
                                                            (let ((__tmp115280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115281
                                  (let ((__tmp115282 (car _exprs108689_)))
                                    (declare (not safe))
                                    (cons __tmp115282 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115281))))
                      (declare (not safe))
                      (cons __tmp115280 '()))))
               (declare (not safe))
               (cons _id108721_ __tmp115279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115278
                                                      _post108691_))))
                                         (declare (not safe))
                                         (_lp108686_
                                          _rest108718_
                                          __tmp115288
                                          __tmp115283
                                          __tmp115277)))
                                     (if (let ((__tmp115276
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108719_))))
                                           (declare (not safe))
                                           (not __tmp115276))
                                         (let ((__tmp115275
                                                (cdr _exprs108689_))
                                               (__tmp115271
                                                (let ((__tmp115272
                                                       (let ((__tmp115273
                                                              (let ((__tmp115274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108689_)))
                        (declare (not safe))
                        (cons __tmp115274 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115272
                                                        _post108691_))))
                                           (declare (not safe))
                                           (_lp108686_
                                            _rest108718_
                                            __tmp115275
                                            _bind108690_
                                            __tmp115271))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108719_))
                                             (let* ((_len108723_
                                                     (length _hd108719_))
                                                    (_tmp108725_
                                                     (let ((__tmp115253
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115253))))
                                               (let ((__tmp115270
                                                      (cdr _exprs108689_))
                                                     (__tmp115263
                                                      (let ((__tmp115264
                                                             (lambda (_id108728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108729_)
                       (if (let () (declare (not safe)) (__AST-e _id108728_))
                           (let ((__tmp115265
                                  (let ((__tmp115269
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108728_)))
                                        (__tmp115266
                                         (let ((__tmp115267
                                                (let ((__tmp115268
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115268))))
                                           (declare (not safe))
                                           (cons __tmp115267 '()))))
                                    (declare (not safe))
                                    (cons __tmp115269 __tmp115266))))
                             (declare (not safe))
                             (cons __tmp115265 _r108729_))
                           _r108729_))))
                (declare (not safe))
                (foldl1 __tmp115264 _bind108690_ _hd108719_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115254
                                                      (let ((__tmp115255
                                                             (let ((__tmp115256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115262 (car _exprs108689_))
                                  (__tmp115257
                                   (let ((__tmp115258
                                          (let ((__tmp115260
                                                 (lambda (_id108731_ _k108732_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108731_))
                                                       (let ((__tmp115261
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108731_))))
                 (declare (not safe))
                 (cons __tmp115261 _k108732_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115259
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108723_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115260
                                             _hd108719_
                                             __tmp115259))))
                                     (declare (not safe))
                                     (cons _len108723_ __tmp115258))))
                              (declare (not safe))
                              (cons __tmp115262 __tmp115257))))
                       (declare (not safe))
                       (cons _tmp108725_ __tmp115256))))
                (declare (not safe))
                (cons __tmp115255 _post108691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108686_
                                                  _rest108718_
                                                  __tmp115270
                                                  __tmp115263
                                                  __tmp115254)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108530_
                                                _hd108719_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108692108706_))
                              (let ((_tl108702108759_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108692108706_)))
                                    (_hd108701108757_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108692108706_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108701108757_))
                                    (let ((_tl108704108764_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108701108757_)))
                                          (_hd108703108762_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108701108757_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108704108764_))
                                          (let ((_hd108767_ _hd108703108762_)
                                                (_rest108769_
                                                 _tl108702108759_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108700108754_
                                               _rest108769_
                                               _hd108767_)))
                                          (let ((_hd108742_ _hd108701108757_)
                                                (_rest108744_
                                                 _tl108702108759_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108697108734_
                                               _rest108744_
                                               _hd108742_)))))
                                    (let ((_hd108742_ _hd108701108757_)
                                          (_rest108744_ _tl108702108759_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108697108734_
                                         _rest108744_
                                         _hd108742_)))))
                              (let ()
                                (declare (not safe))
                                (_else108695108714_))))))))
                 (_compile-bind108534_
                  (lambda (_bind108678_ _post108679_ _body108680_)
                    (let ((__tmp115289
                           (let ((__tmp115290
                                  (let ((__tmp115293 (reverse _bind108678_))
                                        (__tmp115291
                                         (let ((__tmp115292
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108535_
                                                   _post108679_
                                                   _body108680_))))
                                           (declare (not safe))
                                           (cons __tmp115292 '()))))
                                    (declare (not safe))
                                    (cons __tmp115293 __tmp115291))))
                             (declare (not safe))
                             (cons 'let __tmp115290))))
                      (declare (not safe))
                      (__SRC__% __tmp115289 _stx108530_))))
                 (_compile-post108535_
                  (lambda (_post108537_ _body108538_)
                    (let ((__tmp115294
                           (let ((__tmp115295
                                  (let ((__tmp115296
                                         (let ((__tmp115298
                                                (lambda (_hd108540_ _r108541_)
                                                  (let* ((_hd108542108565_
                                                          _hd108540_)
                                                         (_E108546108569_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108542108565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108559108663_
                                                           (lambda (_expr108661_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108661_ _r108541_))))
                  (_K108554108641_
                   (lambda (_expr108638_ _id108639_)
                     (let ((__tmp115299
                            (let ((__tmp115300
                                   (let ((__tmp115301
                                          (let ((__tmp115302
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108638_ '()))))
                                            (declare (not safe))
                                            (cons _id108639_ __tmp115302))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115301))))
                              (declare (not safe))
                              (__SRC__% __tmp115300 _stx108530_))))
                       (declare (not safe))
                       (cons __tmp115299 _r108541_))))
                  (_K108547108608_
                   (lambda (_init108573_ _len108574_ _expr108575_ _tmp108576_)
                     (let ((__tmp115303
                            (let ((__tmp115304
                                   (let ((__tmp115305
                                          (let ((__tmp115319
                                                 (let ((__tmp115320
                                                        (let ((__tmp115321
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108575_ '()))))
                  (declare (not safe))
                  (cons _tmp108576_ __tmp115321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115320 '())))
                                                (__tmp115306
                                                 (let ((__tmp115315
                                                        (let ((__tmp115316
                                                               (let ((__tmp115317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115318
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108574_ '()))))
                                (declare (not safe))
                                (cons _tmp108576_ __tmp115318))))
                         (declare (not safe))
                         (cons '__check-values __tmp115317))))
                  (declare (not safe))
                  (__SRC__% __tmp115316 _stx108530_)))
               (__tmp115307
                (let ((__tmp115308
                       (map (lambda (_hd108578_)
                              (let* ((_hd108579108586_ _hd108578_)
                                     (_E108581108590_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108579108586_)))
                                     (_K108582108596_
                                      (lambda (_k108593_ _id108594_)
                                        (let ((__tmp115309
                                               (let ((__tmp115310
                                                      (let ((__tmp115311
                                                             (let ((__tmp115312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115313
                                   (let ((__tmp115314
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108593_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108576_ __tmp115314))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115313))))
                       (declare (not safe))
                       (cons __tmp115312 '()))))
                (declare (not safe))
                (cons _id108594_ __tmp115311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115310))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115309
                                           _stx108530_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108579108586_))
                                    (let ((_hd108583108599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108579108586_)))
                                          (_tl108584108601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108579108586_))))
                                      (let* ((_id108604_ _hd108583108599_)
                                             (_k108606_ _tl108584108601_))
                                        (declare (not safe))
                                        (_K108582108596_
                                         _k108606_
                                         _id108604_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108581108590_)))))
                            _init108573_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115315
                                                         __tmp115307))))
                                            (declare (not safe))
                                            (cons __tmp115319 __tmp115306))))
                                     (declare (not safe))
                                     (cons 'let __tmp115305))))
                              (declare (not safe))
                              (__SRC__% __tmp115304 _stx108530_))))
                       (declare (not safe))
                       (cons __tmp115303 _r108541_)))))
              (if (let () (declare (not safe)) (##pair? _hd108542108565_))
                  (let ((_tl108561108668_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108542108565_)))
                        (_hd108560108666_
                         (let ()
                           (declare (not safe))
                           (##car _hd108542108565_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108560108666_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108561108668_))
                            (let ((_tl108563108673_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108561108668_)))
                                  (_hd108562108671_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108561108668_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108563108673_))
                                  (let ((_expr108676_ _hd108562108671_))
                                    (declare (not safe))
                                    (_K108559108663_ _expr108676_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108563108673_))
                                      (let ((_tl108553108627_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108563108673_)))
                                            (_hd108552108625_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108563108673_))))
                                        (let ((_tmp108616_ _hd108560108666_)
                                              (_expr108623_ _hd108562108671_)
                                              (_len108630_ _hd108552108625_)
                                              (_init108632_ _tl108553108627_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108547108608_
                                             _init108632_
                                             _len108630_
                                             _expr108623_
                                             _tmp108616_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108546108569_)))))
                            (let () (declare (not safe)) (_E108546108569_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108561108668_))
                            (let ((_tl108558108653_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108561108668_)))
                                  (_hd108557108651_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108561108668_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108558108653_))
                                  (let ((_id108649_ _hd108560108666_)
                                        (_expr108656_ _hd108557108651_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108554108641_
                                       _expr108656_
                                       _id108649_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108558108653_))
                                      (let ((_tl108553108627_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108558108653_)))
                                            (_hd108552108625_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108558108653_))))
                                        (let ((_tmp108616_ _hd108560108666_)
                                              (_expr108623_ _hd108557108651_)
                                              (_len108630_ _hd108552108625_)
                                              (_init108632_ _tl108553108627_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108547108608_
                                             _init108632_
                                             _len108630_
                                             _expr108623_
                                             _tmp108616_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108546108569_)))))
                            (let () (declare (not safe)) (_E108546108569_)))))
                  (let () (declare (not safe)) (_E108546108569_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115297
                                                (list _body108538_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115298
                                                   __tmp115297
                                                   _post108537_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115296))))
                             (declare (not safe))
                             (cons 'begin __tmp115295))))
                      (declare (not safe))
                      (__SRC__% __tmp115294 _stx108530_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108530_
             _compile-simple108532_
             _compile-values108533_)))))
    (define __compile-call%
      (lambda (_stx108490_)
        (let* ((_$e108492_ _stx108490_)
               (_$E108494108503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108492_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108492_))
              (let* ((_$tgt108495108506_
                      (let () (declare (not safe)) (__AST-e _$e108492_)))
                     (_$hd108496108509_
                      (let () (declare (not safe)) (##car _$tgt108495108506_)))
                     (_$tl108497108512_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108495108506_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108497108512_))
                    (let* ((_$tgt108498108516_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108497108512_)))
                           (_$hd108499108519_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108498108516_)))
                           (_$tl108500108522_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108498108516_))))
                      (let* ((_rator108526_ _$hd108499108519_)
                             (_rands108528_ _$tl108500108522_)
                             (__tmp115322
                              (let ((__tmp115324
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108526_)))
                                    (__tmp115323
                                     (map __compile _rands108528_)))
                                (declare (not safe))
                                (cons __tmp115324 __tmp115323))))
                        (declare (not safe))
                        (__SRC__% __tmp115322 _stx108490_)))
                    (let () (declare (not safe)) (_$E108494108503_))))
              (let () (declare (not safe)) (_$E108494108503_))))))
    (define __compile-ref%
      (lambda (_stx108452_)
        (let* ((_$e108454_ _stx108452_)
               (_$E108456108465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108454_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108454_))
              (let* ((_$tgt108457108468_
                      (let () (declare (not safe)) (__AST-e _$e108454_)))
                     (_$hd108458108471_
                      (let () (declare (not safe)) (##car _$tgt108457108468_)))
                     (_$tl108459108474_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108457108468_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108459108474_))
                    (let* ((_$tgt108460108478_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108459108474_)))
                           (_$hd108461108481_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108460108478_)))
                           (_$tl108462108484_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108460108478_))))
                      (let ((_id108488_ _$hd108461108481_))
                        (if (let ((__tmp115325
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108462108484_))))
                              (declare (not safe))
                              (equal? __tmp115325 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108488_ _stx108452_))
                            (let () (declare (not safe)) (_$E108456108465_)))))
                    (let () (declare (not safe)) (_$E108456108465_))))
              (let () (declare (not safe)) (_$E108456108465_))))))
    (define __compile-setq%
      (lambda (_stx108399_)
        (let* ((_$e108401_ _stx108399_)
               (_$E108403108415_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108401_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108401_))
              (let* ((_$tgt108404108418_
                      (let () (declare (not safe)) (__AST-e _$e108401_)))
                     (_$hd108405108421_
                      (let () (declare (not safe)) (##car _$tgt108404108418_)))
                     (_$tl108406108424_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108404108418_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108406108424_))
                    (let* ((_$tgt108407108428_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108406108424_)))
                           (_$hd108408108431_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108407108428_)))
                           (_$tl108409108434_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108407108428_))))
                      (let ((_id108438_ _$hd108408108431_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108409108434_))
                            (let* ((_$tgt108410108440_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108409108434_)))
                                   (_$hd108411108443_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108410108440_)))
                                   (_$tl108412108446_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108410108440_))))
                              (let ((_expr108450_ _$hd108411108443_))
                                (if (let ((__tmp115331
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108412108446_))))
                                      (declare (not safe))
                                      (equal? __tmp115331 '()))
                                    (let ((__tmp115326
                                           (let ((__tmp115327
                                                  (let ((__tmp115330
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108438_
                                                            _stx108399_)))
                                                        (__tmp115328
                                                         (let ((__tmp115329
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108450_))))
                   (declare (not safe))
                   (cons __tmp115329 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115330
                                                          __tmp115328))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115327))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115326 _stx108399_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108403108415_)))))
                            (let () (declare (not safe)) (_$E108403108415_)))))
                    (let () (declare (not safe)) (_$E108403108415_))))
              (let () (declare (not safe)) (_$E108403108415_))))))
    (define __compile-if%
      (lambda (_stx108331_)
        (let* ((_$e108333_ _stx108331_)
               (_$E108335108350_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108333_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108333_))
              (let* ((_$tgt108336108353_
                      (let () (declare (not safe)) (__AST-e _$e108333_)))
                     (_$hd108337108356_
                      (let () (declare (not safe)) (##car _$tgt108336108353_)))
                     (_$tl108338108359_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108336108353_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108338108359_))
                    (let* ((_$tgt108339108363_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108338108359_)))
                           (_$hd108340108366_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108339108363_)))
                           (_$tl108341108369_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108339108363_))))
                      (let ((_p108373_ _$hd108340108366_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108341108369_))
                            (let* ((_$tgt108342108375_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108341108369_)))
                                   (_$hd108343108378_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108342108375_)))
                                   (_$tl108344108381_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108342108375_))))
                              (let ((_t108385_ _$hd108343108378_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108344108381_))
                                    (let* ((_$tgt108345108387_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108344108381_)))
                                           (_$hd108346108390_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108345108387_)))
                                           (_$tl108347108393_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108345108387_))))
                                      (let ((_f108397_ _$hd108346108390_))
                                        (if (let ((__tmp115339
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108347108393_))))
                                              (declare (not safe))
                                              (equal? __tmp115339 '()))
                                            (let ((__tmp115332
                                                   (let ((__tmp115333
                                                          (let ((__tmp115338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108373_)))
                        (__tmp115334
                         (let ((__tmp115337
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108385_)))
                               (__tmp115335
                                (let ((__tmp115336
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108397_))))
                                  (declare (not safe))
                                  (cons __tmp115336 '()))))
                           (declare (not safe))
                           (cons __tmp115337 __tmp115335))))
                    (declare (not safe))
                    (cons __tmp115338 __tmp115334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115333))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115332
                                               _stx108331_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108335108350_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108335108350_)))))
                            (let () (declare (not safe)) (_$E108335108350_)))))
                    (let () (declare (not safe)) (_$E108335108350_))))
              (let () (declare (not safe)) (_$E108335108350_))))))
    (define __compile-quote%
      (lambda (_stx108293_)
        (let* ((_$e108295_ _stx108293_)
               (_$E108297108306_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108295_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108295_))
              (let* ((_$tgt108298108309_
                      (let () (declare (not safe)) (__AST-e _$e108295_)))
                     (_$hd108299108312_
                      (let () (declare (not safe)) (##car _$tgt108298108309_)))
                     (_$tl108300108315_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108298108309_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108300108315_))
                    (let* ((_$tgt108301108319_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108300108315_)))
                           (_$hd108302108322_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108301108319_)))
                           (_$tl108303108325_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108301108319_))))
                      (let ((_e108329_ _$hd108302108322_))
                        (if (let ((__tmp115343
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108303108325_))))
                              (declare (not safe))
                              (equal? __tmp115343 '()))
                            (let ((__tmp115340
                                   (let ((__tmp115341
                                          (let ((__tmp115342
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108329_))))
                                            (declare (not safe))
                                            (cons __tmp115342 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115341))))
                              (declare (not safe))
                              (__SRC__% __tmp115340 _stx108293_))
                            (let () (declare (not safe)) (_$E108297108306_)))))
                    (let () (declare (not safe)) (_$E108297108306_))))
              (let () (declare (not safe)) (_$E108297108306_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108255_)
        (let* ((_$e108257_ _stx108255_)
               (_$E108259108268_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108257_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108257_))
              (let* ((_$tgt108260108271_
                      (let () (declare (not safe)) (__AST-e _$e108257_)))
                     (_$hd108261108274_
                      (let () (declare (not safe)) (##car _$tgt108260108271_)))
                     (_$tl108262108277_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108260108271_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108262108277_))
                    (let* ((_$tgt108263108281_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108262108277_)))
                           (_$hd108264108284_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108263108281_)))
                           (_$tl108265108287_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108263108281_))))
                      (let ((_e108291_ _$hd108264108284_))
                        (if (let ((__tmp115346
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108265108287_))))
                              (declare (not safe))
                              (equal? __tmp115346 '()))
                            (let ((__tmp115344
                                   (let ((__tmp115345
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108291_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115345))))
                              (declare (not safe))
                              (__SRC__% __tmp115344 _stx108255_))
                            (let () (declare (not safe)) (_$E108259108268_)))))
                    (let () (declare (not safe)) (_$E108259108268_))))
              (let () (declare (not safe)) (_$E108259108268_))))))
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
