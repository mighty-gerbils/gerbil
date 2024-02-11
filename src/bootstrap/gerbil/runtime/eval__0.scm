(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707674930)
  (begin
    (define __context::t
      (let ((__tmp114717 (list))
            (__tmp114715
             (let ((__tmp114716
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114716 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114717
         '(t ns super table)
         __tmp114715
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109951_ (apply make-instance __context::t _$args109951_)))
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
      (let ((__tmp114720 (list))
            (__tmp114718
             (let ((__tmp114719
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114719 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114720
         '(id)
         __tmp114718
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109948_ (apply make-instance __runtime::t _$args109948_)))
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
      (let ((__tmp114723 (list))
            (__tmp114721
             (let ((__tmp114722
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114722 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114723
         '(e id)
         __tmp114721
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109945_ (apply make-instance __syntax::t _$args109945_)))
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
      (let ((__tmp114726 (list __syntax::t))
            (__tmp114724
             (let ((__tmp114725
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114725 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114726
         '()
         __tmp114724
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109942_ (apply make-instance __macro::t _$args109942_)))
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
      (let ((__tmp114729 (list __macro::t))
            (__tmp114727
             (let ((__tmp114728
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114728 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114729
         '()
         __tmp114727
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109939_
        (apply make-instance __special-form::t _$args109939_)))
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
      (let ((__tmp114732 (list __syntax::t))
            (__tmp114730
             (let ((__tmp114731
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114731 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114732
         '()
         __tmp114730
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109936_
        (apply make-instance __core-form::t _$args109936_)))
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
      (let ((__tmp114735 (list __core-form::t))
            (__tmp114733
             (let ((__tmp114734
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114734 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114735
         '()
         __tmp114733
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109933_
        (apply make-instance __core-expression::t _$args109933_)))
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
      (let ((__tmp114738 (list __core-form::t))
            (__tmp114736
             (let ((__tmp114737
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114737 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114738
         '()
         __tmp114736
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109930_
        (apply make-instance __core-special-form::t _$args109930_)))
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
      (let ((__tmp114741 (list __syntax::t))
            (__tmp114739
             (let ((__tmp114740
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114740 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114741
         '()
         __tmp114739
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109927_
        (apply make-instance __struct-info::t _$args109927_)))
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
      (let ((__tmp114744 (list __syntax::t))
            (__tmp114742
             (let ((__tmp114743
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114743 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114744
         '()
         __tmp114742
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109924_ (apply make-instance __feature::t _$args109924_)))
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
      (let ((__tmp114747 (list __context::t))
            (__tmp114745
             (let ((__tmp114746
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114746 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114747
         '(id path import export)
         __tmp114745
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109921_ (apply make-instance __module::t _$args109921_)))
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
      (let ((__tmp114749
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114748
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114749 __tmp114748)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109896_ _ctx109897_)
        (if _ctx109897_
            (let ((_id109899_
                   (let () (declare (not safe)) (__AST-e _id109896_))))
              (let _lp109901_ ((_ctx109903_ _ctx109897_))
                (let ((_$e109905_
                       (table-ref
                        (##structure-ref _ctx109903_ '4 __context::t '#f)
                        _id109899_
                        '#f)))
                  (if _$e109905_
                      (values _$e109905_)
                      (let ((_$e109908_
                             (##structure-ref
                              _ctx109903_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109908_
                            (let ()
                              (declare (not safe))
                              (_lp109901_ _$e109908_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109914_)
        (let ((_ctx109916_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109914_ _ctx109916_))))
    (define __core-resolve
      (lambda _g114751_
        (let ((_g114750_ (let () (declare (not safe)) (##length _g114751_))))
          (cond ((let () (declare (not safe)) (##fx= _g114750_ 1))
                 (apply (lambda (_id109914_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109914_)))
                        _g114751_))
                ((let () (declare (not safe)) (##fx= _g114750_ 2))
                 (apply (lambda (_id109918_ _ctx109919_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109918_ _ctx109919_)))
                        _g114751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114751_))))))
    (define __core-bound-id?__%
      (lambda (_id109879_ _is?109880_)
        (let ((_$e109882_
               (let () (declare (not safe)) (__core-resolve__0 _id109879_))))
          (if _$e109882_ (_is?109880_ _$e109882_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109888_)
        (let ((_is?109890_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109888_ _is?109890_))))
    (define __core-bound-id?
      (lambda _g114753_
        (let ((_g114752_ (let () (declare (not safe)) (##length _g114753_))))
          (cond ((let () (declare (not safe)) (##fx= _g114752_ 1))
                 (apply (lambda (_id109888_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109888_)))
                        _g114753_))
                ((let () (declare (not safe)) (##fx= _g114752_ 2))
                 (apply (lambda (_id109892_ _is?109893_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109892_ _is?109893_)))
                        _g114753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114753_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109862_ _eid109863_ _ctx109864_)
        (if _eid109863_
            (let ((__tmp114756
                   (##structure-ref _ctx109864_ '4 __context::t '#f))
                  (__tmp114755
                   (let () (declare (not safe)) (__AST-e _id109862_)))
                  (__tmp114754
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109863_))))
              (declare (not safe))
              (table-set! __tmp114756 __tmp114755 __tmp114754))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109869_ _eid109870_)
        (let ((_ctx109872_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109869_ _eid109870_ _ctx109872_))))
    (define __core-bind-runtime!
      (lambda _g114758_
        (let ((_g114757_ (let () (declare (not safe)) (##length _g114758_))))
          (cond ((let () (declare (not safe)) (##fx= _g114757_ 2))
                 (apply (lambda (_id109869_ _eid109870_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109869_ _eid109870_)))
                        _g114758_))
                ((let () (declare (not safe)) (##fx= _g114757_ 3))
                 (apply (lambda (_id109874_ _eid109875_ _ctx109876_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109874_
                             _eid109875_
                             _ctx109876_)))
                        _g114758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114758_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109845_ _e109846_ _make109847_)
        (let ((__tmp114759
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109846_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109846_
                   (_make109847_ _e109846_ _id109845_))))
          (declare (not safe))
          (table-set! __*core* _id109845_ __tmp114759))))
    (define __core-bind-syntax!__0
      (lambda (_id109852_ _e109853_)
        (let ((_make109855_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109852_ _e109853_ _make109855_))))
    (define __core-bind-syntax!
      (lambda _g114761_
        (let ((_g114760_ (let () (declare (not safe)) (##length _g114761_))))
          (cond ((let () (declare (not safe)) (##fx= _g114760_ 2))
                 (apply (lambda (_id109852_ _e109853_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109852_ _e109853_)))
                        _g114761_))
                ((let () (declare (not safe)) (##fx= _g114760_ 3))
                 (apply (lambda (_id109857_ _e109858_ _make109859_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109857_
                             _e109858_
                             _make109859_)))
                        _g114761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114761_))))))
    (define __core-bind-macro!
      (lambda (_id109841_ _e109842_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109841_ _e109842_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109838_ _e109839_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109838_ _e109839_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109822_ _e109823_ _ctx109824_)
        (let ((__tmp114765 (##structure-ref _ctx109824_ '4 __context::t '#f))
              (__tmp114764 (let () (declare (not safe)) (__AST-e _id109822_)))
              (__tmp114762
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109823_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109823_
                   (let ((__tmp114763
                          (let () (declare (not safe)) (__AST-e _id109822_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109823_ __tmp114763)))))
          (declare (not safe))
          (table-set! __tmp114765 __tmp114764 __tmp114762))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109829_ _e109830_)
        (let ((_ctx109832_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109829_ _e109830_ _ctx109832_))))
    (define __core-bind-user-syntax!
      (lambda _g114767_
        (let ((_g114766_ (let () (declare (not safe)) (##length _g114767_))))
          (cond ((let () (declare (not safe)) (##fx= _g114766_ 2))
                 (apply (lambda (_id109829_ _e109830_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109829_
                             _e109830_)))
                        _g114767_))
                ((let () (declare (not safe)) (##fx= _g114766_ 3))
                 (apply (lambda (_id109834_ _e109835_ _ctx109836_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109834_
                             _e109835_
                             _ctx109836_)))
                        _g114767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114767_))))))
    (define make-__runtime-id__%
      (lambda (_id109803_ _ctx109804_)
        (let ((_id109806_ (let () (declare (not safe)) (__AST-e _id109803_))))
          (if (let () (declare (not safe)) (eq? _id109806_ '_))
              '#f
              (if (uninterned-symbol? _id109806_)
                  (gensym _id109806_)
                  (if (let () (declare (not safe)) (symbol? _id109806_))
                      (let ((_$e109808_
                             (##structure-ref
                              _ctx109804_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109808_))
                            (gensym _id109806_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109808_))
                                (let ((__tmp114768
                                       (##structure-ref
                                        _ctx109804_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114768 '"#" _id109806_))
                                _id109806_)))
                      (error '"Illegal runtime identifier" _id109806_)))))))
    (define make-__runtime-id__0
      (lambda (_id109814_)
        (let ((_ctx109816_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109814_ _ctx109816_))))
    (define make-__runtime-id
      (lambda _g114770_
        (let ((_g114769_ (let () (declare (not safe)) (##length _g114770_))))
          (cond ((let () (declare (not safe)) (##fx= _g114769_ 1))
                 (apply (lambda (_id109814_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109814_)))
                        _g114770_))
                ((let () (declare (not safe)) (##fx= _g114769_ 2))
                 (apply (lambda (_id109818_ _ctx109819_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109818_ _ctx109819_)))
                        _g114770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114770_))))))
    (define make-__context-local__%
      (lambda (_super109792_)
        (let ((__tmp114771
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109792_ __tmp114771))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109798_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109798_))))
    (define make-__context-local
      (lambda _g114773_
        (let ((_g114772_ (let () (declare (not safe)) (##length _g114773_))))
          (cond ((let () (declare (not safe)) (##fx= _g114772_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114773_))
                ((let () (declare (not safe)) (##fx= _g114772_ 1))
                 (apply (lambda (_super109800_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109800_)))
                        _g114773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114773_))))))
    (define make-__context-module__%
      (lambda (_id109772_ _ns109773_ _path109774_ _super109775_)
        (let ((__tmp114774
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109773_
           _super109775_
           __tmp114774
           _id109772_
           _path109774_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109780_ _ns109781_ _path109782_)
        (let ((_super109784_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109780_
           _ns109781_
           _path109782_
           _super109784_))))
    (define make-__context-module
      (lambda _g114776_
        (let ((_g114775_ (let () (declare (not safe)) (##length _g114776_))))
          (cond ((let () (declare (not safe)) (##fx= _g114775_ 3))
                 (apply (lambda (_id109780_ _ns109781_ _path109782_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109780_
                             _ns109781_
                             _path109782_)))
                        _g114776_))
                ((let () (declare (not safe)) (##fx= _g114775_ 4))
                 (apply (lambda (_id109786_
                                 _ns109787_
                                 _path109788_
                                 _super109789_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109786_
                             _ns109787_
                             _path109788_
                             _super109789_)))
                        _g114776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114776_))))))
    (define __SRC__%
      (lambda (_e109755_ _src-stx109756_)
        (if (or (let () (declare (not safe)) (pair? _e109755_))
                (let () (declare (not safe)) (symbol? _e109755_)))
            (let ((__tmp114780
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109756_
                          'gerbil#AST::t))
                       (let ((__tmp114781
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109756_))))
                         (declare (not safe))
                         (__locat __tmp114781))
                       '#f)))
              (declare (not safe))
              (##make-source _e109755_ __tmp114780))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109755_ 'gerbil#AST::t))
                (let ((__tmp114779
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109755_ '1 AST::t '#f)))
                      (__tmp114777
                       (let ((__tmp114778
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109755_))))
                         (declare (not safe))
                         (__locat __tmp114778))))
                  (declare (not safe))
                  (##make-source __tmp114779 __tmp114777))
                (error '"BUG! Cannot sourcify object" _e109755_)))))
    (define __SRC__0
      (lambda (_e109764_)
        (let ((_src-stx109766_ '#f))
          (declare (not safe))
          (__SRC__% _e109764_ _src-stx109766_))))
    (define __SRC
      (lambda _g114783_
        (let ((_g114782_ (let () (declare (not safe)) (##length _g114783_))))
          (cond ((let () (declare (not safe)) (##fx= _g114782_ 1))
                 (apply (lambda (_e109764_)
                          (let () (declare (not safe)) (__SRC__0 _e109764_)))
                        _g114783_))
                ((let () (declare (not safe)) (##fx= _g114782_ 2))
                 (apply (lambda (_e109768_ _src-stx109769_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109768_ _src-stx109769_)))
                        _g114783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114783_))))))
    (define __locat
      (lambda (_loc109752_)
        (if (let () (declare (not safe)) (##locat? _loc109752_))
            _loc109752_
            '#f)))
    (define __check-values
      (lambda (_obj109747_ _k109748_)
        (let ((_count109750_
               (if (let () (declare (not safe)) (##values? _obj109747_))
                   (let () (declare (not safe)) (##vector-length _obj109747_))
                   '1)))
          (if (fx= _count109750_ _k109748_)
              '#!void
              (error (if (fx< _count109750_ _k109748_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109747_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109747_))
                         _obj109747_)
                     _k109748_)))))
    (define __compile
      (lambda (_stx109717_)
        (let* ((_$e109719_ _stx109717_)
               (_$E109721109727_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109719_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109719_))
              (let* ((_$tgt109722109730_
                      (let () (declare (not safe)) (__AST-e _$e109719_)))
                     (_$hd109723109733_
                      (let () (declare (not safe)) (##car _$tgt109722109730_)))
                     (_$tl109724109736_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109722109730_))))
                (let* ((_form109740_ _$hd109723109733_)
                       (_$e109742_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109740_))))
                  (if _$e109742_
                      ((lambda (_bind109745_)
                         ((##structure-ref _bind109745_ '1 __syntax::t '#f)
                          _stx109717_))
                       _$e109742_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109717_
                         _form109740_)))))
              (let () (declare (not safe)) (_$E109721109727_))))))
    (define __compile-error__%
      (lambda (_stx109704_ _detail109705_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109704_
           _detail109705_))))
    (define __compile-error__0
      (lambda (_stx109710_)
        (let ((_detail109712_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109710_ _detail109712_))))
    (define __compile-error
      (lambda _g114785_
        (let ((_g114784_ (let () (declare (not safe)) (##length _g114785_))))
          (cond ((let () (declare (not safe)) (##fx= _g114784_ 1))
                 (apply (lambda (_stx109710_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109710_)))
                        _g114785_))
                ((let () (declare (not safe)) (##fx= _g114784_ 2))
                 (apply (lambda (_stx109714_ _detail109715_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109714_ _detail109715_)))
                        _g114785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114785_))))))
    (define __compile-ignore%
      (lambda (_stx109701_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109701_))))
    (define __compile-begin%
      (lambda (_stx109676_)
        (let* ((_$e109678_ _stx109676_)
               (_$E109680109686_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109678_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109678_))
              (let* ((_$tgt109681109689_
                      (let () (declare (not safe)) (__AST-e _$e109678_)))
                     (_$hd109682109692_
                      (let () (declare (not safe)) (##car _$tgt109681109689_)))
                     (_$tl109683109695_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109681109689_))))
                (let* ((_body109699_ _$tl109683109695_)
                       (__tmp114786
                        (let ((__tmp114787 (map __compile _body109699_)))
                          (declare (not safe))
                          (cons 'begin __tmp114787))))
                  (declare (not safe))
                  (__SRC__% __tmp114786 _stx109676_)))
              (let () (declare (not safe)) (_$E109680109686_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109651_)
        (let* ((_$e109653_ _stx109651_)
               (_$E109655109661_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109653_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109653_))
              (let* ((_$tgt109656109664_
                      (let () (declare (not safe)) (__AST-e _$e109653_)))
                     (_$hd109657109667_
                      (let () (declare (not safe)) (##car _$tgt109656109664_)))
                     (_$tl109658109670_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109656109664_))))
                (let* ((_body109674_ _$tl109658109670_)
                       (__tmp114788
                        (let ((__tmp114789
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109674_))))
                          (declare (not safe))
                          (cons 'begin __tmp114789))))
                  (declare (not safe))
                  (__SRC__% __tmp114788 _stx109651_)))
              (let () (declare (not safe)) (_$E109655109661_))))))
    (define __compile-import%
      (lambda (_stx109626_)
        (let* ((_$e109628_ _stx109626_)
               (_$E109630109636_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109628_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109628_))
              (let* ((_$tgt109631109639_
                      (let () (declare (not safe)) (__AST-e _$e109628_)))
                     (_$hd109632109642_
                      (let () (declare (not safe)) (##car _$tgt109631109639_)))
                     (_$tl109633109645_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109631109639_))))
                (let* ((_body109649_ _$tl109633109645_)
                       (__tmp114790
                        (let ((__tmp114791
                               (let ((__tmp114792
                                      (let ((__tmp114793
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109649_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114793))))
                                 (declare (not safe))
                                 (cons __tmp114792 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114791))))
                  (declare (not safe))
                  (__SRC__% __tmp114790 _stx109626_)))
              (let () (declare (not safe)) (_$E109630109636_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109573_)
        (let* ((_$e109575_ _stx109573_)
               (_$E109577109589_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109575_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109575_))
              (let* ((_$tgt109578109592_
                      (let () (declare (not safe)) (__AST-e _$e109575_)))
                     (_$hd109579109595_
                      (let () (declare (not safe)) (##car _$tgt109578109592_)))
                     (_$tl109580109598_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109578109592_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109580109598_))
                    (let* ((_$tgt109581109602_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109580109598_)))
                           (_$hd109582109605_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109581109602_)))
                           (_$tl109583109608_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109581109602_))))
                      (let ((_ann109612_ _$hd109582109605_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109583109608_))
                            (let* ((_$tgt109584109614_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109583109608_)))
                                   (_$hd109585109617_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109584109614_)))
                                   (_$tl109586109620_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109584109614_))))
                              (let ((_expr109624_ _$hd109585109617_))
                                (if (let ((__tmp114794
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109586109620_))))
                                      (declare (not safe))
                                      (equal? __tmp114794 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109624_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109577109589_)))))
                            (let () (declare (not safe)) (_$E109577109589_)))))
                    (let () (declare (not safe)) (_$E109577109589_))))
              (let () (declare (not safe)) (_$E109577109589_))))))
    (define __compile-define-values%
      (lambda (_stx109464_)
        (let* ((_$e109466_ _stx109464_)
               (_$E109468109480_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109466_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109466_))
              (let* ((_$tgt109469109483_
                      (let () (declare (not safe)) (__AST-e _$e109466_)))
                     (_$hd109470109486_
                      (let () (declare (not safe)) (##car _$tgt109469109483_)))
                     (_$tl109471109489_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109469109483_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109471109489_))
                    (let* ((_$tgt109472109493_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109471109489_)))
                           (_$hd109473109496_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109472109493_)))
                           (_$tl109474109499_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109472109493_))))
                      (let ((_hd109503_ _$hd109473109496_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109474109499_))
                            (let* ((_$tgt109475109505_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109474109499_)))
                                   (_$hd109476109508_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109475109505_)))
                                   (_$tl109477109511_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109475109505_))))
                              (let ((_expr109515_ _$hd109476109508_))
                                (if (let ((__tmp114827
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109477109511_))))
                                      (declare (not safe))
                                      (equal? __tmp114827 '()))
                                    (let* ((_$e109517_ _hd109503_)
                                           (_$E109519109560_
                                            (lambda ()
                                              (let ((_$E109520109545_
                                                     (lambda ()
                                                       (let* ((_$E109521109532_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109517_))))
                      (_ids109535_ _hd109503_)
                      (_len109537_ (length _ids109535_))
                      (_tmp109539_
                       (let ((__tmp114795 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114795))))
                 (let ((__tmp114796
                        (let ((__tmp114797
                               (let ((__tmp114814
                                      (let ((__tmp114815
                                             (let ((__tmp114816
                                                    (let ((__tmp114817
                                                           (let ((__tmp114818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109515_))))
                     (declare (not safe))
                     (cons __tmp114818 '()))))
              (declare (not safe))
              (cons _tmp109539_ __tmp114817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114816))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114815 _stx109464_)))
                                     (__tmp114798
                                      (let ((__tmp114810
                                             (let ((__tmp114811
                                                    (let ((__tmp114812
                                                           (let ((__tmp114813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109537_ '()))))
                     (declare (not safe))
                     (cons _tmp109539_ __tmp114813))))
              (declare (not safe))
              (cons '__check-values __tmp114812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114811
                                                _stx109464_)))
                                            (__tmp114799
                                             (let ((__tmp114800
                                                    (let ((__tmp114802
                                                           (lambda (_id109542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109543_)
                     (if (let () (declare (not safe)) (__AST-e _id109542_))
                         (let ((__tmp114803
                                (let ((__tmp114804
                                       (let ((__tmp114809
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109542_)))
                                             (__tmp114805
                                              (let ((__tmp114806
                                                     (let ((__tmp114807
                                                            (let ((__tmp114808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109543_ '()))))
                      (declare (not safe))
                      (cons _tmp109539_ __tmp114808))))
               (declare (not safe))
               (cons '##vector-ref __tmp114807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114806 '()))))
                                         (declare (not safe))
                                         (cons __tmp114809 __tmp114805))))
                                  (declare (not safe))
                                  (cons 'define __tmp114804))))
                           (declare (not safe))
                           (__SRC__% __tmp114803 _stx109464_))
                         '#f)))
                  (__tmp114801
                   (let () (declare (not safe)) (iota _len109537_))))
              (declare (not safe))
              (filter-map2 __tmp114802 _ids109535_ __tmp114801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114800))))
                                        (declare (not safe))
                                        (cons __tmp114810 __tmp114799))))
                                 (declare (not safe))
                                 (cons __tmp114814 __tmp114798))))
                          (declare (not safe))
                          (cons 'begin __tmp114797))))
                   (declare (not safe))
                   (__SRC__% __tmp114796 _stx109464_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109517_))
                                                    (let* ((_$tgt109522109548_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109517_)))
                                                           (_$hd109523109551_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109522109548_)))
                                                           (_$tl109524109554_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109522109548_))))
                                                      (let ((_id109558_
                                                             _$hd109523109551_))
                                                        (if (let ((__tmp114824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109524109554_))))
                      (declare (not safe))
                      (equal? __tmp114824 '()))
                    (let ((__tmp114819
                           (let ((__tmp114820
                                  (let ((__tmp114823
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109558_)))
                                        (__tmp114821
                                         (let ((__tmp114822
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109515_))))
                                           (declare (not safe))
                                           (cons __tmp114822 '()))))
                                    (declare (not safe))
                                    (cons __tmp114823 __tmp114821))))
                             (declare (not safe))
                             (cons 'define __tmp114820))))
                      (declare (not safe))
                      (__SRC__% __tmp114819 _stx109464_))
                    (let () (declare (not safe)) (_$E109520109545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109520109545_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109517_))
                                          (let* ((_$tgt109525109563_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109517_)))
                                                 (_$hd109526109566_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109525109563_)))
                                                 (_$tl109527109569_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109525109563_))))
                                            (if (let ((__tmp114826
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109526109566_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114826 '#f))
                                                (if (let ((__tmp114825
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109527109569_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114825 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109515_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109519109560_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109519109560_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109519109560_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109468109480_)))))
                            (let () (declare (not safe)) (_$E109468109480_)))))
                    (let () (declare (not safe)) (_$E109468109480_))))
              (let () (declare (not safe)) (_$E109468109480_))))))
    (define __compile-head-id
      (lambda (_e109462_)
        (let ((__tmp114828
               (if (let () (declare (not safe)) (__AST-e _e109462_))
                   _e109462_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114828))))
    (define __compile-lambda-head
      (lambda (_hd109419_)
        (let _recur109421_ ((_rest109423_ _hd109419_))
          (let* ((_$e109425_ _rest109423_)
                 (_$E109427109445_
                  (lambda ()
                    (let ((_$E109428109442_
                           (lambda ()
                             (let* ((_$E109429109437_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109425_))))
                                    (_tail109440_ _$e109425_))
                               (declare (not safe))
                               (__compile-head-id _tail109440_)))))
                      (if (let ((__tmp114829
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109425_))))
                            (declare (not safe))
                            (equal? __tmp114829 '()))
                          '()
                          (let () (declare (not safe)) (_$E109428109442_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109425_))
                (let* ((_$tgt109430109448_
                        (let () (declare (not safe)) (__AST-e _$e109425_)))
                       (_$hd109431109451_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109430109448_)))
                       (_$tl109432109454_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109430109448_))))
                  (let* ((_hd109458_ _$hd109431109451_)
                         (_rest109460_ _$tl109432109454_))
                    (let ((__tmp114831
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109458_)))
                          (__tmp114830
                           (let ()
                             (declare (not safe))
                             (_recur109421_ _rest109460_))))
                      (declare (not safe))
                      (cons __tmp114831 __tmp114830))))
                (let () (declare (not safe)) (_$E109427109445_)))))))
    (define __compile-lambda%
      (lambda (_stx109366_)
        (let* ((_$e109368_ _stx109366_)
               (_$E109370109382_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109368_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109368_))
              (let* ((_$tgt109371109385_
                      (let () (declare (not safe)) (__AST-e _$e109368_)))
                     (_$hd109372109388_
                      (let () (declare (not safe)) (##car _$tgt109371109385_)))
                     (_$tl109373109391_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109371109385_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109373109391_))
                    (let* ((_$tgt109374109395_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109373109391_)))
                           (_$hd109375109398_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109374109395_)))
                           (_$tl109376109401_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109374109395_))))
                      (let ((_hd109405_ _$hd109375109398_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109376109401_))
                            (let* ((_$tgt109377109407_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109376109401_)))
                                   (_$hd109378109410_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109377109407_)))
                                   (_$tl109379109413_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109377109407_))))
                              (let ((_body109417_ _$hd109378109410_))
                                (if (let ((__tmp114837
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109379109413_))))
                                      (declare (not safe))
                                      (equal? __tmp114837 '()))
                                    (let ((__tmp114832
                                           (let ((__tmp114833
                                                  (let ((__tmp114836
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109405_)))
                                                        (__tmp114834
                                                         (let ((__tmp114835
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109417_))))
                   (declare (not safe))
                   (cons __tmp114835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114836
                                                          __tmp114834))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114833))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114832 _stx109366_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109370109382_)))))
                            (let () (declare (not safe)) (_$E109370109382_)))))
                    (let () (declare (not safe)) (_$E109370109382_))))
              (let () (declare (not safe)) (_$E109370109382_))))))
    (define __compile-case-lambda%
      (lambda (_stx109158_)
        (letrec ((_variadic?109160_
                  (lambda (_hd109331_)
                    (let* ((_$e109333_ _hd109331_)
                           (_$E109335109351_
                            (lambda ()
                              (let ((_$E109336109348_
                                     (lambda ()
                                       (let ((_$E109337109345_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109333_)))))
                                         '#t))))
                                (if (let ((__tmp114838
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109333_))))
                                      (declare (not safe))
                                      (equal? __tmp114838 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109336109348_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109333_))
                          (let* ((_$tgt109338109354_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109333_)))
                                 (_$hd109339109357_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109338109354_)))
                                 (_$tl109340109360_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109338109354_))))
                            (let ((_rest109364_ _$tl109340109360_))
                              (declare (not safe))
                              (_variadic?109160_ _rest109364_)))
                          (let () (declare (not safe)) (_$E109335109351_))))))
                 (_arity109161_
                  (lambda (_hd109296_)
                    (let _lp109298_ ((_rest109300_ _hd109296_) (_k109301_ '0))
                      (let* ((_$e109303_ _rest109300_)
                             (_$E109305109316_
                              (lambda ()
                                (let ((_$E109306109313_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109303_)))))
                                  _k109301_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109303_))
                            (let* ((_$tgt109307109319_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109303_)))
                                   (_$hd109308109322_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109307109319_)))
                                   (_$tl109309109325_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109307109319_))))
                              (let* ((_rest109329_ _$tl109309109325_)
                                     (__tmp114839
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109301_ '1))))
                                (declare (not safe))
                                (_lp109298_ _rest109329_ __tmp114839)))
                            (let ()
                              (declare (not safe))
                              (_$E109305109316_)))))))
                 (_generate109162_
                  (lambda (_rest109223_ _args109224_ _len109225_)
                    (let* ((_$e109227_ _rest109223_)
                           (_$E109229109240_
                            (lambda ()
                              (let* ((_$E109230109237_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109227_))))
                                     (__tmp114840
                                      (let ((__tmp114841
                                             (let ((__tmp114842
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109224_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114842))))
                                        (declare (not safe))
                                        (cons 'error __tmp114841))))
                                (declare (not safe))
                                (__SRC__% __tmp114840 _stx109158_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109227_))
                          (let* ((_$tgt109231109243_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109227_)))
                                 (_$hd109232109246_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109231109243_)))
                                 (_$tl109233109249_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109231109243_))))
                            (let* ((_clause109253_ _$hd109232109246_)
                                   (_rest109255_ _$tl109233109249_)
                                   (_$e109257_ _clause109253_)
                                   (_$E109259109268_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109257_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109257_))
                                  (let* ((_$tgt109260109271_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109257_)))
                                         (_$hd109261109274_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109260109271_)))
                                         (_$tl109262109277_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109260109271_))))
                                    (let ((_hd109281_ _$hd109261109274_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109262109277_))
                                          (let* ((_$tgt109263109283_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109262109277_)))
                                                 (_$hd109264109286_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109263109283_)))
                                                 (_$tl109265109289_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109263109283_))))
                                            (if (let ((__tmp114857
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109265109289_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114857 '()))
                                                (let ((_clen109293_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109161_
                                                          _hd109281_)))
                                                      (_cmp109294_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109160_
                                                              _hd109281_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114843
                                                         (let ((__tmp114844
                                                                (let ((__tmp114854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114855
                                      (let ((__tmp114856
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109293_ '()))))
                                        (declare (not safe))
                                        (cons _len109225_ __tmp114856))))
                                 (declare (not safe))
                                 (cons _cmp109294_ __tmp114855)))
                              (__tmp114845
                               (let ((__tmp114848
                                      (let ((__tmp114849
                                             (let ((__tmp114850
                                                    (let ((__tmp114852
                                                           (let ((__tmp114853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109253_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114853)))
                  (__tmp114851
                   (let () (declare (not safe)) (cons _args109224_ '()))))
              (declare (not safe))
              (cons __tmp114852 __tmp114851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114850))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114849 _stx109158_)))
                                     (__tmp114846
                                      (let ((__tmp114847
                                             (let ()
                                               (declare (not safe))
                                               (_generate109162_
                                                _rest109255_
                                                _args109224_
                                                _len109225_))))
                                        (declare (not safe))
                                        (cons __tmp114847 '()))))
                                 (declare (not safe))
                                 (cons __tmp114848 __tmp114846))))
                          (declare (not safe))
                          (cons __tmp114854 __tmp114845))))
                   (declare (not safe))
                   (cons 'if __tmp114844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114843
                                                     _stx109158_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109259109268_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109259109268_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109259109268_)))))
                          (let () (declare (not safe)) (_$E109229109240_)))))))
          (let* ((_$e109164_ _stx109158_)
                 (_$E109166109198_
                  (lambda ()
                    (let ((_$E109167109180_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109164_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109164_))
                          (let* ((_$tgt109168109183_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109164_)))
                                 (_$hd109169109186_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109168109183_)))
                                 (_$tl109170109189_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109168109183_))))
                            (let ((_clauses109193_ _$tl109170109189_))
                              (let ((_args109195_
                                     (let ((__tmp114858 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114858 _stx109158_)))
                                    (_len109196_
                                     (let ((__tmp114859 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114859 _stx109158_))))
                                (let ((__tmp114860
                                       (let ((__tmp114861
                                              (let ((__tmp114862
                                                     (let ((__tmp114863
                                                            (let ((__tmp114864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114865
                                  (let ((__tmp114868
                                         (let ((__tmp114869
                                                (let ((__tmp114870
                                                       (let ((__tmp114871
                                                              (let ((__tmp114872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114873
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109195_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114873))))
                        (declare (not safe))
                        (__SRC__% __tmp114872 _stx109158_))))
                 (declare (not safe))
                 (cons __tmp114871 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109196_
                                                        __tmp114870))))
                                           (declare (not safe))
                                           (cons __tmp114869 '())))
                                        (__tmp114866
                                         (let ((__tmp114867
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109162_
                                                   _clauses109193_
                                                   _args109195_
                                                   _len109196_))))
                                           (declare (not safe))
                                           (cons __tmp114867 '()))))
                                    (declare (not safe))
                                    (cons __tmp114868 __tmp114866))))
                             (declare (not safe))
                             (cons 'let __tmp114865))))
                      (declare (not safe))
                      (__SRC__% __tmp114864 _stx109158_))))
               (declare (not safe))
               (cons __tmp114863 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109195_
                                                      __tmp114862))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114861))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114860 _stx109158_)))))
                          (let () (declare (not safe)) (_$E109167109180_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109164_))
                (let* ((_$tgt109171109201_
                        (let () (declare (not safe)) (__AST-e _$e109164_)))
                       (_$hd109172109204_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109171109201_)))
                       (_$tl109173109207_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109171109201_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109173109207_))
                      (let* ((_$tgt109174109211_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109173109207_)))
                             (_$hd109175109214_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109174109211_)))
                             (_$tl109176109217_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109174109211_))))
                        (let ((_clause109221_ _$hd109175109214_))
                          (if (let ((__tmp114875
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109176109217_))))
                                (declare (not safe))
                                (equal? __tmp114875 '()))
                              (let ((__tmp114874
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109221_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114874))
                              (let ()
                                (declare (not safe))
                                (_$E109166109198_)))))
                      (let () (declare (not safe)) (_$E109166109198_))))
                (let () (declare (not safe)) (_$E109166109198_)))))))
    (define __compile-let-form
      (lambda (_stx108927_ _compile-simple108928_ _compile-values108929_)
        (letrec ((_simple-bind?108931_
                  (lambda (_hd109116_)
                    (let* ((_hd109117109127_ _hd109116_)
                           (_else109120109135_ (lambda () '#f)))
                      (let ((_K109123109148_ (lambda (_id109146_) '#t))
                            (_K109122109140_ (lambda () '#t)))
                        (let ((_try-match109119109143_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109117109127_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109122109140_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109120109135_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109117109127_))
                              (let ((_tl109125109153_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109117109127_)))
                                    (_hd109124109151_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109117109127_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109125109153_))
                                    (let ((_id109156_ _hd109124109151_))
                                      (declare (not safe))
                                      (_K109123109148_ _id109156_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109119109143_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109119109143_))))))))
                 (_car-e108932_
                  (lambda (_hd109114_)
                    (if (let () (declare (not safe)) (pair? _hd109114_))
                        (car _hd109114_)
                        _hd109114_))))
          (let* ((_$e108934_ _stx108927_)
                 (_$E108936109079_
                  (lambda ()
                    (let ((_$E108937108959_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108934_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108934_))
                          (let* ((_$tgt108938108962_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108934_)))
                                 (_$hd108939108965_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108938108962_)))
                                 (_$tl108940108968_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108938108962_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108940108968_))
                                (let* ((_$tgt108941108972_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108940108968_)))
                                       (_$hd108942108975_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108941108972_)))
                                       (_$tl108943108978_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108941108972_))))
                                  (let ((_hd108982_ _$hd108942108975_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108943108978_))
                                        (let* ((_$tgt108944108984_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108943108978_)))
                                               (_$hd108945108987_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108944108984_)))
                                               (_$tl108946108990_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108944108984_))))
                                          (let ((_body108994_
                                                 _$hd108945108987_))
                                            (if (let ((__tmp114878
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108946108990_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114878 '()))
                                                (let* ((_hd-ids109034_
                                                        (map (lambda (_bind108996_)
                                                               (let* ((_$e108998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108996_)
                              (_$E109000109009_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108998_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108998_))
                             (let* ((_$tgt109001109012_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108998_)))
                                    (_$hd109002109015_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109001109012_)))
                                    (_$tl109003109018_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109001109012_))))
                               (let ((_ids109022_ _$hd109002109015_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109003109018_))
                                     (let* ((_$tgt109004109024_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109003109018_)))
                                            (_$hd109005109027_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109004109024_)))
                                            (_$tl109006109030_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109004109024_))))
                                       (if (let ((__tmp114876
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109006109030_))))
                                             (declare (not safe))
                                             (equal? __tmp114876 '()))
                                           _ids109022_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109000109009_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109000109009_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109000109009_)))))
                     _hd108982_))
               (_exprs109074_
                (map (lambda (_bind109036_)
                       (let* ((_$e109038_ _bind109036_)
                              (_$E109040109049_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109038_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109038_))
                             (let* ((_$tgt109041109052_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109038_)))
                                    (_$hd109042109055_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109041109052_)))
                                    (_$tl109043109058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109041109052_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109043109058_))
                                   (let* ((_$tgt109044109062_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109043109058_)))
                                          (_$hd109045109065_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109044109062_)))
                                          (_$tl109046109068_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109044109062_))))
                                     (let ((_expr109072_ _$hd109045109065_))
                                       (if (let ((__tmp114877
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109046109068_))))
                                             (declare (not safe))
                                             (equal? __tmp114877 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109072_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109040109049_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109040109049_))))
                             (let ()
                               (declare (not safe))
                               (_$E109040109049_)))))
                     _hd108982_))
               (_body109076_
                (let () (declare (not safe)) (__compile _body108994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109034_))
              (_compile-simple108928_
               (map _car-e108932_ _hd-ids109034_)
               _exprs109074_
               _body109076_)
              (_compile-values108929_
               _hd-ids109034_
               _exprs109074_
               _body109076_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108937108959_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108937108959_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108937108959_))))
                          (let () (declare (not safe)) (_$E108937108959_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108934_))
                (let* ((_$tgt108947109082_
                        (let () (declare (not safe)) (__AST-e _$e108934_)))
                       (_$hd108948109085_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108947109082_)))
                       (_$tl108949109088_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108947109082_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108949109088_))
                      (let* ((_$tgt108950109092_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108949109088_)))
                             (_$hd108951109095_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108950109092_)))
                             (_$tl108952109098_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108950109092_))))
                        (if (let ((__tmp114880
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108951109095_))))
                              (declare (not safe))
                              (equal? __tmp114880 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108952109098_))
                                (let* ((_$tgt108953109102_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108952109098_)))
                                       (_$hd108954109105_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108953109102_)))
                                       (_$tl108955109108_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108953109102_))))
                                  (let ((_body109112_ _$hd108954109105_))
                                    (if (let ((__tmp114879
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108955109108_))))
                                          (declare (not safe))
                                          (equal? __tmp114879 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109112_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108936109079_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108936109079_)))
                            (let () (declare (not safe)) (_$E108936109079_))))
                      (let () (declare (not safe)) (_$E108936109079_))))
                (let () (declare (not safe)) (_$E108936109079_)))))))
    (define __compile-let-values%
      (lambda (_stx108742_)
        (letrec ((_compile-simple108744_
                  (lambda (_hd-ids108923_ _exprs108924_ _body108925_)
                    (let ((__tmp114881
                           (let ((__tmp114882
                                  (let ((__tmp114884
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108923_)
                                              _exprs108924_))
                                        (__tmp114883
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108925_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114884 __tmp114883))))
                             (declare (not safe))
                             (cons 'let __tmp114882))))
                      (declare (not safe))
                      (__SRC__% __tmp114881 _stx108742_))))
                 (_compile-values108745_
                  (lambda (_hd-ids108841_ _exprs108842_ _body108843_)
                    (let _lp108845_ ((_rest108847_ _hd-ids108841_)
                                     (_exprs108848_ _exprs108842_)
                                     (_bind108849_ '())
                                     (_post108850_ '()))
                      (let* ((_rest108851108865_ _rest108847_)
                             (_else108854108873_
                              (lambda ()
                                (let ((__tmp114885
                                       (let ((__tmp114886
                                              (let ((__tmp114889
                                                     (reverse _bind108849_))
                                                    (__tmp114887
                                                     (let ((__tmp114888
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108746_
                                                               _post108850_
                                                               _body108843_))))
                                                       (declare (not safe))
                                                       (cons __tmp114888
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114889
                                                      __tmp114887))))
                                         (declare (not safe))
                                         (cons 'let __tmp114886))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114885 _stx108742_)))))
                        (let ((_K108859108906_
                               (lambda (_rest108903_ _id108904_)
                                 (let ((__tmp114895 (cdr _exprs108848_))
                                       (__tmp114890
                                        (let ((__tmp114891
                                               (let ((__tmp114894
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108904_)))
                                                     (__tmp114892
                                                      (let ((__tmp114893
                                                             (car _exprs108848_)))
                                                        (declare (not safe))
                                                        (cons __tmp114893
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114894
                                                       __tmp114892))))
                                          (declare (not safe))
                                          (cons __tmp114891 _bind108849_))))
                                   (declare (not safe))
                                   (_lp108845_
                                    _rest108903_
                                    __tmp114895
                                    __tmp114890
                                    _post108850_))))
                              (_K108856108888_
                               (lambda (_rest108877_ _hd108878_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108878_))
                                     (let ((__tmp114916 (cdr _exprs108848_))
                                           (__tmp114909
                                            (let ((__tmp114910
                                                   (let ((__tmp114915
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108878_)))
                                                         (__tmp114911
                                                          (let ((__tmp114912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114913
                                (let ((__tmp114914 (car _exprs108848_)))
                                  (declare (not safe))
                                  (cons __tmp114914 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114913))))
                    (declare (not safe))
                    (cons __tmp114912 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114915
                                                           __tmp114911))))
                                              (declare (not safe))
                                              (cons __tmp114910
                                                    _bind108849_))))
                                       (declare (not safe))
                                       (_lp108845_
                                        _rest108877_
                                        __tmp114916
                                        __tmp114909
                                        _post108850_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108878_))
                                         (let* ((_len108880_
                                                 (length _hd108878_))
                                                (_tmp108882_
                                                 (let ((__tmp114896 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114896))))
                                           (let ((__tmp114908
                                                  (cdr _exprs108848_))
                                                 (__tmp114904
                                                  (let ((__tmp114905
                                                         (let ((__tmp114906
                                                                (let ((__tmp114907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108848_)))
                          (declare (not safe))
                          (cons __tmp114907 '()))))
                   (declare (not safe))
                   (cons _tmp108882_ __tmp114906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114905
                                                          _bind108849_)))
                                                 (__tmp114897
                                                  (let ((__tmp114898
                                                         (let ((__tmp114899
                                                                (let ((__tmp114900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114902
                                      (lambda (_id108885_ _k108886_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108885_))
                                            (let ((__tmp114903
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108885_))))
                                              (declare (not safe))
                                              (cons __tmp114903 _k108886_))
                                            '#f)))
                                     (__tmp114901
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108880_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114902
                                  _hd108878_
                                  __tmp114901))))
                          (declare (not safe))
                          (cons _len108880_ __tmp114900))))
                   (declare (not safe))
                   (cons _tmp108882_ __tmp114899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114898
                                                          _post108850_))))
                                             (declare (not safe))
                                             (_lp108845_
                                              _rest108877_
                                              __tmp114908
                                              __tmp114904
                                              __tmp114897)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108742_
                                            _hd108878_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108851108865_))
                              (let ((_tl108861108911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108851108865_)))
                                    (_hd108860108909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108851108865_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108860108909_))
                                    (let ((_tl108863108916_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108860108909_)))
                                          (_hd108862108914_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108860108909_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108863108916_))
                                          (let ((_id108919_ _hd108862108914_)
                                                (_rest108921_
                                                 _tl108861108911_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108859108906_
                                               _rest108921_
                                               _id108919_)))
                                          (let ((_hd108896_ _hd108860108909_)
                                                (_rest108898_
                                                 _tl108861108911_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108856108888_
                                               _rest108898_
                                               _hd108896_)))))
                                    (let ((_hd108896_ _hd108860108909_)
                                          (_rest108898_ _tl108861108911_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108856108888_
                                         _rest108898_
                                         _hd108896_)))))
                              (let ()
                                (declare (not safe))
                                (_else108854108873_))))))))
                 (_compile-post108746_
                  (lambda (_post108748_ _body108749_)
                    (let _lp108751_ ((_rest108753_ _post108748_)
                                     (_check108754_ '())
                                     (_bind108755_ '()))
                      (let* ((_rest108756108768_ _rest108753_)
                             (_else108758108776_
                              (lambda ()
                                (let ((__tmp114917
                                       (let ((__tmp114918
                                              (let ((__tmp114919
                                                     (let ((__tmp114920
                                                            (let ((__tmp114921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114922
                                  (let ((__tmp114923
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108749_ '()))))
                                    (declare (not safe))
                                    (cons _bind108755_ __tmp114923))))
                             (declare (not safe))
                             (cons 'let __tmp114922))))
                      (declare (not safe))
                      (__SRC__% __tmp114921 _stx108742_))))
               (declare (not safe))
               (cons __tmp114920 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114919
                                                        _check108754_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114918))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114917 _stx108742_))))
                             (_K108760108815_
                              (lambda (_rest108779_
                                       _init108780_
                                       _len108781_
                                       _tmp108782_)
                                (let ((__tmp114931
                                       (let ((__tmp114932
                                              (let ((__tmp114933
                                                     (let ((__tmp114934
                                                            (let ((__tmp114935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108781_ '()))))
                      (declare (not safe))
                      (cons _tmp108782_ __tmp114935))))
               (declare (not safe))
               (cons '__check-values __tmp114934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114933
                                                 _stx108742_))))
                                         (declare (not safe))
                                         (cons __tmp114932 _check108754_)))
                                      (__tmp114924
                                       (let ((__tmp114925
                                              (lambda (_hd108784_ _r108785_)
                                                (let* ((_hd108786108793_
                                                        _hd108784_)
                                                       (_E108788108797_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108786108793_)))
               (_K108789108803_
                (lambda (_k108800_ _id108801_)
                  (let ((__tmp114926
                         (let ((__tmp114927
                                (let ((__tmp114928
                                       (let ((__tmp114929
                                              (let ((__tmp114930
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108800_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108782_
                                                      __tmp114930))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114929))))
                                  (declare (not safe))
                                  (cons __tmp114928 '()))))
                           (declare (not safe))
                           (cons _id108801_ __tmp114927))))
                    (declare (not safe))
                    (cons __tmp114926 _r108785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108786108793_))
                                                      (let ((_hd108790108806_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108786108793_)))
                    (_tl108791108808_
                     (let () (declare (not safe)) (##cdr _hd108786108793_))))
                (let* ((_id108811_ _hd108790108806_)
                       (_k108813_ _tl108791108808_))
                  (declare (not safe))
                  (_K108789108803_ _k108813_ _id108811_)))
              (let () (declare (not safe)) (_E108788108797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114925
                                                 _bind108755_
                                                 _init108780_))))
                                  (declare (not safe))
                                  (_lp108751_
                                   _rest108779_
                                   __tmp114931
                                   __tmp114924)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108756108768_))
                            (let ((_hd108761108818_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108756108768_)))
                                  (_tl108762108820_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108756108768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108761108818_))
                                  (let ((_hd108763108823_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108761108818_)))
                                        (_tl108764108825_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108761108818_))))
                                    (let ((_tmp108828_ _hd108763108823_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108764108825_))
                                          (let ((_hd108765108830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108764108825_)))
                                                (_tl108766108832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108764108825_))))
                                            (let* ((_len108835_
                                                    _hd108765108830_)
                                                   (_init108837_
                                                    _tl108766108832_)
                                                   (_rest108839_
                                                    _tl108762108820_))
                                              (declare (not safe))
                                              (_K108760108815_
                                               _rest108839_
                                               _init108837_
                                               _len108835_
                                               _tmp108828_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108758108776_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108758108776_))))
                            (let ()
                              (declare (not safe))
                              (_else108758108776_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108742_
             _compile-simple108744_
             _compile-values108745_)))))
    (define __compile-letrec-values%
      (lambda (_stx108542_)
        (letrec ((_compile-simple108544_
                  (lambda (_hd-ids108738_ _exprs108739_ _body108740_)
                    (let ((__tmp114936
                           (let ((__tmp114937
                                  (let ((__tmp114939
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108738_)
                                              _exprs108739_))
                                        (__tmp114938
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108740_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114939 __tmp114938))))
                             (declare (not safe))
                             (cons 'letrec __tmp114937))))
                      (declare (not safe))
                      (__SRC__% __tmp114936 _stx108542_))))
                 (_compile-values108545_
                  (lambda (_hd-ids108652_ _exprs108653_ _body108654_)
                    (let _lp108656_ ((_rest108658_ _hd-ids108652_)
                                     (_exprs108659_ _exprs108653_)
                                     (_pre108660_ '())
                                     (_bind108661_ '())
                                     (_post108662_ '()))
                      (let* ((_rest108663108677_ _rest108658_)
                             (_else108666108685_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108546_
                                   _pre108660_
                                   _bind108661_
                                   _post108662_
                                   _body108654_)))))
                        (let ((_K108671108721_
                               (lambda (_rest108718_ _id108719_)
                                 (let ((__tmp114945 (cdr _exprs108659_))
                                       (__tmp114940
                                        (let ((__tmp114941
                                               (let ((__tmp114944
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108719_)))
                                                     (__tmp114942
                                                      (let ((__tmp114943
                                                             (car _exprs108659_)))
                                                        (declare (not safe))
                                                        (cons __tmp114943
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114944
                                                       __tmp114942))))
                                          (declare (not safe))
                                          (cons __tmp114941 _bind108661_))))
                                   (declare (not safe))
                                   (_lp108656_
                                    _rest108718_
                                    __tmp114945
                                    _pre108660_
                                    __tmp114940
                                    _post108662_))))
                              (_K108668108703_
                               (lambda (_rest108689_ _hd108690_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108690_))
                                     (let ((__tmp114973 (cdr _exprs108659_))
                                           (__tmp114966
                                            (let ((__tmp114967
                                                   (let ((__tmp114972
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108690_)))
                                                         (__tmp114968
                                                          (let ((__tmp114969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114970
                                (let ((__tmp114971 (car _exprs108659_)))
                                  (declare (not safe))
                                  (cons __tmp114971 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114970))))
                    (declare (not safe))
                    (cons __tmp114969 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114972
                                                           __tmp114968))))
                                              (declare (not safe))
                                              (cons __tmp114967
                                                    _bind108661_))))
                                       (declare (not safe))
                                       (_lp108656_
                                        _rest108689_
                                        __tmp114973
                                        _pre108660_
                                        __tmp114966
                                        _post108662_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108690_))
                                         (let* ((_len108692_
                                                 (length _hd108690_))
                                                (_tmp108694_
                                                 (let ((__tmp114946 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114946))))
                                           (let ((__tmp114965
                                                  (cdr _exprs108659_))
                                                 (__tmp114958
                                                  (let ((__tmp114959
                                                         (lambda (_id108697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108698_)
                   (if (let () (declare (not safe)) (__AST-e _id108697_))
                       (let ((__tmp114960
                              (let ((__tmp114964
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108697_)))
                                    (__tmp114961
                                     (let ((__tmp114962
                                            (let ((__tmp114963
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114963))))
                                       (declare (not safe))
                                       (cons __tmp114962 '()))))
                                (declare (not safe))
                                (cons __tmp114964 __tmp114961))))
                         (declare (not safe))
                         (cons __tmp114960 _r108698_))
                       _r108698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114959
                                                            _pre108660_
                                                            _hd108690_)))
                                                 (__tmp114954
                                                  (let ((__tmp114955
                                                         (let ((__tmp114956
                                                                (let ((__tmp114957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108659_)))
                          (declare (not safe))
                          (cons __tmp114957 '()))))
                   (declare (not safe))
                   (cons _tmp108694_ __tmp114956))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114955
                                                          _bind108661_)))
                                                 (__tmp114947
                                                  (let ((__tmp114948
                                                         (let ((__tmp114949
                                                                (let ((__tmp114950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114952
                                      (lambda (_id108700_ _k108701_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108700_))
                                            (let ((__tmp114953
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108700_))))
                                              (declare (not safe))
                                              (cons __tmp114953 _k108701_))
                                            '#f)))
                                     (__tmp114951
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108692_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114952
                                  _hd108690_
                                  __tmp114951))))
                          (declare (not safe))
                          (cons _len108692_ __tmp114950))))
                   (declare (not safe))
                   (cons _tmp108694_ __tmp114949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114948
                                                          _post108662_))))
                                             (declare (not safe))
                                             (_lp108656_
                                              _rest108689_
                                              __tmp114965
                                              __tmp114958
                                              __tmp114954
                                              __tmp114947)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108542_
                                            _hd108690_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108663108677_))
                              (let ((_tl108673108726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108663108677_)))
                                    (_hd108672108724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108663108677_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108672108724_))
                                    (let ((_tl108675108731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108672108724_)))
                                          (_hd108674108729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108672108724_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108675108731_))
                                          (let ((_id108734_ _hd108674108729_)
                                                (_rest108736_
                                                 _tl108673108726_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108671108721_
                                               _rest108736_
                                               _id108734_)))
                                          (let ((_hd108711_ _hd108672108724_)
                                                (_rest108713_
                                                 _tl108673108726_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108668108703_
                                               _rest108713_
                                               _hd108711_)))))
                                    (let ((_hd108711_ _hd108672108724_)
                                          (_rest108713_ _tl108673108726_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108668108703_
                                         _rest108713_
                                         _hd108711_)))))
                              (let ()
                                (declare (not safe))
                                (_else108666108685_))))))))
                 (_compile-inner108546_
                  (lambda (_pre108647_ _bind108648_ _post108649_ _body108650_)
                    (if (let () (declare (not safe)) (null? _pre108647_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108547_
                           _bind108648_
                           _post108649_
                           _body108650_))
                        (let ((__tmp114974
                               (let ((__tmp114975
                                      (let ((__tmp114978 (reverse _pre108647_))
                                            (__tmp114976
                                             (let ((__tmp114977
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108547_
                                                       _bind108648_
                                                       _post108649_
                                                       _body108650_))))
                                               (declare (not safe))
                                               (cons __tmp114977 '()))))
                                        (declare (not safe))
                                        (cons __tmp114978 __tmp114976))))
                                 (declare (not safe))
                                 (cons 'let __tmp114975))))
                          (declare (not safe))
                          (__SRC__% __tmp114974 _stx108542_)))))
                 (_compile-bind108547_
                  (lambda (_bind108643_ _post108644_ _body108645_)
                    (let ((__tmp114979
                           (let ((__tmp114980
                                  (let ((__tmp114983 (reverse _bind108643_))
                                        (__tmp114981
                                         (let ((__tmp114982
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108548_
                                                   _post108644_
                                                   _body108645_))))
                                           (declare (not safe))
                                           (cons __tmp114982 '()))))
                                    (declare (not safe))
                                    (cons __tmp114983 __tmp114981))))
                             (declare (not safe))
                             (cons 'letrec __tmp114980))))
                      (declare (not safe))
                      (__SRC__% __tmp114979 _stx108542_))))
                 (_compile-post108548_
                  (lambda (_post108550_ _body108551_)
                    (let _lp108553_ ((_rest108555_ _post108550_)
                                     (_check108556_ '())
                                     (_bind108557_ '()))
                      (let* ((_rest108558108570_ _rest108555_)
                             (_else108560108578_
                              (lambda ()
                                (let ((__tmp114984
                                       (let ((__tmp114985
                                              (let ((__tmp114986
                                                     (let ((__tmp114987
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114987 _bind108557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114986
                                                        _check108556_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114985))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114984 _stx108542_))))
                             (_K108562108617_
                              (lambda (_rest108581_
                                       _init108582_
                                       _len108583_
                                       _tmp108584_)
                                (let ((__tmp114996
                                       (let ((__tmp114997
                                              (let ((__tmp114998
                                                     (let ((__tmp114999
                                                            (let ((__tmp115000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108583_ '()))))
                      (declare (not safe))
                      (cons _tmp108584_ __tmp115000))))
               (declare (not safe))
               (cons '__check-values __tmp114999))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114998
                                                 _stx108542_))))
                                         (declare (not safe))
                                         (cons __tmp114997 _check108556_)))
                                      (__tmp114988
                                       (let ((__tmp114989
                                              (lambda (_hd108586_ _r108587_)
                                                (let* ((_hd108588108595_
                                                        _hd108586_)
                                                       (_E108590108599_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108588108595_)))
               (_K108591108605_
                (lambda (_k108602_ _id108603_)
                  (let ((__tmp114990
                         (let ((__tmp114991
                                (let ((__tmp114992
                                       (let ((__tmp114993
                                              (let ((__tmp114994
                                                     (let ((__tmp114995
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108584_ __tmp114995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114994))))
                                         (declare (not safe))
                                         (cons __tmp114993 '()))))
                                  (declare (not safe))
                                  (cons _id108603_ __tmp114992))))
                           (declare (not safe))
                           (cons 'set! __tmp114991))))
                    (declare (not safe))
                    (cons __tmp114990 _r108587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108588108595_))
                                                      (let ((_hd108592108608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108588108595_)))
                    (_tl108593108610_
                     (let () (declare (not safe)) (##cdr _hd108588108595_))))
                (let* ((_id108613_ _hd108592108608_)
                       (_k108615_ _tl108593108610_))
                  (declare (not safe))
                  (_K108591108605_ _k108615_ _id108613_)))
              (let () (declare (not safe)) (_E108590108599_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114989
                                                 _bind108557_
                                                 _init108582_))))
                                  (declare (not safe))
                                  (_lp108553_
                                   _rest108581_
                                   __tmp114996
                                   __tmp114988)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108558108570_))
                            (let ((_hd108563108620_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108558108570_)))
                                  (_tl108564108622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108558108570_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108563108620_))
                                  (let ((_hd108565108625_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108563108620_)))
                                        (_tl108566108627_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108563108620_))))
                                    (let ((_tmp108630_ _hd108565108625_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108566108627_))
                                          (let ((_hd108567108632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108566108627_)))
                                                (_tl108568108634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108566108627_))))
                                            (let* ((_len108637_
                                                    _hd108567108632_)
                                                   (_init108639_
                                                    _tl108568108634_)
                                                   (_rest108641_
                                                    _tl108564108622_))
                                              (declare (not safe))
                                              (_K108562108617_
                                               _rest108641_
                                               _init108639_
                                               _len108637_
                                               _tmp108630_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108560108578_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108560108578_))))
                            (let ()
                              (declare (not safe))
                              (_else108560108578_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108542_
             _compile-simple108544_
             _compile-values108545_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108297_)
        (letrec ((_compile-simple108299_
                  (lambda (_hd-ids108538_ _exprs108539_ _body108540_)
                    (let ((__tmp115001
                           (let ((__tmp115002
                                  (let ((__tmp115004
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108538_)
                                              _exprs108539_))
                                        (__tmp115003
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108540_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115004 __tmp115003))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115002))))
                      (declare (not safe))
                      (__SRC__% __tmp115001 _stx108297_))))
                 (_compile-values108300_
                  (lambda (_hd-ids108449_ _exprs108450_ _body108451_)
                    (let _lp108453_ ((_rest108455_ _hd-ids108449_)
                                     (_exprs108456_ _exprs108450_)
                                     (_bind108457_ '())
                                     (_post108458_ '()))
                      (let* ((_rest108459108473_ _rest108455_)
                             (_else108462108481_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108301_
                                   _bind108457_
                                   _post108458_
                                   _body108451_)))))
                        (let ((_K108467108521_
                               (lambda (_rest108516_ _hd108517_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108517_))
                                     (let ((_id108519_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108517_))))
                                       (let ((__tmp115019 (cdr _exprs108456_))
                                             (__tmp115014
                                              (let ((__tmp115015
                                                     (let ((__tmp115016
                                                            (let ((__tmp115017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115018
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115018))))
                      (declare (not safe))
                      (cons __tmp115017 '()))))
               (declare (not safe))
               (cons _id108519_ __tmp115016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115015
                                                      _bind108457_)))
                                             (__tmp115010
                                              (let ((__tmp115011
                                                     (let ((__tmp115012
                                                            (let ((__tmp115013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108456_)))
                      (declare (not safe))
                      (cons __tmp115013 '()))))
               (declare (not safe))
               (cons _id108519_ __tmp115012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115011
                                                      _post108458_))))
                                         (declare (not safe))
                                         (_lp108453_
                                          _rest108516_
                                          __tmp115019
                                          __tmp115014
                                          __tmp115010)))
                                     (let ((__tmp115009 (cdr _exprs108456_))
                                           (__tmp115005
                                            (let ((__tmp115006
                                                   (let ((__tmp115007
                                                          (let ((__tmp115008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108456_)))
                    (declare (not safe))
                    (cons __tmp115008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115007))))
                                              (declare (not safe))
                                              (cons __tmp115006
                                                    _post108458_))))
                                       (declare (not safe))
                                       (_lp108453_
                                        _rest108516_
                                        __tmp115009
                                        _bind108457_
                                        __tmp115005)))))
                              (_K108464108501_
                               (lambda (_rest108485_ _hd108486_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108486_))
                                     (let ((_id108488_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108486_))))
                                       (let ((__tmp115055 (cdr _exprs108456_))
                                             (__tmp115050
                                              (let ((__tmp115051
                                                     (let ((__tmp115052
                                                            (let ((__tmp115053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115054
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115054))))
                      (declare (not safe))
                      (cons __tmp115053 '()))))
               (declare (not safe))
               (cons _id108488_ __tmp115052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115051
                                                      _bind108457_)))
                                             (__tmp115044
                                              (let ((__tmp115045
                                                     (let ((__tmp115046
                                                            (let ((__tmp115047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115048
                                  (let ((__tmp115049 (car _exprs108456_)))
                                    (declare (not safe))
                                    (cons __tmp115049 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115048))))
                      (declare (not safe))
                      (cons __tmp115047 '()))))
               (declare (not safe))
               (cons _id108488_ __tmp115046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115045
                                                      _post108458_))))
                                         (declare (not safe))
                                         (_lp108453_
                                          _rest108485_
                                          __tmp115055
                                          __tmp115050
                                          __tmp115044)))
                                     (if (let ((__tmp115043
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108486_))))
                                           (declare (not safe))
                                           (not __tmp115043))
                                         (let ((__tmp115042
                                                (cdr _exprs108456_))
                                               (__tmp115038
                                                (let ((__tmp115039
                                                       (let ((__tmp115040
                                                              (let ((__tmp115041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108456_)))
                        (declare (not safe))
                        (cons __tmp115041 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115039
                                                        _post108458_))))
                                           (declare (not safe))
                                           (_lp108453_
                                            _rest108485_
                                            __tmp115042
                                            _bind108457_
                                            __tmp115038))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108486_))
                                             (let* ((_len108490_
                                                     (length _hd108486_))
                                                    (_tmp108492_
                                                     (let ((__tmp115020
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115020))))
                                               (let ((__tmp115037
                                                      (cdr _exprs108456_))
                                                     (__tmp115030
                                                      (let ((__tmp115031
                                                             (lambda (_id108495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108496_)
                       (if (let () (declare (not safe)) (__AST-e _id108495_))
                           (let ((__tmp115032
                                  (let ((__tmp115036
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108495_)))
                                        (__tmp115033
                                         (let ((__tmp115034
                                                (let ((__tmp115035
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115035))))
                                           (declare (not safe))
                                           (cons __tmp115034 '()))))
                                    (declare (not safe))
                                    (cons __tmp115036 __tmp115033))))
                             (declare (not safe))
                             (cons __tmp115032 _r108496_))
                           _r108496_))))
                (declare (not safe))
                (foldl1 __tmp115031 _bind108457_ _hd108486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115021
                                                      (let ((__tmp115022
                                                             (let ((__tmp115023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115029 (car _exprs108456_))
                                  (__tmp115024
                                   (let ((__tmp115025
                                          (let ((__tmp115027
                                                 (lambda (_id108498_ _k108499_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108498_))
                                                       (let ((__tmp115028
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108498_))))
                 (declare (not safe))
                 (cons __tmp115028 _k108499_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115026
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108490_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115027
                                             _hd108486_
                                             __tmp115026))))
                                     (declare (not safe))
                                     (cons _len108490_ __tmp115025))))
                              (declare (not safe))
                              (cons __tmp115029 __tmp115024))))
                       (declare (not safe))
                       (cons _tmp108492_ __tmp115023))))
                (declare (not safe))
                (cons __tmp115022 _post108458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108453_
                                                  _rest108485_
                                                  __tmp115037
                                                  __tmp115030
                                                  __tmp115021)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108297_
                                                _hd108486_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108459108473_))
                              (let ((_tl108469108526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108459108473_)))
                                    (_hd108468108524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108459108473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108468108524_))
                                    (let ((_tl108471108531_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108468108524_)))
                                          (_hd108470108529_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108468108524_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108471108531_))
                                          (let ((_hd108534_ _hd108470108529_)
                                                (_rest108536_
                                                 _tl108469108526_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108467108521_
                                               _rest108536_
                                               _hd108534_)))
                                          (let ((_hd108509_ _hd108468108524_)
                                                (_rest108511_
                                                 _tl108469108526_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108464108501_
                                               _rest108511_
                                               _hd108509_)))))
                                    (let ((_hd108509_ _hd108468108524_)
                                          (_rest108511_ _tl108469108526_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108464108501_
                                         _rest108511_
                                         _hd108509_)))))
                              (let ()
                                (declare (not safe))
                                (_else108462108481_))))))))
                 (_compile-bind108301_
                  (lambda (_bind108445_ _post108446_ _body108447_)
                    (let ((__tmp115056
                           (let ((__tmp115057
                                  (let ((__tmp115060 (reverse _bind108445_))
                                        (__tmp115058
                                         (let ((__tmp115059
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108302_
                                                   _post108446_
                                                   _body108447_))))
                                           (declare (not safe))
                                           (cons __tmp115059 '()))))
                                    (declare (not safe))
                                    (cons __tmp115060 __tmp115058))))
                             (declare (not safe))
                             (cons 'let __tmp115057))))
                      (declare (not safe))
                      (__SRC__% __tmp115056 _stx108297_))))
                 (_compile-post108302_
                  (lambda (_post108304_ _body108305_)
                    (let ((__tmp115061
                           (let ((__tmp115062
                                  (let ((__tmp115063
                                         (let ((__tmp115065
                                                (lambda (_hd108307_ _r108308_)
                                                  (let* ((_hd108309108332_
                                                          _hd108307_)
                                                         (_E108313108336_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108309108332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108326108430_
                                                           (lambda (_expr108428_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108428_ _r108308_))))
                  (_K108321108408_
                   (lambda (_expr108405_ _id108406_)
                     (let ((__tmp115066
                            (let ((__tmp115067
                                   (let ((__tmp115068
                                          (let ((__tmp115069
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108405_ '()))))
                                            (declare (not safe))
                                            (cons _id108406_ __tmp115069))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115068))))
                              (declare (not safe))
                              (__SRC__% __tmp115067 _stx108297_))))
                       (declare (not safe))
                       (cons __tmp115066 _r108308_))))
                  (_K108314108375_
                   (lambda (_init108340_ _len108341_ _expr108342_ _tmp108343_)
                     (let ((__tmp115070
                            (let ((__tmp115071
                                   (let ((__tmp115072
                                          (let ((__tmp115086
                                                 (let ((__tmp115087
                                                        (let ((__tmp115088
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108342_ '()))))
                  (declare (not safe))
                  (cons _tmp108343_ __tmp115088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115087 '())))
                                                (__tmp115073
                                                 (let ((__tmp115082
                                                        (let ((__tmp115083
                                                               (let ((__tmp115084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115085
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108341_ '()))))
                                (declare (not safe))
                                (cons _tmp108343_ __tmp115085))))
                         (declare (not safe))
                         (cons '__check-values __tmp115084))))
                  (declare (not safe))
                  (__SRC__% __tmp115083 _stx108297_)))
               (__tmp115074
                (let ((__tmp115075
                       (map (lambda (_hd108345_)
                              (let* ((_hd108346108353_ _hd108345_)
                                     (_E108348108357_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108346108353_)))
                                     (_K108349108363_
                                      (lambda (_k108360_ _id108361_)
                                        (let ((__tmp115076
                                               (let ((__tmp115077
                                                      (let ((__tmp115078
                                                             (let ((__tmp115079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115080
                                   (let ((__tmp115081
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108360_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108343_ __tmp115081))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115080))))
                       (declare (not safe))
                       (cons __tmp115079 '()))))
                (declare (not safe))
                (cons _id108361_ __tmp115078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115077))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115076
                                           _stx108297_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108346108353_))
                                    (let ((_hd108350108366_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108346108353_)))
                                          (_tl108351108368_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108346108353_))))
                                      (let* ((_id108371_ _hd108350108366_)
                                             (_k108373_ _tl108351108368_))
                                        (declare (not safe))
                                        (_K108349108363_
                                         _k108373_
                                         _id108371_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108348108357_)))))
                            _init108340_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115082
                                                         __tmp115074))))
                                            (declare (not safe))
                                            (cons __tmp115086 __tmp115073))))
                                     (declare (not safe))
                                     (cons 'let __tmp115072))))
                              (declare (not safe))
                              (__SRC__% __tmp115071 _stx108297_))))
                       (declare (not safe))
                       (cons __tmp115070 _r108308_)))))
              (if (let () (declare (not safe)) (##pair? _hd108309108332_))
                  (let ((_tl108328108435_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108309108332_)))
                        (_hd108327108433_
                         (let ()
                           (declare (not safe))
                           (##car _hd108309108332_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108327108433_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108328108435_))
                            (let ((_tl108330108440_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108328108435_)))
                                  (_hd108329108438_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108328108435_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108330108440_))
                                  (let ((_expr108443_ _hd108329108438_))
                                    (declare (not safe))
                                    (_K108326108430_ _expr108443_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108330108440_))
                                      (let ((_tl108320108394_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108330108440_)))
                                            (_hd108319108392_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108330108440_))))
                                        (let ((_tmp108383_ _hd108327108433_)
                                              (_expr108390_ _hd108329108438_)
                                              (_len108397_ _hd108319108392_)
                                              (_init108399_ _tl108320108394_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108314108375_
                                             _init108399_
                                             _len108397_
                                             _expr108390_
                                             _tmp108383_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108313108336_)))))
                            (let () (declare (not safe)) (_E108313108336_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108328108435_))
                            (let ((_tl108325108420_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108328108435_)))
                                  (_hd108324108418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108328108435_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108325108420_))
                                  (let ((_id108416_ _hd108327108433_)
                                        (_expr108423_ _hd108324108418_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108321108408_
                                       _expr108423_
                                       _id108416_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108325108420_))
                                      (let ((_tl108320108394_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108325108420_)))
                                            (_hd108319108392_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108325108420_))))
                                        (let ((_tmp108383_ _hd108327108433_)
                                              (_expr108390_ _hd108324108418_)
                                              (_len108397_ _hd108319108392_)
                                              (_init108399_ _tl108320108394_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108314108375_
                                             _init108399_
                                             _len108397_
                                             _expr108390_
                                             _tmp108383_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108313108336_)))))
                            (let () (declare (not safe)) (_E108313108336_)))))
                  (let () (declare (not safe)) (_E108313108336_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115064
                                                (list _body108305_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115065
                                                   __tmp115064
                                                   _post108304_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115063))))
                             (declare (not safe))
                             (cons 'begin __tmp115062))))
                      (declare (not safe))
                      (__SRC__% __tmp115061 _stx108297_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108297_
             _compile-simple108299_
             _compile-values108300_)))))
    (define __compile-call%
      (lambda (_stx108257_)
        (let* ((_$e108259_ _stx108257_)
               (_$E108261108270_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108259_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108259_))
              (let* ((_$tgt108262108273_
                      (let () (declare (not safe)) (__AST-e _$e108259_)))
                     (_$hd108263108276_
                      (let () (declare (not safe)) (##car _$tgt108262108273_)))
                     (_$tl108264108279_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108262108273_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108264108279_))
                    (let* ((_$tgt108265108283_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108264108279_)))
                           (_$hd108266108286_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108265108283_)))
                           (_$tl108267108289_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108265108283_))))
                      (let* ((_rator108293_ _$hd108266108286_)
                             (_rands108295_ _$tl108267108289_)
                             (__tmp115089
                              (let ((__tmp115091
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108293_)))
                                    (__tmp115090
                                     (map __compile _rands108295_)))
                                (declare (not safe))
                                (cons __tmp115091 __tmp115090))))
                        (declare (not safe))
                        (__SRC__% __tmp115089 _stx108257_)))
                    (let () (declare (not safe)) (_$E108261108270_))))
              (let () (declare (not safe)) (_$E108261108270_))))))
    (define __compile-ref%
      (lambda (_stx108219_)
        (let* ((_$e108221_ _stx108219_)
               (_$E108223108232_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108221_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108221_))
              (let* ((_$tgt108224108235_
                      (let () (declare (not safe)) (__AST-e _$e108221_)))
                     (_$hd108225108238_
                      (let () (declare (not safe)) (##car _$tgt108224108235_)))
                     (_$tl108226108241_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108224108235_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108226108241_))
                    (let* ((_$tgt108227108245_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108226108241_)))
                           (_$hd108228108248_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108227108245_)))
                           (_$tl108229108251_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108227108245_))))
                      (let ((_id108255_ _$hd108228108248_))
                        (if (let ((__tmp115092
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108229108251_))))
                              (declare (not safe))
                              (equal? __tmp115092 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108255_ _stx108219_))
                            (let () (declare (not safe)) (_$E108223108232_)))))
                    (let () (declare (not safe)) (_$E108223108232_))))
              (let () (declare (not safe)) (_$E108223108232_))))))
    (define __compile-setq%
      (lambda (_stx108166_)
        (let* ((_$e108168_ _stx108166_)
               (_$E108170108182_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108168_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108168_))
              (let* ((_$tgt108171108185_
                      (let () (declare (not safe)) (__AST-e _$e108168_)))
                     (_$hd108172108188_
                      (let () (declare (not safe)) (##car _$tgt108171108185_)))
                     (_$tl108173108191_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108171108185_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108173108191_))
                    (let* ((_$tgt108174108195_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108173108191_)))
                           (_$hd108175108198_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108174108195_)))
                           (_$tl108176108201_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108174108195_))))
                      (let ((_id108205_ _$hd108175108198_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108176108201_))
                            (let* ((_$tgt108177108207_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108176108201_)))
                                   (_$hd108178108210_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108177108207_)))
                                   (_$tl108179108213_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108177108207_))))
                              (let ((_expr108217_ _$hd108178108210_))
                                (if (let ((__tmp115098
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108179108213_))))
                                      (declare (not safe))
                                      (equal? __tmp115098 '()))
                                    (let ((__tmp115093
                                           (let ((__tmp115094
                                                  (let ((__tmp115097
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108205_
                                                            _stx108166_)))
                                                        (__tmp115095
                                                         (let ((__tmp115096
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108217_))))
                   (declare (not safe))
                   (cons __tmp115096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115097
                                                          __tmp115095))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115094))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115093 _stx108166_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108170108182_)))))
                            (let () (declare (not safe)) (_$E108170108182_)))))
                    (let () (declare (not safe)) (_$E108170108182_))))
              (let () (declare (not safe)) (_$E108170108182_))))))
    (define __compile-if%
      (lambda (_stx108098_)
        (let* ((_$e108100_ _stx108098_)
               (_$E108102108117_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108100_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108100_))
              (let* ((_$tgt108103108120_
                      (let () (declare (not safe)) (__AST-e _$e108100_)))
                     (_$hd108104108123_
                      (let () (declare (not safe)) (##car _$tgt108103108120_)))
                     (_$tl108105108126_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108103108120_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108105108126_))
                    (let* ((_$tgt108106108130_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108105108126_)))
                           (_$hd108107108133_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108106108130_)))
                           (_$tl108108108136_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108106108130_))))
                      (let ((_p108140_ _$hd108107108133_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108108108136_))
                            (let* ((_$tgt108109108142_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108108108136_)))
                                   (_$hd108110108145_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108109108142_)))
                                   (_$tl108111108148_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108109108142_))))
                              (let ((_t108152_ _$hd108110108145_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108111108148_))
                                    (let* ((_$tgt108112108154_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108111108148_)))
                                           (_$hd108113108157_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108112108154_)))
                                           (_$tl108114108160_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108112108154_))))
                                      (let ((_f108164_ _$hd108113108157_))
                                        (if (let ((__tmp115106
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108114108160_))))
                                              (declare (not safe))
                                              (equal? __tmp115106 '()))
                                            (let ((__tmp115099
                                                   (let ((__tmp115100
                                                          (let ((__tmp115105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108140_)))
                        (__tmp115101
                         (let ((__tmp115104
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108152_)))
                               (__tmp115102
                                (let ((__tmp115103
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108164_))))
                                  (declare (not safe))
                                  (cons __tmp115103 '()))))
                           (declare (not safe))
                           (cons __tmp115104 __tmp115102))))
                    (declare (not safe))
                    (cons __tmp115105 __tmp115101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115100))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115099
                                               _stx108098_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108102108117_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108102108117_)))))
                            (let () (declare (not safe)) (_$E108102108117_)))))
                    (let () (declare (not safe)) (_$E108102108117_))))
              (let () (declare (not safe)) (_$E108102108117_))))))
    (define __compile-quote%
      (lambda (_stx108060_)
        (let* ((_$e108062_ _stx108060_)
               (_$E108064108073_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108062_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108062_))
              (let* ((_$tgt108065108076_
                      (let () (declare (not safe)) (__AST-e _$e108062_)))
                     (_$hd108066108079_
                      (let () (declare (not safe)) (##car _$tgt108065108076_)))
                     (_$tl108067108082_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108065108076_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108067108082_))
                    (let* ((_$tgt108068108086_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108067108082_)))
                           (_$hd108069108089_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108068108086_)))
                           (_$tl108070108092_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108068108086_))))
                      (let ((_e108096_ _$hd108069108089_))
                        (if (let ((__tmp115110
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108070108092_))))
                              (declare (not safe))
                              (equal? __tmp115110 '()))
                            (let ((__tmp115107
                                   (let ((__tmp115108
                                          (let ((__tmp115109
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108096_))))
                                            (declare (not safe))
                                            (cons __tmp115109 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115108))))
                              (declare (not safe))
                              (__SRC__% __tmp115107 _stx108060_))
                            (let () (declare (not safe)) (_$E108064108073_)))))
                    (let () (declare (not safe)) (_$E108064108073_))))
              (let () (declare (not safe)) (_$E108064108073_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108022_)
        (let* ((_$e108024_ _stx108022_)
               (_$E108026108035_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108024_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108024_))
              (let* ((_$tgt108027108038_
                      (let () (declare (not safe)) (__AST-e _$e108024_)))
                     (_$hd108028108041_
                      (let () (declare (not safe)) (##car _$tgt108027108038_)))
                     (_$tl108029108044_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108027108038_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108029108044_))
                    (let* ((_$tgt108030108048_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108029108044_)))
                           (_$hd108031108051_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108030108048_)))
                           (_$tl108032108054_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108030108048_))))
                      (let ((_e108058_ _$hd108031108051_))
                        (if (let ((__tmp115113
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108032108054_))))
                              (declare (not safe))
                              (equal? __tmp115113 '()))
                            (let ((__tmp115111
                                   (let ((__tmp115112
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108058_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115112))))
                              (declare (not safe))
                              (__SRC__% __tmp115111 _stx108022_))
                            (let () (declare (not safe)) (_$E108026108035_)))))
                    (let () (declare (not safe)) (_$E108026108035_))))
              (let () (declare (not safe)) (_$E108026108035_))))))
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
