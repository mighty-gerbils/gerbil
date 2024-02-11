(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707610213)
  (begin
    (define __context::t
      (let ((__tmp113987
             (let ((__tmp113988
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113988 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp113987
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109323_
        (apply make-struct-instance __context::t _$args109323_)))
    (define __context-t
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 't)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'ns)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'super)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __context::t 'table)))
    (define __context-t-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __context::t 't)))
    (define __context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'ns)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'super)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __context::t 'table)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 't)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'ns)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'super)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __context::t 'table)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 't)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'ns)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'super)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __context::t 'table)))
    (define __runtime::t
      (let ((__tmp113989
             (let ((__tmp113990
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113990 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp113989
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109320_
        (apply make-struct-instance __runtime::t _$args109320_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __runtime::t 'id)))
    (define __runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __runtime::t 'id)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __runtime::t 'id)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __runtime::t 'id)))
    (define __syntax::t
      (let ((__tmp113991
             (let ((__tmp113992
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113992 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp113991
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109317_
        (apply make-struct-instance __syntax::t _$args109317_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-struct-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __syntax::t 'id)))
    (define __macro::t
      (let ((__tmp113993
             (let ((__tmp113994
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113994 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp113993
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109314_
        (apply make-struct-instance __macro::t _$args109314_)))
    (define __macro-e
      (let () (declare (not safe)) (make-struct-slot-accessor __macro::t 'e)))
    (define __macro-id
      (let () (declare (not safe)) (make-struct-slot-accessor __macro::t 'id)))
    (define __macro-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __macro::t 'e)))
    (define __macro-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __macro::t 'id)))
    (define &__macro-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __macro::t 'e)))
    (define &__macro-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __macro::t 'id)))
    (define &__macro-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __macro::t 'e)))
    (define &__macro-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __macro::t 'id)))
    (define __special-form::t
      (let ((__tmp113995
             (let ((__tmp113996
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113996 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp113995
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109311_
        (apply make-struct-instance __special-form::t _$args109311_)))
    (define __special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __special-form::t 'e)))
    (define __special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __special-form::t 'id)))
    (define __special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __special-form::t 'e)))
    (define __special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __special-form::t 'id)))
    (define &__special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __special-form::t 'e)))
    (define &__special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __special-form::t 'id)))
    (define &__special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __special-form::t 'e)))
    (define &__special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __special-form::t 'id)))
    (define __core-form::t
      (let ((__tmp113997
             (let ((__tmp113998
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113998 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp113997
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109308_
        (apply make-struct-instance __core-form::t _$args109308_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp113999
             (let ((__tmp114000
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114000 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp113999
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109305_
        (apply make-struct-instance __core-expression::t _$args109305_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp114001
             (let ((__tmp114002
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114002 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp114001
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109302_
        (apply make-struct-instance __core-special-form::t _$args109302_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __struct-info::t
      (let ((__tmp114003
             (let ((__tmp114004
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114004 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp114003
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109299_
        (apply make-struct-instance __struct-info::t _$args109299_)))
    (define __struct-info-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __struct-info::t 'e)))
    (define __struct-info-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __struct-info::t 'id)))
    (define __struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __struct-info::t 'e)))
    (define __struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __struct-info::t 'id)))
    (define &__struct-info-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __struct-info::t 'e)))
    (define &__struct-info-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __struct-info::t 'id)))
    (define &__struct-info-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __struct-info::t 'e)))
    (define &__struct-info-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __struct-info::t 'id)))
    (define __feature::t
      (let ((__tmp114005
             (let ((__tmp114006
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114006 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp114005
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109296_
        (apply make-struct-instance __feature::t _$args109296_)))
    (define __feature-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __feature::t 'e)))
    (define __feature-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __feature::t 'id)))
    (define __feature-e-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __feature::t 'e)))
    (define __feature-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __feature::t 'id)))
    (define &__feature-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __feature::t 'e)))
    (define &__feature-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __feature::t 'id)))
    (define &__feature-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __feature::t 'e)))
    (define &__feature-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __feature::t 'id)))
    (define __module::t
      (let ((__tmp114007
             (let ((__tmp114008
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114008 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp114007
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109293_
        (apply make-struct-instance __module::t _$args109293_)))
    (define __module-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'id)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'path)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'import)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'export)))
    (define __module-t
      (let () (declare (not safe)) (make-struct-slot-accessor __module::t 't)))
    (define __module-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'ns)))
    (define __module-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'super)))
    (define __module-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor __module::t 'table)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 'id)))
    (define __module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'path)))
    (define __module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'import)))
    (define __module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'export)))
    (define __module-t-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 't)))
    (define __module-ns-set!
      (let () (declare (not safe)) (make-struct-slot-mutator __module::t 'ns)))
    (define __module-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'super)))
    (define __module-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator __module::t 'table)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'id)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'path)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'import)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'export)))
    (define &__module-t
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 't)))
    (define &__module-ns
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'ns)))
    (define &__module-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'super)))
    (define &__module-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor __module::t 'table)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'id)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'path)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'import)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'export)))
    (define &__module-t-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 't)))
    (define &__module-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'ns)))
    (define &__module-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'super)))
    (define &__module-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator __module::t 'table)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp114010
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114009
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114010 __tmp114009)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109268_ _ctx109269_)
        (if _ctx109269_
            (let ((_id109271_
                   (let () (declare (not safe)) (__AST-e _id109268_))))
              (let _lp109273_ ((_ctx109275_ _ctx109269_))
                (let ((_$e109277_
                       (table-ref
                        (##structure-ref _ctx109275_ '4 __context::t '#f)
                        _id109271_
                        '#f)))
                  (if _$e109277_
                      (values _$e109277_)
                      (let ((_$e109280_
                             (##structure-ref
                              _ctx109275_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109280_
                            (let ()
                              (declare (not safe))
                              (_lp109273_ _$e109280_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109286_)
        (let ((_ctx109288_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109286_ _ctx109288_))))
    (define __core-resolve
      (lambda _g114012_
        (let ((_g114011_ (let () (declare (not safe)) (##length _g114012_))))
          (cond ((let () (declare (not safe)) (##fx= _g114011_ 1))
                 (apply (lambda (_id109286_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109286_)))
                        _g114012_))
                ((let () (declare (not safe)) (##fx= _g114011_ 2))
                 (apply (lambda (_id109290_ _ctx109291_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109290_ _ctx109291_)))
                        _g114012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114012_))))))
    (define __core-bound-id?__%
      (lambda (_id109251_ _is?109252_)
        (let ((_$e109254_
               (let () (declare (not safe)) (__core-resolve__0 _id109251_))))
          (if _$e109254_ (_is?109252_ _$e109254_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109260_)
        (let ((_is?109262_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109260_ _is?109262_))))
    (define __core-bound-id?
      (lambda _g114014_
        (let ((_g114013_ (let () (declare (not safe)) (##length _g114014_))))
          (cond ((let () (declare (not safe)) (##fx= _g114013_ 1))
                 (apply (lambda (_id109260_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109260_)))
                        _g114014_))
                ((let () (declare (not safe)) (##fx= _g114013_ 2))
                 (apply (lambda (_id109264_ _is?109265_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109264_ _is?109265_)))
                        _g114014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114014_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109234_ _eid109235_ _ctx109236_)
        (if _eid109235_
            (let ((__tmp114017
                   (##structure-ref _ctx109236_ '4 __context::t '#f))
                  (__tmp114016
                   (let () (declare (not safe)) (__AST-e _id109234_)))
                  (__tmp114015
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109235_))))
              (declare (not safe))
              (table-set! __tmp114017 __tmp114016 __tmp114015))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109241_ _eid109242_)
        (let ((_ctx109244_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109241_ _eid109242_ _ctx109244_))))
    (define __core-bind-runtime!
      (lambda _g114019_
        (let ((_g114018_ (let () (declare (not safe)) (##length _g114019_))))
          (cond ((let () (declare (not safe)) (##fx= _g114018_ 2))
                 (apply (lambda (_id109241_ _eid109242_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109241_ _eid109242_)))
                        _g114019_))
                ((let () (declare (not safe)) (##fx= _g114018_ 3))
                 (apply (lambda (_id109246_ _eid109247_ _ctx109248_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109246_
                             _eid109247_
                             _ctx109248_)))
                        _g114019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114019_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109217_ _e109218_ _make109219_)
        (let ((__tmp114020
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109218_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109218_
                   (_make109219_ _e109218_ _id109217_))))
          (declare (not safe))
          (table-set! __*core* _id109217_ __tmp114020))))
    (define __core-bind-syntax!__0
      (lambda (_id109224_ _e109225_)
        (let ((_make109227_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109224_ _e109225_ _make109227_))))
    (define __core-bind-syntax!
      (lambda _g114022_
        (let ((_g114021_ (let () (declare (not safe)) (##length _g114022_))))
          (cond ((let () (declare (not safe)) (##fx= _g114021_ 2))
                 (apply (lambda (_id109224_ _e109225_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109224_ _e109225_)))
                        _g114022_))
                ((let () (declare (not safe)) (##fx= _g114021_ 3))
                 (apply (lambda (_id109229_ _e109230_ _make109231_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109229_
                             _e109230_
                             _make109231_)))
                        _g114022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114022_))))))
    (define __core-bind-macro!
      (lambda (_id109213_ _e109214_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109213_ _e109214_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109210_ _e109211_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109210_ _e109211_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109194_ _e109195_ _ctx109196_)
        (let ((__tmp114026 (##structure-ref _ctx109196_ '4 __context::t '#f))
              (__tmp114025 (let () (declare (not safe)) (__AST-e _id109194_)))
              (__tmp114023
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109195_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109195_
                   (let ((__tmp114024
                          (let () (declare (not safe)) (__AST-e _id109194_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109195_ __tmp114024)))))
          (declare (not safe))
          (table-set! __tmp114026 __tmp114025 __tmp114023))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109201_ _e109202_)
        (let ((_ctx109204_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109201_ _e109202_ _ctx109204_))))
    (define __core-bind-user-syntax!
      (lambda _g114028_
        (let ((_g114027_ (let () (declare (not safe)) (##length _g114028_))))
          (cond ((let () (declare (not safe)) (##fx= _g114027_ 2))
                 (apply (lambda (_id109201_ _e109202_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109201_
                             _e109202_)))
                        _g114028_))
                ((let () (declare (not safe)) (##fx= _g114027_ 3))
                 (apply (lambda (_id109206_ _e109207_ _ctx109208_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109206_
                             _e109207_
                             _ctx109208_)))
                        _g114028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114028_))))))
    (define make-__runtime-id__%
      (lambda (_id109175_ _ctx109176_)
        (let ((_id109178_ (let () (declare (not safe)) (__AST-e _id109175_))))
          (if (let () (declare (not safe)) (eq? _id109178_ '_))
              '#f
              (if (uninterned-symbol? _id109178_)
                  (gensym _id109178_)
                  (if (let () (declare (not safe)) (symbol? _id109178_))
                      (let ((_$e109180_
                             (##structure-ref
                              _ctx109176_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109180_))
                            (gensym _id109178_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109180_))
                                (let ((__tmp114029
                                       (##structure-ref
                                        _ctx109176_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114029 '"#" _id109178_))
                                _id109178_)))
                      (error '"Illegal runtime identifier" _id109178_)))))))
    (define make-__runtime-id__0
      (lambda (_id109186_)
        (let ((_ctx109188_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109186_ _ctx109188_))))
    (define make-__runtime-id
      (lambda _g114031_
        (let ((_g114030_ (let () (declare (not safe)) (##length _g114031_))))
          (cond ((let () (declare (not safe)) (##fx= _g114030_ 1))
                 (apply (lambda (_id109186_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109186_)))
                        _g114031_))
                ((let () (declare (not safe)) (##fx= _g114030_ 2))
                 (apply (lambda (_id109190_ _ctx109191_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109190_ _ctx109191_)))
                        _g114031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114031_))))))
    (define make-__context-local__%
      (lambda (_super109164_)
        (let ((__tmp114032
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109164_ __tmp114032))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109170_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109170_))))
    (define make-__context-local
      (lambda _g114034_
        (let ((_g114033_ (let () (declare (not safe)) (##length _g114034_))))
          (cond ((let () (declare (not safe)) (##fx= _g114033_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114034_))
                ((let () (declare (not safe)) (##fx= _g114033_ 1))
                 (apply (lambda (_super109172_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109172_)))
                        _g114034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114034_))))))
    (define make-__context-module__%
      (lambda (_id109144_ _ns109145_ _path109146_ _super109147_)
        (let ((__tmp114035
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109145_
           _super109147_
           __tmp114035
           _id109144_
           _path109146_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109152_ _ns109153_ _path109154_)
        (let ((_super109156_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109152_
           _ns109153_
           _path109154_
           _super109156_))))
    (define make-__context-module
      (lambda _g114037_
        (let ((_g114036_ (let () (declare (not safe)) (##length _g114037_))))
          (cond ((let () (declare (not safe)) (##fx= _g114036_ 3))
                 (apply (lambda (_id109152_ _ns109153_ _path109154_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109152_
                             _ns109153_
                             _path109154_)))
                        _g114037_))
                ((let () (declare (not safe)) (##fx= _g114036_ 4))
                 (apply (lambda (_id109158_
                                 _ns109159_
                                 _path109160_
                                 _super109161_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109158_
                             _ns109159_
                             _path109160_
                             _super109161_)))
                        _g114037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114037_))))))
    (define __SRC__%
      (lambda (_e109127_ _src-stx109128_)
        (if (or (let () (declare (not safe)) (pair? _e109127_))
                (let () (declare (not safe)) (symbol? _e109127_)))
            (let ((__tmp114041
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109128_
                          'gerbil#AST::t))
                       (let ((__tmp114042
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109128_))))
                         (declare (not safe))
                         (__locat __tmp114042))
                       '#f)))
              (declare (not safe))
              (##make-source _e109127_ __tmp114041))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109127_ 'gerbil#AST::t))
                (let ((__tmp114040
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109127_ '1 AST::t '#f)))
                      (__tmp114038
                       (let ((__tmp114039
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109127_))))
                         (declare (not safe))
                         (__locat __tmp114039))))
                  (declare (not safe))
                  (##make-source __tmp114040 __tmp114038))
                (error '"BUG! Cannot sourcify object" _e109127_)))))
    (define __SRC__0
      (lambda (_e109136_)
        (let ((_src-stx109138_ '#f))
          (declare (not safe))
          (__SRC__% _e109136_ _src-stx109138_))))
    (define __SRC
      (lambda _g114044_
        (let ((_g114043_ (let () (declare (not safe)) (##length _g114044_))))
          (cond ((let () (declare (not safe)) (##fx= _g114043_ 1))
                 (apply (lambda (_e109136_)
                          (let () (declare (not safe)) (__SRC__0 _e109136_)))
                        _g114044_))
                ((let () (declare (not safe)) (##fx= _g114043_ 2))
                 (apply (lambda (_e109140_ _src-stx109141_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109140_ _src-stx109141_)))
                        _g114044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114044_))))))
    (define __locat
      (lambda (_loc109124_)
        (if (let () (declare (not safe)) (##locat? _loc109124_))
            _loc109124_
            '#f)))
    (define __check-values
      (lambda (_obj109119_ _k109120_)
        (let ((_count109122_
               (if (let () (declare (not safe)) (##values? _obj109119_))
                   (let () (declare (not safe)) (##vector-length _obj109119_))
                   '1)))
          (if (fx= _count109122_ _k109120_)
              '#!void
              (error (if (fx< _count109122_ _k109120_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109119_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109119_))
                         _obj109119_)
                     _k109120_)))))
    (define __compile
      (lambda (_stx109089_)
        (let* ((_$e109091_ _stx109089_)
               (_$E109093109099_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109091_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109091_))
              (let* ((_$tgt109094109102_
                      (let () (declare (not safe)) (__AST-e _$e109091_)))
                     (_$hd109095109105_
                      (let () (declare (not safe)) (##car _$tgt109094109102_)))
                     (_$tl109096109108_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109094109102_))))
                (let* ((_form109112_ _$hd109095109105_)
                       (_$e109114_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109112_))))
                  (if _$e109114_
                      ((lambda (_bind109117_)
                         ((##structure-ref _bind109117_ '1 __syntax::t '#f)
                          _stx109089_))
                       _$e109114_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109089_
                         _form109112_)))))
              (let () (declare (not safe)) (_$E109093109099_))))))
    (define __compile-error__%
      (lambda (_stx109076_ _detail109077_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109076_
           _detail109077_))))
    (define __compile-error__0
      (lambda (_stx109082_)
        (let ((_detail109084_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109082_ _detail109084_))))
    (define __compile-error
      (lambda _g114046_
        (let ((_g114045_ (let () (declare (not safe)) (##length _g114046_))))
          (cond ((let () (declare (not safe)) (##fx= _g114045_ 1))
                 (apply (lambda (_stx109082_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109082_)))
                        _g114046_))
                ((let () (declare (not safe)) (##fx= _g114045_ 2))
                 (apply (lambda (_stx109086_ _detail109087_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109086_ _detail109087_)))
                        _g114046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114046_))))))
    (define __compile-ignore%
      (lambda (_stx109073_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109073_))))
    (define __compile-begin%
      (lambda (_stx109048_)
        (let* ((_$e109050_ _stx109048_)
               (_$E109052109058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109050_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109050_))
              (let* ((_$tgt109053109061_
                      (let () (declare (not safe)) (__AST-e _$e109050_)))
                     (_$hd109054109064_
                      (let () (declare (not safe)) (##car _$tgt109053109061_)))
                     (_$tl109055109067_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109053109061_))))
                (let* ((_body109071_ _$tl109055109067_)
                       (__tmp114047
                        (let ((__tmp114048 (map __compile _body109071_)))
                          (declare (not safe))
                          (cons 'begin __tmp114048))))
                  (declare (not safe))
                  (__SRC__% __tmp114047 _stx109048_)))
              (let () (declare (not safe)) (_$E109052109058_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109023_)
        (let* ((_$e109025_ _stx109023_)
               (_$E109027109033_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109025_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109025_))
              (let* ((_$tgt109028109036_
                      (let () (declare (not safe)) (__AST-e _$e109025_)))
                     (_$hd109029109039_
                      (let () (declare (not safe)) (##car _$tgt109028109036_)))
                     (_$tl109030109042_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109028109036_))))
                (let* ((_body109046_ _$tl109030109042_)
                       (__tmp114049
                        (let ((__tmp114050
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109046_))))
                          (declare (not safe))
                          (cons 'begin __tmp114050))))
                  (declare (not safe))
                  (__SRC__% __tmp114049 _stx109023_)))
              (let () (declare (not safe)) (_$E109027109033_))))))
    (define __compile-import%
      (lambda (_stx108998_)
        (let* ((_$e109000_ _stx108998_)
               (_$E109002109008_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109000_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109000_))
              (let* ((_$tgt109003109011_
                      (let () (declare (not safe)) (__AST-e _$e109000_)))
                     (_$hd109004109014_
                      (let () (declare (not safe)) (##car _$tgt109003109011_)))
                     (_$tl109005109017_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109003109011_))))
                (let* ((_body109021_ _$tl109005109017_)
                       (__tmp114051
                        (let ((__tmp114052
                               (let ((__tmp114053
                                      (let ((__tmp114054
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109021_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114054))))
                                 (declare (not safe))
                                 (cons __tmp114053 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114052))))
                  (declare (not safe))
                  (__SRC__% __tmp114051 _stx108998_)))
              (let () (declare (not safe)) (_$E109002109008_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108945_)
        (let* ((_$e108947_ _stx108945_)
               (_$E108949108961_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108947_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108947_))
              (let* ((_$tgt108950108964_
                      (let () (declare (not safe)) (__AST-e _$e108947_)))
                     (_$hd108951108967_
                      (let () (declare (not safe)) (##car _$tgt108950108964_)))
                     (_$tl108952108970_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108950108964_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108952108970_))
                    (let* ((_$tgt108953108974_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108952108970_)))
                           (_$hd108954108977_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108953108974_)))
                           (_$tl108955108980_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108953108974_))))
                      (let ((_ann108984_ _$hd108954108977_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108955108980_))
                            (let* ((_$tgt108956108986_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108955108980_)))
                                   (_$hd108957108989_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108956108986_)))
                                   (_$tl108958108992_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108956108986_))))
                              (let ((_expr108996_ _$hd108957108989_))
                                (if (let ((__tmp114055
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108958108992_))))
                                      (declare (not safe))
                                      (equal? __tmp114055 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108996_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108949108961_)))))
                            (let () (declare (not safe)) (_$E108949108961_)))))
                    (let () (declare (not safe)) (_$E108949108961_))))
              (let () (declare (not safe)) (_$E108949108961_))))))
    (define __compile-define-values%
      (lambda (_stx108836_)
        (let* ((_$e108838_ _stx108836_)
               (_$E108840108852_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108838_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108838_))
              (let* ((_$tgt108841108855_
                      (let () (declare (not safe)) (__AST-e _$e108838_)))
                     (_$hd108842108858_
                      (let () (declare (not safe)) (##car _$tgt108841108855_)))
                     (_$tl108843108861_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108841108855_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108843108861_))
                    (let* ((_$tgt108844108865_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108843108861_)))
                           (_$hd108845108868_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108844108865_)))
                           (_$tl108846108871_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108844108865_))))
                      (let ((_hd108875_ _$hd108845108868_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108846108871_))
                            (let* ((_$tgt108847108877_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108846108871_)))
                                   (_$hd108848108880_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108847108877_)))
                                   (_$tl108849108883_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108847108877_))))
                              (let ((_expr108887_ _$hd108848108880_))
                                (if (let ((__tmp114088
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108849108883_))))
                                      (declare (not safe))
                                      (equal? __tmp114088 '()))
                                    (let* ((_$e108889_ _hd108875_)
                                           (_$E108891108932_
                                            (lambda ()
                                              (let ((_$E108892108917_
                                                     (lambda ()
                                                       (let* ((_$E108893108904_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108889_))))
                      (_ids108907_ _hd108875_)
                      (_len108909_ (length _ids108907_))
                      (_tmp108911_
                       (let ((__tmp114056 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114056))))
                 (let ((__tmp114057
                        (let ((__tmp114058
                               (let ((__tmp114075
                                      (let ((__tmp114076
                                             (let ((__tmp114077
                                                    (let ((__tmp114078
                                                           (let ((__tmp114079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108887_))))
                     (declare (not safe))
                     (cons __tmp114079 '()))))
              (declare (not safe))
              (cons _tmp108911_ __tmp114078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114077))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114076 _stx108836_)))
                                     (__tmp114059
                                      (let ((__tmp114071
                                             (let ((__tmp114072
                                                    (let ((__tmp114073
                                                           (let ((__tmp114074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108909_ '()))))
                     (declare (not safe))
                     (cons _tmp108911_ __tmp114074))))
              (declare (not safe))
              (cons '__check-values __tmp114073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114072
                                                _stx108836_)))
                                            (__tmp114060
                                             (let ((__tmp114061
                                                    (let ((__tmp114063
                                                           (lambda (_id108914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108915_)
                     (if (let () (declare (not safe)) (__AST-e _id108914_))
                         (let ((__tmp114064
                                (let ((__tmp114065
                                       (let ((__tmp114070
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108914_)))
                                             (__tmp114066
                                              (let ((__tmp114067
                                                     (let ((__tmp114068
                                                            (let ((__tmp114069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108915_ '()))))
                      (declare (not safe))
                      (cons _tmp108911_ __tmp114069))))
               (declare (not safe))
               (cons '##vector-ref __tmp114068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114067 '()))))
                                         (declare (not safe))
                                         (cons __tmp114070 __tmp114066))))
                                  (declare (not safe))
                                  (cons 'define __tmp114065))))
                           (declare (not safe))
                           (__SRC__% __tmp114064 _stx108836_))
                         '#f)))
                  (__tmp114062
                   (let () (declare (not safe)) (iota _len108909_))))
              (declare (not safe))
              (filter-map2 __tmp114063 _ids108907_ __tmp114062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114061))))
                                        (declare (not safe))
                                        (cons __tmp114071 __tmp114060))))
                                 (declare (not safe))
                                 (cons __tmp114075 __tmp114059))))
                          (declare (not safe))
                          (cons 'begin __tmp114058))))
                   (declare (not safe))
                   (__SRC__% __tmp114057 _stx108836_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108889_))
                                                    (let* ((_$tgt108894108920_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108889_)))
                                                           (_$hd108895108923_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108894108920_)))
                                                           (_$tl108896108926_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108894108920_))))
                                                      (let ((_id108930_
                                                             _$hd108895108923_))
                                                        (if (let ((__tmp114085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108896108926_))))
                      (declare (not safe))
                      (equal? __tmp114085 '()))
                    (let ((__tmp114080
                           (let ((__tmp114081
                                  (let ((__tmp114084
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108930_)))
                                        (__tmp114082
                                         (let ((__tmp114083
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108887_))))
                                           (declare (not safe))
                                           (cons __tmp114083 '()))))
                                    (declare (not safe))
                                    (cons __tmp114084 __tmp114082))))
                             (declare (not safe))
                             (cons 'define __tmp114081))))
                      (declare (not safe))
                      (__SRC__% __tmp114080 _stx108836_))
                    (let () (declare (not safe)) (_$E108892108917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108892108917_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108889_))
                                          (let* ((_$tgt108897108935_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108889_)))
                                                 (_$hd108898108938_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108897108935_)))
                                                 (_$tl108899108941_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108897108935_))))
                                            (if (let ((__tmp114087
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108898108938_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114087 '#f))
                                                (if (let ((__tmp114086
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108899108941_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114086 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108887_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108891108932_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108891108932_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108891108932_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108840108852_)))))
                            (let () (declare (not safe)) (_$E108840108852_)))))
                    (let () (declare (not safe)) (_$E108840108852_))))
              (let () (declare (not safe)) (_$E108840108852_))))))
    (define __compile-head-id
      (lambda (_e108834_)
        (let ((__tmp114089
               (if (let () (declare (not safe)) (__AST-e _e108834_))
                   _e108834_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114089))))
    (define __compile-lambda-head
      (lambda (_hd108791_)
        (let _recur108793_ ((_rest108795_ _hd108791_))
          (let* ((_$e108797_ _rest108795_)
                 (_$E108799108817_
                  (lambda ()
                    (let ((_$E108800108814_
                           (lambda ()
                             (let* ((_$E108801108809_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108797_))))
                                    (_tail108812_ _$e108797_))
                               (declare (not safe))
                               (__compile-head-id _tail108812_)))))
                      (if (let ((__tmp114090
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108797_))))
                            (declare (not safe))
                            (equal? __tmp114090 '()))
                          '()
                          (let () (declare (not safe)) (_$E108800108814_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108797_))
                (let* ((_$tgt108802108820_
                        (let () (declare (not safe)) (__AST-e _$e108797_)))
                       (_$hd108803108823_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108802108820_)))
                       (_$tl108804108826_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108802108820_))))
                  (let* ((_hd108830_ _$hd108803108823_)
                         (_rest108832_ _$tl108804108826_))
                    (let ((__tmp114092
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108830_)))
                          (__tmp114091
                           (let ()
                             (declare (not safe))
                             (_recur108793_ _rest108832_))))
                      (declare (not safe))
                      (cons __tmp114092 __tmp114091))))
                (let () (declare (not safe)) (_$E108799108817_)))))))
    (define __compile-lambda%
      (lambda (_stx108738_)
        (let* ((_$e108740_ _stx108738_)
               (_$E108742108754_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108740_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108740_))
              (let* ((_$tgt108743108757_
                      (let () (declare (not safe)) (__AST-e _$e108740_)))
                     (_$hd108744108760_
                      (let () (declare (not safe)) (##car _$tgt108743108757_)))
                     (_$tl108745108763_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108743108757_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108745108763_))
                    (let* ((_$tgt108746108767_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108745108763_)))
                           (_$hd108747108770_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108746108767_)))
                           (_$tl108748108773_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108746108767_))))
                      (let ((_hd108777_ _$hd108747108770_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108748108773_))
                            (let* ((_$tgt108749108779_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108748108773_)))
                                   (_$hd108750108782_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108749108779_)))
                                   (_$tl108751108785_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108749108779_))))
                              (let ((_body108789_ _$hd108750108782_))
                                (if (let ((__tmp114098
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108751108785_))))
                                      (declare (not safe))
                                      (equal? __tmp114098 '()))
                                    (let ((__tmp114093
                                           (let ((__tmp114094
                                                  (let ((__tmp114097
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108777_)))
                                                        (__tmp114095
                                                         (let ((__tmp114096
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108789_))))
                   (declare (not safe))
                   (cons __tmp114096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114097
                                                          __tmp114095))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114094))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114093 _stx108738_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108742108754_)))))
                            (let () (declare (not safe)) (_$E108742108754_)))))
                    (let () (declare (not safe)) (_$E108742108754_))))
              (let () (declare (not safe)) (_$E108742108754_))))))
    (define __compile-case-lambda%
      (lambda (_stx108530_)
        (letrec ((_variadic?108532_
                  (lambda (_hd108703_)
                    (let* ((_$e108705_ _hd108703_)
                           (_$E108707108723_
                            (lambda ()
                              (let ((_$E108708108720_
                                     (lambda ()
                                       (let ((_$E108709108717_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108705_)))))
                                         '#t))))
                                (if (let ((__tmp114099
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108705_))))
                                      (declare (not safe))
                                      (equal? __tmp114099 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108708108720_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108705_))
                          (let* ((_$tgt108710108726_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108705_)))
                                 (_$hd108711108729_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108710108726_)))
                                 (_$tl108712108732_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108710108726_))))
                            (let ((_rest108736_ _$tl108712108732_))
                              (declare (not safe))
                              (_variadic?108532_ _rest108736_)))
                          (let () (declare (not safe)) (_$E108707108723_))))))
                 (_arity108533_
                  (lambda (_hd108668_)
                    (let _lp108670_ ((_rest108672_ _hd108668_) (_k108673_ '0))
                      (let* ((_$e108675_ _rest108672_)
                             (_$E108677108688_
                              (lambda ()
                                (let ((_$E108678108685_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108675_)))))
                                  _k108673_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108675_))
                            (let* ((_$tgt108679108691_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108675_)))
                                   (_$hd108680108694_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108679108691_)))
                                   (_$tl108681108697_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108679108691_))))
                              (let* ((_rest108701_ _$tl108681108697_)
                                     (__tmp114100
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108673_ '1))))
                                (declare (not safe))
                                (_lp108670_ _rest108701_ __tmp114100)))
                            (let ()
                              (declare (not safe))
                              (_$E108677108688_)))))))
                 (_generate108534_
                  (lambda (_rest108595_ _args108596_ _len108597_)
                    (let* ((_$e108599_ _rest108595_)
                           (_$E108601108612_
                            (lambda ()
                              (let* ((_$E108602108609_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108599_))))
                                     (__tmp114101
                                      (let ((__tmp114102
                                             (let ((__tmp114103
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108596_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114103))))
                                        (declare (not safe))
                                        (cons 'error __tmp114102))))
                                (declare (not safe))
                                (__SRC__% __tmp114101 _stx108530_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108599_))
                          (let* ((_$tgt108603108615_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108599_)))
                                 (_$hd108604108618_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108603108615_)))
                                 (_$tl108605108621_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108603108615_))))
                            (let* ((_clause108625_ _$hd108604108618_)
                                   (_rest108627_ _$tl108605108621_)
                                   (_$e108629_ _clause108625_)
                                   (_$E108631108640_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108629_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108629_))
                                  (let* ((_$tgt108632108643_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108629_)))
                                         (_$hd108633108646_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108632108643_)))
                                         (_$tl108634108649_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108632108643_))))
                                    (let ((_hd108653_ _$hd108633108646_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108634108649_))
                                          (let* ((_$tgt108635108655_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108634108649_)))
                                                 (_$hd108636108658_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108635108655_)))
                                                 (_$tl108637108661_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108635108655_))))
                                            (if (let ((__tmp114118
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108637108661_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114118 '()))
                                                (let ((_clen108665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108533_
                                                          _hd108653_)))
                                                      (_cmp108666_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108532_
                                                              _hd108653_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114104
                                                         (let ((__tmp114105
                                                                (let ((__tmp114115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114116
                                      (let ((__tmp114117
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108665_ '()))))
                                        (declare (not safe))
                                        (cons _len108597_ __tmp114117))))
                                 (declare (not safe))
                                 (cons _cmp108666_ __tmp114116)))
                              (__tmp114106
                               (let ((__tmp114109
                                      (let ((__tmp114110
                                             (let ((__tmp114111
                                                    (let ((__tmp114113
                                                           (let ((__tmp114114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108625_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114114)))
                  (__tmp114112
                   (let () (declare (not safe)) (cons _args108596_ '()))))
              (declare (not safe))
              (cons __tmp114113 __tmp114112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114111))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114110 _stx108530_)))
                                     (__tmp114107
                                      (let ((__tmp114108
                                             (let ()
                                               (declare (not safe))
                                               (_generate108534_
                                                _rest108627_
                                                _args108596_
                                                _len108597_))))
                                        (declare (not safe))
                                        (cons __tmp114108 '()))))
                                 (declare (not safe))
                                 (cons __tmp114109 __tmp114107))))
                          (declare (not safe))
                          (cons __tmp114115 __tmp114106))))
                   (declare (not safe))
                   (cons 'if __tmp114105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114104
                                                     _stx108530_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108631108640_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108631108640_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108631108640_)))))
                          (let () (declare (not safe)) (_$E108601108612_)))))))
          (let* ((_$e108536_ _stx108530_)
                 (_$E108538108570_
                  (lambda ()
                    (let ((_$E108539108552_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108536_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108536_))
                          (let* ((_$tgt108540108555_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108536_)))
                                 (_$hd108541108558_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108540108555_)))
                                 (_$tl108542108561_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108540108555_))))
                            (let ((_clauses108565_ _$tl108542108561_))
                              (let ((_args108567_
                                     (let ((__tmp114119 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114119 _stx108530_)))
                                    (_len108568_
                                     (let ((__tmp114120 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114120 _stx108530_))))
                                (let ((__tmp114121
                                       (let ((__tmp114122
                                              (let ((__tmp114123
                                                     (let ((__tmp114124
                                                            (let ((__tmp114125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114126
                                  (let ((__tmp114129
                                         (let ((__tmp114130
                                                (let ((__tmp114131
                                                       (let ((__tmp114132
                                                              (let ((__tmp114133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114134
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108567_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114134))))
                        (declare (not safe))
                        (__SRC__% __tmp114133 _stx108530_))))
                 (declare (not safe))
                 (cons __tmp114132 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108568_
                                                        __tmp114131))))
                                           (declare (not safe))
                                           (cons __tmp114130 '())))
                                        (__tmp114127
                                         (let ((__tmp114128
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108534_
                                                   _clauses108565_
                                                   _args108567_
                                                   _len108568_))))
                                           (declare (not safe))
                                           (cons __tmp114128 '()))))
                                    (declare (not safe))
                                    (cons __tmp114129 __tmp114127))))
                             (declare (not safe))
                             (cons 'let __tmp114126))))
                      (declare (not safe))
                      (__SRC__% __tmp114125 _stx108530_))))
               (declare (not safe))
               (cons __tmp114124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108567_
                                                      __tmp114123))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114122))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114121 _stx108530_)))))
                          (let () (declare (not safe)) (_$E108539108552_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108536_))
                (let* ((_$tgt108543108573_
                        (let () (declare (not safe)) (__AST-e _$e108536_)))
                       (_$hd108544108576_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108543108573_)))
                       (_$tl108545108579_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108543108573_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108545108579_))
                      (let* ((_$tgt108546108583_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108545108579_)))
                             (_$hd108547108586_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108546108583_)))
                             (_$tl108548108589_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108546108583_))))
                        (let ((_clause108593_ _$hd108547108586_))
                          (if (let ((__tmp114136
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108548108589_))))
                                (declare (not safe))
                                (equal? __tmp114136 '()))
                              (let ((__tmp114135
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108593_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114135))
                              (let ()
                                (declare (not safe))
                                (_$E108538108570_)))))
                      (let () (declare (not safe)) (_$E108538108570_))))
                (let () (declare (not safe)) (_$E108538108570_)))))))
    (define __compile-let-form
      (lambda (_stx108299_ _compile-simple108300_ _compile-values108301_)
        (letrec ((_simple-bind?108303_
                  (lambda (_hd108488_)
                    (let* ((_hd108489108499_ _hd108488_)
                           (_else108492108507_ (lambda () '#f)))
                      (let ((_K108495108520_ (lambda (_id108518_) '#t))
                            (_K108494108512_ (lambda () '#t)))
                        (let ((_try-match108491108515_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108489108499_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108494108512_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108492108507_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108489108499_))
                              (let ((_tl108497108525_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108489108499_)))
                                    (_hd108496108523_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108489108499_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108497108525_))
                                    (let ((_id108528_ _hd108496108523_))
                                      (declare (not safe))
                                      (_K108495108520_ _id108528_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108491108515_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108491108515_))))))))
                 (_car-e108304_
                  (lambda (_hd108486_)
                    (if (let () (declare (not safe)) (pair? _hd108486_))
                        (car _hd108486_)
                        _hd108486_))))
          (let* ((_$e108306_ _stx108299_)
                 (_$E108308108451_
                  (lambda ()
                    (let ((_$E108309108331_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108306_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108306_))
                          (let* ((_$tgt108310108334_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108306_)))
                                 (_$hd108311108337_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108310108334_)))
                                 (_$tl108312108340_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108310108334_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108312108340_))
                                (let* ((_$tgt108313108344_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108312108340_)))
                                       (_$hd108314108347_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108313108344_)))
                                       (_$tl108315108350_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108313108344_))))
                                  (let ((_hd108354_ _$hd108314108347_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108315108350_))
                                        (let* ((_$tgt108316108356_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108315108350_)))
                                               (_$hd108317108359_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108316108356_)))
                                               (_$tl108318108362_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108316108356_))))
                                          (let ((_body108366_
                                                 _$hd108317108359_))
                                            (if (let ((__tmp114139
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108318108362_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114139 '()))
                                                (let* ((_hd-ids108406_
                                                        (map (lambda (_bind108368_)
                                                               (let* ((_$e108370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108368_)
                              (_$E108372108381_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108370_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108370_))
                             (let* ((_$tgt108373108384_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108370_)))
                                    (_$hd108374108387_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108373108384_)))
                                    (_$tl108375108390_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108373108384_))))
                               (let ((_ids108394_ _$hd108374108387_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108375108390_))
                                     (let* ((_$tgt108376108396_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108375108390_)))
                                            (_$hd108377108399_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108376108396_)))
                                            (_$tl108378108402_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108376108396_))))
                                       (if (let ((__tmp114137
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108378108402_))))
                                             (declare (not safe))
                                             (equal? __tmp114137 '()))
                                           _ids108394_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108372108381_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108372108381_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108372108381_)))))
                     _hd108354_))
               (_exprs108446_
                (map (lambda (_bind108408_)
                       (let* ((_$e108410_ _bind108408_)
                              (_$E108412108421_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108410_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108410_))
                             (let* ((_$tgt108413108424_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108410_)))
                                    (_$hd108414108427_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108413108424_)))
                                    (_$tl108415108430_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108413108424_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108415108430_))
                                   (let* ((_$tgt108416108434_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108415108430_)))
                                          (_$hd108417108437_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108416108434_)))
                                          (_$tl108418108440_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108416108434_))))
                                     (let ((_expr108444_ _$hd108417108437_))
                                       (if (let ((__tmp114138
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108418108440_))))
                                             (declare (not safe))
                                             (equal? __tmp114138 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108444_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108412108421_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108412108421_))))
                             (let ()
                               (declare (not safe))
                               (_$E108412108421_)))))
                     _hd108354_))
               (_body108448_
                (let () (declare (not safe)) (__compile _body108366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108406_))
              (_compile-simple108300_
               (map _car-e108304_ _hd-ids108406_)
               _exprs108446_
               _body108448_)
              (_compile-values108301_
               _hd-ids108406_
               _exprs108446_
               _body108448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108309108331_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108309108331_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108309108331_))))
                          (let () (declare (not safe)) (_$E108309108331_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108306_))
                (let* ((_$tgt108319108454_
                        (let () (declare (not safe)) (__AST-e _$e108306_)))
                       (_$hd108320108457_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108319108454_)))
                       (_$tl108321108460_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108319108454_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108321108460_))
                      (let* ((_$tgt108322108464_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108321108460_)))
                             (_$hd108323108467_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108322108464_)))
                             (_$tl108324108470_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108322108464_))))
                        (if (let ((__tmp114141
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108323108467_))))
                              (declare (not safe))
                              (equal? __tmp114141 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108324108470_))
                                (let* ((_$tgt108325108474_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108324108470_)))
                                       (_$hd108326108477_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108325108474_)))
                                       (_$tl108327108480_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108325108474_))))
                                  (let ((_body108484_ _$hd108326108477_))
                                    (if (let ((__tmp114140
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108327108480_))))
                                          (declare (not safe))
                                          (equal? __tmp114140 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108484_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108308108451_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108308108451_)))
                            (let () (declare (not safe)) (_$E108308108451_))))
                      (let () (declare (not safe)) (_$E108308108451_))))
                (let () (declare (not safe)) (_$E108308108451_)))))))
    (define __compile-let-values%
      (lambda (_stx108114_)
        (letrec ((_compile-simple108116_
                  (lambda (_hd-ids108295_ _exprs108296_ _body108297_)
                    (let ((__tmp114142
                           (let ((__tmp114143
                                  (let ((__tmp114145
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108295_)
                                              _exprs108296_))
                                        (__tmp114144
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108297_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114145 __tmp114144))))
                             (declare (not safe))
                             (cons 'let __tmp114143))))
                      (declare (not safe))
                      (__SRC__% __tmp114142 _stx108114_))))
                 (_compile-values108117_
                  (lambda (_hd-ids108213_ _exprs108214_ _body108215_)
                    (let _lp108217_ ((_rest108219_ _hd-ids108213_)
                                     (_exprs108220_ _exprs108214_)
                                     (_bind108221_ '())
                                     (_post108222_ '()))
                      (let* ((_rest108223108237_ _rest108219_)
                             (_else108226108245_
                              (lambda ()
                                (let ((__tmp114146
                                       (let ((__tmp114147
                                              (let ((__tmp114150
                                                     (reverse _bind108221_))
                                                    (__tmp114148
                                                     (let ((__tmp114149
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108118_
                                                               _post108222_
                                                               _body108215_))))
                                                       (declare (not safe))
                                                       (cons __tmp114149
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114150
                                                      __tmp114148))))
                                         (declare (not safe))
                                         (cons 'let __tmp114147))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114146 _stx108114_)))))
                        (let ((_K108231108278_
                               (lambda (_rest108275_ _id108276_)
                                 (let ((__tmp114156 (cdr _exprs108220_))
                                       (__tmp114151
                                        (let ((__tmp114152
                                               (let ((__tmp114155
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108276_)))
                                                     (__tmp114153
                                                      (let ((__tmp114154
                                                             (car _exprs108220_)))
                                                        (declare (not safe))
                                                        (cons __tmp114154
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114155
                                                       __tmp114153))))
                                          (declare (not safe))
                                          (cons __tmp114152 _bind108221_))))
                                   (declare (not safe))
                                   (_lp108217_
                                    _rest108275_
                                    __tmp114156
                                    __tmp114151
                                    _post108222_))))
                              (_K108228108260_
                               (lambda (_rest108249_ _hd108250_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108250_))
                                     (let ((__tmp114177 (cdr _exprs108220_))
                                           (__tmp114170
                                            (let ((__tmp114171
                                                   (let ((__tmp114176
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108250_)))
                                                         (__tmp114172
                                                          (let ((__tmp114173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114174
                                (let ((__tmp114175 (car _exprs108220_)))
                                  (declare (not safe))
                                  (cons __tmp114175 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114174))))
                    (declare (not safe))
                    (cons __tmp114173 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114176
                                                           __tmp114172))))
                                              (declare (not safe))
                                              (cons __tmp114171
                                                    _bind108221_))))
                                       (declare (not safe))
                                       (_lp108217_
                                        _rest108249_
                                        __tmp114177
                                        __tmp114170
                                        _post108222_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108250_))
                                         (let* ((_len108252_
                                                 (length _hd108250_))
                                                (_tmp108254_
                                                 (let ((__tmp114157 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114157))))
                                           (let ((__tmp114169
                                                  (cdr _exprs108220_))
                                                 (__tmp114165
                                                  (let ((__tmp114166
                                                         (let ((__tmp114167
                                                                (let ((__tmp114168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108220_)))
                          (declare (not safe))
                          (cons __tmp114168 '()))))
                   (declare (not safe))
                   (cons _tmp108254_ __tmp114167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114166
                                                          _bind108221_)))
                                                 (__tmp114158
                                                  (let ((__tmp114159
                                                         (let ((__tmp114160
                                                                (let ((__tmp114161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114163
                                      (lambda (_id108257_ _k108258_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108257_))
                                            (let ((__tmp114164
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108257_))))
                                              (declare (not safe))
                                              (cons __tmp114164 _k108258_))
                                            '#f)))
                                     (__tmp114162
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108252_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114163
                                  _hd108250_
                                  __tmp114162))))
                          (declare (not safe))
                          (cons _len108252_ __tmp114161))))
                   (declare (not safe))
                   (cons _tmp108254_ __tmp114160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114159
                                                          _post108222_))))
                                             (declare (not safe))
                                             (_lp108217_
                                              _rest108249_
                                              __tmp114169
                                              __tmp114165
                                              __tmp114158)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108114_
                                            _hd108250_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108223108237_))
                              (let ((_tl108233108283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108223108237_)))
                                    (_hd108232108281_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108223108237_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108232108281_))
                                    (let ((_tl108235108288_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108232108281_)))
                                          (_hd108234108286_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108232108281_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108235108288_))
                                          (let ((_id108291_ _hd108234108286_)
                                                (_rest108293_
                                                 _tl108233108283_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108231108278_
                                               _rest108293_
                                               _id108291_)))
                                          (let ((_hd108268_ _hd108232108281_)
                                                (_rest108270_
                                                 _tl108233108283_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108228108260_
                                               _rest108270_
                                               _hd108268_)))))
                                    (let ((_hd108268_ _hd108232108281_)
                                          (_rest108270_ _tl108233108283_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108228108260_
                                         _rest108270_
                                         _hd108268_)))))
                              (let ()
                                (declare (not safe))
                                (_else108226108245_))))))))
                 (_compile-post108118_
                  (lambda (_post108120_ _body108121_)
                    (let _lp108123_ ((_rest108125_ _post108120_)
                                     (_check108126_ '())
                                     (_bind108127_ '()))
                      (let* ((_rest108128108140_ _rest108125_)
                             (_else108130108148_
                              (lambda ()
                                (let ((__tmp114178
                                       (let ((__tmp114179
                                              (let ((__tmp114180
                                                     (let ((__tmp114181
                                                            (let ((__tmp114182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114183
                                  (let ((__tmp114184
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108121_ '()))))
                                    (declare (not safe))
                                    (cons _bind108127_ __tmp114184))))
                             (declare (not safe))
                             (cons 'let __tmp114183))))
                      (declare (not safe))
                      (__SRC__% __tmp114182 _stx108114_))))
               (declare (not safe))
               (cons __tmp114181 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114180
                                                        _check108126_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114179))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114178 _stx108114_))))
                             (_K108132108187_
                              (lambda (_rest108151_
                                       _init108152_
                                       _len108153_
                                       _tmp108154_)
                                (let ((__tmp114192
                                       (let ((__tmp114193
                                              (let ((__tmp114194
                                                     (let ((__tmp114195
                                                            (let ((__tmp114196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108153_ '()))))
                      (declare (not safe))
                      (cons _tmp108154_ __tmp114196))))
               (declare (not safe))
               (cons '__check-values __tmp114195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114194
                                                 _stx108114_))))
                                         (declare (not safe))
                                         (cons __tmp114193 _check108126_)))
                                      (__tmp114185
                                       (let ((__tmp114186
                                              (lambda (_hd108156_ _r108157_)
                                                (let* ((_hd108158108165_
                                                        _hd108156_)
                                                       (_E108160108169_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108158108165_)))
               (_K108161108175_
                (lambda (_k108172_ _id108173_)
                  (let ((__tmp114187
                         (let ((__tmp114188
                                (let ((__tmp114189
                                       (let ((__tmp114190
                                              (let ((__tmp114191
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108172_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108154_
                                                      __tmp114191))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114190))))
                                  (declare (not safe))
                                  (cons __tmp114189 '()))))
                           (declare (not safe))
                           (cons _id108173_ __tmp114188))))
                    (declare (not safe))
                    (cons __tmp114187 _r108157_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108158108165_))
                                                      (let ((_hd108162108178_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108158108165_)))
                    (_tl108163108180_
                     (let () (declare (not safe)) (##cdr _hd108158108165_))))
                (let* ((_id108183_ _hd108162108178_)
                       (_k108185_ _tl108163108180_))
                  (declare (not safe))
                  (_K108161108175_ _k108185_ _id108183_)))
              (let () (declare (not safe)) (_E108160108169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114186
                                                 _bind108127_
                                                 _init108152_))))
                                  (declare (not safe))
                                  (_lp108123_
                                   _rest108151_
                                   __tmp114192
                                   __tmp114185)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108128108140_))
                            (let ((_hd108133108190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108128108140_)))
                                  (_tl108134108192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108128108140_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108133108190_))
                                  (let ((_hd108135108195_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108133108190_)))
                                        (_tl108136108197_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108133108190_))))
                                    (let ((_tmp108200_ _hd108135108195_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108136108197_))
                                          (let ((_hd108137108202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108136108197_)))
                                                (_tl108138108204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108136108197_))))
                                            (let* ((_len108207_
                                                    _hd108137108202_)
                                                   (_init108209_
                                                    _tl108138108204_)
                                                   (_rest108211_
                                                    _tl108134108192_))
                                              (declare (not safe))
                                              (_K108132108187_
                                               _rest108211_
                                               _init108209_
                                               _len108207_
                                               _tmp108200_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108130108148_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108130108148_))))
                            (let ()
                              (declare (not safe))
                              (_else108130108148_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108114_
             _compile-simple108116_
             _compile-values108117_)))))
    (define __compile-letrec-values%
      (lambda (_stx107914_)
        (letrec ((_compile-simple107916_
                  (lambda (_hd-ids108110_ _exprs108111_ _body108112_)
                    (let ((__tmp114197
                           (let ((__tmp114198
                                  (let ((__tmp114200
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108110_)
                                              _exprs108111_))
                                        (__tmp114199
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108112_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114200 __tmp114199))))
                             (declare (not safe))
                             (cons 'letrec __tmp114198))))
                      (declare (not safe))
                      (__SRC__% __tmp114197 _stx107914_))))
                 (_compile-values107917_
                  (lambda (_hd-ids108024_ _exprs108025_ _body108026_)
                    (let _lp108028_ ((_rest108030_ _hd-ids108024_)
                                     (_exprs108031_ _exprs108025_)
                                     (_pre108032_ '())
                                     (_bind108033_ '())
                                     (_post108034_ '()))
                      (let* ((_rest108035108049_ _rest108030_)
                             (_else108038108057_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107918_
                                   _pre108032_
                                   _bind108033_
                                   _post108034_
                                   _body108026_)))))
                        (let ((_K108043108093_
                               (lambda (_rest108090_ _id108091_)
                                 (let ((__tmp114206 (cdr _exprs108031_))
                                       (__tmp114201
                                        (let ((__tmp114202
                                               (let ((__tmp114205
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108091_)))
                                                     (__tmp114203
                                                      (let ((__tmp114204
                                                             (car _exprs108031_)))
                                                        (declare (not safe))
                                                        (cons __tmp114204
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114205
                                                       __tmp114203))))
                                          (declare (not safe))
                                          (cons __tmp114202 _bind108033_))))
                                   (declare (not safe))
                                   (_lp108028_
                                    _rest108090_
                                    __tmp114206
                                    _pre108032_
                                    __tmp114201
                                    _post108034_))))
                              (_K108040108075_
                               (lambda (_rest108061_ _hd108062_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108062_))
                                     (let ((__tmp114234 (cdr _exprs108031_))
                                           (__tmp114227
                                            (let ((__tmp114228
                                                   (let ((__tmp114233
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108062_)))
                                                         (__tmp114229
                                                          (let ((__tmp114230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114231
                                (let ((__tmp114232 (car _exprs108031_)))
                                  (declare (not safe))
                                  (cons __tmp114232 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114231))))
                    (declare (not safe))
                    (cons __tmp114230 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114233
                                                           __tmp114229))))
                                              (declare (not safe))
                                              (cons __tmp114228
                                                    _bind108033_))))
                                       (declare (not safe))
                                       (_lp108028_
                                        _rest108061_
                                        __tmp114234
                                        _pre108032_
                                        __tmp114227
                                        _post108034_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108062_))
                                         (let* ((_len108064_
                                                 (length _hd108062_))
                                                (_tmp108066_
                                                 (let ((__tmp114207 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114207))))
                                           (let ((__tmp114226
                                                  (cdr _exprs108031_))
                                                 (__tmp114219
                                                  (let ((__tmp114220
                                                         (lambda (_id108069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108070_)
                   (if (let () (declare (not safe)) (__AST-e _id108069_))
                       (let ((__tmp114221
                              (let ((__tmp114225
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108069_)))
                                    (__tmp114222
                                     (let ((__tmp114223
                                            (let ((__tmp114224
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114224))))
                                       (declare (not safe))
                                       (cons __tmp114223 '()))))
                                (declare (not safe))
                                (cons __tmp114225 __tmp114222))))
                         (declare (not safe))
                         (cons __tmp114221 _r108070_))
                       _r108070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114220
                                                            _pre108032_
                                                            _hd108062_)))
                                                 (__tmp114215
                                                  (let ((__tmp114216
                                                         (let ((__tmp114217
                                                                (let ((__tmp114218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108031_)))
                          (declare (not safe))
                          (cons __tmp114218 '()))))
                   (declare (not safe))
                   (cons _tmp108066_ __tmp114217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114216
                                                          _bind108033_)))
                                                 (__tmp114208
                                                  (let ((__tmp114209
                                                         (let ((__tmp114210
                                                                (let ((__tmp114211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114213
                                      (lambda (_id108072_ _k108073_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108072_))
                                            (let ((__tmp114214
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108072_))))
                                              (declare (not safe))
                                              (cons __tmp114214 _k108073_))
                                            '#f)))
                                     (__tmp114212
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108064_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114213
                                  _hd108062_
                                  __tmp114212))))
                          (declare (not safe))
                          (cons _len108064_ __tmp114211))))
                   (declare (not safe))
                   (cons _tmp108066_ __tmp114210))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114209
                                                          _post108034_))))
                                             (declare (not safe))
                                             (_lp108028_
                                              _rest108061_
                                              __tmp114226
                                              __tmp114219
                                              __tmp114215
                                              __tmp114208)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107914_
                                            _hd108062_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108035108049_))
                              (let ((_tl108045108098_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108035108049_)))
                                    (_hd108044108096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108035108049_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108044108096_))
                                    (let ((_tl108047108103_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108044108096_)))
                                          (_hd108046108101_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108044108096_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108047108103_))
                                          (let ((_id108106_ _hd108046108101_)
                                                (_rest108108_
                                                 _tl108045108098_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108043108093_
                                               _rest108108_
                                               _id108106_)))
                                          (let ((_hd108083_ _hd108044108096_)
                                                (_rest108085_
                                                 _tl108045108098_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108040108075_
                                               _rest108085_
                                               _hd108083_)))))
                                    (let ((_hd108083_ _hd108044108096_)
                                          (_rest108085_ _tl108045108098_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108040108075_
                                         _rest108085_
                                         _hd108083_)))))
                              (let ()
                                (declare (not safe))
                                (_else108038108057_))))))))
                 (_compile-inner107918_
                  (lambda (_pre108019_ _bind108020_ _post108021_ _body108022_)
                    (if (let () (declare (not safe)) (null? _pre108019_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107919_
                           _bind108020_
                           _post108021_
                           _body108022_))
                        (let ((__tmp114235
                               (let ((__tmp114236
                                      (let ((__tmp114239 (reverse _pre108019_))
                                            (__tmp114237
                                             (let ((__tmp114238
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107919_
                                                       _bind108020_
                                                       _post108021_
                                                       _body108022_))))
                                               (declare (not safe))
                                               (cons __tmp114238 '()))))
                                        (declare (not safe))
                                        (cons __tmp114239 __tmp114237))))
                                 (declare (not safe))
                                 (cons 'let __tmp114236))))
                          (declare (not safe))
                          (__SRC__% __tmp114235 _stx107914_)))))
                 (_compile-bind107919_
                  (lambda (_bind108015_ _post108016_ _body108017_)
                    (let ((__tmp114240
                           (let ((__tmp114241
                                  (let ((__tmp114244 (reverse _bind108015_))
                                        (__tmp114242
                                         (let ((__tmp114243
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107920_
                                                   _post108016_
                                                   _body108017_))))
                                           (declare (not safe))
                                           (cons __tmp114243 '()))))
                                    (declare (not safe))
                                    (cons __tmp114244 __tmp114242))))
                             (declare (not safe))
                             (cons 'letrec __tmp114241))))
                      (declare (not safe))
                      (__SRC__% __tmp114240 _stx107914_))))
                 (_compile-post107920_
                  (lambda (_post107922_ _body107923_)
                    (let _lp107925_ ((_rest107927_ _post107922_)
                                     (_check107928_ '())
                                     (_bind107929_ '()))
                      (let* ((_rest107930107942_ _rest107927_)
                             (_else107932107950_
                              (lambda ()
                                (let ((__tmp114245
                                       (let ((__tmp114246
                                              (let ((__tmp114247
                                                     (let ((__tmp114248
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114248 _bind107929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114247
                                                        _check107928_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114246))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114245 _stx107914_))))
                             (_K107934107989_
                              (lambda (_rest107953_
                                       _init107954_
                                       _len107955_
                                       _tmp107956_)
                                (let ((__tmp114257
                                       (let ((__tmp114258
                                              (let ((__tmp114259
                                                     (let ((__tmp114260
                                                            (let ((__tmp114261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107955_ '()))))
                      (declare (not safe))
                      (cons _tmp107956_ __tmp114261))))
               (declare (not safe))
               (cons '__check-values __tmp114260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114259
                                                 _stx107914_))))
                                         (declare (not safe))
                                         (cons __tmp114258 _check107928_)))
                                      (__tmp114249
                                       (let ((__tmp114250
                                              (lambda (_hd107958_ _r107959_)
                                                (let* ((_hd107960107967_
                                                        _hd107958_)
                                                       (_E107962107971_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107960107967_)))
               (_K107963107977_
                (lambda (_k107974_ _id107975_)
                  (let ((__tmp114251
                         (let ((__tmp114252
                                (let ((__tmp114253
                                       (let ((__tmp114254
                                              (let ((__tmp114255
                                                     (let ((__tmp114256
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107956_ __tmp114256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114255))))
                                         (declare (not safe))
                                         (cons __tmp114254 '()))))
                                  (declare (not safe))
                                  (cons _id107975_ __tmp114253))))
                           (declare (not safe))
                           (cons 'set! __tmp114252))))
                    (declare (not safe))
                    (cons __tmp114251 _r107959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107960107967_))
                                                      (let ((_hd107964107980_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107960107967_)))
                    (_tl107965107982_
                     (let () (declare (not safe)) (##cdr _hd107960107967_))))
                (let* ((_id107985_ _hd107964107980_)
                       (_k107987_ _tl107965107982_))
                  (declare (not safe))
                  (_K107963107977_ _k107987_ _id107985_)))
              (let () (declare (not safe)) (_E107962107971_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114250
                                                 _bind107929_
                                                 _init107954_))))
                                  (declare (not safe))
                                  (_lp107925_
                                   _rest107953_
                                   __tmp114257
                                   __tmp114249)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107930107942_))
                            (let ((_hd107935107992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107930107942_)))
                                  (_tl107936107994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107930107942_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107935107992_))
                                  (let ((_hd107937107997_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107935107992_)))
                                        (_tl107938107999_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107935107992_))))
                                    (let ((_tmp108002_ _hd107937107997_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107938107999_))
                                          (let ((_hd107939108004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107938107999_)))
                                                (_tl107940108006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107938107999_))))
                                            (let* ((_len108009_
                                                    _hd107939108004_)
                                                   (_init108011_
                                                    _tl107940108006_)
                                                   (_rest108013_
                                                    _tl107936107994_))
                                              (declare (not safe))
                                              (_K107934107989_
                                               _rest108013_
                                               _init108011_
                                               _len108009_
                                               _tmp108002_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107932107950_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107932107950_))))
                            (let ()
                              (declare (not safe))
                              (_else107932107950_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107914_
             _compile-simple107916_
             _compile-values107917_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107669_)
        (letrec ((_compile-simple107671_
                  (lambda (_hd-ids107910_ _exprs107911_ _body107912_)
                    (let ((__tmp114262
                           (let ((__tmp114263
                                  (let ((__tmp114265
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107910_)
                                              _exprs107911_))
                                        (__tmp114264
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107912_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114265 __tmp114264))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114263))))
                      (declare (not safe))
                      (__SRC__% __tmp114262 _stx107669_))))
                 (_compile-values107672_
                  (lambda (_hd-ids107821_ _exprs107822_ _body107823_)
                    (let _lp107825_ ((_rest107827_ _hd-ids107821_)
                                     (_exprs107828_ _exprs107822_)
                                     (_bind107829_ '())
                                     (_post107830_ '()))
                      (let* ((_rest107831107845_ _rest107827_)
                             (_else107834107853_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107673_
                                   _bind107829_
                                   _post107830_
                                   _body107823_)))))
                        (let ((_K107839107893_
                               (lambda (_rest107888_ _hd107889_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107889_))
                                     (let ((_id107891_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107889_))))
                                       (let ((__tmp114280 (cdr _exprs107828_))
                                             (__tmp114275
                                              (let ((__tmp114276
                                                     (let ((__tmp114277
                                                            (let ((__tmp114278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114279
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114279))))
                      (declare (not safe))
                      (cons __tmp114278 '()))))
               (declare (not safe))
               (cons _id107891_ __tmp114277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114276
                                                      _bind107829_)))
                                             (__tmp114271
                                              (let ((__tmp114272
                                                     (let ((__tmp114273
                                                            (let ((__tmp114274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107828_)))
                      (declare (not safe))
                      (cons __tmp114274 '()))))
               (declare (not safe))
               (cons _id107891_ __tmp114273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114272
                                                      _post107830_))))
                                         (declare (not safe))
                                         (_lp107825_
                                          _rest107888_
                                          __tmp114280
                                          __tmp114275
                                          __tmp114271)))
                                     (let ((__tmp114270 (cdr _exprs107828_))
                                           (__tmp114266
                                            (let ((__tmp114267
                                                   (let ((__tmp114268
                                                          (let ((__tmp114269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107828_)))
                    (declare (not safe))
                    (cons __tmp114269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114268))))
                                              (declare (not safe))
                                              (cons __tmp114267
                                                    _post107830_))))
                                       (declare (not safe))
                                       (_lp107825_
                                        _rest107888_
                                        __tmp114270
                                        _bind107829_
                                        __tmp114266)))))
                              (_K107836107873_
                               (lambda (_rest107857_ _hd107858_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107858_))
                                     (let ((_id107860_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107858_))))
                                       (let ((__tmp114316 (cdr _exprs107828_))
                                             (__tmp114311
                                              (let ((__tmp114312
                                                     (let ((__tmp114313
                                                            (let ((__tmp114314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114315
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114315))))
                      (declare (not safe))
                      (cons __tmp114314 '()))))
               (declare (not safe))
               (cons _id107860_ __tmp114313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114312
                                                      _bind107829_)))
                                             (__tmp114305
                                              (let ((__tmp114306
                                                     (let ((__tmp114307
                                                            (let ((__tmp114308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114309
                                  (let ((__tmp114310 (car _exprs107828_)))
                                    (declare (not safe))
                                    (cons __tmp114310 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114309))))
                      (declare (not safe))
                      (cons __tmp114308 '()))))
               (declare (not safe))
               (cons _id107860_ __tmp114307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114306
                                                      _post107830_))))
                                         (declare (not safe))
                                         (_lp107825_
                                          _rest107857_
                                          __tmp114316
                                          __tmp114311
                                          __tmp114305)))
                                     (if (let ((__tmp114304
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107858_))))
                                           (declare (not safe))
                                           (not __tmp114304))
                                         (let ((__tmp114303
                                                (cdr _exprs107828_))
                                               (__tmp114299
                                                (let ((__tmp114300
                                                       (let ((__tmp114301
                                                              (let ((__tmp114302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107828_)))
                        (declare (not safe))
                        (cons __tmp114302 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114300
                                                        _post107830_))))
                                           (declare (not safe))
                                           (_lp107825_
                                            _rest107857_
                                            __tmp114303
                                            _bind107829_
                                            __tmp114299))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107858_))
                                             (let* ((_len107862_
                                                     (length _hd107858_))
                                                    (_tmp107864_
                                                     (let ((__tmp114281
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114281))))
                                               (let ((__tmp114298
                                                      (cdr _exprs107828_))
                                                     (__tmp114291
                                                      (let ((__tmp114292
                                                             (lambda (_id107867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107868_)
                       (if (let () (declare (not safe)) (__AST-e _id107867_))
                           (let ((__tmp114293
                                  (let ((__tmp114297
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107867_)))
                                        (__tmp114294
                                         (let ((__tmp114295
                                                (let ((__tmp114296
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114296))))
                                           (declare (not safe))
                                           (cons __tmp114295 '()))))
                                    (declare (not safe))
                                    (cons __tmp114297 __tmp114294))))
                             (declare (not safe))
                             (cons __tmp114293 _r107868_))
                           _r107868_))))
                (declare (not safe))
                (foldl1 __tmp114292 _bind107829_ _hd107858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114282
                                                      (let ((__tmp114283
                                                             (let ((__tmp114284
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114290 (car _exprs107828_))
                                  (__tmp114285
                                   (let ((__tmp114286
                                          (let ((__tmp114288
                                                 (lambda (_id107870_ _k107871_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107870_))
                                                       (let ((__tmp114289
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107870_))))
                 (declare (not safe))
                 (cons __tmp114289 _k107871_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114287
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107862_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114288
                                             _hd107858_
                                             __tmp114287))))
                                     (declare (not safe))
                                     (cons _len107862_ __tmp114286))))
                              (declare (not safe))
                              (cons __tmp114290 __tmp114285))))
                       (declare (not safe))
                       (cons _tmp107864_ __tmp114284))))
                (declare (not safe))
                (cons __tmp114283 _post107830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107825_
                                                  _rest107857_
                                                  __tmp114298
                                                  __tmp114291
                                                  __tmp114282)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107669_
                                                _hd107858_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107831107845_))
                              (let ((_tl107841107898_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107831107845_)))
                                    (_hd107840107896_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107831107845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107840107896_))
                                    (let ((_tl107843107903_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107840107896_)))
                                          (_hd107842107901_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107840107896_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107843107903_))
                                          (let ((_hd107906_ _hd107842107901_)
                                                (_rest107908_
                                                 _tl107841107898_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107839107893_
                                               _rest107908_
                                               _hd107906_)))
                                          (let ((_hd107881_ _hd107840107896_)
                                                (_rest107883_
                                                 _tl107841107898_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107836107873_
                                               _rest107883_
                                               _hd107881_)))))
                                    (let ((_hd107881_ _hd107840107896_)
                                          (_rest107883_ _tl107841107898_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107836107873_
                                         _rest107883_
                                         _hd107881_)))))
                              (let ()
                                (declare (not safe))
                                (_else107834107853_))))))))
                 (_compile-bind107673_
                  (lambda (_bind107817_ _post107818_ _body107819_)
                    (let ((__tmp114317
                           (let ((__tmp114318
                                  (let ((__tmp114321 (reverse _bind107817_))
                                        (__tmp114319
                                         (let ((__tmp114320
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107674_
                                                   _post107818_
                                                   _body107819_))))
                                           (declare (not safe))
                                           (cons __tmp114320 '()))))
                                    (declare (not safe))
                                    (cons __tmp114321 __tmp114319))))
                             (declare (not safe))
                             (cons 'let __tmp114318))))
                      (declare (not safe))
                      (__SRC__% __tmp114317 _stx107669_))))
                 (_compile-post107674_
                  (lambda (_post107676_ _body107677_)
                    (let ((__tmp114322
                           (let ((__tmp114323
                                  (let ((__tmp114324
                                         (let ((__tmp114326
                                                (lambda (_hd107679_ _r107680_)
                                                  (let* ((_hd107681107704_
                                                          _hd107679_)
                                                         (_E107685107708_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107681107704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107698107802_
                                                           (lambda (_expr107800_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107800_ _r107680_))))
                  (_K107693107780_
                   (lambda (_expr107777_ _id107778_)
                     (let ((__tmp114327
                            (let ((__tmp114328
                                   (let ((__tmp114329
                                          (let ((__tmp114330
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107777_ '()))))
                                            (declare (not safe))
                                            (cons _id107778_ __tmp114330))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114329))))
                              (declare (not safe))
                              (__SRC__% __tmp114328 _stx107669_))))
                       (declare (not safe))
                       (cons __tmp114327 _r107680_))))
                  (_K107686107747_
                   (lambda (_init107712_ _len107713_ _expr107714_ _tmp107715_)
                     (let ((__tmp114331
                            (let ((__tmp114332
                                   (let ((__tmp114333
                                          (let ((__tmp114347
                                                 (let ((__tmp114348
                                                        (let ((__tmp114349
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107714_ '()))))
                  (declare (not safe))
                  (cons _tmp107715_ __tmp114349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114348 '())))
                                                (__tmp114334
                                                 (let ((__tmp114343
                                                        (let ((__tmp114344
                                                               (let ((__tmp114345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114346
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107713_ '()))))
                                (declare (not safe))
                                (cons _tmp107715_ __tmp114346))))
                         (declare (not safe))
                         (cons '__check-values __tmp114345))))
                  (declare (not safe))
                  (__SRC__% __tmp114344 _stx107669_)))
               (__tmp114335
                (let ((__tmp114336
                       (map (lambda (_hd107717_)
                              (let* ((_hd107718107725_ _hd107717_)
                                     (_E107720107729_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107718107725_)))
                                     (_K107721107735_
                                      (lambda (_k107732_ _id107733_)
                                        (let ((__tmp114337
                                               (let ((__tmp114338
                                                      (let ((__tmp114339
                                                             (let ((__tmp114340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114341
                                   (let ((__tmp114342
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107732_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107715_ __tmp114342))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114341))))
                       (declare (not safe))
                       (cons __tmp114340 '()))))
                (declare (not safe))
                (cons _id107733_ __tmp114339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114338))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114337
                                           _stx107669_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107718107725_))
                                    (let ((_hd107722107738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107718107725_)))
                                          (_tl107723107740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107718107725_))))
                                      (let* ((_id107743_ _hd107722107738_)
                                             (_k107745_ _tl107723107740_))
                                        (declare (not safe))
                                        (_K107721107735_
                                         _k107745_
                                         _id107743_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107720107729_)))))
                            _init107712_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114343
                                                         __tmp114335))))
                                            (declare (not safe))
                                            (cons __tmp114347 __tmp114334))))
                                     (declare (not safe))
                                     (cons 'let __tmp114333))))
                              (declare (not safe))
                              (__SRC__% __tmp114332 _stx107669_))))
                       (declare (not safe))
                       (cons __tmp114331 _r107680_)))))
              (if (let () (declare (not safe)) (##pair? _hd107681107704_))
                  (let ((_tl107700107807_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107681107704_)))
                        (_hd107699107805_
                         (let ()
                           (declare (not safe))
                           (##car _hd107681107704_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107699107805_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107700107807_))
                            (let ((_tl107702107812_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107700107807_)))
                                  (_hd107701107810_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107700107807_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107702107812_))
                                  (let ((_expr107815_ _hd107701107810_))
                                    (declare (not safe))
                                    (_K107698107802_ _expr107815_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107702107812_))
                                      (let ((_tl107692107766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107702107812_)))
                                            (_hd107691107764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107702107812_))))
                                        (let ((_tmp107755_ _hd107699107805_)
                                              (_expr107762_ _hd107701107810_)
                                              (_len107769_ _hd107691107764_)
                                              (_init107771_ _tl107692107766_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107686107747_
                                             _init107771_
                                             _len107769_
                                             _expr107762_
                                             _tmp107755_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107685107708_)))))
                            (let () (declare (not safe)) (_E107685107708_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107700107807_))
                            (let ((_tl107697107792_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107700107807_)))
                                  (_hd107696107790_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107700107807_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107697107792_))
                                  (let ((_id107788_ _hd107699107805_)
                                        (_expr107795_ _hd107696107790_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107693107780_
                                       _expr107795_
                                       _id107788_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107697107792_))
                                      (let ((_tl107692107766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107697107792_)))
                                            (_hd107691107764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107697107792_))))
                                        (let ((_tmp107755_ _hd107699107805_)
                                              (_expr107762_ _hd107696107790_)
                                              (_len107769_ _hd107691107764_)
                                              (_init107771_ _tl107692107766_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107686107747_
                                             _init107771_
                                             _len107769_
                                             _expr107762_
                                             _tmp107755_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107685107708_)))))
                            (let () (declare (not safe)) (_E107685107708_)))))
                  (let () (declare (not safe)) (_E107685107708_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114325
                                                (list _body107677_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114326
                                                   __tmp114325
                                                   _post107676_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114324))))
                             (declare (not safe))
                             (cons 'begin __tmp114323))))
                      (declare (not safe))
                      (__SRC__% __tmp114322 _stx107669_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107669_
             _compile-simple107671_
             _compile-values107672_)))))
    (define __compile-call%
      (lambda (_stx107629_)
        (let* ((_$e107631_ _stx107629_)
               (_$E107633107642_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107631_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107631_))
              (let* ((_$tgt107634107645_
                      (let () (declare (not safe)) (__AST-e _$e107631_)))
                     (_$hd107635107648_
                      (let () (declare (not safe)) (##car _$tgt107634107645_)))
                     (_$tl107636107651_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107634107645_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107636107651_))
                    (let* ((_$tgt107637107655_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107636107651_)))
                           (_$hd107638107658_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107637107655_)))
                           (_$tl107639107661_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107637107655_))))
                      (let* ((_rator107665_ _$hd107638107658_)
                             (_rands107667_ _$tl107639107661_)
                             (__tmp114350
                              (let ((__tmp114352
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107665_)))
                                    (__tmp114351
                                     (map __compile _rands107667_)))
                                (declare (not safe))
                                (cons __tmp114352 __tmp114351))))
                        (declare (not safe))
                        (__SRC__% __tmp114350 _stx107629_)))
                    (let () (declare (not safe)) (_$E107633107642_))))
              (let () (declare (not safe)) (_$E107633107642_))))))
    (define __compile-ref%
      (lambda (_stx107591_)
        (let* ((_$e107593_ _stx107591_)
               (_$E107595107604_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107593_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107593_))
              (let* ((_$tgt107596107607_
                      (let () (declare (not safe)) (__AST-e _$e107593_)))
                     (_$hd107597107610_
                      (let () (declare (not safe)) (##car _$tgt107596107607_)))
                     (_$tl107598107613_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107596107607_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107598107613_))
                    (let* ((_$tgt107599107617_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107598107613_)))
                           (_$hd107600107620_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107599107617_)))
                           (_$tl107601107623_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107599107617_))))
                      (let ((_id107627_ _$hd107600107620_))
                        (if (let ((__tmp114353
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107601107623_))))
                              (declare (not safe))
                              (equal? __tmp114353 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107627_ _stx107591_))
                            (let () (declare (not safe)) (_$E107595107604_)))))
                    (let () (declare (not safe)) (_$E107595107604_))))
              (let () (declare (not safe)) (_$E107595107604_))))))
    (define __compile-setq%
      (lambda (_stx107538_)
        (let* ((_$e107540_ _stx107538_)
               (_$E107542107554_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107540_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107540_))
              (let* ((_$tgt107543107557_
                      (let () (declare (not safe)) (__AST-e _$e107540_)))
                     (_$hd107544107560_
                      (let () (declare (not safe)) (##car _$tgt107543107557_)))
                     (_$tl107545107563_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107543107557_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107545107563_))
                    (let* ((_$tgt107546107567_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107545107563_)))
                           (_$hd107547107570_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107546107567_)))
                           (_$tl107548107573_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107546107567_))))
                      (let ((_id107577_ _$hd107547107570_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107548107573_))
                            (let* ((_$tgt107549107579_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107548107573_)))
                                   (_$hd107550107582_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107549107579_)))
                                   (_$tl107551107585_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107549107579_))))
                              (let ((_expr107589_ _$hd107550107582_))
                                (if (let ((__tmp114359
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107551107585_))))
                                      (declare (not safe))
                                      (equal? __tmp114359 '()))
                                    (let ((__tmp114354
                                           (let ((__tmp114355
                                                  (let ((__tmp114358
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107577_
                                                            _stx107538_)))
                                                        (__tmp114356
                                                         (let ((__tmp114357
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107589_))))
                   (declare (not safe))
                   (cons __tmp114357 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114358
                                                          __tmp114356))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114355))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114354 _stx107538_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107542107554_)))))
                            (let () (declare (not safe)) (_$E107542107554_)))))
                    (let () (declare (not safe)) (_$E107542107554_))))
              (let () (declare (not safe)) (_$E107542107554_))))))
    (define __compile-if%
      (lambda (_stx107470_)
        (let* ((_$e107472_ _stx107470_)
               (_$E107474107489_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107472_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107472_))
              (let* ((_$tgt107475107492_
                      (let () (declare (not safe)) (__AST-e _$e107472_)))
                     (_$hd107476107495_
                      (let () (declare (not safe)) (##car _$tgt107475107492_)))
                     (_$tl107477107498_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107475107492_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107477107498_))
                    (let* ((_$tgt107478107502_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107477107498_)))
                           (_$hd107479107505_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107478107502_)))
                           (_$tl107480107508_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107478107502_))))
                      (let ((_p107512_ _$hd107479107505_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107480107508_))
                            (let* ((_$tgt107481107514_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107480107508_)))
                                   (_$hd107482107517_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107481107514_)))
                                   (_$tl107483107520_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107481107514_))))
                              (let ((_t107524_ _$hd107482107517_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107483107520_))
                                    (let* ((_$tgt107484107526_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107483107520_)))
                                           (_$hd107485107529_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107484107526_)))
                                           (_$tl107486107532_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107484107526_))))
                                      (let ((_f107536_ _$hd107485107529_))
                                        (if (let ((__tmp114367
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107486107532_))))
                                              (declare (not safe))
                                              (equal? __tmp114367 '()))
                                            (let ((__tmp114360
                                                   (let ((__tmp114361
                                                          (let ((__tmp114366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107512_)))
                        (__tmp114362
                         (let ((__tmp114365
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107524_)))
                               (__tmp114363
                                (let ((__tmp114364
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107536_))))
                                  (declare (not safe))
                                  (cons __tmp114364 '()))))
                           (declare (not safe))
                           (cons __tmp114365 __tmp114363))))
                    (declare (not safe))
                    (cons __tmp114366 __tmp114362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114361))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114360
                                               _stx107470_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107474107489_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107474107489_)))))
                            (let () (declare (not safe)) (_$E107474107489_)))))
                    (let () (declare (not safe)) (_$E107474107489_))))
              (let () (declare (not safe)) (_$E107474107489_))))))
    (define __compile-quote%
      (lambda (_stx107432_)
        (let* ((_$e107434_ _stx107432_)
               (_$E107436107445_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107434_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107434_))
              (let* ((_$tgt107437107448_
                      (let () (declare (not safe)) (__AST-e _$e107434_)))
                     (_$hd107438107451_
                      (let () (declare (not safe)) (##car _$tgt107437107448_)))
                     (_$tl107439107454_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107437107448_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107439107454_))
                    (let* ((_$tgt107440107458_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107439107454_)))
                           (_$hd107441107461_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107440107458_)))
                           (_$tl107442107464_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107440107458_))))
                      (let ((_e107468_ _$hd107441107461_))
                        (if (let ((__tmp114371
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107442107464_))))
                              (declare (not safe))
                              (equal? __tmp114371 '()))
                            (let ((__tmp114368
                                   (let ((__tmp114369
                                          (let ((__tmp114370
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107468_))))
                                            (declare (not safe))
                                            (cons __tmp114370 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114369))))
                              (declare (not safe))
                              (__SRC__% __tmp114368 _stx107432_))
                            (let () (declare (not safe)) (_$E107436107445_)))))
                    (let () (declare (not safe)) (_$E107436107445_))))
              (let () (declare (not safe)) (_$E107436107445_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107394_)
        (let* ((_$e107396_ _stx107394_)
               (_$E107398107407_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107396_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107396_))
              (let* ((_$tgt107399107410_
                      (let () (declare (not safe)) (__AST-e _$e107396_)))
                     (_$hd107400107413_
                      (let () (declare (not safe)) (##car _$tgt107399107410_)))
                     (_$tl107401107416_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107399107410_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107401107416_))
                    (let* ((_$tgt107402107420_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107401107416_)))
                           (_$hd107403107423_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107402107420_)))
                           (_$tl107404107426_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107402107420_))))
                      (let ((_e107430_ _$hd107403107423_))
                        (if (let ((__tmp114374
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107404107426_))))
                              (declare (not safe))
                              (equal? __tmp114374 '()))
                            (let ((__tmp114372
                                   (let ((__tmp114373
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107430_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114373))))
                              (declare (not safe))
                              (__SRC__% __tmp114372 _stx107394_))
                            (let () (declare (not safe)) (_$E107398107407_)))))
                    (let () (declare (not safe)) (_$E107398107407_))))
              (let () (declare (not safe)) (_$E107398107407_))))))
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
