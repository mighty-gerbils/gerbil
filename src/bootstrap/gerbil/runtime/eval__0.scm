(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708247273)
  (begin
    (define __context::t
      (let ((__tmp117878 (list))
            (__tmp117876
             (let ((__tmp117877
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117877 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp117878
         '(t ns super table)
         __tmp117876
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args113613_ (apply make-instance __context::t _$args113613_)))
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
      (let ((__tmp117881 (list))
            (__tmp117879
             (let ((__tmp117880
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117880 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp117881
         '(id)
         __tmp117879
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args113610_ (apply make-instance __runtime::t _$args113610_)))
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
      (let ((__tmp117884 (list))
            (__tmp117882
             (let ((__tmp117883
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117883 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp117884
         '(e id)
         __tmp117882
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args113607_ (apply make-instance __syntax::t _$args113607_)))
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
      (let ((__tmp117887 (list __syntax::t))
            (__tmp117885
             (let ((__tmp117886
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117886 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp117887
         '()
         __tmp117885
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args113604_ (apply make-instance __macro::t _$args113604_)))
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
      (let ((__tmp117890 (list __macro::t))
            (__tmp117888
             (let ((__tmp117889
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117889 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp117890
         '()
         __tmp117888
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args113601_
        (apply make-instance __special-form::t _$args113601_)))
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
      (let ((__tmp117893 (list __syntax::t))
            (__tmp117891
             (let ((__tmp117892
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117892 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp117893
         '()
         __tmp117891
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args113598_
        (apply make-instance __core-form::t _$args113598_)))
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
      (let ((__tmp117896 (list __core-form::t))
            (__tmp117894
             (let ((__tmp117895
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117895 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp117896
         '()
         __tmp117894
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args113595_
        (apply make-instance __core-expression::t _$args113595_)))
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
      (let ((__tmp117899 (list __core-form::t))
            (__tmp117897
             (let ((__tmp117898
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117898 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp117899
         '()
         __tmp117897
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args113592_
        (apply make-instance __core-special-form::t _$args113592_)))
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
      (let ((__tmp117902 (list __syntax::t))
            (__tmp117900
             (let ((__tmp117901
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117901 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp117902
         '()
         __tmp117900
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args113589_
        (apply make-instance __struct-info::t _$args113589_)))
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
      (let ((__tmp117905 (list __syntax::t))
            (__tmp117903
             (let ((__tmp117904
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117904 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp117905
         '()
         __tmp117903
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args113586_ (apply make-instance __feature::t _$args113586_)))
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
      (let ((__tmp117908 (list __context::t))
            (__tmp117906
             (let ((__tmp117907
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117907 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp117908
         '(id path import export)
         __tmp117906
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args113583_ (apply make-instance __module::t _$args113583_)))
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
      (let ((__tmp117910
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp117909 (let () (declare (not safe)) (make-hash-table-eq))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp117910 __tmp117909)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id113558_ _ctx113559_)
        (if _ctx113559_
            (let ((_id113561_
                   (let () (declare (not safe)) (__AST-e _id113558_))))
              (let _lp113563_ ((_ctx113565_ _ctx113559_))
                (let ((_$e113567_
                       (table-ref
                        (##structure-ref _ctx113565_ '4 __context::t '#f)
                        _id113561_
                        '#f)))
                  (if _$e113567_
                      (values _$e113567_)
                      (let ((_$e113570_
                             (##structure-ref
                              _ctx113565_
                              '3
                              __context::t
                              '#f)))
                        (if _$e113570_
                            (let ()
                              (declare (not safe))
                              (_lp113563_ _$e113570_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id113576_)
        (let ((_ctx113578_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id113576_ _ctx113578_))))
    (define __core-resolve
      (lambda _g117912_
        (let ((_g117911_ (let () (declare (not safe)) (##length _g117912_))))
          (cond ((let () (declare (not safe)) (##fx= _g117911_ 1))
                 (apply (lambda (_id113576_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id113576_)))
                        _g117912_))
                ((let () (declare (not safe)) (##fx= _g117911_ 2))
                 (apply (lambda (_id113580_ _ctx113581_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id113580_ _ctx113581_)))
                        _g117912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g117912_))))))
    (define __core-bound-id?__%
      (lambda (_id113541_ _is?113542_)
        (let ((_$e113544_
               (let () (declare (not safe)) (__core-resolve__0 _id113541_))))
          (if _$e113544_ (_is?113542_ _$e113544_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id113550_)
        (let ((_is?113552_ true))
          (declare (not safe))
          (__core-bound-id?__% _id113550_ _is?113552_))))
    (define __core-bound-id?
      (lambda _g117914_
        (let ((_g117913_ (let () (declare (not safe)) (##length _g117914_))))
          (cond ((let () (declare (not safe)) (##fx= _g117913_ 1))
                 (apply (lambda (_id113550_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id113550_)))
                        _g117914_))
                ((let () (declare (not safe)) (##fx= _g117913_ 2))
                 (apply (lambda (_id113554_ _is?113555_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id113554_ _is?113555_)))
                        _g117914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g117914_))))))
    (define __core-bind-runtime!__%
      (lambda (_id113524_ _eid113525_ _ctx113526_)
        (if _eid113525_
            (let ((__tmp117917
                   (##structure-ref _ctx113526_ '4 __context::t '#f))
                  (__tmp117916
                   (let () (declare (not safe)) (__AST-e _id113524_)))
                  (__tmp117915
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid113525_))))
              (declare (not safe))
              (table-set! __tmp117917 __tmp117916 __tmp117915))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id113531_ _eid113532_)
        (let ((_ctx113534_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id113531_ _eid113532_ _ctx113534_))))
    (define __core-bind-runtime!
      (lambda _g117919_
        (let ((_g117918_ (let () (declare (not safe)) (##length _g117919_))))
          (cond ((let () (declare (not safe)) (##fx= _g117918_ 2))
                 (apply (lambda (_id113531_ _eid113532_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id113531_ _eid113532_)))
                        _g117919_))
                ((let () (declare (not safe)) (##fx= _g117918_ 3))
                 (apply (lambda (_id113536_ _eid113537_ _ctx113538_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id113536_
                             _eid113537_
                             _ctx113538_)))
                        _g117919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g117919_))))))
    (define __core-bind-syntax!__%
      (lambda (_id113507_ _e113508_ _make113509_)
        (let ((__tmp117920
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e113508_
                      'gerbil/runtime/eval#__syntax::t))
                   _e113508_
                   (_make113509_ _e113508_ _id113507_))))
          (declare (not safe))
          (table-set! __*core* _id113507_ __tmp117920))))
    (define __core-bind-syntax!__0
      (lambda (_id113514_ _e113515_)
        (let ((_make113517_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id113514_ _e113515_ _make113517_))))
    (define __core-bind-syntax!
      (lambda _g117922_
        (let ((_g117921_ (let () (declare (not safe)) (##length _g117922_))))
          (cond ((let () (declare (not safe)) (##fx= _g117921_ 2))
                 (apply (lambda (_id113514_ _e113515_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id113514_ _e113515_)))
                        _g117922_))
                ((let () (declare (not safe)) (##fx= _g117921_ 3))
                 (apply (lambda (_id113519_ _e113520_ _make113521_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id113519_
                             _e113520_
                             _make113521_)))
                        _g117922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g117922_))))))
    (define __core-bind-macro!
      (lambda (_id113503_ _e113504_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id113503_ _e113504_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id113500_ _e113501_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id113500_ _e113501_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id113484_ _e113485_ _ctx113486_)
        (let ((__tmp117926 (##structure-ref _ctx113486_ '4 __context::t '#f))
              (__tmp117925 (let () (declare (not safe)) (__AST-e _id113484_)))
              (__tmp117923
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e113485_
                      'gerbil/runtime/eval#__syntax::t))
                   _e113485_
                   (let ((__tmp117924
                          (let () (declare (not safe)) (__AST-e _id113484_))))
                     (declare (not safe))
                     (##structure __syntax::t _e113485_ __tmp117924)))))
          (declare (not safe))
          (table-set! __tmp117926 __tmp117925 __tmp117923))))
    (define __core-bind-user-syntax!__0
      (lambda (_id113491_ _e113492_)
        (let ((_ctx113494_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id113491_ _e113492_ _ctx113494_))))
    (define __core-bind-user-syntax!
      (lambda _g117928_
        (let ((_g117927_ (let () (declare (not safe)) (##length _g117928_))))
          (cond ((let () (declare (not safe)) (##fx= _g117927_ 2))
                 (apply (lambda (_id113491_ _e113492_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id113491_
                             _e113492_)))
                        _g117928_))
                ((let () (declare (not safe)) (##fx= _g117927_ 3))
                 (apply (lambda (_id113496_ _e113497_ _ctx113498_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id113496_
                             _e113497_
                             _ctx113498_)))
                        _g117928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g117928_))))))
    (define make-__runtime-id__%
      (lambda (_id113465_ _ctx113466_)
        (let ((_id113468_ (let () (declare (not safe)) (__AST-e _id113465_))))
          (if (let () (declare (not safe)) (eq? _id113468_ '_))
              '#f
              (if (uninterned-symbol? _id113468_)
                  (gensym _id113468_)
                  (if (let () (declare (not safe)) (symbol? _id113468_))
                      (let ((_$e113470_
                             (##structure-ref
                              _ctx113466_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e113470_))
                            (gensym _id113468_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e113470_))
                                (let ((__tmp117929
                                       (##structure-ref
                                        _ctx113466_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp117929 '"#" _id113468_))
                                _id113468_)))
                      (error '"Illegal runtime identifier" _id113468_)))))))
    (define make-__runtime-id__0
      (lambda (_id113476_)
        (let ((_ctx113478_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id113476_ _ctx113478_))))
    (define make-__runtime-id
      (lambda _g117931_
        (let ((_g117930_ (let () (declare (not safe)) (##length _g117931_))))
          (cond ((let () (declare (not safe)) (##fx= _g117930_ 1))
                 (apply (lambda (_id113476_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id113476_)))
                        _g117931_))
                ((let () (declare (not safe)) (##fx= _g117930_ 2))
                 (apply (lambda (_id113480_ _ctx113481_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id113480_ _ctx113481_)))
                        _g117931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g117931_))))))
    (define make-__context-local__%
      (lambda (_super113454_)
        (let ((__tmp117932 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super113454_ __tmp117932))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super113460_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super113460_))))
    (define make-__context-local
      (lambda _g117934_
        (let ((_g117933_ (let () (declare (not safe)) (##length _g117934_))))
          (cond ((let () (declare (not safe)) (##fx= _g117933_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g117934_))
                ((let () (declare (not safe)) (##fx= _g117933_ 1))
                 (apply (lambda (_super113462_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super113462_)))
                        _g117934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g117934_))))))
    (define make-__context-module__%
      (lambda (_id113434_ _ns113435_ _path113436_ _super113437_)
        (let ((__tmp117935 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns113435_
           _super113437_
           __tmp117935
           _id113434_
           _path113436_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id113442_ _ns113443_ _path113444_)
        (let ((_super113446_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id113442_
           _ns113443_
           _path113444_
           _super113446_))))
    (define make-__context-module
      (lambda _g117937_
        (let ((_g117936_ (let () (declare (not safe)) (##length _g117937_))))
          (cond ((let () (declare (not safe)) (##fx= _g117936_ 3))
                 (apply (lambda (_id113442_ _ns113443_ _path113444_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id113442_
                             _ns113443_
                             _path113444_)))
                        _g117937_))
                ((let () (declare (not safe)) (##fx= _g117936_ 4))
                 (apply (lambda (_id113448_
                                 _ns113449_
                                 _path113450_
                                 _super113451_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id113448_
                             _ns113449_
                             _path113450_
                             _super113451_)))
                        _g117937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g117937_))))))
    (define __SRC__%
      (lambda (_e113417_ _src-stx113418_)
        (if (or (let () (declare (not safe)) (pair? _e113417_))
                (let () (declare (not safe)) (symbol? _e113417_)))
            (let ((__tmp117941
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx113418_
                          'gerbil#AST::t))
                       (let ((__tmp117942
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx113418_))))
                         (declare (not safe))
                         (__locat __tmp117942))
                       '#f)))
              (declare (not safe))
              (##make-source _e113417_ __tmp117941))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e113417_ 'gerbil#AST::t))
                (let ((__tmp117940
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e113417_ '1 AST::t '#f)))
                      (__tmp117938
                       (let ((__tmp117939
                              (let ()
                                (declare (not safe))
                                (__AST-source _e113417_))))
                         (declare (not safe))
                         (__locat __tmp117939))))
                  (declare (not safe))
                  (##make-source __tmp117940 __tmp117938))
                (error '"BUG! Cannot sourcify object" _e113417_)))))
    (define __SRC__0
      (lambda (_e113426_)
        (let ((_src-stx113428_ '#f))
          (declare (not safe))
          (__SRC__% _e113426_ _src-stx113428_))))
    (define __SRC
      (lambda _g117944_
        (let ((_g117943_ (let () (declare (not safe)) (##length _g117944_))))
          (cond ((let () (declare (not safe)) (##fx= _g117943_ 1))
                 (apply (lambda (_e113426_)
                          (let () (declare (not safe)) (__SRC__0 _e113426_)))
                        _g117944_))
                ((let () (declare (not safe)) (##fx= _g117943_ 2))
                 (apply (lambda (_e113430_ _src-stx113431_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e113430_ _src-stx113431_)))
                        _g117944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g117944_))))))
    (define __locat
      (lambda (_loc113414_)
        (if (let () (declare (not safe)) (##locat? _loc113414_))
            _loc113414_
            '#f)))
    (define __check-values
      (lambda (_obj113409_ _k113410_)
        (let ((_count113412_
               (if (let () (declare (not safe)) (##values? _obj113409_))
                   (let () (declare (not safe)) (##vector-length _obj113409_))
                   '1)))
          (if (fx= _count113412_ _k113410_)
              '#!void
              (error (if (fx< _count113412_ _k113410_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj113409_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj113409_))
                         _obj113409_)
                     _k113410_)))))
    (define __compile
      (lambda (_stx113379_)
        (let* ((_$e113381_ _stx113379_)
               (_$E113383113389_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113381_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113381_))
              (let* ((_$tgt113384113392_
                      (let () (declare (not safe)) (__AST-e _$e113381_)))
                     (_$hd113385113395_
                      (let () (declare (not safe)) (##car _$tgt113384113392_)))
                     (_$tl113386113398_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113384113392_))))
                (let* ((_form113402_ _$hd113385113395_)
                       (_$e113404_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form113402_))))
                  (if _$e113404_
                      ((lambda (_bind113407_)
                         ((##structure-ref _bind113407_ '1 __syntax::t '#f)
                          _stx113379_))
                       _$e113404_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx113379_
                         _form113402_)))))
              (let () (declare (not safe)) (_$E113383113389_))))))
    (define __compile-error__%
      (lambda (_stx113366_ _detail113367_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx113366_
           _detail113367_))))
    (define __compile-error__0
      (lambda (_stx113372_)
        (let ((_detail113374_ '#f))
          (declare (not safe))
          (__compile-error__% _stx113372_ _detail113374_))))
    (define __compile-error
      (lambda _g117946_
        (let ((_g117945_ (let () (declare (not safe)) (##length _g117946_))))
          (cond ((let () (declare (not safe)) (##fx= _g117945_ 1))
                 (apply (lambda (_stx113372_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx113372_)))
                        _g117946_))
                ((let () (declare (not safe)) (##fx= _g117945_ 2))
                 (apply (lambda (_stx113376_ _detail113377_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx113376_ _detail113377_)))
                        _g117946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g117946_))))))
    (define __compile-ignore%
      (lambda (_stx113363_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx113363_))))
    (define __compile-begin%
      (lambda (_stx113338_)
        (let* ((_$e113340_ _stx113338_)
               (_$E113342113348_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113340_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113340_))
              (let* ((_$tgt113343113351_
                      (let () (declare (not safe)) (__AST-e _$e113340_)))
                     (_$hd113344113354_
                      (let () (declare (not safe)) (##car _$tgt113343113351_)))
                     (_$tl113345113357_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113343113351_))))
                (let* ((_body113361_ _$tl113345113357_)
                       (__tmp117947
                        (let ((__tmp117948 (map __compile _body113361_)))
                          (declare (not safe))
                          (cons 'begin __tmp117948))))
                  (declare (not safe))
                  (__SRC__% __tmp117947 _stx113338_)))
              (let () (declare (not safe)) (_$E113342113348_))))))
    (define __compile-begin-foreign%
      (lambda (_stx113313_)
        (let* ((_$e113315_ _stx113313_)
               (_$E113317113323_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113315_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113315_))
              (let* ((_$tgt113318113326_
                      (let () (declare (not safe)) (__AST-e _$e113315_)))
                     (_$hd113319113329_
                      (let () (declare (not safe)) (##car _$tgt113318113326_)))
                     (_$tl113320113332_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113318113326_))))
                (let* ((_body113336_ _$tl113320113332_)
                       (__tmp117949
                        (let ((__tmp117950
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body113336_))))
                          (declare (not safe))
                          (cons 'begin __tmp117950))))
                  (declare (not safe))
                  (__SRC__% __tmp117949 _stx113313_)))
              (let () (declare (not safe)) (_$E113317113323_))))))
    (define __compile-import%
      (lambda (_stx113288_)
        (let* ((_$e113290_ _stx113288_)
               (_$E113292113298_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113290_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113290_))
              (let* ((_$tgt113293113301_
                      (let () (declare (not safe)) (__AST-e _$e113290_)))
                     (_$hd113294113304_
                      (let () (declare (not safe)) (##car _$tgt113293113301_)))
                     (_$tl113295113307_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113293113301_))))
                (let* ((_body113311_ _$tl113295113307_)
                       (__tmp117951
                        (let ((__tmp117952
                               (let ((__tmp117953
                                      (let ((__tmp117954
                                             (let ()
                                               (declare (not safe))
                                               (cons _body113311_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp117954))))
                                 (declare (not safe))
                                 (cons __tmp117953 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp117952))))
                  (declare (not safe))
                  (__SRC__% __tmp117951 _stx113288_)))
              (let () (declare (not safe)) (_$E113292113298_))))))
    (define __compile-begin-annotation%
      (lambda (_stx113235_)
        (let* ((_$e113237_ _stx113235_)
               (_$E113239113251_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113237_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113237_))
              (let* ((_$tgt113240113254_
                      (let () (declare (not safe)) (__AST-e _$e113237_)))
                     (_$hd113241113257_
                      (let () (declare (not safe)) (##car _$tgt113240113254_)))
                     (_$tl113242113260_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113240113254_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl113242113260_))
                    (let* ((_$tgt113243113264_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl113242113260_)))
                           (_$hd113244113267_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt113243113264_)))
                           (_$tl113245113270_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt113243113264_))))
                      (let ((_ann113274_ _$hd113244113267_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl113245113270_))
                            (let* ((_$tgt113246113276_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl113245113270_)))
                                   (_$hd113247113279_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt113246113276_)))
                                   (_$tl113248113282_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt113246113276_))))
                              (let ((_expr113286_ _$hd113247113279_))
                                (if (let ((__tmp117955
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl113248113282_))))
                                      (declare (not safe))
                                      (equal? __tmp117955 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr113286_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E113239113251_)))))
                            (let () (declare (not safe)) (_$E113239113251_)))))
                    (let () (declare (not safe)) (_$E113239113251_))))
              (let () (declare (not safe)) (_$E113239113251_))))))
    (define __compile-define-values%
      (lambda (_stx113126_)
        (let* ((_$e113128_ _stx113126_)
               (_$E113130113142_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113128_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113128_))
              (let* ((_$tgt113131113145_
                      (let () (declare (not safe)) (__AST-e _$e113128_)))
                     (_$hd113132113148_
                      (let () (declare (not safe)) (##car _$tgt113131113145_)))
                     (_$tl113133113151_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113131113145_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl113133113151_))
                    (let* ((_$tgt113134113155_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl113133113151_)))
                           (_$hd113135113158_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt113134113155_)))
                           (_$tl113136113161_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt113134113155_))))
                      (let ((_hd113165_ _$hd113135113158_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl113136113161_))
                            (let* ((_$tgt113137113167_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl113136113161_)))
                                   (_$hd113138113170_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt113137113167_)))
                                   (_$tl113139113173_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt113137113167_))))
                              (let ((_expr113177_ _$hd113138113170_))
                                (if (let ((__tmp117988
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl113139113173_))))
                                      (declare (not safe))
                                      (equal? __tmp117988 '()))
                                    (let* ((_$e113179_ _hd113165_)
                                           (_$E113181113222_
                                            (lambda ()
                                              (let ((_$E113182113207_
                                                     (lambda ()
                                                       (let* ((_$E113183113194_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e113179_))))
                      (_ids113197_ _hd113165_)
                      (_len113199_ (length _ids113197_))
                      (_tmp113201_
                       (let ((__tmp117956 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp117956))))
                 (let ((__tmp117957
                        (let ((__tmp117958
                               (let ((__tmp117975
                                      (let ((__tmp117976
                                             (let ((__tmp117977
                                                    (let ((__tmp117978
                                                           (let ((__tmp117979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr113177_))))
                     (declare (not safe))
                     (cons __tmp117979 '()))))
              (declare (not safe))
              (cons _tmp113201_ __tmp117978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp117977))))
                                        (declare (not safe))
                                        (__SRC__% __tmp117976 _stx113126_)))
                                     (__tmp117959
                                      (let ((__tmp117971
                                             (let ((__tmp117972
                                                    (let ((__tmp117973
                                                           (let ((__tmp117974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len113199_ '()))))
                     (declare (not safe))
                     (cons _tmp113201_ __tmp117974))))
              (declare (not safe))
              (cons '__check-values __tmp117973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp117972
                                                _stx113126_)))
                                            (__tmp117960
                                             (let ((__tmp117961
                                                    (let ((__tmp117963
                                                           (lambda (_id113204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k113205_)
                     (if (let () (declare (not safe)) (__AST-e _id113204_))
                         (let ((__tmp117964
                                (let ((__tmp117965
                                       (let ((__tmp117970
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id113204_)))
                                             (__tmp117966
                                              (let ((__tmp117967
                                                     (let ((__tmp117968
                                                            (let ((__tmp117969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k113205_ '()))))
                      (declare (not safe))
                      (cons _tmp113201_ __tmp117969))))
               (declare (not safe))
               (cons '##vector-ref __tmp117968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp117967 '()))))
                                         (declare (not safe))
                                         (cons __tmp117970 __tmp117966))))
                                  (declare (not safe))
                                  (cons 'define __tmp117965))))
                           (declare (not safe))
                           (__SRC__% __tmp117964 _stx113126_))
                         '#f)))
                  (__tmp117962
                   (let () (declare (not safe)) (iota _len113199_))))
              (declare (not safe))
              (filter-map2 __tmp117963 _ids113197_ __tmp117962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp117961))))
                                        (declare (not safe))
                                        (cons __tmp117971 __tmp117960))))
                                 (declare (not safe))
                                 (cons __tmp117975 __tmp117959))))
                          (declare (not safe))
                          (cons 'begin __tmp117958))))
                   (declare (not safe))
                   (__SRC__% __tmp117957 _stx113126_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e113179_))
                                                    (let* ((_$tgt113184113210_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e113179_)))
                                                           (_$hd113185113213_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt113184113210_)))
                                                           (_$tl113186113216_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt113184113210_))))
                                                      (let ((_id113220_
                                                             _$hd113185113213_))
                                                        (if (let ((__tmp117985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl113186113216_))))
                      (declare (not safe))
                      (equal? __tmp117985 '()))
                    (let ((__tmp117980
                           (let ((__tmp117981
                                  (let ((__tmp117984
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id113220_)))
                                        (__tmp117982
                                         (let ((__tmp117983
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr113177_))))
                                           (declare (not safe))
                                           (cons __tmp117983 '()))))
                                    (declare (not safe))
                                    (cons __tmp117984 __tmp117982))))
                             (declare (not safe))
                             (cons 'define __tmp117981))))
                      (declare (not safe))
                      (__SRC__% __tmp117980 _stx113126_))
                    (let () (declare (not safe)) (_$E113182113207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E113182113207_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e113179_))
                                          (let* ((_$tgt113187113225_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e113179_)))
                                                 (_$hd113188113228_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt113187113225_)))
                                                 (_$tl113189113231_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt113187113225_))))
                                            (if (let ((__tmp117987
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd113188113228_))))
                                                  (declare (not safe))
                                                  (equal? __tmp117987 '#f))
                                                (if (let ((__tmp117986
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl113189113231_))))
                                                      (declare (not safe))
                                                      (equal? __tmp117986 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr113177_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E113181113222_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E113181113222_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E113181113222_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E113130113142_)))))
                            (let () (declare (not safe)) (_$E113130113142_)))))
                    (let () (declare (not safe)) (_$E113130113142_))))
              (let () (declare (not safe)) (_$E113130113142_))))))
    (define __compile-head-id
      (lambda (_e113124_)
        (let ((__tmp117989
               (if (let () (declare (not safe)) (__AST-e _e113124_))
                   _e113124_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp117989))))
    (define __compile-lambda-head
      (lambda (_hd113081_)
        (let _recur113083_ ((_rest113085_ _hd113081_))
          (let* ((_$e113087_ _rest113085_)
                 (_$E113089113107_
                  (lambda ()
                    (let ((_$E113090113104_
                           (lambda ()
                             (let* ((_$E113091113099_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e113087_))))
                                    (_tail113102_ _$e113087_))
                               (declare (not safe))
                               (__compile-head-id _tail113102_)))))
                      (if (let ((__tmp117990
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e113087_))))
                            (declare (not safe))
                            (equal? __tmp117990 '()))
                          '()
                          (let () (declare (not safe)) (_$E113090113104_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e113087_))
                (let* ((_$tgt113092113110_
                        (let () (declare (not safe)) (__AST-e _$e113087_)))
                       (_$hd113093113113_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt113092113110_)))
                       (_$tl113094113116_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt113092113110_))))
                  (let* ((_hd113120_ _$hd113093113113_)
                         (_rest113122_ _$tl113094113116_))
                    (let ((__tmp117992
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd113120_)))
                          (__tmp117991
                           (let ()
                             (declare (not safe))
                             (_recur113083_ _rest113122_))))
                      (declare (not safe))
                      (cons __tmp117992 __tmp117991))))
                (let () (declare (not safe)) (_$E113089113107_)))))))
    (define __compile-lambda%
      (lambda (_stx113028_)
        (let* ((_$e113030_ _stx113028_)
               (_$E113032113044_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e113030_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e113030_))
              (let* ((_$tgt113033113047_
                      (let () (declare (not safe)) (__AST-e _$e113030_)))
                     (_$hd113034113050_
                      (let () (declare (not safe)) (##car _$tgt113033113047_)))
                     (_$tl113035113053_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt113033113047_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl113035113053_))
                    (let* ((_$tgt113036113057_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl113035113053_)))
                           (_$hd113037113060_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt113036113057_)))
                           (_$tl113038113063_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt113036113057_))))
                      (let ((_hd113067_ _$hd113037113060_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl113038113063_))
                            (let* ((_$tgt113039113069_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl113038113063_)))
                                   (_$hd113040113072_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt113039113069_)))
                                   (_$tl113041113075_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt113039113069_))))
                              (let ((_body113079_ _$hd113040113072_))
                                (if (let ((__tmp117998
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl113041113075_))))
                                      (declare (not safe))
                                      (equal? __tmp117998 '()))
                                    (let ((__tmp117993
                                           (let ((__tmp117994
                                                  (let ((__tmp117997
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd113067_)))
                                                        (__tmp117995
                                                         (let ((__tmp117996
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body113079_))))
                   (declare (not safe))
                   (cons __tmp117996 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp117997
                                                          __tmp117995))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp117994))))
                                      (declare (not safe))
                                      (__SRC__% __tmp117993 _stx113028_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E113032113044_)))))
                            (let () (declare (not safe)) (_$E113032113044_)))))
                    (let () (declare (not safe)) (_$E113032113044_))))
              (let () (declare (not safe)) (_$E113032113044_))))))
    (define __compile-case-lambda%
      (lambda (_stx112820_)
        (letrec ((_variadic?112822_
                  (lambda (_hd112993_)
                    (let* ((_$e112995_ _hd112993_)
                           (_$E112997113013_
                            (lambda ()
                              (let ((_$E112998113010_
                                     (lambda ()
                                       (let ((_$E112999113007_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e112995_)))))
                                         '#t))))
                                (if (let ((__tmp117999
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e112995_))))
                                      (declare (not safe))
                                      (equal? __tmp117999 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E112998113010_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e112995_))
                          (let* ((_$tgt113000113016_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e112995_)))
                                 (_$hd113001113019_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt113000113016_)))
                                 (_$tl113002113022_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt113000113016_))))
                            (let ((_rest113026_ _$tl113002113022_))
                              (declare (not safe))
                              (_variadic?112822_ _rest113026_)))
                          (let () (declare (not safe)) (_$E112997113013_))))))
                 (_arity112823_
                  (lambda (_hd112958_)
                    (let _lp112960_ ((_rest112962_ _hd112958_) (_k112963_ '0))
                      (let* ((_$e112965_ _rest112962_)
                             (_$E112967112978_
                              (lambda ()
                                (let ((_$E112968112975_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e112965_)))))
                                  _k112963_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e112965_))
                            (let* ((_$tgt112969112981_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e112965_)))
                                   (_$hd112970112984_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt112969112981_)))
                                   (_$tl112971112987_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt112969112981_))))
                              (let* ((_rest112991_ _$tl112971112987_)
                                     (__tmp118000
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k112963_ '1))))
                                (declare (not safe))
                                (_lp112960_ _rest112991_ __tmp118000)))
                            (let ()
                              (declare (not safe))
                              (_$E112967112978_)))))))
                 (_generate112824_
                  (lambda (_rest112885_ _args112886_ _len112887_)
                    (let* ((_$e112889_ _rest112885_)
                           (_$E112891112902_
                            (lambda ()
                              (let* ((_$E112892112899_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e112889_))))
                                     (__tmp118001
                                      (let ((__tmp118002
                                             (let ((__tmp118003
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args112886_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp118003))))
                                        (declare (not safe))
                                        (cons 'error __tmp118002))))
                                (declare (not safe))
                                (__SRC__% __tmp118001 _stx112820_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e112889_))
                          (let* ((_$tgt112893112905_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e112889_)))
                                 (_$hd112894112908_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt112893112905_)))
                                 (_$tl112895112911_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt112893112905_))))
                            (let* ((_clause112915_ _$hd112894112908_)
                                   (_rest112917_ _$tl112895112911_)
                                   (_$e112919_ _clause112915_)
                                   (_$E112921112930_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e112919_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e112919_))
                                  (let* ((_$tgt112922112933_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e112919_)))
                                         (_$hd112923112936_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt112922112933_)))
                                         (_$tl112924112939_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt112922112933_))))
                                    (let ((_hd112943_ _$hd112923112936_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl112924112939_))
                                          (let* ((_$tgt112925112945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl112924112939_)))
                                                 (_$hd112926112948_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt112925112945_)))
                                                 (_$tl112927112951_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt112925112945_))))
                                            (if (let ((__tmp118018
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl112927112951_))))
                                                  (declare (not safe))
                                                  (equal? __tmp118018 '()))
                                                (let ((_clen112955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity112823_
                                                          _hd112943_)))
                                                      (_cmp112956_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?112822_
                                                              _hd112943_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp118004
                                                         (let ((__tmp118005
                                                                (let ((__tmp118015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp118016
                                      (let ((__tmp118017
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen112955_ '()))))
                                        (declare (not safe))
                                        (cons _len112887_ __tmp118017))))
                                 (declare (not safe))
                                 (cons _cmp112956_ __tmp118016)))
                              (__tmp118006
                               (let ((__tmp118009
                                      (let ((__tmp118010
                                             (let ((__tmp118011
                                                    (let ((__tmp118013
                                                           (let ((__tmp118014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause112915_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp118014)))
                  (__tmp118012
                   (let () (declare (not safe)) (cons _args112886_ '()))))
              (declare (not safe))
              (cons __tmp118013 __tmp118012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp118011))))
                                        (declare (not safe))
                                        (__SRC__% __tmp118010 _stx112820_)))
                                     (__tmp118007
                                      (let ((__tmp118008
                                             (let ()
                                               (declare (not safe))
                                               (_generate112824_
                                                _rest112917_
                                                _args112886_
                                                _len112887_))))
                                        (declare (not safe))
                                        (cons __tmp118008 '()))))
                                 (declare (not safe))
                                 (cons __tmp118009 __tmp118007))))
                          (declare (not safe))
                          (cons __tmp118015 __tmp118006))))
                   (declare (not safe))
                   (cons 'if __tmp118005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp118004
                                                     _stx112820_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E112921112930_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E112921112930_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E112921112930_)))))
                          (let () (declare (not safe)) (_$E112891112902_)))))))
          (let* ((_$e112826_ _stx112820_)
                 (_$E112828112860_
                  (lambda ()
                    (let ((_$E112829112842_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e112826_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e112826_))
                          (let* ((_$tgt112830112845_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e112826_)))
                                 (_$hd112831112848_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt112830112845_)))
                                 (_$tl112832112851_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt112830112845_))))
                            (let ((_clauses112855_ _$tl112832112851_))
                              (let ((_args112857_
                                     (let ((__tmp118019 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp118019 _stx112820_)))
                                    (_len112858_
                                     (let ((__tmp118020 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp118020 _stx112820_))))
                                (let ((__tmp118021
                                       (let ((__tmp118022
                                              (let ((__tmp118023
                                                     (let ((__tmp118024
                                                            (let ((__tmp118025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp118026
                                  (let ((__tmp118029
                                         (let ((__tmp118030
                                                (let ((__tmp118031
                                                       (let ((__tmp118032
                                                              (let ((__tmp118033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp118034
                                    (let ()
                                      (declare (not safe))
                                      (cons _args112857_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp118034))))
                        (declare (not safe))
                        (__SRC__% __tmp118033 _stx112820_))))
                 (declare (not safe))
                 (cons __tmp118032 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len112858_
                                                        __tmp118031))))
                                           (declare (not safe))
                                           (cons __tmp118030 '())))
                                        (__tmp118027
                                         (let ((__tmp118028
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate112824_
                                                   _clauses112855_
                                                   _args112857_
                                                   _len112858_))))
                                           (declare (not safe))
                                           (cons __tmp118028 '()))))
                                    (declare (not safe))
                                    (cons __tmp118029 __tmp118027))))
                             (declare (not safe))
                             (cons 'let __tmp118026))))
                      (declare (not safe))
                      (__SRC__% __tmp118025 _stx112820_))))
               (declare (not safe))
               (cons __tmp118024 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args112857_
                                                      __tmp118023))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp118022))))
                                  (declare (not safe))
                                  (__SRC__% __tmp118021 _stx112820_)))))
                          (let () (declare (not safe)) (_$E112829112842_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e112826_))
                (let* ((_$tgt112833112863_
                        (let () (declare (not safe)) (__AST-e _$e112826_)))
                       (_$hd112834112866_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt112833112863_)))
                       (_$tl112835112869_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt112833112863_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl112835112869_))
                      (let* ((_$tgt112836112873_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl112835112869_)))
                             (_$hd112837112876_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt112836112873_)))
                             (_$tl112838112879_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt112836112873_))))
                        (let ((_clause112883_ _$hd112837112876_))
                          (if (let ((__tmp118036
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl112838112879_))))
                                (declare (not safe))
                                (equal? __tmp118036 '()))
                              (let ((__tmp118035
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause112883_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp118035))
                              (let ()
                                (declare (not safe))
                                (_$E112828112860_)))))
                      (let () (declare (not safe)) (_$E112828112860_))))
                (let () (declare (not safe)) (_$E112828112860_)))))))
    (define __compile-let-form
      (lambda (_stx112589_ _compile-simple112590_ _compile-values112591_)
        (letrec ((_simple-bind?112593_
                  (lambda (_hd112778_)
                    (let* ((_hd112779112789_ _hd112778_)
                           (_else112782112797_ (lambda () '#f)))
                      (let ((_K112785112810_ (lambda (_id112808_) '#t))
                            (_K112784112802_ (lambda () '#t)))
                        (let ((_try-match112781112805_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd112779112789_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K112784112802_))
                                     (let ()
                                       (declare (not safe))
                                       (_else112782112797_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd112779112789_))
                              (let ((_tl112787112815_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd112779112789_)))
                                    (_hd112786112813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd112779112789_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl112787112815_))
                                    (let ((_id112818_ _hd112786112813_))
                                      (declare (not safe))
                                      (_K112785112810_ _id112818_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match112781112805_))))
                              (let ()
                                (declare (not safe))
                                (_try-match112781112805_))))))))
                 (_car-e112594_
                  (lambda (_hd112776_)
                    (if (let () (declare (not safe)) (pair? _hd112776_))
                        (car _hd112776_)
                        _hd112776_))))
          (let* ((_$e112596_ _stx112589_)
                 (_$E112598112741_
                  (lambda ()
                    (let ((_$E112599112621_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e112596_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e112596_))
                          (let* ((_$tgt112600112624_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e112596_)))
                                 (_$hd112601112627_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt112600112624_)))
                                 (_$tl112602112630_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt112600112624_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl112602112630_))
                                (let* ((_$tgt112603112634_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl112602112630_)))
                                       (_$hd112604112637_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt112603112634_)))
                                       (_$tl112605112640_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt112603112634_))))
                                  (let ((_hd112644_ _$hd112604112637_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl112605112640_))
                                        (let* ((_$tgt112606112646_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl112605112640_)))
                                               (_$hd112607112649_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt112606112646_)))
                                               (_$tl112608112652_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt112606112646_))))
                                          (let ((_body112656_
                                                 _$hd112607112649_))
                                            (if (let ((__tmp118039
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl112608112652_))))
                                                  (declare (not safe))
                                                  (equal? __tmp118039 '()))
                                                (let* ((_hd-ids112696_
                                                        (map (lambda (_bind112658_)
                                                               (let* ((_$e112660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind112658_)
                              (_$E112662112671_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e112660_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e112660_))
                             (let* ((_$tgt112663112674_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e112660_)))
                                    (_$hd112664112677_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt112663112674_)))
                                    (_$tl112665112680_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt112663112674_))))
                               (let ((_ids112684_ _$hd112664112677_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl112665112680_))
                                     (let* ((_$tgt112666112686_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl112665112680_)))
                                            (_$hd112667112689_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt112666112686_)))
                                            (_$tl112668112692_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt112666112686_))))
                                       (if (let ((__tmp118037
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl112668112692_))))
                                             (declare (not safe))
                                             (equal? __tmp118037 '()))
                                           _ids112684_
                                           (let ()
                                             (declare (not safe))
                                             (_$E112662112671_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E112662112671_)))))
                             (let ()
                               (declare (not safe))
                               (_$E112662112671_)))))
                     _hd112644_))
               (_exprs112736_
                (map (lambda (_bind112698_)
                       (let* ((_$e112700_ _bind112698_)
                              (_$E112702112711_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e112700_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e112700_))
                             (let* ((_$tgt112703112714_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e112700_)))
                                    (_$hd112704112717_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt112703112714_)))
                                    (_$tl112705112720_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt112703112714_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl112705112720_))
                                   (let* ((_$tgt112706112724_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl112705112720_)))
                                          (_$hd112707112727_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt112706112724_)))
                                          (_$tl112708112730_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt112706112724_))))
                                     (let ((_expr112734_ _$hd112707112727_))
                                       (if (let ((__tmp118038
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl112708112730_))))
                                             (declare (not safe))
                                             (equal? __tmp118038 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr112734_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E112702112711_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E112702112711_))))
                             (let ()
                               (declare (not safe))
                               (_$E112702112711_)))))
                     _hd112644_))
               (_body112738_
                (let () (declare (not safe)) (__compile _body112656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?112593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids112696_))
              (_compile-simple112590_
               (map _car-e112594_ _hd-ids112696_)
               _exprs112736_
               _body112738_)
              (_compile-values112591_
               _hd-ids112696_
               _exprs112736_
               _body112738_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E112599112621_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E112599112621_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E112599112621_))))
                          (let () (declare (not safe)) (_$E112599112621_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e112596_))
                (let* ((_$tgt112609112744_
                        (let () (declare (not safe)) (__AST-e _$e112596_)))
                       (_$hd112610112747_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt112609112744_)))
                       (_$tl112611112750_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt112609112744_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl112611112750_))
                      (let* ((_$tgt112612112754_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl112611112750_)))
                             (_$hd112613112757_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt112612112754_)))
                             (_$tl112614112760_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt112612112754_))))
                        (if (let ((__tmp118041
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd112613112757_))))
                              (declare (not safe))
                              (equal? __tmp118041 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl112614112760_))
                                (let* ((_$tgt112615112764_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl112614112760_)))
                                       (_$hd112616112767_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt112615112764_)))
                                       (_$tl112617112770_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt112615112764_))))
                                  (let ((_body112774_ _$hd112616112767_))
                                    (if (let ((__tmp118040
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl112617112770_))))
                                          (declare (not safe))
                                          (equal? __tmp118040 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body112774_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E112598112741_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E112598112741_)))
                            (let () (declare (not safe)) (_$E112598112741_))))
                      (let () (declare (not safe)) (_$E112598112741_))))
                (let () (declare (not safe)) (_$E112598112741_)))))))
    (define __compile-let-values%
      (lambda (_stx112404_)
        (letrec ((_compile-simple112406_
                  (lambda (_hd-ids112585_ _exprs112586_ _body112587_)
                    (let ((__tmp118042
                           (let ((__tmp118043
                                  (let ((__tmp118045
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids112585_)
                                              _exprs112586_))
                                        (__tmp118044
                                         (let ()
                                           (declare (not safe))
                                           (cons _body112587_ '()))))
                                    (declare (not safe))
                                    (cons __tmp118045 __tmp118044))))
                             (declare (not safe))
                             (cons 'let __tmp118043))))
                      (declare (not safe))
                      (__SRC__% __tmp118042 _stx112404_))))
                 (_compile-values112407_
                  (lambda (_hd-ids112503_ _exprs112504_ _body112505_)
                    (let _lp112507_ ((_rest112509_ _hd-ids112503_)
                                     (_exprs112510_ _exprs112504_)
                                     (_bind112511_ '())
                                     (_post112512_ '()))
                      (let* ((_rest112513112527_ _rest112509_)
                             (_else112516112535_
                              (lambda ()
                                (let ((__tmp118046
                                       (let ((__tmp118047
                                              (let ((__tmp118050
                                                     (reverse _bind112511_))
                                                    (__tmp118048
                                                     (let ((__tmp118049
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post112408_
                                                               _post112512_
                                                               _body112505_))))
                                                       (declare (not safe))
                                                       (cons __tmp118049
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp118050
                                                      __tmp118048))))
                                         (declare (not safe))
                                         (cons 'let __tmp118047))))
                                  (declare (not safe))
                                  (__SRC__% __tmp118046 _stx112404_)))))
                        (let ((_K112521112568_
                               (lambda (_rest112565_ _id112566_)
                                 (let ((__tmp118056 (cdr _exprs112510_))
                                       (__tmp118051
                                        (let ((__tmp118052
                                               (let ((__tmp118055
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id112566_)))
                                                     (__tmp118053
                                                      (let ((__tmp118054
                                                             (car _exprs112510_)))
                                                        (declare (not safe))
                                                        (cons __tmp118054
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp118055
                                                       __tmp118053))))
                                          (declare (not safe))
                                          (cons __tmp118052 _bind112511_))))
                                   (declare (not safe))
                                   (_lp112507_
                                    _rest112565_
                                    __tmp118056
                                    __tmp118051
                                    _post112512_))))
                              (_K112518112550_
                               (lambda (_rest112539_ _hd112540_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd112540_))
                                     (let ((__tmp118077 (cdr _exprs112510_))
                                           (__tmp118070
                                            (let ((__tmp118071
                                                   (let ((__tmp118076
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd112540_)))
                                                         (__tmp118072
                                                          (let ((__tmp118073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118074
                                (let ((__tmp118075 (car _exprs112510_)))
                                  (declare (not safe))
                                  (cons __tmp118075 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp118074))))
                    (declare (not safe))
                    (cons __tmp118073 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118076
                                                           __tmp118072))))
                                              (declare (not safe))
                                              (cons __tmp118071
                                                    _bind112511_))))
                                       (declare (not safe))
                                       (_lp112507_
                                        _rest112539_
                                        __tmp118077
                                        __tmp118070
                                        _post112512_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd112540_))
                                         (let* ((_len112542_
                                                 (length _hd112540_))
                                                (_tmp112544_
                                                 (let ((__tmp118057 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp118057))))
                                           (let ((__tmp118069
                                                  (cdr _exprs112510_))
                                                 (__tmp118065
                                                  (let ((__tmp118066
                                                         (let ((__tmp118067
                                                                (let ((__tmp118068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs112510_)))
                          (declare (not safe))
                          (cons __tmp118068 '()))))
                   (declare (not safe))
                   (cons _tmp112544_ __tmp118067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp118066
                                                          _bind112511_)))
                                                 (__tmp118058
                                                  (let ((__tmp118059
                                                         (let ((__tmp118060
                                                                (let ((__tmp118061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp118063
                                      (lambda (_id112547_ _k112548_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id112547_))
                                            (let ((__tmp118064
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id112547_))))
                                              (declare (not safe))
                                              (cons __tmp118064 _k112548_))
                                            '#f)))
                                     (__tmp118062
                                      (let ()
                                        (declare (not safe))
                                        (iota _len112542_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp118063
                                  _hd112540_
                                  __tmp118062))))
                          (declare (not safe))
                          (cons _len112542_ __tmp118061))))
                   (declare (not safe))
                   (cons _tmp112544_ __tmp118060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp118059
                                                          _post112512_))))
                                             (declare (not safe))
                                             (_lp112507_
                                              _rest112539_
                                              __tmp118069
                                              __tmp118065
                                              __tmp118058)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx112404_
                                            _hd112540_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112513112527_))
                              (let ((_tl112523112573_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112513112527_)))
                                    (_hd112522112571_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112513112527_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd112522112571_))
                                    (let ((_tl112525112578_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd112522112571_)))
                                          (_hd112524112576_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd112522112571_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl112525112578_))
                                          (let ((_id112581_ _hd112524112576_)
                                                (_rest112583_
                                                 _tl112523112573_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112521112568_
                                               _rest112583_
                                               _id112581_)))
                                          (let ((_hd112558_ _hd112522112571_)
                                                (_rest112560_
                                                 _tl112523112573_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112518112550_
                                               _rest112560_
                                               _hd112558_)))))
                                    (let ((_hd112558_ _hd112522112571_)
                                          (_rest112560_ _tl112523112573_))
                                      (let ()
                                        (declare (not safe))
                                        (_K112518112550_
                                         _rest112560_
                                         _hd112558_)))))
                              (let ()
                                (declare (not safe))
                                (_else112516112535_))))))))
                 (_compile-post112408_
                  (lambda (_post112410_ _body112411_)
                    (let _lp112413_ ((_rest112415_ _post112410_)
                                     (_check112416_ '())
                                     (_bind112417_ '()))
                      (let* ((_rest112418112430_ _rest112415_)
                             (_else112420112438_
                              (lambda ()
                                (let ((__tmp118078
                                       (let ((__tmp118079
                                              (let ((__tmp118080
                                                     (let ((__tmp118081
                                                            (let ((__tmp118082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp118083
                                  (let ((__tmp118084
                                         (let ()
                                           (declare (not safe))
                                           (cons _body112411_ '()))))
                                    (declare (not safe))
                                    (cons _bind112417_ __tmp118084))))
                             (declare (not safe))
                             (cons 'let __tmp118083))))
                      (declare (not safe))
                      (__SRC__% __tmp118082 _stx112404_))))
               (declare (not safe))
               (cons __tmp118081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp118080
                                                        _check112416_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp118079))))
                                  (declare (not safe))
                                  (__SRC__% __tmp118078 _stx112404_))))
                             (_K112422112477_
                              (lambda (_rest112441_
                                       _init112442_
                                       _len112443_
                                       _tmp112444_)
                                (let ((__tmp118092
                                       (let ((__tmp118093
                                              (let ((__tmp118094
                                                     (let ((__tmp118095
                                                            (let ((__tmp118096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len112443_ '()))))
                      (declare (not safe))
                      (cons _tmp112444_ __tmp118096))))
               (declare (not safe))
               (cons '__check-values __tmp118095))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp118094
                                                 _stx112404_))))
                                         (declare (not safe))
                                         (cons __tmp118093 _check112416_)))
                                      (__tmp118085
                                       (let ((__tmp118086
                                              (lambda (_hd112446_ _r112447_)
                                                (let* ((_hd112448112455_
                                                        _hd112446_)
                                                       (_E112450112459_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd112448112455_)))
               (_K112451112465_
                (lambda (_k112462_ _id112463_)
                  (let ((__tmp118087
                         (let ((__tmp118088
                                (let ((__tmp118089
                                       (let ((__tmp118090
                                              (let ((__tmp118091
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k112462_ '()))))
                                                (declare (not safe))
                                                (cons _tmp112444_
                                                      __tmp118091))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp118090))))
                                  (declare (not safe))
                                  (cons __tmp118089 '()))))
                           (declare (not safe))
                           (cons _id112463_ __tmp118088))))
                    (declare (not safe))
                    (cons __tmp118087 _r112447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd112448112455_))
                                                      (let ((_hd112452112468_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd112448112455_)))
                    (_tl112453112470_
                     (let () (declare (not safe)) (##cdr _hd112448112455_))))
                (let* ((_id112473_ _hd112452112468_)
                       (_k112475_ _tl112453112470_))
                  (declare (not safe))
                  (_K112451112465_ _k112475_ _id112473_)))
              (let () (declare (not safe)) (_E112450112459_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp118086
                                                 _bind112417_
                                                 _init112442_))))
                                  (declare (not safe))
                                  (_lp112413_
                                   _rest112441_
                                   __tmp118092
                                   __tmp118085)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112418112430_))
                            (let ((_hd112423112480_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112418112430_)))
                                  (_tl112424112482_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112418112430_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd112423112480_))
                                  (let ((_hd112425112485_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd112423112480_)))
                                        (_tl112426112487_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd112423112480_))))
                                    (let ((_tmp112490_ _hd112425112485_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl112426112487_))
                                          (let ((_hd112427112492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl112426112487_)))
                                                (_tl112428112494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl112426112487_))))
                                            (let* ((_len112497_
                                                    _hd112427112492_)
                                                   (_init112499_
                                                    _tl112428112494_)
                                                   (_rest112501_
                                                    _tl112424112482_))
                                              (declare (not safe))
                                              (_K112422112477_
                                               _rest112501_
                                               _init112499_
                                               _len112497_
                                               _tmp112490_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else112420112438_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else112420112438_))))
                            (let ()
                              (declare (not safe))
                              (_else112420112438_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx112404_
             _compile-simple112406_
             _compile-values112407_)))))
    (define __compile-letrec-values%
      (lambda (_stx112204_)
        (letrec ((_compile-simple112206_
                  (lambda (_hd-ids112400_ _exprs112401_ _body112402_)
                    (let ((__tmp118097
                           (let ((__tmp118098
                                  (let ((__tmp118100
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids112400_)
                                              _exprs112401_))
                                        (__tmp118099
                                         (let ()
                                           (declare (not safe))
                                           (cons _body112402_ '()))))
                                    (declare (not safe))
                                    (cons __tmp118100 __tmp118099))))
                             (declare (not safe))
                             (cons 'letrec __tmp118098))))
                      (declare (not safe))
                      (__SRC__% __tmp118097 _stx112204_))))
                 (_compile-values112207_
                  (lambda (_hd-ids112314_ _exprs112315_ _body112316_)
                    (let _lp112318_ ((_rest112320_ _hd-ids112314_)
                                     (_exprs112321_ _exprs112315_)
                                     (_pre112322_ '())
                                     (_bind112323_ '())
                                     (_post112324_ '()))
                      (let* ((_rest112325112339_ _rest112320_)
                             (_else112328112347_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner112208_
                                   _pre112322_
                                   _bind112323_
                                   _post112324_
                                   _body112316_)))))
                        (let ((_K112333112383_
                               (lambda (_rest112380_ _id112381_)
                                 (let ((__tmp118106 (cdr _exprs112321_))
                                       (__tmp118101
                                        (let ((__tmp118102
                                               (let ((__tmp118105
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id112381_)))
                                                     (__tmp118103
                                                      (let ((__tmp118104
                                                             (car _exprs112321_)))
                                                        (declare (not safe))
                                                        (cons __tmp118104
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp118105
                                                       __tmp118103))))
                                          (declare (not safe))
                                          (cons __tmp118102 _bind112323_))))
                                   (declare (not safe))
                                   (_lp112318_
                                    _rest112380_
                                    __tmp118106
                                    _pre112322_
                                    __tmp118101
                                    _post112324_))))
                              (_K112330112365_
                               (lambda (_rest112351_ _hd112352_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd112352_))
                                     (let ((__tmp118134 (cdr _exprs112321_))
                                           (__tmp118127
                                            (let ((__tmp118128
                                                   (let ((__tmp118133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd112352_)))
                                                         (__tmp118129
                                                          (let ((__tmp118130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp118131
                                (let ((__tmp118132 (car _exprs112321_)))
                                  (declare (not safe))
                                  (cons __tmp118132 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp118131))))
                    (declare (not safe))
                    (cons __tmp118130 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp118133
                                                           __tmp118129))))
                                              (declare (not safe))
                                              (cons __tmp118128
                                                    _bind112323_))))
                                       (declare (not safe))
                                       (_lp112318_
                                        _rest112351_
                                        __tmp118134
                                        _pre112322_
                                        __tmp118127
                                        _post112324_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd112352_))
                                         (let* ((_len112354_
                                                 (length _hd112352_))
                                                (_tmp112356_
                                                 (let ((__tmp118107 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp118107))))
                                           (let ((__tmp118126
                                                  (cdr _exprs112321_))
                                                 (__tmp118119
                                                  (let ((__tmp118120
                                                         (lambda (_id112359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r112360_)
                   (if (let () (declare (not safe)) (__AST-e _id112359_))
                       (let ((__tmp118121
                              (let ((__tmp118125
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id112359_)))
                                    (__tmp118122
                                     (let ((__tmp118123
                                            (let ((__tmp118124
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp118124))))
                                       (declare (not safe))
                                       (cons __tmp118123 '()))))
                                (declare (not safe))
                                (cons __tmp118125 __tmp118122))))
                         (declare (not safe))
                         (cons __tmp118121 _r112360_))
                       _r112360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp118120
                                                            _pre112322_
                                                            _hd112352_)))
                                                 (__tmp118115
                                                  (let ((__tmp118116
                                                         (let ((__tmp118117
                                                                (let ((__tmp118118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs112321_)))
                          (declare (not safe))
                          (cons __tmp118118 '()))))
                   (declare (not safe))
                   (cons _tmp112356_ __tmp118117))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp118116
                                                          _bind112323_)))
                                                 (__tmp118108
                                                  (let ((__tmp118109
                                                         (let ((__tmp118110
                                                                (let ((__tmp118111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp118113
                                      (lambda (_id112362_ _k112363_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id112362_))
                                            (let ((__tmp118114
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id112362_))))
                                              (declare (not safe))
                                              (cons __tmp118114 _k112363_))
                                            '#f)))
                                     (__tmp118112
                                      (let ()
                                        (declare (not safe))
                                        (iota _len112354_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp118113
                                  _hd112352_
                                  __tmp118112))))
                          (declare (not safe))
                          (cons _len112354_ __tmp118111))))
                   (declare (not safe))
                   (cons _tmp112356_ __tmp118110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp118109
                                                          _post112324_))))
                                             (declare (not safe))
                                             (_lp112318_
                                              _rest112351_
                                              __tmp118126
                                              __tmp118119
                                              __tmp118115
                                              __tmp118108)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx112204_
                                            _hd112352_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112325112339_))
                              (let ((_tl112335112388_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112325112339_)))
                                    (_hd112334112386_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112325112339_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd112334112386_))
                                    (let ((_tl112337112393_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd112334112386_)))
                                          (_hd112336112391_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd112334112386_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl112337112393_))
                                          (let ((_id112396_ _hd112336112391_)
                                                (_rest112398_
                                                 _tl112335112388_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112333112383_
                                               _rest112398_
                                               _id112396_)))
                                          (let ((_hd112373_ _hd112334112386_)
                                                (_rest112375_
                                                 _tl112335112388_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112330112365_
                                               _rest112375_
                                               _hd112373_)))))
                                    (let ((_hd112373_ _hd112334112386_)
                                          (_rest112375_ _tl112335112388_))
                                      (let ()
                                        (declare (not safe))
                                        (_K112330112365_
                                         _rest112375_
                                         _hd112373_)))))
                              (let ()
                                (declare (not safe))
                                (_else112328112347_))))))))
                 (_compile-inner112208_
                  (lambda (_pre112309_ _bind112310_ _post112311_ _body112312_)
                    (if (let () (declare (not safe)) (null? _pre112309_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind112209_
                           _bind112310_
                           _post112311_
                           _body112312_))
                        (let ((__tmp118135
                               (let ((__tmp118136
                                      (let ((__tmp118139 (reverse _pre112309_))
                                            (__tmp118137
                                             (let ((__tmp118138
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind112209_
                                                       _bind112310_
                                                       _post112311_
                                                       _body112312_))))
                                               (declare (not safe))
                                               (cons __tmp118138 '()))))
                                        (declare (not safe))
                                        (cons __tmp118139 __tmp118137))))
                                 (declare (not safe))
                                 (cons 'let __tmp118136))))
                          (declare (not safe))
                          (__SRC__% __tmp118135 _stx112204_)))))
                 (_compile-bind112209_
                  (lambda (_bind112305_ _post112306_ _body112307_)
                    (let ((__tmp118140
                           (let ((__tmp118141
                                  (let ((__tmp118144 (reverse _bind112305_))
                                        (__tmp118142
                                         (let ((__tmp118143
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post112210_
                                                   _post112306_
                                                   _body112307_))))
                                           (declare (not safe))
                                           (cons __tmp118143 '()))))
                                    (declare (not safe))
                                    (cons __tmp118144 __tmp118142))))
                             (declare (not safe))
                             (cons 'letrec __tmp118141))))
                      (declare (not safe))
                      (__SRC__% __tmp118140 _stx112204_))))
                 (_compile-post112210_
                  (lambda (_post112212_ _body112213_)
                    (let _lp112215_ ((_rest112217_ _post112212_)
                                     (_check112218_ '())
                                     (_bind112219_ '()))
                      (let* ((_rest112220112232_ _rest112217_)
                             (_else112222112240_
                              (lambda ()
                                (let ((__tmp118145
                                       (let ((__tmp118146
                                              (let ((__tmp118147
                                                     (let ((__tmp118148
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body112213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp118148 _bind112219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp118147
                                                        _check112218_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp118146))))
                                  (declare (not safe))
                                  (__SRC__% __tmp118145 _stx112204_))))
                             (_K112224112279_
                              (lambda (_rest112243_
                                       _init112244_
                                       _len112245_
                                       _tmp112246_)
                                (let ((__tmp118157
                                       (let ((__tmp118158
                                              (let ((__tmp118159
                                                     (let ((__tmp118160
                                                            (let ((__tmp118161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len112245_ '()))))
                      (declare (not safe))
                      (cons _tmp112246_ __tmp118161))))
               (declare (not safe))
               (cons '__check-values __tmp118160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp118159
                                                 _stx112204_))))
                                         (declare (not safe))
                                         (cons __tmp118158 _check112218_)))
                                      (__tmp118149
                                       (let ((__tmp118150
                                              (lambda (_hd112248_ _r112249_)
                                                (let* ((_hd112250112257_
                                                        _hd112248_)
                                                       (_E112252112261_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd112250112257_)))
               (_K112253112267_
                (lambda (_k112264_ _id112265_)
                  (let ((__tmp118151
                         (let ((__tmp118152
                                (let ((__tmp118153
                                       (let ((__tmp118154
                                              (let ((__tmp118155
                                                     (let ((__tmp118156
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k112264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp112246_ __tmp118156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp118155))))
                                         (declare (not safe))
                                         (cons __tmp118154 '()))))
                                  (declare (not safe))
                                  (cons _id112265_ __tmp118153))))
                           (declare (not safe))
                           (cons 'set! __tmp118152))))
                    (declare (not safe))
                    (cons __tmp118151 _r112249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd112250112257_))
                                                      (let ((_hd112254112270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd112250112257_)))
                    (_tl112255112272_
                     (let () (declare (not safe)) (##cdr _hd112250112257_))))
                (let* ((_id112275_ _hd112254112270_)
                       (_k112277_ _tl112255112272_))
                  (declare (not safe))
                  (_K112253112267_ _k112277_ _id112275_)))
              (let () (declare (not safe)) (_E112252112261_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp118150
                                                 _bind112219_
                                                 _init112244_))))
                                  (declare (not safe))
                                  (_lp112215_
                                   _rest112243_
                                   __tmp118157
                                   __tmp118149)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112220112232_))
                            (let ((_hd112225112282_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112220112232_)))
                                  (_tl112226112284_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112220112232_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd112225112282_))
                                  (let ((_hd112227112287_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd112225112282_)))
                                        (_tl112228112289_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd112225112282_))))
                                    (let ((_tmp112292_ _hd112227112287_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl112228112289_))
                                          (let ((_hd112229112294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl112228112289_)))
                                                (_tl112230112296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl112228112289_))))
                                            (let* ((_len112299_
                                                    _hd112229112294_)
                                                   (_init112301_
                                                    _tl112230112296_)
                                                   (_rest112303_
                                                    _tl112226112284_))
                                              (declare (not safe))
                                              (_K112224112279_
                                               _rest112303_
                                               _init112301_
                                               _len112299_
                                               _tmp112292_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else112222112240_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else112222112240_))))
                            (let ()
                              (declare (not safe))
                              (_else112222112240_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx112204_
             _compile-simple112206_
             _compile-values112207_)))))
    (define __compile-letrec*-values%
      (lambda (_stx111959_)
        (letrec ((_compile-simple111961_
                  (lambda (_hd-ids112200_ _exprs112201_ _body112202_)
                    (let ((__tmp118162
                           (let ((__tmp118163
                                  (let ((__tmp118165
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids112200_)
                                              _exprs112201_))
                                        (__tmp118164
                                         (let ()
                                           (declare (not safe))
                                           (cons _body112202_ '()))))
                                    (declare (not safe))
                                    (cons __tmp118165 __tmp118164))))
                             (declare (not safe))
                             (cons 'letrec* __tmp118163))))
                      (declare (not safe))
                      (__SRC__% __tmp118162 _stx111959_))))
                 (_compile-values111962_
                  (lambda (_hd-ids112111_ _exprs112112_ _body112113_)
                    (let _lp112115_ ((_rest112117_ _hd-ids112111_)
                                     (_exprs112118_ _exprs112112_)
                                     (_bind112119_ '())
                                     (_post112120_ '()))
                      (let* ((_rest112121112135_ _rest112117_)
                             (_else112124112143_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind111963_
                                   _bind112119_
                                   _post112120_
                                   _body112113_)))))
                        (let ((_K112129112183_
                               (lambda (_rest112178_ _hd112179_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd112179_))
                                     (let ((_id112181_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd112179_))))
                                       (let ((__tmp118180 (cdr _exprs112118_))
                                             (__tmp118175
                                              (let ((__tmp118176
                                                     (let ((__tmp118177
                                                            (let ((__tmp118178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp118179
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp118179))))
                      (declare (not safe))
                      (cons __tmp118178 '()))))
               (declare (not safe))
               (cons _id112181_ __tmp118177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp118176
                                                      _bind112119_)))
                                             (__tmp118171
                                              (let ((__tmp118172
                                                     (let ((__tmp118173
                                                            (let ((__tmp118174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs112118_)))
                      (declare (not safe))
                      (cons __tmp118174 '()))))
               (declare (not safe))
               (cons _id112181_ __tmp118173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp118172
                                                      _post112120_))))
                                         (declare (not safe))
                                         (_lp112115_
                                          _rest112178_
                                          __tmp118180
                                          __tmp118175
                                          __tmp118171)))
                                     (let ((__tmp118170 (cdr _exprs112118_))
                                           (__tmp118166
                                            (let ((__tmp118167
                                                   (let ((__tmp118168
                                                          (let ((__tmp118169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs112118_)))
                    (declare (not safe))
                    (cons __tmp118169 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp118168))))
                                              (declare (not safe))
                                              (cons __tmp118167
                                                    _post112120_))))
                                       (declare (not safe))
                                       (_lp112115_
                                        _rest112178_
                                        __tmp118170
                                        _bind112119_
                                        __tmp118166)))))
                              (_K112126112163_
                               (lambda (_rest112147_ _hd112148_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd112148_))
                                     (let ((_id112150_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd112148_))))
                                       (let ((__tmp118216 (cdr _exprs112118_))
                                             (__tmp118211
                                              (let ((__tmp118212
                                                     (let ((__tmp118213
                                                            (let ((__tmp118214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp118215
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp118215))))
                      (declare (not safe))
                      (cons __tmp118214 '()))))
               (declare (not safe))
               (cons _id112150_ __tmp118213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp118212
                                                      _bind112119_)))
                                             (__tmp118205
                                              (let ((__tmp118206
                                                     (let ((__tmp118207
                                                            (let ((__tmp118208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp118209
                                  (let ((__tmp118210 (car _exprs112118_)))
                                    (declare (not safe))
                                    (cons __tmp118210 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp118209))))
                      (declare (not safe))
                      (cons __tmp118208 '()))))
               (declare (not safe))
               (cons _id112150_ __tmp118207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp118206
                                                      _post112120_))))
                                         (declare (not safe))
                                         (_lp112115_
                                          _rest112147_
                                          __tmp118216
                                          __tmp118211
                                          __tmp118205)))
                                     (if (let ((__tmp118204
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd112148_))))
                                           (declare (not safe))
                                           (not __tmp118204))
                                         (let ((__tmp118203
                                                (cdr _exprs112118_))
                                               (__tmp118199
                                                (let ((__tmp118200
                                                       (let ((__tmp118201
                                                              (let ((__tmp118202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs112118_)))
                        (declare (not safe))
                        (cons __tmp118202 '()))))
                 (declare (not safe))
                 (cons '#f __tmp118201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp118200
                                                        _post112120_))))
                                           (declare (not safe))
                                           (_lp112115_
                                            _rest112147_
                                            __tmp118203
                                            _bind112119_
                                            __tmp118199))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd112148_))
                                             (let* ((_len112152_
                                                     (length _hd112148_))
                                                    (_tmp112154_
                                                     (let ((__tmp118181
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp118181))))
                                               (let ((__tmp118198
                                                      (cdr _exprs112118_))
                                                     (__tmp118191
                                                      (let ((__tmp118192
                                                             (lambda (_id112157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r112158_)
                       (if (let () (declare (not safe)) (__AST-e _id112157_))
                           (let ((__tmp118193
                                  (let ((__tmp118197
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id112157_)))
                                        (__tmp118194
                                         (let ((__tmp118195
                                                (let ((__tmp118196
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp118196))))
                                           (declare (not safe))
                                           (cons __tmp118195 '()))))
                                    (declare (not safe))
                                    (cons __tmp118197 __tmp118194))))
                             (declare (not safe))
                             (cons __tmp118193 _r112158_))
                           _r112158_))))
                (declare (not safe))
                (foldl1 __tmp118192 _bind112119_ _hd112148_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp118182
                                                      (let ((__tmp118183
                                                             (let ((__tmp118184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp118190 (car _exprs112118_))
                                  (__tmp118185
                                   (let ((__tmp118186
                                          (let ((__tmp118188
                                                 (lambda (_id112160_ _k112161_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id112160_))
                                                       (let ((__tmp118189
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id112160_))))
                 (declare (not safe))
                 (cons __tmp118189 _k112161_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp118187
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len112152_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp118188
                                             _hd112148_
                                             __tmp118187))))
                                     (declare (not safe))
                                     (cons _len112152_ __tmp118186))))
                              (declare (not safe))
                              (cons __tmp118190 __tmp118185))))
                       (declare (not safe))
                       (cons _tmp112154_ __tmp118184))))
                (declare (not safe))
                (cons __tmp118183 _post112120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp112115_
                                                  _rest112147_
                                                  __tmp118198
                                                  __tmp118191
                                                  __tmp118182)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx111959_
                                                _hd112148_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112121112135_))
                              (let ((_tl112131112188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112121112135_)))
                                    (_hd112130112186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112121112135_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd112130112186_))
                                    (let ((_tl112133112193_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd112130112186_)))
                                          (_hd112132112191_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd112130112186_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl112133112193_))
                                          (let ((_hd112196_ _hd112132112191_)
                                                (_rest112198_
                                                 _tl112131112188_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112129112183_
                                               _rest112198_
                                               _hd112196_)))
                                          (let ((_hd112171_ _hd112130112186_)
                                                (_rest112173_
                                                 _tl112131112188_))
                                            (let ()
                                              (declare (not safe))
                                              (_K112126112163_
                                               _rest112173_
                                               _hd112171_)))))
                                    (let ((_hd112171_ _hd112130112186_)
                                          (_rest112173_ _tl112131112188_))
                                      (let ()
                                        (declare (not safe))
                                        (_K112126112163_
                                         _rest112173_
                                         _hd112171_)))))
                              (let ()
                                (declare (not safe))
                                (_else112124112143_))))))))
                 (_compile-bind111963_
                  (lambda (_bind112107_ _post112108_ _body112109_)
                    (let ((__tmp118217
                           (let ((__tmp118218
                                  (let ((__tmp118221 (reverse _bind112107_))
                                        (__tmp118219
                                         (let ((__tmp118220
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post111964_
                                                   _post112108_
                                                   _body112109_))))
                                           (declare (not safe))
                                           (cons __tmp118220 '()))))
                                    (declare (not safe))
                                    (cons __tmp118221 __tmp118219))))
                             (declare (not safe))
                             (cons 'let __tmp118218))))
                      (declare (not safe))
                      (__SRC__% __tmp118217 _stx111959_))))
                 (_compile-post111964_
                  (lambda (_post111966_ _body111967_)
                    (let ((__tmp118222
                           (let ((__tmp118223
                                  (let ((__tmp118224
                                         (let ((__tmp118226
                                                (lambda (_hd111969_ _r111970_)
                                                  (let* ((_hd111971111994_
                                                          _hd111969_)
                                                         (_E111975111998_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd111971111994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K111988112092_
                                                           (lambda (_expr112090_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr112090_ _r111970_))))
                  (_K111983112070_
                   (lambda (_expr112067_ _id112068_)
                     (let ((__tmp118227
                            (let ((__tmp118228
                                   (let ((__tmp118229
                                          (let ((__tmp118230
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr112067_ '()))))
                                            (declare (not safe))
                                            (cons _id112068_ __tmp118230))))
                                     (declare (not safe))
                                     (cons 'set! __tmp118229))))
                              (declare (not safe))
                              (__SRC__% __tmp118228 _stx111959_))))
                       (declare (not safe))
                       (cons __tmp118227 _r111970_))))
                  (_K111976112037_
                   (lambda (_init112002_ _len112003_ _expr112004_ _tmp112005_)
                     (let ((__tmp118231
                            (let ((__tmp118232
                                   (let ((__tmp118233
                                          (let ((__tmp118247
                                                 (let ((__tmp118248
                                                        (let ((__tmp118249
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr112004_ '()))))
                  (declare (not safe))
                  (cons _tmp112005_ __tmp118249))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp118248 '())))
                                                (__tmp118234
                                                 (let ((__tmp118243
                                                        (let ((__tmp118244
                                                               (let ((__tmp118245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp118246
                                     (let ()
                                       (declare (not safe))
                                       (cons _len112003_ '()))))
                                (declare (not safe))
                                (cons _tmp112005_ __tmp118246))))
                         (declare (not safe))
                         (cons '__check-values __tmp118245))))
                  (declare (not safe))
                  (__SRC__% __tmp118244 _stx111959_)))
               (__tmp118235
                (let ((__tmp118236
                       (map (lambda (_hd112007_)
                              (let* ((_hd112008112015_ _hd112007_)
                                     (_E112010112019_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd112008112015_)))
                                     (_K112011112025_
                                      (lambda (_k112022_ _id112023_)
                                        (let ((__tmp118237
                                               (let ((__tmp118238
                                                      (let ((__tmp118239
                                                             (let ((__tmp118240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp118241
                                   (let ((__tmp118242
                                          (let ()
                                            (declare (not safe))
                                            (cons _k112022_ '()))))
                                     (declare (not safe))
                                     (cons _tmp112005_ __tmp118242))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp118241))))
                       (declare (not safe))
                       (cons __tmp118240 '()))))
                (declare (not safe))
                (cons _id112023_ __tmp118239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp118238))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp118237
                                           _stx111959_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd112008112015_))
                                    (let ((_hd112012112028_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd112008112015_)))
                                          (_tl112013112030_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd112008112015_))))
                                      (let* ((_id112033_ _hd112012112028_)
                                             (_k112035_ _tl112013112030_))
                                        (declare (not safe))
                                        (_K112011112025_
                                         _k112035_
                                         _id112033_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E112010112019_)))))
                            _init112002_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp118236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp118243
                                                         __tmp118235))))
                                            (declare (not safe))
                                            (cons __tmp118247 __tmp118234))))
                                     (declare (not safe))
                                     (cons 'let __tmp118233))))
                              (declare (not safe))
                              (__SRC__% __tmp118232 _stx111959_))))
                       (declare (not safe))
                       (cons __tmp118231 _r111970_)))))
              (if (let () (declare (not safe)) (##pair? _hd111971111994_))
                  (let ((_tl111990112097_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd111971111994_)))
                        (_hd111989112095_
                         (let ()
                           (declare (not safe))
                           (##car _hd111971111994_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd111989112095_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl111990112097_))
                            (let ((_tl111992112102_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl111990112097_)))
                                  (_hd111991112100_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl111990112097_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl111992112102_))
                                  (let ((_expr112105_ _hd111991112100_))
                                    (declare (not safe))
                                    (_K111988112092_ _expr112105_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl111992112102_))
                                      (let ((_tl111982112056_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl111992112102_)))
                                            (_hd111981112054_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl111992112102_))))
                                        (let ((_tmp112045_ _hd111989112095_)
                                              (_expr112052_ _hd111991112100_)
                                              (_len112059_ _hd111981112054_)
                                              (_init112061_ _tl111982112056_))
                                          (let ()
                                            (declare (not safe))
                                            (_K111976112037_
                                             _init112061_
                                             _len112059_
                                             _expr112052_
                                             _tmp112045_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E111975111998_)))))
                            (let () (declare (not safe)) (_E111975111998_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl111990112097_))
                            (let ((_tl111987112082_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl111990112097_)))
                                  (_hd111986112080_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl111990112097_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl111987112082_))
                                  (let ((_id112078_ _hd111989112095_)
                                        (_expr112085_ _hd111986112080_))
                                    (let ()
                                      (declare (not safe))
                                      (_K111983112070_
                                       _expr112085_
                                       _id112078_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl111987112082_))
                                      (let ((_tl111982112056_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl111987112082_)))
                                            (_hd111981112054_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl111987112082_))))
                                        (let ((_tmp112045_ _hd111989112095_)
                                              (_expr112052_ _hd111986112080_)
                                              (_len112059_ _hd111981112054_)
                                              (_init112061_ _tl111982112056_))
                                          (let ()
                                            (declare (not safe))
                                            (_K111976112037_
                                             _init112061_
                                             _len112059_
                                             _expr112052_
                                             _tmp112045_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E111975111998_)))))
                            (let () (declare (not safe)) (_E111975111998_)))))
                  (let () (declare (not safe)) (_E111975111998_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp118225
                                                (list _body111967_)))
                                           (declare (not safe))
                                           (foldl1 __tmp118226
                                                   __tmp118225
                                                   _post111966_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp118224))))
                             (declare (not safe))
                             (cons 'begin __tmp118223))))
                      (declare (not safe))
                      (__SRC__% __tmp118222 _stx111959_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx111959_
             _compile-simple111961_
             _compile-values111962_)))))
    (define __compile-call%
      (lambda (_stx111919_)
        (let* ((_$e111921_ _stx111919_)
               (_$E111923111932_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111921_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111921_))
              (let* ((_$tgt111924111935_
                      (let () (declare (not safe)) (__AST-e _$e111921_)))
                     (_$hd111925111938_
                      (let () (declare (not safe)) (##car _$tgt111924111935_)))
                     (_$tl111926111941_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111924111935_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111926111941_))
                    (let* ((_$tgt111927111945_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111926111941_)))
                           (_$hd111928111948_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111927111945_)))
                           (_$tl111929111951_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111927111945_))))
                      (let* ((_rator111955_ _$hd111928111948_)
                             (_rands111957_ _$tl111929111951_)
                             (__tmp118250
                              (let ((__tmp118252
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator111955_)))
                                    (__tmp118251
                                     (map __compile _rands111957_)))
                                (declare (not safe))
                                (cons __tmp118252 __tmp118251))))
                        (declare (not safe))
                        (__SRC__% __tmp118250 _stx111919_)))
                    (let () (declare (not safe)) (_$E111923111932_))))
              (let () (declare (not safe)) (_$E111923111932_))))))
    (define __compile-ref%
      (lambda (_stx111881_)
        (let* ((_$e111883_ _stx111881_)
               (_$E111885111894_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111883_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111883_))
              (let* ((_$tgt111886111897_
                      (let () (declare (not safe)) (__AST-e _$e111883_)))
                     (_$hd111887111900_
                      (let () (declare (not safe)) (##car _$tgt111886111897_)))
                     (_$tl111888111903_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111886111897_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111888111903_))
                    (let* ((_$tgt111889111907_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111888111903_)))
                           (_$hd111890111910_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111889111907_)))
                           (_$tl111891111913_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111889111907_))))
                      (let ((_id111917_ _$hd111890111910_))
                        (if (let ((__tmp118253
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl111891111913_))))
                              (declare (not safe))
                              (equal? __tmp118253 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id111917_ _stx111881_))
                            (let () (declare (not safe)) (_$E111885111894_)))))
                    (let () (declare (not safe)) (_$E111885111894_))))
              (let () (declare (not safe)) (_$E111885111894_))))))
    (define __compile-setq%
      (lambda (_stx111828_)
        (let* ((_$e111830_ _stx111828_)
               (_$E111832111844_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111830_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111830_))
              (let* ((_$tgt111833111847_
                      (let () (declare (not safe)) (__AST-e _$e111830_)))
                     (_$hd111834111850_
                      (let () (declare (not safe)) (##car _$tgt111833111847_)))
                     (_$tl111835111853_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111833111847_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111835111853_))
                    (let* ((_$tgt111836111857_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111835111853_)))
                           (_$hd111837111860_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111836111857_)))
                           (_$tl111838111863_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111836111857_))))
                      (let ((_id111867_ _$hd111837111860_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl111838111863_))
                            (let* ((_$tgt111839111869_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl111838111863_)))
                                   (_$hd111840111872_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt111839111869_)))
                                   (_$tl111841111875_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt111839111869_))))
                              (let ((_expr111879_ _$hd111840111872_))
                                (if (let ((__tmp118259
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl111841111875_))))
                                      (declare (not safe))
                                      (equal? __tmp118259 '()))
                                    (let ((__tmp118254
                                           (let ((__tmp118255
                                                  (let ((__tmp118258
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id111867_
                                                            _stx111828_)))
                                                        (__tmp118256
                                                         (let ((__tmp118257
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr111879_))))
                   (declare (not safe))
                   (cons __tmp118257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp118258
                                                          __tmp118256))))
                                             (declare (not safe))
                                             (cons 'set! __tmp118255))))
                                      (declare (not safe))
                                      (__SRC__% __tmp118254 _stx111828_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E111832111844_)))))
                            (let () (declare (not safe)) (_$E111832111844_)))))
                    (let () (declare (not safe)) (_$E111832111844_))))
              (let () (declare (not safe)) (_$E111832111844_))))))
    (define __compile-if%
      (lambda (_stx111760_)
        (let* ((_$e111762_ _stx111760_)
               (_$E111764111779_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111762_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111762_))
              (let* ((_$tgt111765111782_
                      (let () (declare (not safe)) (__AST-e _$e111762_)))
                     (_$hd111766111785_
                      (let () (declare (not safe)) (##car _$tgt111765111782_)))
                     (_$tl111767111788_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111765111782_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111767111788_))
                    (let* ((_$tgt111768111792_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111767111788_)))
                           (_$hd111769111795_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111768111792_)))
                           (_$tl111770111798_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111768111792_))))
                      (let ((_p111802_ _$hd111769111795_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl111770111798_))
                            (let* ((_$tgt111771111804_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl111770111798_)))
                                   (_$hd111772111807_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt111771111804_)))
                                   (_$tl111773111810_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt111771111804_))))
                              (let ((_t111814_ _$hd111772111807_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl111773111810_))
                                    (let* ((_$tgt111774111816_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl111773111810_)))
                                           (_$hd111775111819_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt111774111816_)))
                                           (_$tl111776111822_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt111774111816_))))
                                      (let ((_f111826_ _$hd111775111819_))
                                        (if (let ((__tmp118267
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl111776111822_))))
                                              (declare (not safe))
                                              (equal? __tmp118267 '()))
                                            (let ((__tmp118260
                                                   (let ((__tmp118261
                                                          (let ((__tmp118266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p111802_)))
                        (__tmp118262
                         (let ((__tmp118265
                                (let ()
                                  (declare (not safe))
                                  (__compile _t111814_)))
                               (__tmp118263
                                (let ((__tmp118264
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f111826_))))
                                  (declare (not safe))
                                  (cons __tmp118264 '()))))
                           (declare (not safe))
                           (cons __tmp118265 __tmp118263))))
                    (declare (not safe))
                    (cons __tmp118266 __tmp118262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp118261))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp118260
                                               _stx111760_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E111764111779_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E111764111779_)))))
                            (let () (declare (not safe)) (_$E111764111779_)))))
                    (let () (declare (not safe)) (_$E111764111779_))))
              (let () (declare (not safe)) (_$E111764111779_))))))
    (define __compile-quote%
      (lambda (_stx111722_)
        (let* ((_$e111724_ _stx111722_)
               (_$E111726111735_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111724_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111724_))
              (let* ((_$tgt111727111738_
                      (let () (declare (not safe)) (__AST-e _$e111724_)))
                     (_$hd111728111741_
                      (let () (declare (not safe)) (##car _$tgt111727111738_)))
                     (_$tl111729111744_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111727111738_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111729111744_))
                    (let* ((_$tgt111730111748_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111729111744_)))
                           (_$hd111731111751_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111730111748_)))
                           (_$tl111732111754_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111730111748_))))
                      (let ((_e111758_ _$hd111731111751_))
                        (if (let ((__tmp118271
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl111732111754_))))
                              (declare (not safe))
                              (equal? __tmp118271 '()))
                            (let ((__tmp118268
                                   (let ((__tmp118269
                                          (let ((__tmp118270
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e111758_))))
                                            (declare (not safe))
                                            (cons __tmp118270 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp118269))))
                              (declare (not safe))
                              (__SRC__% __tmp118268 _stx111722_))
                            (let () (declare (not safe)) (_$E111726111735_)))))
                    (let () (declare (not safe)) (_$E111726111735_))))
              (let () (declare (not safe)) (_$E111726111735_))))))
    (define __compile-quote-syntax%
      (lambda (_stx111684_)
        (let* ((_$e111686_ _stx111684_)
               (_$E111688111697_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e111686_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e111686_))
              (let* ((_$tgt111689111700_
                      (let () (declare (not safe)) (__AST-e _$e111686_)))
                     (_$hd111690111703_
                      (let () (declare (not safe)) (##car _$tgt111689111700_)))
                     (_$tl111691111706_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt111689111700_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl111691111706_))
                    (let* ((_$tgt111692111710_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl111691111706_)))
                           (_$hd111693111713_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt111692111710_)))
                           (_$tl111694111716_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt111692111710_))))
                      (let ((_e111720_ _$hd111693111713_))
                        (if (let ((__tmp118274
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl111694111716_))))
                              (declare (not safe))
                              (equal? __tmp118274 '()))
                            (let ((__tmp118272
                                   (let ((__tmp118273
                                          (let ()
                                            (declare (not safe))
                                            (cons _e111720_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp118273))))
                              (declare (not safe))
                              (__SRC__% __tmp118272 _stx111684_))
                            (let () (declare (not safe)) (_$E111688111697_)))))
                    (let () (declare (not safe)) (_$E111688111697_))))
              (let () (declare (not safe)) (_$E111688111697_))))))
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
