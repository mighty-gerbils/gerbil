(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707767843)
  (begin
    (define __context::t
      (let ((__tmp114754 (list))
            (__tmp114752
             (let ((__tmp114753
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114753 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp114754
         '(t ns super table)
         __tmp114752
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109988_ (apply make-instance __context::t _$args109988_)))
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
      (let ((__tmp114757 (list))
            (__tmp114755
             (let ((__tmp114756
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114756 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp114757
         '(id)
         __tmp114755
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109985_ (apply make-instance __runtime::t _$args109985_)))
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
      (let ((__tmp114760 (list))
            (__tmp114758
             (let ((__tmp114759
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114759 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp114760
         '(e id)
         __tmp114758
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109982_ (apply make-instance __syntax::t _$args109982_)))
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
      (let ((__tmp114763 (list __syntax::t))
            (__tmp114761
             (let ((__tmp114762
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114762 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp114763
         '()
         __tmp114761
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109979_ (apply make-instance __macro::t _$args109979_)))
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
      (let ((__tmp114766 (list __macro::t))
            (__tmp114764
             (let ((__tmp114765
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114765 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp114766
         '()
         __tmp114764
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109976_
        (apply make-instance __special-form::t _$args109976_)))
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
      (let ((__tmp114769 (list __syntax::t))
            (__tmp114767
             (let ((__tmp114768
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114768 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp114769
         '()
         __tmp114767
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109973_
        (apply make-instance __core-form::t _$args109973_)))
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
      (let ((__tmp114772 (list __core-form::t))
            (__tmp114770
             (let ((__tmp114771
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114771 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp114772
         '()
         __tmp114770
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109970_
        (apply make-instance __core-expression::t _$args109970_)))
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
      (let ((__tmp114775 (list __core-form::t))
            (__tmp114773
             (let ((__tmp114774
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114774 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp114775
         '()
         __tmp114773
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109967_
        (apply make-instance __core-special-form::t _$args109967_)))
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
      (let ((__tmp114778 (list __syntax::t))
            (__tmp114776
             (let ((__tmp114777
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114777 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp114778
         '()
         __tmp114776
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109964_
        (apply make-instance __struct-info::t _$args109964_)))
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
      (let ((__tmp114781 (list __syntax::t))
            (__tmp114779
             (let ((__tmp114780
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114780 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp114781
         '()
         __tmp114779
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109961_ (apply make-instance __feature::t _$args109961_)))
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
      (let ((__tmp114784 (list __context::t))
            (__tmp114782
             (let ((__tmp114783
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114783 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp114784
         '(id path import export)
         __tmp114782
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109958_ (apply make-instance __module::t _$args109958_)))
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
      (let ((__tmp114786
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114785
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114786 __tmp114785)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109933_ _ctx109934_)
        (if _ctx109934_
            (let ((_id109936_
                   (let () (declare (not safe)) (__AST-e _id109933_))))
              (let _lp109938_ ((_ctx109940_ _ctx109934_))
                (let ((_$e109942_
                       (table-ref
                        (##structure-ref _ctx109940_ '4 __context::t '#f)
                        _id109936_
                        '#f)))
                  (if _$e109942_
                      (values _$e109942_)
                      (let ((_$e109945_
                             (##structure-ref
                              _ctx109940_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109945_
                            (let ()
                              (declare (not safe))
                              (_lp109938_ _$e109945_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109951_)
        (let ((_ctx109953_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109951_ _ctx109953_))))
    (define __core-resolve
      (lambda _g114788_
        (let ((_g114787_ (let () (declare (not safe)) (##length _g114788_))))
          (cond ((let () (declare (not safe)) (##fx= _g114787_ 1))
                 (apply (lambda (_id109951_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109951_)))
                        _g114788_))
                ((let () (declare (not safe)) (##fx= _g114787_ 2))
                 (apply (lambda (_id109955_ _ctx109956_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109955_ _ctx109956_)))
                        _g114788_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114788_))))))
    (define __core-bound-id?__%
      (lambda (_id109916_ _is?109917_)
        (let ((_$e109919_
               (let () (declare (not safe)) (__core-resolve__0 _id109916_))))
          (if _$e109919_ (_is?109917_ _$e109919_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109925_)
        (let ((_is?109927_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109925_ _is?109927_))))
    (define __core-bound-id?
      (lambda _g114790_
        (let ((_g114789_ (let () (declare (not safe)) (##length _g114790_))))
          (cond ((let () (declare (not safe)) (##fx= _g114789_ 1))
                 (apply (lambda (_id109925_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109925_)))
                        _g114790_))
                ((let () (declare (not safe)) (##fx= _g114789_ 2))
                 (apply (lambda (_id109929_ _is?109930_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109929_ _is?109930_)))
                        _g114790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114790_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109899_ _eid109900_ _ctx109901_)
        (if _eid109900_
            (let ((__tmp114793
                   (##structure-ref _ctx109901_ '4 __context::t '#f))
                  (__tmp114792
                   (let () (declare (not safe)) (__AST-e _id109899_)))
                  (__tmp114791
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109900_))))
              (declare (not safe))
              (table-set! __tmp114793 __tmp114792 __tmp114791))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109906_ _eid109907_)
        (let ((_ctx109909_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109906_ _eid109907_ _ctx109909_))))
    (define __core-bind-runtime!
      (lambda _g114795_
        (let ((_g114794_ (let () (declare (not safe)) (##length _g114795_))))
          (cond ((let () (declare (not safe)) (##fx= _g114794_ 2))
                 (apply (lambda (_id109906_ _eid109907_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109906_ _eid109907_)))
                        _g114795_))
                ((let () (declare (not safe)) (##fx= _g114794_ 3))
                 (apply (lambda (_id109911_ _eid109912_ _ctx109913_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109911_
                             _eid109912_
                             _ctx109913_)))
                        _g114795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114795_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109882_ _e109883_ _make109884_)
        (let ((__tmp114796
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109883_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109883_
                   (_make109884_ _e109883_ _id109882_))))
          (declare (not safe))
          (table-set! __*core* _id109882_ __tmp114796))))
    (define __core-bind-syntax!__0
      (lambda (_id109889_ _e109890_)
        (let ((_make109892_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109889_ _e109890_ _make109892_))))
    (define __core-bind-syntax!
      (lambda _g114798_
        (let ((_g114797_ (let () (declare (not safe)) (##length _g114798_))))
          (cond ((let () (declare (not safe)) (##fx= _g114797_ 2))
                 (apply (lambda (_id109889_ _e109890_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109889_ _e109890_)))
                        _g114798_))
                ((let () (declare (not safe)) (##fx= _g114797_ 3))
                 (apply (lambda (_id109894_ _e109895_ _make109896_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109894_
                             _e109895_
                             _make109896_)))
                        _g114798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114798_))))))
    (define __core-bind-macro!
      (lambda (_id109878_ _e109879_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109878_ _e109879_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109875_ _e109876_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109875_ _e109876_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109859_ _e109860_ _ctx109861_)
        (let ((__tmp114802 (##structure-ref _ctx109861_ '4 __context::t '#f))
              (__tmp114801 (let () (declare (not safe)) (__AST-e _id109859_)))
              (__tmp114799
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109860_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109860_
                   (let ((__tmp114800
                          (let () (declare (not safe)) (__AST-e _id109859_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109860_ __tmp114800)))))
          (declare (not safe))
          (table-set! __tmp114802 __tmp114801 __tmp114799))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109866_ _e109867_)
        (let ((_ctx109869_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109866_ _e109867_ _ctx109869_))))
    (define __core-bind-user-syntax!
      (lambda _g114804_
        (let ((_g114803_ (let () (declare (not safe)) (##length _g114804_))))
          (cond ((let () (declare (not safe)) (##fx= _g114803_ 2))
                 (apply (lambda (_id109866_ _e109867_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109866_
                             _e109867_)))
                        _g114804_))
                ((let () (declare (not safe)) (##fx= _g114803_ 3))
                 (apply (lambda (_id109871_ _e109872_ _ctx109873_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109871_
                             _e109872_
                             _ctx109873_)))
                        _g114804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114804_))))))
    (define make-__runtime-id__%
      (lambda (_id109840_ _ctx109841_)
        (let ((_id109843_ (let () (declare (not safe)) (__AST-e _id109840_))))
          (if (let () (declare (not safe)) (eq? _id109843_ '_))
              '#f
              (if (uninterned-symbol? _id109843_)
                  (gensym _id109843_)
                  (if (let () (declare (not safe)) (symbol? _id109843_))
                      (let ((_$e109845_
                             (##structure-ref
                              _ctx109841_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109845_))
                            (gensym _id109843_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109845_))
                                (let ((__tmp114805
                                       (##structure-ref
                                        _ctx109841_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114805 '"#" _id109843_))
                                _id109843_)))
                      (error '"Illegal runtime identifier" _id109843_)))))))
    (define make-__runtime-id__0
      (lambda (_id109851_)
        (let ((_ctx109853_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109851_ _ctx109853_))))
    (define make-__runtime-id
      (lambda _g114807_
        (let ((_g114806_ (let () (declare (not safe)) (##length _g114807_))))
          (cond ((let () (declare (not safe)) (##fx= _g114806_ 1))
                 (apply (lambda (_id109851_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109851_)))
                        _g114807_))
                ((let () (declare (not safe)) (##fx= _g114806_ 2))
                 (apply (lambda (_id109855_ _ctx109856_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109855_ _ctx109856_)))
                        _g114807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114807_))))))
    (define make-__context-local__%
      (lambda (_super109829_)
        (let ((__tmp114808
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109829_ __tmp114808))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109835_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109835_))))
    (define make-__context-local
      (lambda _g114810_
        (let ((_g114809_ (let () (declare (not safe)) (##length _g114810_))))
          (cond ((let () (declare (not safe)) (##fx= _g114809_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114810_))
                ((let () (declare (not safe)) (##fx= _g114809_ 1))
                 (apply (lambda (_super109837_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109837_)))
                        _g114810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114810_))))))
    (define make-__context-module__%
      (lambda (_id109809_ _ns109810_ _path109811_ _super109812_)
        (let ((__tmp114811
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109810_
           _super109812_
           __tmp114811
           _id109809_
           _path109811_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109817_ _ns109818_ _path109819_)
        (let ((_super109821_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109817_
           _ns109818_
           _path109819_
           _super109821_))))
    (define make-__context-module
      (lambda _g114813_
        (let ((_g114812_ (let () (declare (not safe)) (##length _g114813_))))
          (cond ((let () (declare (not safe)) (##fx= _g114812_ 3))
                 (apply (lambda (_id109817_ _ns109818_ _path109819_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109817_
                             _ns109818_
                             _path109819_)))
                        _g114813_))
                ((let () (declare (not safe)) (##fx= _g114812_ 4))
                 (apply (lambda (_id109823_
                                 _ns109824_
                                 _path109825_
                                 _super109826_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109823_
                             _ns109824_
                             _path109825_
                             _super109826_)))
                        _g114813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114813_))))))
    (define __SRC__%
      (lambda (_e109792_ _src-stx109793_)
        (if (or (let () (declare (not safe)) (pair? _e109792_))
                (let () (declare (not safe)) (symbol? _e109792_)))
            (let ((__tmp114817
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109793_
                          'gerbil#AST::t))
                       (let ((__tmp114818
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109793_))))
                         (declare (not safe))
                         (__locat __tmp114818))
                       '#f)))
              (declare (not safe))
              (##make-source _e109792_ __tmp114817))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109792_ 'gerbil#AST::t))
                (let ((__tmp114816
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109792_ '1 AST::t '#f)))
                      (__tmp114814
                       (let ((__tmp114815
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109792_))))
                         (declare (not safe))
                         (__locat __tmp114815))))
                  (declare (not safe))
                  (##make-source __tmp114816 __tmp114814))
                (error '"BUG! Cannot sourcify object" _e109792_)))))
    (define __SRC__0
      (lambda (_e109801_)
        (let ((_src-stx109803_ '#f))
          (declare (not safe))
          (__SRC__% _e109801_ _src-stx109803_))))
    (define __SRC
      (lambda _g114820_
        (let ((_g114819_ (let () (declare (not safe)) (##length _g114820_))))
          (cond ((let () (declare (not safe)) (##fx= _g114819_ 1))
                 (apply (lambda (_e109801_)
                          (let () (declare (not safe)) (__SRC__0 _e109801_)))
                        _g114820_))
                ((let () (declare (not safe)) (##fx= _g114819_ 2))
                 (apply (lambda (_e109805_ _src-stx109806_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109805_ _src-stx109806_)))
                        _g114820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114820_))))))
    (define __locat
      (lambda (_loc109789_)
        (if (let () (declare (not safe)) (##locat? _loc109789_))
            _loc109789_
            '#f)))
    (define __check-values
      (lambda (_obj109784_ _k109785_)
        (let ((_count109787_
               (if (let () (declare (not safe)) (##values? _obj109784_))
                   (let () (declare (not safe)) (##vector-length _obj109784_))
                   '1)))
          (if (fx= _count109787_ _k109785_)
              '#!void
              (error (if (fx< _count109787_ _k109785_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109784_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109784_))
                         _obj109784_)
                     _k109785_)))))
    (define __compile
      (lambda (_stx109754_)
        (let* ((_$e109756_ _stx109754_)
               (_$E109758109764_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109756_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109756_))
              (let* ((_$tgt109759109767_
                      (let () (declare (not safe)) (__AST-e _$e109756_)))
                     (_$hd109760109770_
                      (let () (declare (not safe)) (##car _$tgt109759109767_)))
                     (_$tl109761109773_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109759109767_))))
                (let* ((_form109777_ _$hd109760109770_)
                       (_$e109779_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109777_))))
                  (if _$e109779_
                      ((lambda (_bind109782_)
                         ((##structure-ref _bind109782_ '1 __syntax::t '#f)
                          _stx109754_))
                       _$e109779_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109754_
                         _form109777_)))))
              (let () (declare (not safe)) (_$E109758109764_))))))
    (define __compile-error__%
      (lambda (_stx109741_ _detail109742_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109741_
           _detail109742_))))
    (define __compile-error__0
      (lambda (_stx109747_)
        (let ((_detail109749_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109747_ _detail109749_))))
    (define __compile-error
      (lambda _g114822_
        (let ((_g114821_ (let () (declare (not safe)) (##length _g114822_))))
          (cond ((let () (declare (not safe)) (##fx= _g114821_ 1))
                 (apply (lambda (_stx109747_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109747_)))
                        _g114822_))
                ((let () (declare (not safe)) (##fx= _g114821_ 2))
                 (apply (lambda (_stx109751_ _detail109752_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109751_ _detail109752_)))
                        _g114822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114822_))))))
    (define __compile-ignore%
      (lambda (_stx109738_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109738_))))
    (define __compile-begin%
      (lambda (_stx109713_)
        (let* ((_$e109715_ _stx109713_)
               (_$E109717109723_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109715_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109715_))
              (let* ((_$tgt109718109726_
                      (let () (declare (not safe)) (__AST-e _$e109715_)))
                     (_$hd109719109729_
                      (let () (declare (not safe)) (##car _$tgt109718109726_)))
                     (_$tl109720109732_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109718109726_))))
                (let* ((_body109736_ _$tl109720109732_)
                       (__tmp114823
                        (let ((__tmp114824 (map __compile _body109736_)))
                          (declare (not safe))
                          (cons 'begin __tmp114824))))
                  (declare (not safe))
                  (__SRC__% __tmp114823 _stx109713_)))
              (let () (declare (not safe)) (_$E109717109723_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109688_)
        (let* ((_$e109690_ _stx109688_)
               (_$E109692109698_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109690_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109690_))
              (let* ((_$tgt109693109701_
                      (let () (declare (not safe)) (__AST-e _$e109690_)))
                     (_$hd109694109704_
                      (let () (declare (not safe)) (##car _$tgt109693109701_)))
                     (_$tl109695109707_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109693109701_))))
                (let* ((_body109711_ _$tl109695109707_)
                       (__tmp114825
                        (let ((__tmp114826
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109711_))))
                          (declare (not safe))
                          (cons 'begin __tmp114826))))
                  (declare (not safe))
                  (__SRC__% __tmp114825 _stx109688_)))
              (let () (declare (not safe)) (_$E109692109698_))))))
    (define __compile-import%
      (lambda (_stx109663_)
        (let* ((_$e109665_ _stx109663_)
               (_$E109667109673_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109665_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109665_))
              (let* ((_$tgt109668109676_
                      (let () (declare (not safe)) (__AST-e _$e109665_)))
                     (_$hd109669109679_
                      (let () (declare (not safe)) (##car _$tgt109668109676_)))
                     (_$tl109670109682_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109668109676_))))
                (let* ((_body109686_ _$tl109670109682_)
                       (__tmp114827
                        (let ((__tmp114828
                               (let ((__tmp114829
                                      (let ((__tmp114830
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109686_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114830))))
                                 (declare (not safe))
                                 (cons __tmp114829 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114828))))
                  (declare (not safe))
                  (__SRC__% __tmp114827 _stx109663_)))
              (let () (declare (not safe)) (_$E109667109673_))))))
    (define __compile-begin-annotation%
      (lambda (_stx109610_)
        (let* ((_$e109612_ _stx109610_)
               (_$E109614109626_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109612_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109612_))
              (let* ((_$tgt109615109629_
                      (let () (declare (not safe)) (__AST-e _$e109612_)))
                     (_$hd109616109632_
                      (let () (declare (not safe)) (##car _$tgt109615109629_)))
                     (_$tl109617109635_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109615109629_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109617109635_))
                    (let* ((_$tgt109618109639_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109617109635_)))
                           (_$hd109619109642_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109618109639_)))
                           (_$tl109620109645_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109618109639_))))
                      (let ((_ann109649_ _$hd109619109642_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109620109645_))
                            (let* ((_$tgt109621109651_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109620109645_)))
                                   (_$hd109622109654_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109621109651_)))
                                   (_$tl109623109657_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109621109651_))))
                              (let ((_expr109661_ _$hd109622109654_))
                                (if (let ((__tmp114831
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109623109657_))))
                                      (declare (not safe))
                                      (equal? __tmp114831 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109661_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109614109626_)))))
                            (let () (declare (not safe)) (_$E109614109626_)))))
                    (let () (declare (not safe)) (_$E109614109626_))))
              (let () (declare (not safe)) (_$E109614109626_))))))
    (define __compile-define-values%
      (lambda (_stx109501_)
        (let* ((_$e109503_ _stx109501_)
               (_$E109505109517_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109503_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109503_))
              (let* ((_$tgt109506109520_
                      (let () (declare (not safe)) (__AST-e _$e109503_)))
                     (_$hd109507109523_
                      (let () (declare (not safe)) (##car _$tgt109506109520_)))
                     (_$tl109508109526_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109506109520_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109508109526_))
                    (let* ((_$tgt109509109530_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109508109526_)))
                           (_$hd109510109533_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109509109530_)))
                           (_$tl109511109536_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109509109530_))))
                      (let ((_hd109540_ _$hd109510109533_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109511109536_))
                            (let* ((_$tgt109512109542_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109511109536_)))
                                   (_$hd109513109545_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109512109542_)))
                                   (_$tl109514109548_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109512109542_))))
                              (let ((_expr109552_ _$hd109513109545_))
                                (if (let ((__tmp114864
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109514109548_))))
                                      (declare (not safe))
                                      (equal? __tmp114864 '()))
                                    (let* ((_$e109554_ _hd109540_)
                                           (_$E109556109597_
                                            (lambda ()
                                              (let ((_$E109557109582_
                                                     (lambda ()
                                                       (let* ((_$E109558109569_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e109554_))))
                      (_ids109572_ _hd109540_)
                      (_len109574_ (length _ids109572_))
                      (_tmp109576_
                       (let ((__tmp114832 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114832))))
                 (let ((__tmp114833
                        (let ((__tmp114834
                               (let ((__tmp114851
                                      (let ((__tmp114852
                                             (let ((__tmp114853
                                                    (let ((__tmp114854
                                                           (let ((__tmp114855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr109552_))))
                     (declare (not safe))
                     (cons __tmp114855 '()))))
              (declare (not safe))
              (cons _tmp109576_ __tmp114854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114853))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114852 _stx109501_)))
                                     (__tmp114835
                                      (let ((__tmp114847
                                             (let ((__tmp114848
                                                    (let ((__tmp114849
                                                           (let ((__tmp114850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len109574_ '()))))
                     (declare (not safe))
                     (cons _tmp109576_ __tmp114850))))
              (declare (not safe))
              (cons '__check-values __tmp114849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114848
                                                _stx109501_)))
                                            (__tmp114836
                                             (let ((__tmp114837
                                                    (let ((__tmp114839
                                                           (lambda (_id109579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k109580_)
                     (if (let () (declare (not safe)) (__AST-e _id109579_))
                         (let ((__tmp114840
                                (let ((__tmp114841
                                       (let ((__tmp114846
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id109579_)))
                                             (__tmp114842
                                              (let ((__tmp114843
                                                     (let ((__tmp114844
                                                            (let ((__tmp114845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k109580_ '()))))
                      (declare (not safe))
                      (cons _tmp109576_ __tmp114845))))
               (declare (not safe))
               (cons '##vector-ref __tmp114844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114843 '()))))
                                         (declare (not safe))
                                         (cons __tmp114846 __tmp114842))))
                                  (declare (not safe))
                                  (cons 'define __tmp114841))))
                           (declare (not safe))
                           (__SRC__% __tmp114840 _stx109501_))
                         '#f)))
                  (__tmp114838
                   (let () (declare (not safe)) (iota _len109574_))))
              (declare (not safe))
              (filter-map2 __tmp114839 _ids109572_ __tmp114838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114837))))
                                        (declare (not safe))
                                        (cons __tmp114847 __tmp114836))))
                                 (declare (not safe))
                                 (cons __tmp114851 __tmp114835))))
                          (declare (not safe))
                          (cons 'begin __tmp114834))))
                   (declare (not safe))
                   (__SRC__% __tmp114833 _stx109501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e109554_))
                                                    (let* ((_$tgt109559109585_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e109554_)))
                                                           (_$hd109560109588_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt109559109585_)))
                                                           (_$tl109561109591_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt109559109585_))))
                                                      (let ((_id109595_
                                                             _$hd109560109588_))
                                                        (if (let ((__tmp114861
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl109561109591_))))
                      (declare (not safe))
                      (equal? __tmp114861 '()))
                    (let ((__tmp114856
                           (let ((__tmp114857
                                  (let ((__tmp114860
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id109595_)))
                                        (__tmp114858
                                         (let ((__tmp114859
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr109552_))))
                                           (declare (not safe))
                                           (cons __tmp114859 '()))))
                                    (declare (not safe))
                                    (cons __tmp114860 __tmp114858))))
                             (declare (not safe))
                             (cons 'define __tmp114857))))
                      (declare (not safe))
                      (__SRC__% __tmp114856 _stx109501_))
                    (let () (declare (not safe)) (_$E109557109582_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109557109582_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e109554_))
                                          (let* ((_$tgt109562109600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e109554_)))
                                                 (_$hd109563109603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109562109600_)))
                                                 (_$tl109564109606_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109562109600_))))
                                            (if (let ((__tmp114863
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd109563109603_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114863 '#f))
                                                (if (let ((__tmp114862
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl109564109606_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114862 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr109552_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E109556109597_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109556109597_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109556109597_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109505109517_)))))
                            (let () (declare (not safe)) (_$E109505109517_)))))
                    (let () (declare (not safe)) (_$E109505109517_))))
              (let () (declare (not safe)) (_$E109505109517_))))))
    (define __compile-head-id
      (lambda (_e109499_)
        (let ((__tmp114865
               (if (let () (declare (not safe)) (__AST-e _e109499_))
                   _e109499_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114865))))
    (define __compile-lambda-head
      (lambda (_hd109456_)
        (let _recur109458_ ((_rest109460_ _hd109456_))
          (let* ((_$e109462_ _rest109460_)
                 (_$E109464109482_
                  (lambda ()
                    (let ((_$E109465109479_
                           (lambda ()
                             (let* ((_$E109466109474_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e109462_))))
                                    (_tail109477_ _$e109462_))
                               (declare (not safe))
                               (__compile-head-id _tail109477_)))))
                      (if (let ((__tmp114866
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e109462_))))
                            (declare (not safe))
                            (equal? __tmp114866 '()))
                          '()
                          (let () (declare (not safe)) (_$E109465109479_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109462_))
                (let* ((_$tgt109467109485_
                        (let () (declare (not safe)) (__AST-e _$e109462_)))
                       (_$hd109468109488_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109467109485_)))
                       (_$tl109469109491_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109467109485_))))
                  (let* ((_hd109495_ _$hd109468109488_)
                         (_rest109497_ _$tl109469109491_))
                    (let ((__tmp114868
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd109495_)))
                          (__tmp114867
                           (let ()
                             (declare (not safe))
                             (_recur109458_ _rest109497_))))
                      (declare (not safe))
                      (cons __tmp114868 __tmp114867))))
                (let () (declare (not safe)) (_$E109464109482_)))))))
    (define __compile-lambda%
      (lambda (_stx109403_)
        (let* ((_$e109405_ _stx109403_)
               (_$E109407109419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109405_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109405_))
              (let* ((_$tgt109408109422_
                      (let () (declare (not safe)) (__AST-e _$e109405_)))
                     (_$hd109409109425_
                      (let () (declare (not safe)) (##car _$tgt109408109422_)))
                     (_$tl109410109428_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109408109422_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl109410109428_))
                    (let* ((_$tgt109411109432_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl109410109428_)))
                           (_$hd109412109435_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt109411109432_)))
                           (_$tl109413109438_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt109411109432_))))
                      (let ((_hd109442_ _$hd109412109435_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl109413109438_))
                            (let* ((_$tgt109414109444_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl109413109438_)))
                                   (_$hd109415109447_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109414109444_)))
                                   (_$tl109416109450_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109414109444_))))
                              (let ((_body109454_ _$hd109415109447_))
                                (if (let ((__tmp114874
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109416109450_))))
                                      (declare (not safe))
                                      (equal? __tmp114874 '()))
                                    (let ((__tmp114869
                                           (let ((__tmp114870
                                                  (let ((__tmp114873
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd109442_)))
                                                        (__tmp114871
                                                         (let ((__tmp114872
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body109454_))))
                   (declare (not safe))
                   (cons __tmp114872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114873
                                                          __tmp114871))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114870))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114869 _stx109403_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E109407109419_)))))
                            (let () (declare (not safe)) (_$E109407109419_)))))
                    (let () (declare (not safe)) (_$E109407109419_))))
              (let () (declare (not safe)) (_$E109407109419_))))))
    (define __compile-case-lambda%
      (lambda (_stx109195_)
        (letrec ((_variadic?109197_
                  (lambda (_hd109368_)
                    (let* ((_$e109370_ _hd109368_)
                           (_$E109372109388_
                            (lambda ()
                              (let ((_$E109373109385_
                                     (lambda ()
                                       (let ((_$E109374109382_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e109370_)))))
                                         '#t))))
                                (if (let ((__tmp114875
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e109370_))))
                                      (declare (not safe))
                                      (equal? __tmp114875 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E109373109385_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109370_))
                          (let* ((_$tgt109375109391_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109370_)))
                                 (_$hd109376109394_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109375109391_)))
                                 (_$tl109377109397_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109375109391_))))
                            (let ((_rest109401_ _$tl109377109397_))
                              (declare (not safe))
                              (_variadic?109197_ _rest109401_)))
                          (let () (declare (not safe)) (_$E109372109388_))))))
                 (_arity109198_
                  (lambda (_hd109333_)
                    (let _lp109335_ ((_rest109337_ _hd109333_) (_k109338_ '0))
                      (let* ((_$e109340_ _rest109337_)
                             (_$E109342109353_
                              (lambda ()
                                (let ((_$E109343109350_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e109340_)))))
                                  _k109338_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e109340_))
                            (let* ((_$tgt109344109356_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e109340_)))
                                   (_$hd109345109359_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt109344109356_)))
                                   (_$tl109346109362_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt109344109356_))))
                              (let* ((_rest109366_ _$tl109346109362_)
                                     (__tmp114876
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k109338_ '1))))
                                (declare (not safe))
                                (_lp109335_ _rest109366_ __tmp114876)))
                            (let ()
                              (declare (not safe))
                              (_$E109342109353_)))))))
                 (_generate109199_
                  (lambda (_rest109260_ _args109261_ _len109262_)
                    (let* ((_$e109264_ _rest109260_)
                           (_$E109266109277_
                            (lambda ()
                              (let* ((_$E109267109274_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e109264_))))
                                     (__tmp114877
                                      (let ((__tmp114878
                                             (let ((__tmp114879
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109261_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114879))))
                                        (declare (not safe))
                                        (cons 'error __tmp114878))))
                                (declare (not safe))
                                (__SRC__% __tmp114877 _stx109195_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109264_))
                          (let* ((_$tgt109268109280_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109264_)))
                                 (_$hd109269109283_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109268109280_)))
                                 (_$tl109270109286_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109268109280_))))
                            (let* ((_clause109290_ _$hd109269109283_)
                                   (_rest109292_ _$tl109270109286_)
                                   (_$e109294_ _clause109290_)
                                   (_$E109296109305_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e109294_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e109294_))
                                  (let* ((_$tgt109297109308_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e109294_)))
                                         (_$hd109298109311_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt109297109308_)))
                                         (_$tl109299109314_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt109297109308_))))
                                    (let ((_hd109318_ _$hd109298109311_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl109299109314_))
                                          (let* ((_$tgt109300109320_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109299109314_)))
                                                 (_$hd109301109323_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt109300109320_)))
                                                 (_$tl109302109326_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt109300109320_))))
                                            (if (let ((__tmp114894
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl109302109326_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114894 '()))
                                                (let ((_clen109330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity109198_
                                                          _hd109318_)))
                                                      (_cmp109331_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?109197_
                                                              _hd109318_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114880
                                                         (let ((__tmp114881
                                                                (let ((__tmp114891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114892
                                      (let ((__tmp114893
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen109330_ '()))))
                                        (declare (not safe))
                                        (cons _len109262_ __tmp114893))))
                                 (declare (not safe))
                                 (cons _cmp109331_ __tmp114892)))
                              (__tmp114882
                               (let ((__tmp114885
                                      (let ((__tmp114886
                                             (let ((__tmp114887
                                                    (let ((__tmp114889
                                                           (let ((__tmp114890
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause109290_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114890)))
                  (__tmp114888
                   (let () (declare (not safe)) (cons _args109261_ '()))))
              (declare (not safe))
              (cons __tmp114889 __tmp114888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114887))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114886 _stx109195_)))
                                     (__tmp114883
                                      (let ((__tmp114884
                                             (let ()
                                               (declare (not safe))
                                               (_generate109199_
                                                _rest109292_
                                                _args109261_
                                                _len109262_))))
                                        (declare (not safe))
                                        (cons __tmp114884 '()))))
                                 (declare (not safe))
                                 (cons __tmp114885 __tmp114883))))
                          (declare (not safe))
                          (cons __tmp114891 __tmp114882))))
                   (declare (not safe))
                   (cons 'if __tmp114881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114880
                                                     _stx109195_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E109296109305_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E109296109305_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E109296109305_)))))
                          (let () (declare (not safe)) (_$E109266109277_)))))))
          (let* ((_$e109201_ _stx109195_)
                 (_$E109203109235_
                  (lambda ()
                    (let ((_$E109204109217_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e109201_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e109201_))
                          (let* ((_$tgt109205109220_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e109201_)))
                                 (_$hd109206109223_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt109205109220_)))
                                 (_$tl109207109226_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt109205109220_))))
                            (let ((_clauses109230_ _$tl109207109226_))
                              (let ((_args109232_
                                     (let ((__tmp114895 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114895 _stx109195_)))
                                    (_len109233_
                                     (let ((__tmp114896 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114896 _stx109195_))))
                                (let ((__tmp114897
                                       (let ((__tmp114898
                                              (let ((__tmp114899
                                                     (let ((__tmp114900
                                                            (let ((__tmp114901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114902
                                  (let ((__tmp114905
                                         (let ((__tmp114906
                                                (let ((__tmp114907
                                                       (let ((__tmp114908
                                                              (let ((__tmp114909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114910
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109232_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114910))))
                        (declare (not safe))
                        (__SRC__% __tmp114909 _stx109195_))))
                 (declare (not safe))
                 (cons __tmp114908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len109233_
                                                        __tmp114907))))
                                           (declare (not safe))
                                           (cons __tmp114906 '())))
                                        (__tmp114903
                                         (let ((__tmp114904
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate109199_
                                                   _clauses109230_
                                                   _args109232_
                                                   _len109233_))))
                                           (declare (not safe))
                                           (cons __tmp114904 '()))))
                                    (declare (not safe))
                                    (cons __tmp114905 __tmp114903))))
                             (declare (not safe))
                             (cons 'let __tmp114902))))
                      (declare (not safe))
                      (__SRC__% __tmp114901 _stx109195_))))
               (declare (not safe))
               (cons __tmp114900 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args109232_
                                                      __tmp114899))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114898))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114897 _stx109195_)))))
                          (let () (declare (not safe)) (_$E109204109217_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e109201_))
                (let* ((_$tgt109208109238_
                        (let () (declare (not safe)) (__AST-e _$e109201_)))
                       (_$hd109209109241_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt109208109238_)))
                       (_$tl109210109244_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt109208109238_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl109210109244_))
                      (let* ((_$tgt109211109248_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl109210109244_)))
                             (_$hd109212109251_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt109211109248_)))
                             (_$tl109213109254_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt109211109248_))))
                        (let ((_clause109258_ _$hd109212109251_))
                          (if (let ((__tmp114912
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl109213109254_))))
                                (declare (not safe))
                                (equal? __tmp114912 '()))
                              (let ((__tmp114911
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause109258_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114911))
                              (let ()
                                (declare (not safe))
                                (_$E109203109235_)))))
                      (let () (declare (not safe)) (_$E109203109235_))))
                (let () (declare (not safe)) (_$E109203109235_)))))))
    (define __compile-let-form
      (lambda (_stx108964_ _compile-simple108965_ _compile-values108966_)
        (letrec ((_simple-bind?108968_
                  (lambda (_hd109153_)
                    (let* ((_hd109154109164_ _hd109153_)
                           (_else109157109172_ (lambda () '#f)))
                      (let ((_K109160109185_ (lambda (_id109183_) '#t))
                            (_K109159109177_ (lambda () '#t)))
                        (let ((_try-match109156109180_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd109154109164_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K109159109177_))
                                     (let ()
                                       (declare (not safe))
                                       (_else109157109172_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd109154109164_))
                              (let ((_tl109162109190_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd109154109164_)))
                                    (_hd109161109188_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd109154109164_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl109162109190_))
                                    (let ((_id109193_ _hd109161109188_))
                                      (declare (not safe))
                                      (_K109160109185_ _id109193_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match109156109180_))))
                              (let ()
                                (declare (not safe))
                                (_try-match109156109180_))))))))
                 (_car-e108969_
                  (lambda (_hd109151_)
                    (if (let () (declare (not safe)) (pair? _hd109151_))
                        (car _hd109151_)
                        _hd109151_))))
          (let* ((_$e108971_ _stx108964_)
                 (_$E108973109116_
                  (lambda ()
                    (let ((_$E108974108996_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108971_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108971_))
                          (let* ((_$tgt108975108999_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108971_)))
                                 (_$hd108976109002_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108975108999_)))
                                 (_$tl108977109005_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108975108999_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108977109005_))
                                (let* ((_$tgt108978109009_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108977109005_)))
                                       (_$hd108979109012_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108978109009_)))
                                       (_$tl108980109015_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108978109009_))))
                                  (let ((_hd109019_ _$hd108979109012_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108980109015_))
                                        (let* ((_$tgt108981109021_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108980109015_)))
                                               (_$hd108982109024_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108981109021_)))
                                               (_$tl108983109027_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108981109021_))))
                                          (let ((_body109031_
                                                 _$hd108982109024_))
                                            (if (let ((__tmp114915
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108983109027_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114915 '()))
                                                (let* ((_hd-ids109071_
                                                        (map (lambda (_bind109033_)
                                                               (let* ((_$e109035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind109033_)
                              (_$E109037109046_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109035_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109035_))
                             (let* ((_$tgt109038109049_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109035_)))
                                    (_$hd109039109052_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109038109049_)))
                                    (_$tl109040109055_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109038109049_))))
                               (let ((_ids109059_ _$hd109039109052_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl109040109055_))
                                     (let* ((_$tgt109041109061_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl109040109055_)))
                                            (_$hd109042109064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt109041109061_)))
                                            (_$tl109043109067_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt109041109061_))))
                                       (if (let ((__tmp114913
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109043109067_))))
                                             (declare (not safe))
                                             (equal? __tmp114913 '()))
                                           _ids109059_
                                           (let ()
                                             (declare (not safe))
                                             (_$E109037109046_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E109037109046_)))))
                             (let ()
                               (declare (not safe))
                               (_$E109037109046_)))))
                     _hd109019_))
               (_exprs109111_
                (map (lambda (_bind109073_)
                       (let* ((_$e109075_ _bind109073_)
                              (_$E109077109086_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e109075_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e109075_))
                             (let* ((_$tgt109078109089_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e109075_)))
                                    (_$hd109079109092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt109078109089_)))
                                    (_$tl109080109095_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt109078109089_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl109080109095_))
                                   (let* ((_$tgt109081109099_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl109080109095_)))
                                          (_$hd109082109102_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt109081109099_)))
                                          (_$tl109083109105_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt109081109099_))))
                                     (let ((_expr109109_ _$hd109082109102_))
                                       (if (let ((__tmp114914
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl109083109105_))))
                                             (declare (not safe))
                                             (equal? __tmp114914 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr109109_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E109077109086_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E109077109086_))))
                             (let ()
                               (declare (not safe))
                               (_$E109077109086_)))))
                     _hd109019_))
               (_body109113_
                (let () (declare (not safe)) (__compile _body109031_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids109071_))
              (_compile-simple108965_
               (map _car-e108969_ _hd-ids109071_)
               _exprs109111_
               _body109113_)
              (_compile-values108966_
               _hd-ids109071_
               _exprs109111_
               _body109113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108974108996_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108974108996_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108974108996_))))
                          (let () (declare (not safe)) (_$E108974108996_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108971_))
                (let* ((_$tgt108984109119_
                        (let () (declare (not safe)) (__AST-e _$e108971_)))
                       (_$hd108985109122_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108984109119_)))
                       (_$tl108986109125_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108984109119_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108986109125_))
                      (let* ((_$tgt108987109129_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108986109125_)))
                             (_$hd108988109132_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108987109129_)))
                             (_$tl108989109135_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108987109129_))))
                        (if (let ((__tmp114917
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108988109132_))))
                              (declare (not safe))
                              (equal? __tmp114917 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108989109135_))
                                (let* ((_$tgt108990109139_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108989109135_)))
                                       (_$hd108991109142_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108990109139_)))
                                       (_$tl108992109145_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108990109139_))))
                                  (let ((_body109149_ _$hd108991109142_))
                                    (if (let ((__tmp114916
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108992109145_))))
                                          (declare (not safe))
                                          (equal? __tmp114916 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body109149_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108973109116_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108973109116_)))
                            (let () (declare (not safe)) (_$E108973109116_))))
                      (let () (declare (not safe)) (_$E108973109116_))))
                (let () (declare (not safe)) (_$E108973109116_)))))))
    (define __compile-let-values%
      (lambda (_stx108779_)
        (letrec ((_compile-simple108781_
                  (lambda (_hd-ids108960_ _exprs108961_ _body108962_)
                    (let ((__tmp114918
                           (let ((__tmp114919
                                  (let ((__tmp114921
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108960_)
                                              _exprs108961_))
                                        (__tmp114920
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108962_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114921 __tmp114920))))
                             (declare (not safe))
                             (cons 'let __tmp114919))))
                      (declare (not safe))
                      (__SRC__% __tmp114918 _stx108779_))))
                 (_compile-values108782_
                  (lambda (_hd-ids108878_ _exprs108879_ _body108880_)
                    (let _lp108882_ ((_rest108884_ _hd-ids108878_)
                                     (_exprs108885_ _exprs108879_)
                                     (_bind108886_ '())
                                     (_post108887_ '()))
                      (let* ((_rest108888108902_ _rest108884_)
                             (_else108891108910_
                              (lambda ()
                                (let ((__tmp114922
                                       (let ((__tmp114923
                                              (let ((__tmp114926
                                                     (reverse _bind108886_))
                                                    (__tmp114924
                                                     (let ((__tmp114925
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108783_
                                                               _post108887_
                                                               _body108880_))))
                                                       (declare (not safe))
                                                       (cons __tmp114925
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114926
                                                      __tmp114924))))
                                         (declare (not safe))
                                         (cons 'let __tmp114923))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114922 _stx108779_)))))
                        (let ((_K108896108943_
                               (lambda (_rest108940_ _id108941_)
                                 (let ((__tmp114932 (cdr _exprs108885_))
                                       (__tmp114927
                                        (let ((__tmp114928
                                               (let ((__tmp114931
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108941_)))
                                                     (__tmp114929
                                                      (let ((__tmp114930
                                                             (car _exprs108885_)))
                                                        (declare (not safe))
                                                        (cons __tmp114930
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114931
                                                       __tmp114929))))
                                          (declare (not safe))
                                          (cons __tmp114928 _bind108886_))))
                                   (declare (not safe))
                                   (_lp108882_
                                    _rest108940_
                                    __tmp114932
                                    __tmp114927
                                    _post108887_))))
                              (_K108893108925_
                               (lambda (_rest108914_ _hd108915_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108915_))
                                     (let ((__tmp114953 (cdr _exprs108885_))
                                           (__tmp114946
                                            (let ((__tmp114947
                                                   (let ((__tmp114952
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108915_)))
                                                         (__tmp114948
                                                          (let ((__tmp114949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114950
                                (let ((__tmp114951 (car _exprs108885_)))
                                  (declare (not safe))
                                  (cons __tmp114951 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114950))))
                    (declare (not safe))
                    (cons __tmp114949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114952
                                                           __tmp114948))))
                                              (declare (not safe))
                                              (cons __tmp114947
                                                    _bind108886_))))
                                       (declare (not safe))
                                       (_lp108882_
                                        _rest108914_
                                        __tmp114953
                                        __tmp114946
                                        _post108887_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108915_))
                                         (let* ((_len108917_
                                                 (length _hd108915_))
                                                (_tmp108919_
                                                 (let ((__tmp114933 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114933))))
                                           (let ((__tmp114945
                                                  (cdr _exprs108885_))
                                                 (__tmp114941
                                                  (let ((__tmp114942
                                                         (let ((__tmp114943
                                                                (let ((__tmp114944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108885_)))
                          (declare (not safe))
                          (cons __tmp114944 '()))))
                   (declare (not safe))
                   (cons _tmp108919_ __tmp114943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114942
                                                          _bind108886_)))
                                                 (__tmp114934
                                                  (let ((__tmp114935
                                                         (let ((__tmp114936
                                                                (let ((__tmp114937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114939
                                      (lambda (_id108922_ _k108923_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108922_))
                                            (let ((__tmp114940
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108922_))))
                                              (declare (not safe))
                                              (cons __tmp114940 _k108923_))
                                            '#f)))
                                     (__tmp114938
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108917_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114939
                                  _hd108915_
                                  __tmp114938))))
                          (declare (not safe))
                          (cons _len108917_ __tmp114937))))
                   (declare (not safe))
                   (cons _tmp108919_ __tmp114936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114935
                                                          _post108887_))))
                                             (declare (not safe))
                                             (_lp108882_
                                              _rest108914_
                                              __tmp114945
                                              __tmp114941
                                              __tmp114934)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108779_
                                            _hd108915_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108888108902_))
                              (let ((_tl108898108948_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108888108902_)))
                                    (_hd108897108946_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108888108902_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108897108946_))
                                    (let ((_tl108900108953_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108897108946_)))
                                          (_hd108899108951_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108897108946_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108900108953_))
                                          (let ((_id108956_ _hd108899108951_)
                                                (_rest108958_
                                                 _tl108898108948_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108896108943_
                                               _rest108958_
                                               _id108956_)))
                                          (let ((_hd108933_ _hd108897108946_)
                                                (_rest108935_
                                                 _tl108898108948_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108893108925_
                                               _rest108935_
                                               _hd108933_)))))
                                    (let ((_hd108933_ _hd108897108946_)
                                          (_rest108935_ _tl108898108948_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108893108925_
                                         _rest108935_
                                         _hd108933_)))))
                              (let ()
                                (declare (not safe))
                                (_else108891108910_))))))))
                 (_compile-post108783_
                  (lambda (_post108785_ _body108786_)
                    (let _lp108788_ ((_rest108790_ _post108785_)
                                     (_check108791_ '())
                                     (_bind108792_ '()))
                      (let* ((_rest108793108805_ _rest108790_)
                             (_else108795108813_
                              (lambda ()
                                (let ((__tmp114954
                                       (let ((__tmp114955
                                              (let ((__tmp114956
                                                     (let ((__tmp114957
                                                            (let ((__tmp114958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114959
                                  (let ((__tmp114960
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108786_ '()))))
                                    (declare (not safe))
                                    (cons _bind108792_ __tmp114960))))
                             (declare (not safe))
                             (cons 'let __tmp114959))))
                      (declare (not safe))
                      (__SRC__% __tmp114958 _stx108779_))))
               (declare (not safe))
               (cons __tmp114957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114956
                                                        _check108791_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114955))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114954 _stx108779_))))
                             (_K108797108852_
                              (lambda (_rest108816_
                                       _init108817_
                                       _len108818_
                                       _tmp108819_)
                                (let ((__tmp114968
                                       (let ((__tmp114969
                                              (let ((__tmp114970
                                                     (let ((__tmp114971
                                                            (let ((__tmp114972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108818_ '()))))
                      (declare (not safe))
                      (cons _tmp108819_ __tmp114972))))
               (declare (not safe))
               (cons '__check-values __tmp114971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114970
                                                 _stx108779_))))
                                         (declare (not safe))
                                         (cons __tmp114969 _check108791_)))
                                      (__tmp114961
                                       (let ((__tmp114962
                                              (lambda (_hd108821_ _r108822_)
                                                (let* ((_hd108823108830_
                                                        _hd108821_)
                                                       (_E108825108834_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108823108830_)))
               (_K108826108840_
                (lambda (_k108837_ _id108838_)
                  (let ((__tmp114963
                         (let ((__tmp114964
                                (let ((__tmp114965
                                       (let ((__tmp114966
                                              (let ((__tmp114967
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108837_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108819_
                                                      __tmp114967))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114966))))
                                  (declare (not safe))
                                  (cons __tmp114965 '()))))
                           (declare (not safe))
                           (cons _id108838_ __tmp114964))))
                    (declare (not safe))
                    (cons __tmp114963 _r108822_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108823108830_))
                                                      (let ((_hd108827108843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108823108830_)))
                    (_tl108828108845_
                     (let () (declare (not safe)) (##cdr _hd108823108830_))))
                (let* ((_id108848_ _hd108827108843_)
                       (_k108850_ _tl108828108845_))
                  (declare (not safe))
                  (_K108826108840_ _k108850_ _id108848_)))
              (let () (declare (not safe)) (_E108825108834_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114962
                                                 _bind108792_
                                                 _init108817_))))
                                  (declare (not safe))
                                  (_lp108788_
                                   _rest108816_
                                   __tmp114968
                                   __tmp114961)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108793108805_))
                            (let ((_hd108798108855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108793108805_)))
                                  (_tl108799108857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108793108805_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108798108855_))
                                  (let ((_hd108800108860_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108798108855_)))
                                        (_tl108801108862_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108798108855_))))
                                    (let ((_tmp108865_ _hd108800108860_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108801108862_))
                                          (let ((_hd108802108867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108801108862_)))
                                                (_tl108803108869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108801108862_))))
                                            (let* ((_len108872_
                                                    _hd108802108867_)
                                                   (_init108874_
                                                    _tl108803108869_)
                                                   (_rest108876_
                                                    _tl108799108857_))
                                              (declare (not safe))
                                              (_K108797108852_
                                               _rest108876_
                                               _init108874_
                                               _len108872_
                                               _tmp108865_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108795108813_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108795108813_))))
                            (let ()
                              (declare (not safe))
                              (_else108795108813_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108779_
             _compile-simple108781_
             _compile-values108782_)))))
    (define __compile-letrec-values%
      (lambda (_stx108579_)
        (letrec ((_compile-simple108581_
                  (lambda (_hd-ids108775_ _exprs108776_ _body108777_)
                    (let ((__tmp114973
                           (let ((__tmp114974
                                  (let ((__tmp114976
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108775_)
                                              _exprs108776_))
                                        (__tmp114975
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108777_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114976 __tmp114975))))
                             (declare (not safe))
                             (cons 'letrec __tmp114974))))
                      (declare (not safe))
                      (__SRC__% __tmp114973 _stx108579_))))
                 (_compile-values108582_
                  (lambda (_hd-ids108689_ _exprs108690_ _body108691_)
                    (let _lp108693_ ((_rest108695_ _hd-ids108689_)
                                     (_exprs108696_ _exprs108690_)
                                     (_pre108697_ '())
                                     (_bind108698_ '())
                                     (_post108699_ '()))
                      (let* ((_rest108700108714_ _rest108695_)
                             (_else108703108722_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner108583_
                                   _pre108697_
                                   _bind108698_
                                   _post108699_
                                   _body108691_)))))
                        (let ((_K108708108758_
                               (lambda (_rest108755_ _id108756_)
                                 (let ((__tmp114982 (cdr _exprs108696_))
                                       (__tmp114977
                                        (let ((__tmp114978
                                               (let ((__tmp114981
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108756_)))
                                                     (__tmp114979
                                                      (let ((__tmp114980
                                                             (car _exprs108696_)))
                                                        (declare (not safe))
                                                        (cons __tmp114980
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114981
                                                       __tmp114979))))
                                          (declare (not safe))
                                          (cons __tmp114978 _bind108698_))))
                                   (declare (not safe))
                                   (_lp108693_
                                    _rest108755_
                                    __tmp114982
                                    _pre108697_
                                    __tmp114977
                                    _post108699_))))
                              (_K108705108740_
                               (lambda (_rest108726_ _hd108727_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108727_))
                                     (let ((__tmp115010 (cdr _exprs108696_))
                                           (__tmp115003
                                            (let ((__tmp115004
                                                   (let ((__tmp115009
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108727_)))
                                                         (__tmp115005
                                                          (let ((__tmp115006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp115007
                                (let ((__tmp115008 (car _exprs108696_)))
                                  (declare (not safe))
                                  (cons __tmp115008 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp115007))))
                    (declare (not safe))
                    (cons __tmp115006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp115009
                                                           __tmp115005))))
                                              (declare (not safe))
                                              (cons __tmp115004
                                                    _bind108698_))))
                                       (declare (not safe))
                                       (_lp108693_
                                        _rest108726_
                                        __tmp115010
                                        _pre108697_
                                        __tmp115003
                                        _post108699_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108727_))
                                         (let* ((_len108729_
                                                 (length _hd108727_))
                                                (_tmp108731_
                                                 (let ((__tmp114983 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114983))))
                                           (let ((__tmp115002
                                                  (cdr _exprs108696_))
                                                 (__tmp114995
                                                  (let ((__tmp114996
                                                         (lambda (_id108734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108735_)
                   (if (let () (declare (not safe)) (__AST-e _id108734_))
                       (let ((__tmp114997
                              (let ((__tmp115001
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108734_)))
                                    (__tmp114998
                                     (let ((__tmp114999
                                            (let ((__tmp115000
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp115000))))
                                       (declare (not safe))
                                       (cons __tmp114999 '()))))
                                (declare (not safe))
                                (cons __tmp115001 __tmp114998))))
                         (declare (not safe))
                         (cons __tmp114997 _r108735_))
                       _r108735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114996
                                                            _pre108697_
                                                            _hd108727_)))
                                                 (__tmp114991
                                                  (let ((__tmp114992
                                                         (let ((__tmp114993
                                                                (let ((__tmp114994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108696_)))
                          (declare (not safe))
                          (cons __tmp114994 '()))))
                   (declare (not safe))
                   (cons _tmp108731_ __tmp114993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114992
                                                          _bind108698_)))
                                                 (__tmp114984
                                                  (let ((__tmp114985
                                                         (let ((__tmp114986
                                                                (let ((__tmp114987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114989
                                      (lambda (_id108737_ _k108738_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108737_))
                                            (let ((__tmp114990
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108737_))))
                                              (declare (not safe))
                                              (cons __tmp114990 _k108738_))
                                            '#f)))
                                     (__tmp114988
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108729_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114989
                                  _hd108727_
                                  __tmp114988))))
                          (declare (not safe))
                          (cons _len108729_ __tmp114987))))
                   (declare (not safe))
                   (cons _tmp108731_ __tmp114986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114985
                                                          _post108699_))))
                                             (declare (not safe))
                                             (_lp108693_
                                              _rest108726_
                                              __tmp115002
                                              __tmp114995
                                              __tmp114991
                                              __tmp114984)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108579_
                                            _hd108727_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108700108714_))
                              (let ((_tl108710108763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108700108714_)))
                                    (_hd108709108761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108700108714_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108709108761_))
                                    (let ((_tl108712108768_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108709108761_)))
                                          (_hd108711108766_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108709108761_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108712108768_))
                                          (let ((_id108771_ _hd108711108766_)
                                                (_rest108773_
                                                 _tl108710108763_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108708108758_
                                               _rest108773_
                                               _id108771_)))
                                          (let ((_hd108748_ _hd108709108761_)
                                                (_rest108750_
                                                 _tl108710108763_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108705108740_
                                               _rest108750_
                                               _hd108748_)))))
                                    (let ((_hd108748_ _hd108709108761_)
                                          (_rest108750_ _tl108710108763_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108705108740_
                                         _rest108750_
                                         _hd108748_)))))
                              (let ()
                                (declare (not safe))
                                (_else108703108722_))))))))
                 (_compile-inner108583_
                  (lambda (_pre108684_ _bind108685_ _post108686_ _body108687_)
                    (if (let () (declare (not safe)) (null? _pre108684_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind108584_
                           _bind108685_
                           _post108686_
                           _body108687_))
                        (let ((__tmp115011
                               (let ((__tmp115012
                                      (let ((__tmp115015 (reverse _pre108684_))
                                            (__tmp115013
                                             (let ((__tmp115014
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind108584_
                                                       _bind108685_
                                                       _post108686_
                                                       _body108687_))))
                                               (declare (not safe))
                                               (cons __tmp115014 '()))))
                                        (declare (not safe))
                                        (cons __tmp115015 __tmp115013))))
                                 (declare (not safe))
                                 (cons 'let __tmp115012))))
                          (declare (not safe))
                          (__SRC__% __tmp115011 _stx108579_)))))
                 (_compile-bind108584_
                  (lambda (_bind108680_ _post108681_ _body108682_)
                    (let ((__tmp115016
                           (let ((__tmp115017
                                  (let ((__tmp115020 (reverse _bind108680_))
                                        (__tmp115018
                                         (let ((__tmp115019
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108585_
                                                   _post108681_
                                                   _body108682_))))
                                           (declare (not safe))
                                           (cons __tmp115019 '()))))
                                    (declare (not safe))
                                    (cons __tmp115020 __tmp115018))))
                             (declare (not safe))
                             (cons 'letrec __tmp115017))))
                      (declare (not safe))
                      (__SRC__% __tmp115016 _stx108579_))))
                 (_compile-post108585_
                  (lambda (_post108587_ _body108588_)
                    (let _lp108590_ ((_rest108592_ _post108587_)
                                     (_check108593_ '())
                                     (_bind108594_ '()))
                      (let* ((_rest108595108607_ _rest108592_)
                             (_else108597108615_
                              (lambda ()
                                (let ((__tmp115021
                                       (let ((__tmp115022
                                              (let ((__tmp115023
                                                     (let ((__tmp115024
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body108588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp115024 _bind108594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp115023
                                                        _check108593_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp115022))))
                                  (declare (not safe))
                                  (__SRC__% __tmp115021 _stx108579_))))
                             (_K108599108654_
                              (lambda (_rest108618_
                                       _init108619_
                                       _len108620_
                                       _tmp108621_)
                                (let ((__tmp115033
                                       (let ((__tmp115034
                                              (let ((__tmp115035
                                                     (let ((__tmp115036
                                                            (let ((__tmp115037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108620_ '()))))
                      (declare (not safe))
                      (cons _tmp108621_ __tmp115037))))
               (declare (not safe))
               (cons '__check-values __tmp115036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp115035
                                                 _stx108579_))))
                                         (declare (not safe))
                                         (cons __tmp115034 _check108593_)))
                                      (__tmp115025
                                       (let ((__tmp115026
                                              (lambda (_hd108623_ _r108624_)
                                                (let* ((_hd108625108632_
                                                        _hd108623_)
                                                       (_E108627108636_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108625108632_)))
               (_K108628108642_
                (lambda (_k108639_ _id108640_)
                  (let ((__tmp115027
                         (let ((__tmp115028
                                (let ((__tmp115029
                                       (let ((__tmp115030
                                              (let ((__tmp115031
                                                     (let ((__tmp115032
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k108639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp108621_ __tmp115032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp115031))))
                                         (declare (not safe))
                                         (cons __tmp115030 '()))))
                                  (declare (not safe))
                                  (cons _id108640_ __tmp115029))))
                           (declare (not safe))
                           (cons 'set! __tmp115028))))
                    (declare (not safe))
                    (cons __tmp115027 _r108624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108625108632_))
                                                      (let ((_hd108629108645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108625108632_)))
                    (_tl108630108647_
                     (let () (declare (not safe)) (##cdr _hd108625108632_))))
                (let* ((_id108650_ _hd108629108645_)
                       (_k108652_ _tl108630108647_))
                  (declare (not safe))
                  (_K108628108642_ _k108652_ _id108650_)))
              (let () (declare (not safe)) (_E108627108636_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp115026
                                                 _bind108594_
                                                 _init108619_))))
                                  (declare (not safe))
                                  (_lp108590_
                                   _rest108618_
                                   __tmp115033
                                   __tmp115025)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108595108607_))
                            (let ((_hd108600108657_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108595108607_)))
                                  (_tl108601108659_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108595108607_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108600108657_))
                                  (let ((_hd108602108662_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108600108657_)))
                                        (_tl108603108664_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108600108657_))))
                                    (let ((_tmp108667_ _hd108602108662_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108603108664_))
                                          (let ((_hd108604108669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108603108664_)))
                                                (_tl108605108671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108603108664_))))
                                            (let* ((_len108674_
                                                    _hd108604108669_)
                                                   (_init108676_
                                                    _tl108605108671_)
                                                   (_rest108678_
                                                    _tl108601108659_))
                                              (declare (not safe))
                                              (_K108599108654_
                                               _rest108678_
                                               _init108676_
                                               _len108674_
                                               _tmp108667_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108597108615_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108597108615_))))
                            (let ()
                              (declare (not safe))
                              (_else108597108615_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108579_
             _compile-simple108581_
             _compile-values108582_)))))
    (define __compile-letrec*-values%
      (lambda (_stx108334_)
        (letrec ((_compile-simple108336_
                  (lambda (_hd-ids108575_ _exprs108576_ _body108577_)
                    (let ((__tmp115038
                           (let ((__tmp115039
                                  (let ((__tmp115041
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108575_)
                                              _exprs108576_))
                                        (__tmp115040
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108577_ '()))))
                                    (declare (not safe))
                                    (cons __tmp115041 __tmp115040))))
                             (declare (not safe))
                             (cons 'letrec* __tmp115039))))
                      (declare (not safe))
                      (__SRC__% __tmp115038 _stx108334_))))
                 (_compile-values108337_
                  (lambda (_hd-ids108486_ _exprs108487_ _body108488_)
                    (let _lp108490_ ((_rest108492_ _hd-ids108486_)
                                     (_exprs108493_ _exprs108487_)
                                     (_bind108494_ '())
                                     (_post108495_ '()))
                      (let* ((_rest108496108510_ _rest108492_)
                             (_else108499108518_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind108338_
                                   _bind108494_
                                   _post108495_
                                   _body108488_)))))
                        (let ((_K108504108558_
                               (lambda (_rest108553_ _hd108554_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108554_))
                                     (let ((_id108556_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108554_))))
                                       (let ((__tmp115056 (cdr _exprs108493_))
                                             (__tmp115051
                                              (let ((__tmp115052
                                                     (let ((__tmp115053
                                                            (let ((__tmp115054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115055
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115055))))
                      (declare (not safe))
                      (cons __tmp115054 '()))))
               (declare (not safe))
               (cons _id108556_ __tmp115053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115052
                                                      _bind108494_)))
                                             (__tmp115047
                                              (let ((__tmp115048
                                                     (let ((__tmp115049
                                                            (let ((__tmp115050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs108493_)))
                      (declare (not safe))
                      (cons __tmp115050 '()))))
               (declare (not safe))
               (cons _id108556_ __tmp115049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115048
                                                      _post108495_))))
                                         (declare (not safe))
                                         (_lp108490_
                                          _rest108553_
                                          __tmp115056
                                          __tmp115051
                                          __tmp115047)))
                                     (let ((__tmp115046 (cdr _exprs108493_))
                                           (__tmp115042
                                            (let ((__tmp115043
                                                   (let ((__tmp115044
                                                          (let ((__tmp115045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs108493_)))
                    (declare (not safe))
                    (cons __tmp115045 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp115044))))
                                              (declare (not safe))
                                              (cons __tmp115043
                                                    _post108495_))))
                                       (declare (not safe))
                                       (_lp108490_
                                        _rest108553_
                                        __tmp115046
                                        _bind108494_
                                        __tmp115042)))))
                              (_K108501108538_
                               (lambda (_rest108522_ _hd108523_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108523_))
                                     (let ((_id108525_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd108523_))))
                                       (let ((__tmp115092 (cdr _exprs108493_))
                                             (__tmp115087
                                              (let ((__tmp115088
                                                     (let ((__tmp115089
                                                            (let ((__tmp115090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115091
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp115091))))
                      (declare (not safe))
                      (cons __tmp115090 '()))))
               (declare (not safe))
               (cons _id108525_ __tmp115089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115088
                                                      _bind108494_)))
                                             (__tmp115081
                                              (let ((__tmp115082
                                                     (let ((__tmp115083
                                                            (let ((__tmp115084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp115085
                                  (let ((__tmp115086 (car _exprs108493_)))
                                    (declare (not safe))
                                    (cons __tmp115086 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp115085))))
                      (declare (not safe))
                      (cons __tmp115084 '()))))
               (declare (not safe))
               (cons _id108525_ __tmp115083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp115082
                                                      _post108495_))))
                                         (declare (not safe))
                                         (_lp108490_
                                          _rest108522_
                                          __tmp115092
                                          __tmp115087
                                          __tmp115081)))
                                     (if (let ((__tmp115080
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd108523_))))
                                           (declare (not safe))
                                           (not __tmp115080))
                                         (let ((__tmp115079
                                                (cdr _exprs108493_))
                                               (__tmp115075
                                                (let ((__tmp115076
                                                       (let ((__tmp115077
                                                              (let ((__tmp115078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs108493_)))
                        (declare (not safe))
                        (cons __tmp115078 '()))))
                 (declare (not safe))
                 (cons '#f __tmp115077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp115076
                                                        _post108495_))))
                                           (declare (not safe))
                                           (_lp108490_
                                            _rest108522_
                                            __tmp115079
                                            _bind108494_
                                            __tmp115075))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd108523_))
                                             (let* ((_len108527_
                                                     (length _hd108523_))
                                                    (_tmp108529_
                                                     (let ((__tmp115057
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp115057))))
                                               (let ((__tmp115074
                                                      (cdr _exprs108493_))
                                                     (__tmp115067
                                                      (let ((__tmp115068
                                                             (lambda (_id108532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r108533_)
                       (if (let () (declare (not safe)) (__AST-e _id108532_))
                           (let ((__tmp115069
                                  (let ((__tmp115073
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108532_)))
                                        (__tmp115070
                                         (let ((__tmp115071
                                                (let ((__tmp115072
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp115072))))
                                           (declare (not safe))
                                           (cons __tmp115071 '()))))
                                    (declare (not safe))
                                    (cons __tmp115073 __tmp115070))))
                             (declare (not safe))
                             (cons __tmp115069 _r108533_))
                           _r108533_))))
                (declare (not safe))
                (foldl1 __tmp115068 _bind108494_ _hd108523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp115058
                                                      (let ((__tmp115059
                                                             (let ((__tmp115060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115066 (car _exprs108493_))
                                  (__tmp115061
                                   (let ((__tmp115062
                                          (let ((__tmp115064
                                                 (lambda (_id108535_ _k108536_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id108535_))
                                                       (let ((__tmp115065
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id108535_))))
                 (declare (not safe))
                 (cons __tmp115065 _k108536_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp115063
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len108527_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp115064
                                             _hd108523_
                                             __tmp115063))))
                                     (declare (not safe))
                                     (cons _len108527_ __tmp115062))))
                              (declare (not safe))
                              (cons __tmp115066 __tmp115061))))
                       (declare (not safe))
                       (cons _tmp108529_ __tmp115060))))
                (declare (not safe))
                (cons __tmp115059 _post108495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp108490_
                                                  _rest108522_
                                                  __tmp115074
                                                  __tmp115067
                                                  __tmp115058)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx108334_
                                                _hd108523_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108496108510_))
                              (let ((_tl108506108563_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108496108510_)))
                                    (_hd108505108561_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108496108510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108505108561_))
                                    (let ((_tl108508108568_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108505108561_)))
                                          (_hd108507108566_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108505108561_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108508108568_))
                                          (let ((_hd108571_ _hd108507108566_)
                                                (_rest108573_
                                                 _tl108506108563_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108504108558_
                                               _rest108573_
                                               _hd108571_)))
                                          (let ((_hd108546_ _hd108505108561_)
                                                (_rest108548_
                                                 _tl108506108563_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108501108538_
                                               _rest108548_
                                               _hd108546_)))))
                                    (let ((_hd108546_ _hd108505108561_)
                                          (_rest108548_ _tl108506108563_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108501108538_
                                         _rest108548_
                                         _hd108546_)))))
                              (let ()
                                (declare (not safe))
                                (_else108499108518_))))))))
                 (_compile-bind108338_
                  (lambda (_bind108482_ _post108483_ _body108484_)
                    (let ((__tmp115093
                           (let ((__tmp115094
                                  (let ((__tmp115097 (reverse _bind108482_))
                                        (__tmp115095
                                         (let ((__tmp115096
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post108339_
                                                   _post108483_
                                                   _body108484_))))
                                           (declare (not safe))
                                           (cons __tmp115096 '()))))
                                    (declare (not safe))
                                    (cons __tmp115097 __tmp115095))))
                             (declare (not safe))
                             (cons 'let __tmp115094))))
                      (declare (not safe))
                      (__SRC__% __tmp115093 _stx108334_))))
                 (_compile-post108339_
                  (lambda (_post108341_ _body108342_)
                    (let ((__tmp115098
                           (let ((__tmp115099
                                  (let ((__tmp115100
                                         (let ((__tmp115102
                                                (lambda (_hd108344_ _r108345_)
                                                  (let* ((_hd108346108369_
                                                          _hd108344_)
                                                         (_E108350108373_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd108346108369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K108363108467_
                                                           (lambda (_expr108465_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr108465_ _r108345_))))
                  (_K108358108445_
                   (lambda (_expr108442_ _id108443_)
                     (let ((__tmp115103
                            (let ((__tmp115104
                                   (let ((__tmp115105
                                          (let ((__tmp115106
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr108442_ '()))))
                                            (declare (not safe))
                                            (cons _id108443_ __tmp115106))))
                                     (declare (not safe))
                                     (cons 'set! __tmp115105))))
                              (declare (not safe))
                              (__SRC__% __tmp115104 _stx108334_))))
                       (declare (not safe))
                       (cons __tmp115103 _r108345_))))
                  (_K108351108412_
                   (lambda (_init108377_ _len108378_ _expr108379_ _tmp108380_)
                     (let ((__tmp115107
                            (let ((__tmp115108
                                   (let ((__tmp115109
                                          (let ((__tmp115123
                                                 (let ((__tmp115124
                                                        (let ((__tmp115125
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr108379_ '()))))
                  (declare (not safe))
                  (cons _tmp108380_ __tmp115125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115124 '())))
                                                (__tmp115110
                                                 (let ((__tmp115119
                                                        (let ((__tmp115120
                                                               (let ((__tmp115121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp115122
                                     (let ()
                                       (declare (not safe))
                                       (cons _len108378_ '()))))
                                (declare (not safe))
                                (cons _tmp108380_ __tmp115122))))
                         (declare (not safe))
                         (cons '__check-values __tmp115121))))
                  (declare (not safe))
                  (__SRC__% __tmp115120 _stx108334_)))
               (__tmp115111
                (let ((__tmp115112
                       (map (lambda (_hd108382_)
                              (let* ((_hd108383108390_ _hd108382_)
                                     (_E108385108394_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd108383108390_)))
                                     (_K108386108400_
                                      (lambda (_k108397_ _id108398_)
                                        (let ((__tmp115113
                                               (let ((__tmp115114
                                                      (let ((__tmp115115
                                                             (let ((__tmp115116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp115117
                                   (let ((__tmp115118
                                          (let ()
                                            (declare (not safe))
                                            (cons _k108397_ '()))))
                                     (declare (not safe))
                                     (cons _tmp108380_ __tmp115118))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp115117))))
                       (declare (not safe))
                       (cons __tmp115116 '()))))
                (declare (not safe))
                (cons _id108398_ __tmp115115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp115114))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp115113
                                           _stx108334_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108383108390_))
                                    (let ((_hd108387108403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108383108390_)))
                                          (_tl108388108405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108383108390_))))
                                      (let* ((_id108408_ _hd108387108403_)
                                             (_k108410_ _tl108388108405_))
                                        (declare (not safe))
                                        (_K108386108400_
                                         _k108410_
                                         _id108408_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E108385108394_)))))
                            _init108377_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp115112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp115119
                                                         __tmp115111))))
                                            (declare (not safe))
                                            (cons __tmp115123 __tmp115110))))
                                     (declare (not safe))
                                     (cons 'let __tmp115109))))
                              (declare (not safe))
                              (__SRC__% __tmp115108 _stx108334_))))
                       (declare (not safe))
                       (cons __tmp115107 _r108345_)))))
              (if (let () (declare (not safe)) (##pair? _hd108346108369_))
                  (let ((_tl108365108472_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd108346108369_)))
                        (_hd108364108470_
                         (let ()
                           (declare (not safe))
                           (##car _hd108346108369_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd108364108470_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108365108472_))
                            (let ((_tl108367108477_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108365108472_)))
                                  (_hd108366108475_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108365108472_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108367108477_))
                                  (let ((_expr108480_ _hd108366108475_))
                                    (declare (not safe))
                                    (_K108363108467_ _expr108480_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108367108477_))
                                      (let ((_tl108357108431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108367108477_)))
                                            (_hd108356108429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108367108477_))))
                                        (let ((_tmp108420_ _hd108364108470_)
                                              (_expr108427_ _hd108366108475_)
                                              (_len108434_ _hd108356108429_)
                                              (_init108436_ _tl108357108431_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108351108412_
                                             _init108436_
                                             _len108434_
                                             _expr108427_
                                             _tmp108420_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108350108373_)))))
                            (let () (declare (not safe)) (_E108350108373_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl108365108472_))
                            (let ((_tl108362108457_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl108365108472_)))
                                  (_hd108361108455_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl108365108472_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl108362108457_))
                                  (let ((_id108453_ _hd108364108470_)
                                        (_expr108460_ _hd108361108455_))
                                    (let ()
                                      (declare (not safe))
                                      (_K108358108445_
                                       _expr108460_
                                       _id108453_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl108362108457_))
                                      (let ((_tl108357108431_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl108362108457_)))
                                            (_hd108356108429_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl108362108457_))))
                                        (let ((_tmp108420_ _hd108364108470_)
                                              (_expr108427_ _hd108361108455_)
                                              (_len108434_ _hd108356108429_)
                                              (_init108436_ _tl108357108431_))
                                          (let ()
                                            (declare (not safe))
                                            (_K108351108412_
                                             _init108436_
                                             _len108434_
                                             _expr108427_
                                             _tmp108420_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E108350108373_)))))
                            (let () (declare (not safe)) (_E108350108373_)))))
                  (let () (declare (not safe)) (_E108350108373_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp115101
                                                (list _body108342_)))
                                           (declare (not safe))
                                           (foldl1 __tmp115102
                                                   __tmp115101
                                                   _post108341_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp115100))))
                             (declare (not safe))
                             (cons 'begin __tmp115099))))
                      (declare (not safe))
                      (__SRC__% __tmp115098 _stx108334_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108334_
             _compile-simple108336_
             _compile-values108337_)))))
    (define __compile-call%
      (lambda (_stx108294_)
        (let* ((_$e108296_ _stx108294_)
               (_$E108298108307_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108296_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108296_))
              (let* ((_$tgt108299108310_
                      (let () (declare (not safe)) (__AST-e _$e108296_)))
                     (_$hd108300108313_
                      (let () (declare (not safe)) (##car _$tgt108299108310_)))
                     (_$tl108301108316_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108299108310_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108301108316_))
                    (let* ((_$tgt108302108320_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108301108316_)))
                           (_$hd108303108323_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108302108320_)))
                           (_$tl108304108326_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108302108320_))))
                      (let* ((_rator108330_ _$hd108303108323_)
                             (_rands108332_ _$tl108304108326_)
                             (__tmp115126
                              (let ((__tmp115128
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator108330_)))
                                    (__tmp115127
                                     (map __compile _rands108332_)))
                                (declare (not safe))
                                (cons __tmp115128 __tmp115127))))
                        (declare (not safe))
                        (__SRC__% __tmp115126 _stx108294_)))
                    (let () (declare (not safe)) (_$E108298108307_))))
              (let () (declare (not safe)) (_$E108298108307_))))))
    (define __compile-ref%
      (lambda (_stx108256_)
        (let* ((_$e108258_ _stx108256_)
               (_$E108260108269_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108258_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108258_))
              (let* ((_$tgt108261108272_
                      (let () (declare (not safe)) (__AST-e _$e108258_)))
                     (_$hd108262108275_
                      (let () (declare (not safe)) (##car _$tgt108261108272_)))
                     (_$tl108263108278_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108261108272_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108263108278_))
                    (let* ((_$tgt108264108282_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108263108278_)))
                           (_$hd108265108285_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108264108282_)))
                           (_$tl108266108288_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108264108282_))))
                      (let ((_id108292_ _$hd108265108285_))
                        (if (let ((__tmp115129
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108266108288_))))
                              (declare (not safe))
                              (equal? __tmp115129 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id108292_ _stx108256_))
                            (let () (declare (not safe)) (_$E108260108269_)))))
                    (let () (declare (not safe)) (_$E108260108269_))))
              (let () (declare (not safe)) (_$E108260108269_))))))
    (define __compile-setq%
      (lambda (_stx108203_)
        (let* ((_$e108205_ _stx108203_)
               (_$E108207108219_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108205_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108205_))
              (let* ((_$tgt108208108222_
                      (let () (declare (not safe)) (__AST-e _$e108205_)))
                     (_$hd108209108225_
                      (let () (declare (not safe)) (##car _$tgt108208108222_)))
                     (_$tl108210108228_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108208108222_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108210108228_))
                    (let* ((_$tgt108211108232_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108210108228_)))
                           (_$hd108212108235_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108211108232_)))
                           (_$tl108213108238_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108211108232_))))
                      (let ((_id108242_ _$hd108212108235_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108213108238_))
                            (let* ((_$tgt108214108244_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108213108238_)))
                                   (_$hd108215108247_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108214108244_)))
                                   (_$tl108216108250_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108214108244_))))
                              (let ((_expr108254_ _$hd108215108247_))
                                (if (let ((__tmp115135
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108216108250_))))
                                      (declare (not safe))
                                      (equal? __tmp115135 '()))
                                    (let ((__tmp115130
                                           (let ((__tmp115131
                                                  (let ((__tmp115134
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id108242_
                                                            _stx108203_)))
                                                        (__tmp115132
                                                         (let ((__tmp115133
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr108254_))))
                   (declare (not safe))
                   (cons __tmp115133 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115134
                                                          __tmp115132))))
                                             (declare (not safe))
                                             (cons 'set! __tmp115131))))
                                      (declare (not safe))
                                      (__SRC__% __tmp115130 _stx108203_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108207108219_)))))
                            (let () (declare (not safe)) (_$E108207108219_)))))
                    (let () (declare (not safe)) (_$E108207108219_))))
              (let () (declare (not safe)) (_$E108207108219_))))))
    (define __compile-if%
      (lambda (_stx108135_)
        (let* ((_$e108137_ _stx108135_)
               (_$E108139108154_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108137_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108137_))
              (let* ((_$tgt108140108157_
                      (let () (declare (not safe)) (__AST-e _$e108137_)))
                     (_$hd108141108160_
                      (let () (declare (not safe)) (##car _$tgt108140108157_)))
                     (_$tl108142108163_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108140108157_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108142108163_))
                    (let* ((_$tgt108143108167_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108142108163_)))
                           (_$hd108144108170_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108143108167_)))
                           (_$tl108145108173_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108143108167_))))
                      (let ((_p108177_ _$hd108144108170_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108145108173_))
                            (let* ((_$tgt108146108179_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108145108173_)))
                                   (_$hd108147108182_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108146108179_)))
                                   (_$tl108148108185_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108146108179_))))
                              (let ((_t108189_ _$hd108147108182_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl108148108185_))
                                    (let* ((_$tgt108149108191_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl108148108185_)))
                                           (_$hd108150108194_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt108149108191_)))
                                           (_$tl108151108197_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt108149108191_))))
                                      (let ((_f108201_ _$hd108150108194_))
                                        (if (let ((__tmp115143
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl108151108197_))))
                                              (declare (not safe))
                                              (equal? __tmp115143 '()))
                                            (let ((__tmp115136
                                                   (let ((__tmp115137
                                                          (let ((__tmp115142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p108177_)))
                        (__tmp115138
                         (let ((__tmp115141
                                (let ()
                                  (declare (not safe))
                                  (__compile _t108189_)))
                               (__tmp115139
                                (let ((__tmp115140
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f108201_))))
                                  (declare (not safe))
                                  (cons __tmp115140 '()))))
                           (declare (not safe))
                           (cons __tmp115141 __tmp115139))))
                    (declare (not safe))
                    (cons __tmp115142 __tmp115138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp115137))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp115136
                                               _stx108135_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E108139108154_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108139108154_)))))
                            (let () (declare (not safe)) (_$E108139108154_)))))
                    (let () (declare (not safe)) (_$E108139108154_))))
              (let () (declare (not safe)) (_$E108139108154_))))))
    (define __compile-quote%
      (lambda (_stx108097_)
        (let* ((_$e108099_ _stx108097_)
               (_$E108101108110_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108099_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108099_))
              (let* ((_$tgt108102108113_
                      (let () (declare (not safe)) (__AST-e _$e108099_)))
                     (_$hd108103108116_
                      (let () (declare (not safe)) (##car _$tgt108102108113_)))
                     (_$tl108104108119_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108102108113_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108104108119_))
                    (let* ((_$tgt108105108123_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108104108119_)))
                           (_$hd108106108126_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108105108123_)))
                           (_$tl108107108129_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108105108123_))))
                      (let ((_e108133_ _$hd108106108126_))
                        (if (let ((__tmp115147
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108107108129_))))
                              (declare (not safe))
                              (equal? __tmp115147 '()))
                            (let ((__tmp115144
                                   (let ((__tmp115145
                                          (let ((__tmp115146
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e108133_))))
                                            (declare (not safe))
                                            (cons __tmp115146 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115145))))
                              (declare (not safe))
                              (__SRC__% __tmp115144 _stx108097_))
                            (let () (declare (not safe)) (_$E108101108110_)))))
                    (let () (declare (not safe)) (_$E108101108110_))))
              (let () (declare (not safe)) (_$E108101108110_))))))
    (define __compile-quote-syntax%
      (lambda (_stx108059_)
        (let* ((_$e108061_ _stx108059_)
               (_$E108063108072_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108061_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108061_))
              (let* ((_$tgt108064108075_
                      (let () (declare (not safe)) (__AST-e _$e108061_)))
                     (_$hd108065108078_
                      (let () (declare (not safe)) (##car _$tgt108064108075_)))
                     (_$tl108066108081_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108064108075_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108066108081_))
                    (let* ((_$tgt108067108085_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108066108081_)))
                           (_$hd108068108088_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108067108085_)))
                           (_$tl108069108091_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108067108085_))))
                      (let ((_e108095_ _$hd108068108088_))
                        (if (let ((__tmp115150
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl108069108091_))))
                              (declare (not safe))
                              (equal? __tmp115150 '()))
                            (let ((__tmp115148
                                   (let ((__tmp115149
                                          (let ()
                                            (declare (not safe))
                                            (cons _e108095_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp115149))))
                              (declare (not safe))
                              (__SRC__% __tmp115148 _stx108059_))
                            (let () (declare (not safe)) (_$E108063108072_)))))
                    (let () (declare (not safe)) (_$E108063108072_))))
              (let () (declare (not safe)) (_$E108063108072_))))))
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
