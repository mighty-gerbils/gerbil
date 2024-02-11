(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707616236)
  (begin
    (define __context::t
      (let ((__tmp113991
             (let ((__tmp113992
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113992 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp113991
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109327_
        (apply make-struct-instance __context::t _$args109327_)))
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
      (let ((__tmp113993
             (let ((__tmp113994
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113994 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp113993
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109324_
        (apply make-struct-instance __runtime::t _$args109324_)))
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
      (let ((__tmp113995
             (let ((__tmp113996
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113996 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp113995
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109321_
        (apply make-struct-instance __syntax::t _$args109321_)))
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
      (let ((__tmp113997
             (let ((__tmp113998
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113998 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp113997
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109318_
        (apply make-struct-instance __macro::t _$args109318_)))
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
      (let ((__tmp113999
             (let ((__tmp114000
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114000 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp113999
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109315_
        (apply make-struct-instance __special-form::t _$args109315_)))
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
      (let ((__tmp114001
             (let ((__tmp114002
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114002 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp114001
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109312_
        (apply make-struct-instance __core-form::t _$args109312_)))
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
      (let ((__tmp114003
             (let ((__tmp114004
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114004 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp114003
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109309_
        (apply make-struct-instance __core-expression::t _$args109309_)))
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
      (let ((__tmp114005
             (let ((__tmp114006
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114006 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp114005
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109306_
        (apply make-struct-instance __core-special-form::t _$args109306_)))
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
      (let ((__tmp114007
             (let ((__tmp114008
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114008 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp114007
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109303_
        (apply make-struct-instance __struct-info::t _$args109303_)))
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
      (let ((__tmp114009
             (let ((__tmp114010
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114010 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp114009
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109300_
        (apply make-struct-instance __feature::t _$args109300_)))
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
      (let ((__tmp114011
             (let ((__tmp114012
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114012 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp114011
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109297_
        (apply make-struct-instance __module::t _$args109297_)))
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
      (let ((__tmp114014
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114013
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114014 __tmp114013)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109272_ _ctx109273_)
        (if _ctx109273_
            (let ((_id109275_
                   (let () (declare (not safe)) (__AST-e _id109272_))))
              (let _lp109277_ ((_ctx109279_ _ctx109273_))
                (let ((_$e109281_
                       (table-ref
                        (##structure-ref _ctx109279_ '4 __context::t '#f)
                        _id109275_
                        '#f)))
                  (if _$e109281_
                      (values _$e109281_)
                      (let ((_$e109284_
                             (##structure-ref
                              _ctx109279_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109284_
                            (let ()
                              (declare (not safe))
                              (_lp109277_ _$e109284_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109290_)
        (let ((_ctx109292_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109290_ _ctx109292_))))
    (define __core-resolve
      (lambda _g114016_
        (let ((_g114015_ (let () (declare (not safe)) (##length _g114016_))))
          (cond ((let () (declare (not safe)) (##fx= _g114015_ 1))
                 (apply (lambda (_id109290_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109290_)))
                        _g114016_))
                ((let () (declare (not safe)) (##fx= _g114015_ 2))
                 (apply (lambda (_id109294_ _ctx109295_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109294_ _ctx109295_)))
                        _g114016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114016_))))))
    (define __core-bound-id?__%
      (lambda (_id109255_ _is?109256_)
        (let ((_$e109258_
               (let () (declare (not safe)) (__core-resolve__0 _id109255_))))
          (if _$e109258_ (_is?109256_ _$e109258_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109264_)
        (let ((_is?109266_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109264_ _is?109266_))))
    (define __core-bound-id?
      (lambda _g114018_
        (let ((_g114017_ (let () (declare (not safe)) (##length _g114018_))))
          (cond ((let () (declare (not safe)) (##fx= _g114017_ 1))
                 (apply (lambda (_id109264_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109264_)))
                        _g114018_))
                ((let () (declare (not safe)) (##fx= _g114017_ 2))
                 (apply (lambda (_id109268_ _is?109269_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109268_ _is?109269_)))
                        _g114018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114018_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109238_ _eid109239_ _ctx109240_)
        (if _eid109239_
            (let ((__tmp114021
                   (##structure-ref _ctx109240_ '4 __context::t '#f))
                  (__tmp114020
                   (let () (declare (not safe)) (__AST-e _id109238_)))
                  (__tmp114019
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109239_))))
              (declare (not safe))
              (table-set! __tmp114021 __tmp114020 __tmp114019))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109245_ _eid109246_)
        (let ((_ctx109248_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109245_ _eid109246_ _ctx109248_))))
    (define __core-bind-runtime!
      (lambda _g114023_
        (let ((_g114022_ (let () (declare (not safe)) (##length _g114023_))))
          (cond ((let () (declare (not safe)) (##fx= _g114022_ 2))
                 (apply (lambda (_id109245_ _eid109246_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109245_ _eid109246_)))
                        _g114023_))
                ((let () (declare (not safe)) (##fx= _g114022_ 3))
                 (apply (lambda (_id109250_ _eid109251_ _ctx109252_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109250_
                             _eid109251_
                             _ctx109252_)))
                        _g114023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114023_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109221_ _e109222_ _make109223_)
        (let ((__tmp114024
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109222_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109222_
                   (_make109223_ _e109222_ _id109221_))))
          (declare (not safe))
          (table-set! __*core* _id109221_ __tmp114024))))
    (define __core-bind-syntax!__0
      (lambda (_id109228_ _e109229_)
        (let ((_make109231_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109228_ _e109229_ _make109231_))))
    (define __core-bind-syntax!
      (lambda _g114026_
        (let ((_g114025_ (let () (declare (not safe)) (##length _g114026_))))
          (cond ((let () (declare (not safe)) (##fx= _g114025_ 2))
                 (apply (lambda (_id109228_ _e109229_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109228_ _e109229_)))
                        _g114026_))
                ((let () (declare (not safe)) (##fx= _g114025_ 3))
                 (apply (lambda (_id109233_ _e109234_ _make109235_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109233_
                             _e109234_
                             _make109235_)))
                        _g114026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114026_))))))
    (define __core-bind-macro!
      (lambda (_id109217_ _e109218_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109217_ _e109218_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109214_ _e109215_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109214_ _e109215_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109198_ _e109199_ _ctx109200_)
        (let ((__tmp114030 (##structure-ref _ctx109200_ '4 __context::t '#f))
              (__tmp114029 (let () (declare (not safe)) (__AST-e _id109198_)))
              (__tmp114027
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109199_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109199_
                   (let ((__tmp114028
                          (let () (declare (not safe)) (__AST-e _id109198_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109199_ __tmp114028)))))
          (declare (not safe))
          (table-set! __tmp114030 __tmp114029 __tmp114027))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109205_ _e109206_)
        (let ((_ctx109208_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109205_ _e109206_ _ctx109208_))))
    (define __core-bind-user-syntax!
      (lambda _g114032_
        (let ((_g114031_ (let () (declare (not safe)) (##length _g114032_))))
          (cond ((let () (declare (not safe)) (##fx= _g114031_ 2))
                 (apply (lambda (_id109205_ _e109206_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109205_
                             _e109206_)))
                        _g114032_))
                ((let () (declare (not safe)) (##fx= _g114031_ 3))
                 (apply (lambda (_id109210_ _e109211_ _ctx109212_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109210_
                             _e109211_
                             _ctx109212_)))
                        _g114032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114032_))))))
    (define make-__runtime-id__%
      (lambda (_id109179_ _ctx109180_)
        (let ((_id109182_ (let () (declare (not safe)) (__AST-e _id109179_))))
          (if (let () (declare (not safe)) (eq? _id109182_ '_))
              '#f
              (if (uninterned-symbol? _id109182_)
                  (gensym _id109182_)
                  (if (let () (declare (not safe)) (symbol? _id109182_))
                      (let ((_$e109184_
                             (##structure-ref
                              _ctx109180_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109184_))
                            (gensym _id109182_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109184_))
                                (let ((__tmp114033
                                       (##structure-ref
                                        _ctx109180_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114033 '"#" _id109182_))
                                _id109182_)))
                      (error '"Illegal runtime identifier" _id109182_)))))))
    (define make-__runtime-id__0
      (lambda (_id109190_)
        (let ((_ctx109192_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109190_ _ctx109192_))))
    (define make-__runtime-id
      (lambda _g114035_
        (let ((_g114034_ (let () (declare (not safe)) (##length _g114035_))))
          (cond ((let () (declare (not safe)) (##fx= _g114034_ 1))
                 (apply (lambda (_id109190_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109190_)))
                        _g114035_))
                ((let () (declare (not safe)) (##fx= _g114034_ 2))
                 (apply (lambda (_id109194_ _ctx109195_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109194_ _ctx109195_)))
                        _g114035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114035_))))))
    (define make-__context-local__%
      (lambda (_super109168_)
        (let ((__tmp114036
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109168_ __tmp114036))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109174_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109174_))))
    (define make-__context-local
      (lambda _g114038_
        (let ((_g114037_ (let () (declare (not safe)) (##length _g114038_))))
          (cond ((let () (declare (not safe)) (##fx= _g114037_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114038_))
                ((let () (declare (not safe)) (##fx= _g114037_ 1))
                 (apply (lambda (_super109176_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109176_)))
                        _g114038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114038_))))))
    (define make-__context-module__%
      (lambda (_id109148_ _ns109149_ _path109150_ _super109151_)
        (let ((__tmp114039
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109149_
           _super109151_
           __tmp114039
           _id109148_
           _path109150_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109156_ _ns109157_ _path109158_)
        (let ((_super109160_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109156_
           _ns109157_
           _path109158_
           _super109160_))))
    (define make-__context-module
      (lambda _g114041_
        (let ((_g114040_ (let () (declare (not safe)) (##length _g114041_))))
          (cond ((let () (declare (not safe)) (##fx= _g114040_ 3))
                 (apply (lambda (_id109156_ _ns109157_ _path109158_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109156_
                             _ns109157_
                             _path109158_)))
                        _g114041_))
                ((let () (declare (not safe)) (##fx= _g114040_ 4))
                 (apply (lambda (_id109162_
                                 _ns109163_
                                 _path109164_
                                 _super109165_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109162_
                             _ns109163_
                             _path109164_
                             _super109165_)))
                        _g114041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114041_))))))
    (define __SRC__%
      (lambda (_e109131_ _src-stx109132_)
        (if (or (let () (declare (not safe)) (pair? _e109131_))
                (let () (declare (not safe)) (symbol? _e109131_)))
            (let ((__tmp114045
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109132_
                          'gerbil#AST::t))
                       (let ((__tmp114046
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109132_))))
                         (declare (not safe))
                         (__locat __tmp114046))
                       '#f)))
              (declare (not safe))
              (##make-source _e109131_ __tmp114045))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109131_ 'gerbil#AST::t))
                (let ((__tmp114044
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109131_ '1 AST::t '#f)))
                      (__tmp114042
                       (let ((__tmp114043
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109131_))))
                         (declare (not safe))
                         (__locat __tmp114043))))
                  (declare (not safe))
                  (##make-source __tmp114044 __tmp114042))
                (error '"BUG! Cannot sourcify object" _e109131_)))))
    (define __SRC__0
      (lambda (_e109140_)
        (let ((_src-stx109142_ '#f))
          (declare (not safe))
          (__SRC__% _e109140_ _src-stx109142_))))
    (define __SRC
      (lambda _g114048_
        (let ((_g114047_ (let () (declare (not safe)) (##length _g114048_))))
          (cond ((let () (declare (not safe)) (##fx= _g114047_ 1))
                 (apply (lambda (_e109140_)
                          (let () (declare (not safe)) (__SRC__0 _e109140_)))
                        _g114048_))
                ((let () (declare (not safe)) (##fx= _g114047_ 2))
                 (apply (lambda (_e109144_ _src-stx109145_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109144_ _src-stx109145_)))
                        _g114048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114048_))))))
    (define __locat
      (lambda (_loc109128_)
        (if (let () (declare (not safe)) (##locat? _loc109128_))
            _loc109128_
            '#f)))
    (define __check-values
      (lambda (_obj109123_ _k109124_)
        (let ((_count109126_
               (if (let () (declare (not safe)) (##values? _obj109123_))
                   (let () (declare (not safe)) (##vector-length _obj109123_))
                   '1)))
          (if (fx= _count109126_ _k109124_)
              '#!void
              (error (if (fx< _count109126_ _k109124_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109123_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109123_))
                         _obj109123_)
                     _k109124_)))))
    (define __compile
      (lambda (_stx109093_)
        (let* ((_$e109095_ _stx109093_)
               (_$E109097109103_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109095_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109095_))
              (let* ((_$tgt109098109106_
                      (let () (declare (not safe)) (__AST-e _$e109095_)))
                     (_$hd109099109109_
                      (let () (declare (not safe)) (##car _$tgt109098109106_)))
                     (_$tl109100109112_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109098109106_))))
                (let* ((_form109116_ _$hd109099109109_)
                       (_$e109118_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109116_))))
                  (if _$e109118_
                      ((lambda (_bind109121_)
                         ((##structure-ref _bind109121_ '1 __syntax::t '#f)
                          _stx109093_))
                       _$e109118_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109093_
                         _form109116_)))))
              (let () (declare (not safe)) (_$E109097109103_))))))
    (define __compile-error__%
      (lambda (_stx109080_ _detail109081_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109080_
           _detail109081_))))
    (define __compile-error__0
      (lambda (_stx109086_)
        (let ((_detail109088_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109086_ _detail109088_))))
    (define __compile-error
      (lambda _g114050_
        (let ((_g114049_ (let () (declare (not safe)) (##length _g114050_))))
          (cond ((let () (declare (not safe)) (##fx= _g114049_ 1))
                 (apply (lambda (_stx109086_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109086_)))
                        _g114050_))
                ((let () (declare (not safe)) (##fx= _g114049_ 2))
                 (apply (lambda (_stx109090_ _detail109091_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109090_ _detail109091_)))
                        _g114050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114050_))))))
    (define __compile-ignore%
      (lambda (_stx109077_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109077_))))
    (define __compile-begin%
      (lambda (_stx109052_)
        (let* ((_$e109054_ _stx109052_)
               (_$E109056109062_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109054_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109054_))
              (let* ((_$tgt109057109065_
                      (let () (declare (not safe)) (__AST-e _$e109054_)))
                     (_$hd109058109068_
                      (let () (declare (not safe)) (##car _$tgt109057109065_)))
                     (_$tl109059109071_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109057109065_))))
                (let* ((_body109075_ _$tl109059109071_)
                       (__tmp114051
                        (let ((__tmp114052 (map __compile _body109075_)))
                          (declare (not safe))
                          (cons 'begin __tmp114052))))
                  (declare (not safe))
                  (__SRC__% __tmp114051 _stx109052_)))
              (let () (declare (not safe)) (_$E109056109062_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109027_)
        (let* ((_$e109029_ _stx109027_)
               (_$E109031109037_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109029_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109029_))
              (let* ((_$tgt109032109040_
                      (let () (declare (not safe)) (__AST-e _$e109029_)))
                     (_$hd109033109043_
                      (let () (declare (not safe)) (##car _$tgt109032109040_)))
                     (_$tl109034109046_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109032109040_))))
                (let* ((_body109050_ _$tl109034109046_)
                       (__tmp114053
                        (let ((__tmp114054
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109050_))))
                          (declare (not safe))
                          (cons 'begin __tmp114054))))
                  (declare (not safe))
                  (__SRC__% __tmp114053 _stx109027_)))
              (let () (declare (not safe)) (_$E109031109037_))))))
    (define __compile-import%
      (lambda (_stx109002_)
        (let* ((_$e109004_ _stx109002_)
               (_$E109006109012_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109004_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109004_))
              (let* ((_$tgt109007109015_
                      (let () (declare (not safe)) (__AST-e _$e109004_)))
                     (_$hd109008109018_
                      (let () (declare (not safe)) (##car _$tgt109007109015_)))
                     (_$tl109009109021_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109007109015_))))
                (let* ((_body109025_ _$tl109009109021_)
                       (__tmp114055
                        (let ((__tmp114056
                               (let ((__tmp114057
                                      (let ((__tmp114058
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109025_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114058))))
                                 (declare (not safe))
                                 (cons __tmp114057 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114056))))
                  (declare (not safe))
                  (__SRC__% __tmp114055 _stx109002_)))
              (let () (declare (not safe)) (_$E109006109012_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108949_)
        (let* ((_$e108951_ _stx108949_)
               (_$E108953108965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108951_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108951_))
              (let* ((_$tgt108954108968_
                      (let () (declare (not safe)) (__AST-e _$e108951_)))
                     (_$hd108955108971_
                      (let () (declare (not safe)) (##car _$tgt108954108968_)))
                     (_$tl108956108974_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108954108968_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108956108974_))
                    (let* ((_$tgt108957108978_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108956108974_)))
                           (_$hd108958108981_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108957108978_)))
                           (_$tl108959108984_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108957108978_))))
                      (let ((_ann108988_ _$hd108958108981_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108959108984_))
                            (let* ((_$tgt108960108990_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108959108984_)))
                                   (_$hd108961108993_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108960108990_)))
                                   (_$tl108962108996_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108960108990_))))
                              (let ((_expr109000_ _$hd108961108993_))
                                (if (let ((__tmp114059
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108962108996_))))
                                      (declare (not safe))
                                      (equal? __tmp114059 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109000_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108953108965_)))))
                            (let () (declare (not safe)) (_$E108953108965_)))))
                    (let () (declare (not safe)) (_$E108953108965_))))
              (let () (declare (not safe)) (_$E108953108965_))))))
    (define __compile-define-values%
      (lambda (_stx108840_)
        (let* ((_$e108842_ _stx108840_)
               (_$E108844108856_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108842_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108842_))
              (let* ((_$tgt108845108859_
                      (let () (declare (not safe)) (__AST-e _$e108842_)))
                     (_$hd108846108862_
                      (let () (declare (not safe)) (##car _$tgt108845108859_)))
                     (_$tl108847108865_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108845108859_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108847108865_))
                    (let* ((_$tgt108848108869_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108847108865_)))
                           (_$hd108849108872_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108848108869_)))
                           (_$tl108850108875_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108848108869_))))
                      (let ((_hd108879_ _$hd108849108872_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108850108875_))
                            (let* ((_$tgt108851108881_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108850108875_)))
                                   (_$hd108852108884_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108851108881_)))
                                   (_$tl108853108887_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108851108881_))))
                              (let ((_expr108891_ _$hd108852108884_))
                                (if (let ((__tmp114092
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108853108887_))))
                                      (declare (not safe))
                                      (equal? __tmp114092 '()))
                                    (let* ((_$e108893_ _hd108879_)
                                           (_$E108895108936_
                                            (lambda ()
                                              (let ((_$E108896108921_
                                                     (lambda ()
                                                       (let* ((_$E108897108908_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108893_))))
                      (_ids108911_ _hd108879_)
                      (_len108913_ (length _ids108911_))
                      (_tmp108915_
                       (let ((__tmp114060 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114060))))
                 (let ((__tmp114061
                        (let ((__tmp114062
                               (let ((__tmp114079
                                      (let ((__tmp114080
                                             (let ((__tmp114081
                                                    (let ((__tmp114082
                                                           (let ((__tmp114083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108891_))))
                     (declare (not safe))
                     (cons __tmp114083 '()))))
              (declare (not safe))
              (cons _tmp108915_ __tmp114082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114081))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114080 _stx108840_)))
                                     (__tmp114063
                                      (let ((__tmp114075
                                             (let ((__tmp114076
                                                    (let ((__tmp114077
                                                           (let ((__tmp114078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108913_ '()))))
                     (declare (not safe))
                     (cons _tmp108915_ __tmp114078))))
              (declare (not safe))
              (cons '__check-values __tmp114077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114076
                                                _stx108840_)))
                                            (__tmp114064
                                             (let ((__tmp114065
                                                    (let ((__tmp114067
                                                           (lambda (_id108918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108919_)
                     (if (let () (declare (not safe)) (__AST-e _id108918_))
                         (let ((__tmp114068
                                (let ((__tmp114069
                                       (let ((__tmp114074
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108918_)))
                                             (__tmp114070
                                              (let ((__tmp114071
                                                     (let ((__tmp114072
                                                            (let ((__tmp114073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108919_ '()))))
                      (declare (not safe))
                      (cons _tmp108915_ __tmp114073))))
               (declare (not safe))
               (cons '##vector-ref __tmp114072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114071 '()))))
                                         (declare (not safe))
                                         (cons __tmp114074 __tmp114070))))
                                  (declare (not safe))
                                  (cons 'define __tmp114069))))
                           (declare (not safe))
                           (__SRC__% __tmp114068 _stx108840_))
                         '#f)))
                  (__tmp114066
                   (let () (declare (not safe)) (iota _len108913_))))
              (declare (not safe))
              (filter-map2 __tmp114067 _ids108911_ __tmp114066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114065))))
                                        (declare (not safe))
                                        (cons __tmp114075 __tmp114064))))
                                 (declare (not safe))
                                 (cons __tmp114079 __tmp114063))))
                          (declare (not safe))
                          (cons 'begin __tmp114062))))
                   (declare (not safe))
                   (__SRC__% __tmp114061 _stx108840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108893_))
                                                    (let* ((_$tgt108898108924_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108893_)))
                                                           (_$hd108899108927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108898108924_)))
                                                           (_$tl108900108930_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108898108924_))))
                                                      (let ((_id108934_
                                                             _$hd108899108927_))
                                                        (if (let ((__tmp114089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108900108930_))))
                      (declare (not safe))
                      (equal? __tmp114089 '()))
                    (let ((__tmp114084
                           (let ((__tmp114085
                                  (let ((__tmp114088
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108934_)))
                                        (__tmp114086
                                         (let ((__tmp114087
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108891_))))
                                           (declare (not safe))
                                           (cons __tmp114087 '()))))
                                    (declare (not safe))
                                    (cons __tmp114088 __tmp114086))))
                             (declare (not safe))
                             (cons 'define __tmp114085))))
                      (declare (not safe))
                      (__SRC__% __tmp114084 _stx108840_))
                    (let () (declare (not safe)) (_$E108896108921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108896108921_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108893_))
                                          (let* ((_$tgt108901108939_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108893_)))
                                                 (_$hd108902108942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108901108939_)))
                                                 (_$tl108903108945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108901108939_))))
                                            (if (let ((__tmp114091
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108902108942_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114091 '#f))
                                                (if (let ((__tmp114090
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108903108945_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114090 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108891_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108895108936_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108895108936_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108895108936_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108844108856_)))))
                            (let () (declare (not safe)) (_$E108844108856_)))))
                    (let () (declare (not safe)) (_$E108844108856_))))
              (let () (declare (not safe)) (_$E108844108856_))))))
    (define __compile-head-id
      (lambda (_e108838_)
        (let ((__tmp114093
               (if (let () (declare (not safe)) (__AST-e _e108838_))
                   _e108838_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114093))))
    (define __compile-lambda-head
      (lambda (_hd108795_)
        (let _recur108797_ ((_rest108799_ _hd108795_))
          (let* ((_$e108801_ _rest108799_)
                 (_$E108803108821_
                  (lambda ()
                    (let ((_$E108804108818_
                           (lambda ()
                             (let* ((_$E108805108813_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108801_))))
                                    (_tail108816_ _$e108801_))
                               (declare (not safe))
                               (__compile-head-id _tail108816_)))))
                      (if (let ((__tmp114094
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108801_))))
                            (declare (not safe))
                            (equal? __tmp114094 '()))
                          '()
                          (let () (declare (not safe)) (_$E108804108818_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108801_))
                (let* ((_$tgt108806108824_
                        (let () (declare (not safe)) (__AST-e _$e108801_)))
                       (_$hd108807108827_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108806108824_)))
                       (_$tl108808108830_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108806108824_))))
                  (let* ((_hd108834_ _$hd108807108827_)
                         (_rest108836_ _$tl108808108830_))
                    (let ((__tmp114096
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108834_)))
                          (__tmp114095
                           (let ()
                             (declare (not safe))
                             (_recur108797_ _rest108836_))))
                      (declare (not safe))
                      (cons __tmp114096 __tmp114095))))
                (let () (declare (not safe)) (_$E108803108821_)))))))
    (define __compile-lambda%
      (lambda (_stx108742_)
        (let* ((_$e108744_ _stx108742_)
               (_$E108746108758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108744_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108744_))
              (let* ((_$tgt108747108761_
                      (let () (declare (not safe)) (__AST-e _$e108744_)))
                     (_$hd108748108764_
                      (let () (declare (not safe)) (##car _$tgt108747108761_)))
                     (_$tl108749108767_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108747108761_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108749108767_))
                    (let* ((_$tgt108750108771_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108749108767_)))
                           (_$hd108751108774_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108750108771_)))
                           (_$tl108752108777_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108750108771_))))
                      (let ((_hd108781_ _$hd108751108774_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108752108777_))
                            (let* ((_$tgt108753108783_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108752108777_)))
                                   (_$hd108754108786_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108753108783_)))
                                   (_$tl108755108789_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108753108783_))))
                              (let ((_body108793_ _$hd108754108786_))
                                (if (let ((__tmp114102
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108755108789_))))
                                      (declare (not safe))
                                      (equal? __tmp114102 '()))
                                    (let ((__tmp114097
                                           (let ((__tmp114098
                                                  (let ((__tmp114101
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108781_)))
                                                        (__tmp114099
                                                         (let ((__tmp114100
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108793_))))
                   (declare (not safe))
                   (cons __tmp114100 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114101
                                                          __tmp114099))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114098))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114097 _stx108742_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108746108758_)))))
                            (let () (declare (not safe)) (_$E108746108758_)))))
                    (let () (declare (not safe)) (_$E108746108758_))))
              (let () (declare (not safe)) (_$E108746108758_))))))
    (define __compile-case-lambda%
      (lambda (_stx108534_)
        (letrec ((_variadic?108536_
                  (lambda (_hd108707_)
                    (let* ((_$e108709_ _hd108707_)
                           (_$E108711108727_
                            (lambda ()
                              (let ((_$E108712108724_
                                     (lambda ()
                                       (let ((_$E108713108721_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108709_)))))
                                         '#t))))
                                (if (let ((__tmp114103
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108709_))))
                                      (declare (not safe))
                                      (equal? __tmp114103 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108712108724_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108709_))
                          (let* ((_$tgt108714108730_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108709_)))
                                 (_$hd108715108733_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108714108730_)))
                                 (_$tl108716108736_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108714108730_))))
                            (let ((_rest108740_ _$tl108716108736_))
                              (declare (not safe))
                              (_variadic?108536_ _rest108740_)))
                          (let () (declare (not safe)) (_$E108711108727_))))))
                 (_arity108537_
                  (lambda (_hd108672_)
                    (let _lp108674_ ((_rest108676_ _hd108672_) (_k108677_ '0))
                      (let* ((_$e108679_ _rest108676_)
                             (_$E108681108692_
                              (lambda ()
                                (let ((_$E108682108689_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108679_)))))
                                  _k108677_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108679_))
                            (let* ((_$tgt108683108695_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108679_)))
                                   (_$hd108684108698_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108683108695_)))
                                   (_$tl108685108701_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108683108695_))))
                              (let* ((_rest108705_ _$tl108685108701_)
                                     (__tmp114104
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108677_ '1))))
                                (declare (not safe))
                                (_lp108674_ _rest108705_ __tmp114104)))
                            (let ()
                              (declare (not safe))
                              (_$E108681108692_)))))))
                 (_generate108538_
                  (lambda (_rest108599_ _args108600_ _len108601_)
                    (let* ((_$e108603_ _rest108599_)
                           (_$E108605108616_
                            (lambda ()
                              (let* ((_$E108606108613_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108603_))))
                                     (__tmp114105
                                      (let ((__tmp114106
                                             (let ((__tmp114107
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108600_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114107))))
                                        (declare (not safe))
                                        (cons 'error __tmp114106))))
                                (declare (not safe))
                                (__SRC__% __tmp114105 _stx108534_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108603_))
                          (let* ((_$tgt108607108619_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108603_)))
                                 (_$hd108608108622_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108607108619_)))
                                 (_$tl108609108625_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108607108619_))))
                            (let* ((_clause108629_ _$hd108608108622_)
                                   (_rest108631_ _$tl108609108625_)
                                   (_$e108633_ _clause108629_)
                                   (_$E108635108644_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108633_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108633_))
                                  (let* ((_$tgt108636108647_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108633_)))
                                         (_$hd108637108650_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108636108647_)))
                                         (_$tl108638108653_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108636108647_))))
                                    (let ((_hd108657_ _$hd108637108650_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108638108653_))
                                          (let* ((_$tgt108639108659_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108638108653_)))
                                                 (_$hd108640108662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108639108659_)))
                                                 (_$tl108641108665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108639108659_))))
                                            (if (let ((__tmp114122
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108641108665_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114122 '()))
                                                (let ((_clen108669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108537_
                                                          _hd108657_)))
                                                      (_cmp108670_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108536_
                                                              _hd108657_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114108
                                                         (let ((__tmp114109
                                                                (let ((__tmp114119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114120
                                      (let ((__tmp114121
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108669_ '()))))
                                        (declare (not safe))
                                        (cons _len108601_ __tmp114121))))
                                 (declare (not safe))
                                 (cons _cmp108670_ __tmp114120)))
                              (__tmp114110
                               (let ((__tmp114113
                                      (let ((__tmp114114
                                             (let ((__tmp114115
                                                    (let ((__tmp114117
                                                           (let ((__tmp114118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108629_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114118)))
                  (__tmp114116
                   (let () (declare (not safe)) (cons _args108600_ '()))))
              (declare (not safe))
              (cons __tmp114117 __tmp114116))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114115))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114114 _stx108534_)))
                                     (__tmp114111
                                      (let ((__tmp114112
                                             (let ()
                                               (declare (not safe))
                                               (_generate108538_
                                                _rest108631_
                                                _args108600_
                                                _len108601_))))
                                        (declare (not safe))
                                        (cons __tmp114112 '()))))
                                 (declare (not safe))
                                 (cons __tmp114113 __tmp114111))))
                          (declare (not safe))
                          (cons __tmp114119 __tmp114110))))
                   (declare (not safe))
                   (cons 'if __tmp114109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114108
                                                     _stx108534_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108635108644_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108635108644_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108635108644_)))))
                          (let () (declare (not safe)) (_$E108605108616_)))))))
          (let* ((_$e108540_ _stx108534_)
                 (_$E108542108574_
                  (lambda ()
                    (let ((_$E108543108556_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108540_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108540_))
                          (let* ((_$tgt108544108559_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108540_)))
                                 (_$hd108545108562_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108544108559_)))
                                 (_$tl108546108565_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108544108559_))))
                            (let ((_clauses108569_ _$tl108546108565_))
                              (let ((_args108571_
                                     (let ((__tmp114123 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114123 _stx108534_)))
                                    (_len108572_
                                     (let ((__tmp114124 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114124 _stx108534_))))
                                (let ((__tmp114125
                                       (let ((__tmp114126
                                              (let ((__tmp114127
                                                     (let ((__tmp114128
                                                            (let ((__tmp114129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114130
                                  (let ((__tmp114133
                                         (let ((__tmp114134
                                                (let ((__tmp114135
                                                       (let ((__tmp114136
                                                              (let ((__tmp114137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114138
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108571_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114138))))
                        (declare (not safe))
                        (__SRC__% __tmp114137 _stx108534_))))
                 (declare (not safe))
                 (cons __tmp114136 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108572_
                                                        __tmp114135))))
                                           (declare (not safe))
                                           (cons __tmp114134 '())))
                                        (__tmp114131
                                         (let ((__tmp114132
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108538_
                                                   _clauses108569_
                                                   _args108571_
                                                   _len108572_))))
                                           (declare (not safe))
                                           (cons __tmp114132 '()))))
                                    (declare (not safe))
                                    (cons __tmp114133 __tmp114131))))
                             (declare (not safe))
                             (cons 'let __tmp114130))))
                      (declare (not safe))
                      (__SRC__% __tmp114129 _stx108534_))))
               (declare (not safe))
               (cons __tmp114128 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108571_
                                                      __tmp114127))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114126))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114125 _stx108534_)))))
                          (let () (declare (not safe)) (_$E108543108556_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108540_))
                (let* ((_$tgt108547108577_
                        (let () (declare (not safe)) (__AST-e _$e108540_)))
                       (_$hd108548108580_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108547108577_)))
                       (_$tl108549108583_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108547108577_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108549108583_))
                      (let* ((_$tgt108550108587_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108549108583_)))
                             (_$hd108551108590_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108550108587_)))
                             (_$tl108552108593_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108550108587_))))
                        (let ((_clause108597_ _$hd108551108590_))
                          (if (let ((__tmp114140
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108552108593_))))
                                (declare (not safe))
                                (equal? __tmp114140 '()))
                              (let ((__tmp114139
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108597_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114139))
                              (let ()
                                (declare (not safe))
                                (_$E108542108574_)))))
                      (let () (declare (not safe)) (_$E108542108574_))))
                (let () (declare (not safe)) (_$E108542108574_)))))))
    (define __compile-let-form
      (lambda (_stx108303_ _compile-simple108304_ _compile-values108305_)
        (letrec ((_simple-bind?108307_
                  (lambda (_hd108492_)
                    (let* ((_hd108493108503_ _hd108492_)
                           (_else108496108511_ (lambda () '#f)))
                      (let ((_K108499108524_ (lambda (_id108522_) '#t))
                            (_K108498108516_ (lambda () '#t)))
                        (let ((_try-match108495108519_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108493108503_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108498108516_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108496108511_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108493108503_))
                              (let ((_tl108501108529_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108493108503_)))
                                    (_hd108500108527_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108493108503_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108501108529_))
                                    (let ((_id108532_ _hd108500108527_))
                                      (declare (not safe))
                                      (_K108499108524_ _id108532_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108495108519_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108495108519_))))))))
                 (_car-e108308_
                  (lambda (_hd108490_)
                    (if (let () (declare (not safe)) (pair? _hd108490_))
                        (car _hd108490_)
                        _hd108490_))))
          (let* ((_$e108310_ _stx108303_)
                 (_$E108312108455_
                  (lambda ()
                    (let ((_$E108313108335_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108310_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108310_))
                          (let* ((_$tgt108314108338_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108310_)))
                                 (_$hd108315108341_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108314108338_)))
                                 (_$tl108316108344_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108314108338_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108316108344_))
                                (let* ((_$tgt108317108348_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108316108344_)))
                                       (_$hd108318108351_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108317108348_)))
                                       (_$tl108319108354_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108317108348_))))
                                  (let ((_hd108358_ _$hd108318108351_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108319108354_))
                                        (let* ((_$tgt108320108360_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108319108354_)))
                                               (_$hd108321108363_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108320108360_)))
                                               (_$tl108322108366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108320108360_))))
                                          (let ((_body108370_
                                                 _$hd108321108363_))
                                            (if (let ((__tmp114143
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108322108366_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114143 '()))
                                                (let* ((_hd-ids108410_
                                                        (map (lambda (_bind108372_)
                                                               (let* ((_$e108374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108372_)
                              (_$E108376108385_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108374_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108374_))
                             (let* ((_$tgt108377108388_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108374_)))
                                    (_$hd108378108391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108377108388_)))
                                    (_$tl108379108394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108377108388_))))
                               (let ((_ids108398_ _$hd108378108391_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108379108394_))
                                     (let* ((_$tgt108380108400_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108379108394_)))
                                            (_$hd108381108403_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108380108400_)))
                                            (_$tl108382108406_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108380108400_))))
                                       (if (let ((__tmp114141
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108382108406_))))
                                             (declare (not safe))
                                             (equal? __tmp114141 '()))
                                           _ids108398_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108376108385_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108376108385_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108376108385_)))))
                     _hd108358_))
               (_exprs108450_
                (map (lambda (_bind108412_)
                       (let* ((_$e108414_ _bind108412_)
                              (_$E108416108425_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108414_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108414_))
                             (let* ((_$tgt108417108428_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108414_)))
                                    (_$hd108418108431_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108417108428_)))
                                    (_$tl108419108434_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108417108428_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108419108434_))
                                   (let* ((_$tgt108420108438_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108419108434_)))
                                          (_$hd108421108441_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108420108438_)))
                                          (_$tl108422108444_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108420108438_))))
                                     (let ((_expr108448_ _$hd108421108441_))
                                       (if (let ((__tmp114142
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108422108444_))))
                                             (declare (not safe))
                                             (equal? __tmp114142 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108448_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108416108425_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108416108425_))))
                             (let ()
                               (declare (not safe))
                               (_$E108416108425_)))))
                     _hd108358_))
               (_body108452_
                (let () (declare (not safe)) (__compile _body108370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108410_))
              (_compile-simple108304_
               (map _car-e108308_ _hd-ids108410_)
               _exprs108450_
               _body108452_)
              (_compile-values108305_
               _hd-ids108410_
               _exprs108450_
               _body108452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108313108335_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108313108335_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108313108335_))))
                          (let () (declare (not safe)) (_$E108313108335_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108310_))
                (let* ((_$tgt108323108458_
                        (let () (declare (not safe)) (__AST-e _$e108310_)))
                       (_$hd108324108461_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108323108458_)))
                       (_$tl108325108464_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108323108458_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108325108464_))
                      (let* ((_$tgt108326108468_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108325108464_)))
                             (_$hd108327108471_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108326108468_)))
                             (_$tl108328108474_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108326108468_))))
                        (if (let ((__tmp114145
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108327108471_))))
                              (declare (not safe))
                              (equal? __tmp114145 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108328108474_))
                                (let* ((_$tgt108329108478_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108328108474_)))
                                       (_$hd108330108481_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108329108478_)))
                                       (_$tl108331108484_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108329108478_))))
                                  (let ((_body108488_ _$hd108330108481_))
                                    (if (let ((__tmp114144
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108331108484_))))
                                          (declare (not safe))
                                          (equal? __tmp114144 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108488_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108312108455_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108312108455_)))
                            (let () (declare (not safe)) (_$E108312108455_))))
                      (let () (declare (not safe)) (_$E108312108455_))))
                (let () (declare (not safe)) (_$E108312108455_)))))))
    (define __compile-let-values%
      (lambda (_stx108118_)
        (letrec ((_compile-simple108120_
                  (lambda (_hd-ids108299_ _exprs108300_ _body108301_)
                    (let ((__tmp114146
                           (let ((__tmp114147
                                  (let ((__tmp114149
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108299_)
                                              _exprs108300_))
                                        (__tmp114148
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108301_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114149 __tmp114148))))
                             (declare (not safe))
                             (cons 'let __tmp114147))))
                      (declare (not safe))
                      (__SRC__% __tmp114146 _stx108118_))))
                 (_compile-values108121_
                  (lambda (_hd-ids108217_ _exprs108218_ _body108219_)
                    (let _lp108221_ ((_rest108223_ _hd-ids108217_)
                                     (_exprs108224_ _exprs108218_)
                                     (_bind108225_ '())
                                     (_post108226_ '()))
                      (let* ((_rest108227108241_ _rest108223_)
                             (_else108230108249_
                              (lambda ()
                                (let ((__tmp114150
                                       (let ((__tmp114151
                                              (let ((__tmp114154
                                                     (reverse _bind108225_))
                                                    (__tmp114152
                                                     (let ((__tmp114153
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108122_
                                                               _post108226_
                                                               _body108219_))))
                                                       (declare (not safe))
                                                       (cons __tmp114153
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114154
                                                      __tmp114152))))
                                         (declare (not safe))
                                         (cons 'let __tmp114151))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114150 _stx108118_)))))
                        (let ((_K108235108282_
                               (lambda (_rest108279_ _id108280_)
                                 (let ((__tmp114160 (cdr _exprs108224_))
                                       (__tmp114155
                                        (let ((__tmp114156
                                               (let ((__tmp114159
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108280_)))
                                                     (__tmp114157
                                                      (let ((__tmp114158
                                                             (car _exprs108224_)))
                                                        (declare (not safe))
                                                        (cons __tmp114158
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114159
                                                       __tmp114157))))
                                          (declare (not safe))
                                          (cons __tmp114156 _bind108225_))))
                                   (declare (not safe))
                                   (_lp108221_
                                    _rest108279_
                                    __tmp114160
                                    __tmp114155
                                    _post108226_))))
                              (_K108232108264_
                               (lambda (_rest108253_ _hd108254_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108254_))
                                     (let ((__tmp114181 (cdr _exprs108224_))
                                           (__tmp114174
                                            (let ((__tmp114175
                                                   (let ((__tmp114180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108254_)))
                                                         (__tmp114176
                                                          (let ((__tmp114177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114178
                                (let ((__tmp114179 (car _exprs108224_)))
                                  (declare (not safe))
                                  (cons __tmp114179 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114178))))
                    (declare (not safe))
                    (cons __tmp114177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114180
                                                           __tmp114176))))
                                              (declare (not safe))
                                              (cons __tmp114175
                                                    _bind108225_))))
                                       (declare (not safe))
                                       (_lp108221_
                                        _rest108253_
                                        __tmp114181
                                        __tmp114174
                                        _post108226_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108254_))
                                         (let* ((_len108256_
                                                 (length _hd108254_))
                                                (_tmp108258_
                                                 (let ((__tmp114161 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114161))))
                                           (let ((__tmp114173
                                                  (cdr _exprs108224_))
                                                 (__tmp114169
                                                  (let ((__tmp114170
                                                         (let ((__tmp114171
                                                                (let ((__tmp114172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108224_)))
                          (declare (not safe))
                          (cons __tmp114172 '()))))
                   (declare (not safe))
                   (cons _tmp108258_ __tmp114171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114170
                                                          _bind108225_)))
                                                 (__tmp114162
                                                  (let ((__tmp114163
                                                         (let ((__tmp114164
                                                                (let ((__tmp114165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114167
                                      (lambda (_id108261_ _k108262_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108261_))
                                            (let ((__tmp114168
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108261_))))
                                              (declare (not safe))
                                              (cons __tmp114168 _k108262_))
                                            '#f)))
                                     (__tmp114166
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108256_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114167
                                  _hd108254_
                                  __tmp114166))))
                          (declare (not safe))
                          (cons _len108256_ __tmp114165))))
                   (declare (not safe))
                   (cons _tmp108258_ __tmp114164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114163
                                                          _post108226_))))
                                             (declare (not safe))
                                             (_lp108221_
                                              _rest108253_
                                              __tmp114173
                                              __tmp114169
                                              __tmp114162)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108118_
                                            _hd108254_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108227108241_))
                              (let ((_tl108237108287_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108227108241_)))
                                    (_hd108236108285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108227108241_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108236108285_))
                                    (let ((_tl108239108292_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108236108285_)))
                                          (_hd108238108290_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108236108285_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108239108292_))
                                          (let ((_id108295_ _hd108238108290_)
                                                (_rest108297_
                                                 _tl108237108287_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108235108282_
                                               _rest108297_
                                               _id108295_)))
                                          (let ((_hd108272_ _hd108236108285_)
                                                (_rest108274_
                                                 _tl108237108287_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108232108264_
                                               _rest108274_
                                               _hd108272_)))))
                                    (let ((_hd108272_ _hd108236108285_)
                                          (_rest108274_ _tl108237108287_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108232108264_
                                         _rest108274_
                                         _hd108272_)))))
                              (let ()
                                (declare (not safe))
                                (_else108230108249_))))))))
                 (_compile-post108122_
                  (lambda (_post108124_ _body108125_)
                    (let _lp108127_ ((_rest108129_ _post108124_)
                                     (_check108130_ '())
                                     (_bind108131_ '()))
                      (let* ((_rest108132108144_ _rest108129_)
                             (_else108134108152_
                              (lambda ()
                                (let ((__tmp114182
                                       (let ((__tmp114183
                                              (let ((__tmp114184
                                                     (let ((__tmp114185
                                                            (let ((__tmp114186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114187
                                  (let ((__tmp114188
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108125_ '()))))
                                    (declare (not safe))
                                    (cons _bind108131_ __tmp114188))))
                             (declare (not safe))
                             (cons 'let __tmp114187))))
                      (declare (not safe))
                      (__SRC__% __tmp114186 _stx108118_))))
               (declare (not safe))
               (cons __tmp114185 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114184
                                                        _check108130_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114183))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114182 _stx108118_))))
                             (_K108136108191_
                              (lambda (_rest108155_
                                       _init108156_
                                       _len108157_
                                       _tmp108158_)
                                (let ((__tmp114196
                                       (let ((__tmp114197
                                              (let ((__tmp114198
                                                     (let ((__tmp114199
                                                            (let ((__tmp114200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108157_ '()))))
                      (declare (not safe))
                      (cons _tmp108158_ __tmp114200))))
               (declare (not safe))
               (cons '__check-values __tmp114199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114198
                                                 _stx108118_))))
                                         (declare (not safe))
                                         (cons __tmp114197 _check108130_)))
                                      (__tmp114189
                                       (let ((__tmp114190
                                              (lambda (_hd108160_ _r108161_)
                                                (let* ((_hd108162108169_
                                                        _hd108160_)
                                                       (_E108164108173_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108162108169_)))
               (_K108165108179_
                (lambda (_k108176_ _id108177_)
                  (let ((__tmp114191
                         (let ((__tmp114192
                                (let ((__tmp114193
                                       (let ((__tmp114194
                                              (let ((__tmp114195
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108176_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108158_
                                                      __tmp114195))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114194))))
                                  (declare (not safe))
                                  (cons __tmp114193 '()))))
                           (declare (not safe))
                           (cons _id108177_ __tmp114192))))
                    (declare (not safe))
                    (cons __tmp114191 _r108161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108162108169_))
                                                      (let ((_hd108166108182_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108162108169_)))
                    (_tl108167108184_
                     (let () (declare (not safe)) (##cdr _hd108162108169_))))
                (let* ((_id108187_ _hd108166108182_)
                       (_k108189_ _tl108167108184_))
                  (declare (not safe))
                  (_K108165108179_ _k108189_ _id108187_)))
              (let () (declare (not safe)) (_E108164108173_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114190
                                                 _bind108131_
                                                 _init108156_))))
                                  (declare (not safe))
                                  (_lp108127_
                                   _rest108155_
                                   __tmp114196
                                   __tmp114189)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108132108144_))
                            (let ((_hd108137108194_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108132108144_)))
                                  (_tl108138108196_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108132108144_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108137108194_))
                                  (let ((_hd108139108199_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108137108194_)))
                                        (_tl108140108201_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108137108194_))))
                                    (let ((_tmp108204_ _hd108139108199_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108140108201_))
                                          (let ((_hd108141108206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108140108201_)))
                                                (_tl108142108208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108140108201_))))
                                            (let* ((_len108211_
                                                    _hd108141108206_)
                                                   (_init108213_
                                                    _tl108142108208_)
                                                   (_rest108215_
                                                    _tl108138108196_))
                                              (declare (not safe))
                                              (_K108136108191_
                                               _rest108215_
                                               _init108213_
                                               _len108211_
                                               _tmp108204_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108134108152_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108134108152_))))
                            (let ()
                              (declare (not safe))
                              (_else108134108152_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108118_
             _compile-simple108120_
             _compile-values108121_)))))
    (define __compile-letrec-values%
      (lambda (_stx107918_)
        (letrec ((_compile-simple107920_
                  (lambda (_hd-ids108114_ _exprs108115_ _body108116_)
                    (let ((__tmp114201
                           (let ((__tmp114202
                                  (let ((__tmp114204
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108114_)
                                              _exprs108115_))
                                        (__tmp114203
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108116_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114204 __tmp114203))))
                             (declare (not safe))
                             (cons 'letrec __tmp114202))))
                      (declare (not safe))
                      (__SRC__% __tmp114201 _stx107918_))))
                 (_compile-values107921_
                  (lambda (_hd-ids108028_ _exprs108029_ _body108030_)
                    (let _lp108032_ ((_rest108034_ _hd-ids108028_)
                                     (_exprs108035_ _exprs108029_)
                                     (_pre108036_ '())
                                     (_bind108037_ '())
                                     (_post108038_ '()))
                      (let* ((_rest108039108053_ _rest108034_)
                             (_else108042108061_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107922_
                                   _pre108036_
                                   _bind108037_
                                   _post108038_
                                   _body108030_)))))
                        (let ((_K108047108097_
                               (lambda (_rest108094_ _id108095_)
                                 (let ((__tmp114210 (cdr _exprs108035_))
                                       (__tmp114205
                                        (let ((__tmp114206
                                               (let ((__tmp114209
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108095_)))
                                                     (__tmp114207
                                                      (let ((__tmp114208
                                                             (car _exprs108035_)))
                                                        (declare (not safe))
                                                        (cons __tmp114208
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114209
                                                       __tmp114207))))
                                          (declare (not safe))
                                          (cons __tmp114206 _bind108037_))))
                                   (declare (not safe))
                                   (_lp108032_
                                    _rest108094_
                                    __tmp114210
                                    _pre108036_
                                    __tmp114205
                                    _post108038_))))
                              (_K108044108079_
                               (lambda (_rest108065_ _hd108066_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108066_))
                                     (let ((__tmp114238 (cdr _exprs108035_))
                                           (__tmp114231
                                            (let ((__tmp114232
                                                   (let ((__tmp114237
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108066_)))
                                                         (__tmp114233
                                                          (let ((__tmp114234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114235
                                (let ((__tmp114236 (car _exprs108035_)))
                                  (declare (not safe))
                                  (cons __tmp114236 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114235))))
                    (declare (not safe))
                    (cons __tmp114234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114237
                                                           __tmp114233))))
                                              (declare (not safe))
                                              (cons __tmp114232
                                                    _bind108037_))))
                                       (declare (not safe))
                                       (_lp108032_
                                        _rest108065_
                                        __tmp114238
                                        _pre108036_
                                        __tmp114231
                                        _post108038_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108066_))
                                         (let* ((_len108068_
                                                 (length _hd108066_))
                                                (_tmp108070_
                                                 (let ((__tmp114211 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114211))))
                                           (let ((__tmp114230
                                                  (cdr _exprs108035_))
                                                 (__tmp114223
                                                  (let ((__tmp114224
                                                         (lambda (_id108073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108074_)
                   (if (let () (declare (not safe)) (__AST-e _id108073_))
                       (let ((__tmp114225
                              (let ((__tmp114229
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108073_)))
                                    (__tmp114226
                                     (let ((__tmp114227
                                            (let ((__tmp114228
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114228))))
                                       (declare (not safe))
                                       (cons __tmp114227 '()))))
                                (declare (not safe))
                                (cons __tmp114229 __tmp114226))))
                         (declare (not safe))
                         (cons __tmp114225 _r108074_))
                       _r108074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114224
                                                            _pre108036_
                                                            _hd108066_)))
                                                 (__tmp114219
                                                  (let ((__tmp114220
                                                         (let ((__tmp114221
                                                                (let ((__tmp114222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108035_)))
                          (declare (not safe))
                          (cons __tmp114222 '()))))
                   (declare (not safe))
                   (cons _tmp108070_ __tmp114221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114220
                                                          _bind108037_)))
                                                 (__tmp114212
                                                  (let ((__tmp114213
                                                         (let ((__tmp114214
                                                                (let ((__tmp114215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114217
                                      (lambda (_id108076_ _k108077_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108076_))
                                            (let ((__tmp114218
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108076_))))
                                              (declare (not safe))
                                              (cons __tmp114218 _k108077_))
                                            '#f)))
                                     (__tmp114216
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108068_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114217
                                  _hd108066_
                                  __tmp114216))))
                          (declare (not safe))
                          (cons _len108068_ __tmp114215))))
                   (declare (not safe))
                   (cons _tmp108070_ __tmp114214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114213
                                                          _post108038_))))
                                             (declare (not safe))
                                             (_lp108032_
                                              _rest108065_
                                              __tmp114230
                                              __tmp114223
                                              __tmp114219
                                              __tmp114212)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107918_
                                            _hd108066_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108039108053_))
                              (let ((_tl108049108102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108039108053_)))
                                    (_hd108048108100_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108039108053_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108048108100_))
                                    (let ((_tl108051108107_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108048108100_)))
                                          (_hd108050108105_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108048108100_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108051108107_))
                                          (let ((_id108110_ _hd108050108105_)
                                                (_rest108112_
                                                 _tl108049108102_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108047108097_
                                               _rest108112_
                                               _id108110_)))
                                          (let ((_hd108087_ _hd108048108100_)
                                                (_rest108089_
                                                 _tl108049108102_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108044108079_
                                               _rest108089_
                                               _hd108087_)))))
                                    (let ((_hd108087_ _hd108048108100_)
                                          (_rest108089_ _tl108049108102_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108044108079_
                                         _rest108089_
                                         _hd108087_)))))
                              (let ()
                                (declare (not safe))
                                (_else108042108061_))))))))
                 (_compile-inner107922_
                  (lambda (_pre108023_ _bind108024_ _post108025_ _body108026_)
                    (if (let () (declare (not safe)) (null? _pre108023_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107923_
                           _bind108024_
                           _post108025_
                           _body108026_))
                        (let ((__tmp114239
                               (let ((__tmp114240
                                      (let ((__tmp114243 (reverse _pre108023_))
                                            (__tmp114241
                                             (let ((__tmp114242
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107923_
                                                       _bind108024_
                                                       _post108025_
                                                       _body108026_))))
                                               (declare (not safe))
                                               (cons __tmp114242 '()))))
                                        (declare (not safe))
                                        (cons __tmp114243 __tmp114241))))
                                 (declare (not safe))
                                 (cons 'let __tmp114240))))
                          (declare (not safe))
                          (__SRC__% __tmp114239 _stx107918_)))))
                 (_compile-bind107923_
                  (lambda (_bind108019_ _post108020_ _body108021_)
                    (let ((__tmp114244
                           (let ((__tmp114245
                                  (let ((__tmp114248 (reverse _bind108019_))
                                        (__tmp114246
                                         (let ((__tmp114247
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107924_
                                                   _post108020_
                                                   _body108021_))))
                                           (declare (not safe))
                                           (cons __tmp114247 '()))))
                                    (declare (not safe))
                                    (cons __tmp114248 __tmp114246))))
                             (declare (not safe))
                             (cons 'letrec __tmp114245))))
                      (declare (not safe))
                      (__SRC__% __tmp114244 _stx107918_))))
                 (_compile-post107924_
                  (lambda (_post107926_ _body107927_)
                    (let _lp107929_ ((_rest107931_ _post107926_)
                                     (_check107932_ '())
                                     (_bind107933_ '()))
                      (let* ((_rest107934107946_ _rest107931_)
                             (_else107936107954_
                              (lambda ()
                                (let ((__tmp114249
                                       (let ((__tmp114250
                                              (let ((__tmp114251
                                                     (let ((__tmp114252
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114252 _bind107933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114251
                                                        _check107932_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114250))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114249 _stx107918_))))
                             (_K107938107993_
                              (lambda (_rest107957_
                                       _init107958_
                                       _len107959_
                                       _tmp107960_)
                                (let ((__tmp114261
                                       (let ((__tmp114262
                                              (let ((__tmp114263
                                                     (let ((__tmp114264
                                                            (let ((__tmp114265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107959_ '()))))
                      (declare (not safe))
                      (cons _tmp107960_ __tmp114265))))
               (declare (not safe))
               (cons '__check-values __tmp114264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114263
                                                 _stx107918_))))
                                         (declare (not safe))
                                         (cons __tmp114262 _check107932_)))
                                      (__tmp114253
                                       (let ((__tmp114254
                                              (lambda (_hd107962_ _r107963_)
                                                (let* ((_hd107964107971_
                                                        _hd107962_)
                                                       (_E107966107975_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107964107971_)))
               (_K107967107981_
                (lambda (_k107978_ _id107979_)
                  (let ((__tmp114255
                         (let ((__tmp114256
                                (let ((__tmp114257
                                       (let ((__tmp114258
                                              (let ((__tmp114259
                                                     (let ((__tmp114260
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107960_ __tmp114260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114259))))
                                         (declare (not safe))
                                         (cons __tmp114258 '()))))
                                  (declare (not safe))
                                  (cons _id107979_ __tmp114257))))
                           (declare (not safe))
                           (cons 'set! __tmp114256))))
                    (declare (not safe))
                    (cons __tmp114255 _r107963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107964107971_))
                                                      (let ((_hd107968107984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107964107971_)))
                    (_tl107969107986_
                     (let () (declare (not safe)) (##cdr _hd107964107971_))))
                (let* ((_id107989_ _hd107968107984_)
                       (_k107991_ _tl107969107986_))
                  (declare (not safe))
                  (_K107967107981_ _k107991_ _id107989_)))
              (let () (declare (not safe)) (_E107966107975_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114254
                                                 _bind107933_
                                                 _init107958_))))
                                  (declare (not safe))
                                  (_lp107929_
                                   _rest107957_
                                   __tmp114261
                                   __tmp114253)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107934107946_))
                            (let ((_hd107939107996_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107934107946_)))
                                  (_tl107940107998_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107934107946_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107939107996_))
                                  (let ((_hd107941108001_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107939107996_)))
                                        (_tl107942108003_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107939107996_))))
                                    (let ((_tmp108006_ _hd107941108001_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107942108003_))
                                          (let ((_hd107943108008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107942108003_)))
                                                (_tl107944108010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107942108003_))))
                                            (let* ((_len108013_
                                                    _hd107943108008_)
                                                   (_init108015_
                                                    _tl107944108010_)
                                                   (_rest108017_
                                                    _tl107940107998_))
                                              (declare (not safe))
                                              (_K107938107993_
                                               _rest108017_
                                               _init108015_
                                               _len108013_
                                               _tmp108006_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107936107954_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107936107954_))))
                            (let ()
                              (declare (not safe))
                              (_else107936107954_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107918_
             _compile-simple107920_
             _compile-values107921_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107673_)
        (letrec ((_compile-simple107675_
                  (lambda (_hd-ids107914_ _exprs107915_ _body107916_)
                    (let ((__tmp114266
                           (let ((__tmp114267
                                  (let ((__tmp114269
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107914_)
                                              _exprs107915_))
                                        (__tmp114268
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107916_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114269 __tmp114268))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114267))))
                      (declare (not safe))
                      (__SRC__% __tmp114266 _stx107673_))))
                 (_compile-values107676_
                  (lambda (_hd-ids107825_ _exprs107826_ _body107827_)
                    (let _lp107829_ ((_rest107831_ _hd-ids107825_)
                                     (_exprs107832_ _exprs107826_)
                                     (_bind107833_ '())
                                     (_post107834_ '()))
                      (let* ((_rest107835107849_ _rest107831_)
                             (_else107838107857_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107677_
                                   _bind107833_
                                   _post107834_
                                   _body107827_)))))
                        (let ((_K107843107897_
                               (lambda (_rest107892_ _hd107893_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107893_))
                                     (let ((_id107895_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107893_))))
                                       (let ((__tmp114284 (cdr _exprs107832_))
                                             (__tmp114279
                                              (let ((__tmp114280
                                                     (let ((__tmp114281
                                                            (let ((__tmp114282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114283
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114283))))
                      (declare (not safe))
                      (cons __tmp114282 '()))))
               (declare (not safe))
               (cons _id107895_ __tmp114281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114280
                                                      _bind107833_)))
                                             (__tmp114275
                                              (let ((__tmp114276
                                                     (let ((__tmp114277
                                                            (let ((__tmp114278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107832_)))
                      (declare (not safe))
                      (cons __tmp114278 '()))))
               (declare (not safe))
               (cons _id107895_ __tmp114277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114276
                                                      _post107834_))))
                                         (declare (not safe))
                                         (_lp107829_
                                          _rest107892_
                                          __tmp114284
                                          __tmp114279
                                          __tmp114275)))
                                     (let ((__tmp114274 (cdr _exprs107832_))
                                           (__tmp114270
                                            (let ((__tmp114271
                                                   (let ((__tmp114272
                                                          (let ((__tmp114273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107832_)))
                    (declare (not safe))
                    (cons __tmp114273 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114272))))
                                              (declare (not safe))
                                              (cons __tmp114271
                                                    _post107834_))))
                                       (declare (not safe))
                                       (_lp107829_
                                        _rest107892_
                                        __tmp114274
                                        _bind107833_
                                        __tmp114270)))))
                              (_K107840107877_
                               (lambda (_rest107861_ _hd107862_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107862_))
                                     (let ((_id107864_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107862_))))
                                       (let ((__tmp114320 (cdr _exprs107832_))
                                             (__tmp114315
                                              (let ((__tmp114316
                                                     (let ((__tmp114317
                                                            (let ((__tmp114318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114319
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114319))))
                      (declare (not safe))
                      (cons __tmp114318 '()))))
               (declare (not safe))
               (cons _id107864_ __tmp114317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114316
                                                      _bind107833_)))
                                             (__tmp114309
                                              (let ((__tmp114310
                                                     (let ((__tmp114311
                                                            (let ((__tmp114312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114313
                                  (let ((__tmp114314 (car _exprs107832_)))
                                    (declare (not safe))
                                    (cons __tmp114314 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114313))))
                      (declare (not safe))
                      (cons __tmp114312 '()))))
               (declare (not safe))
               (cons _id107864_ __tmp114311))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114310
                                                      _post107834_))))
                                         (declare (not safe))
                                         (_lp107829_
                                          _rest107861_
                                          __tmp114320
                                          __tmp114315
                                          __tmp114309)))
                                     (if (let ((__tmp114308
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107862_))))
                                           (declare (not safe))
                                           (not __tmp114308))
                                         (let ((__tmp114307
                                                (cdr _exprs107832_))
                                               (__tmp114303
                                                (let ((__tmp114304
                                                       (let ((__tmp114305
                                                              (let ((__tmp114306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107832_)))
                        (declare (not safe))
                        (cons __tmp114306 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114304
                                                        _post107834_))))
                                           (declare (not safe))
                                           (_lp107829_
                                            _rest107861_
                                            __tmp114307
                                            _bind107833_
                                            __tmp114303))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107862_))
                                             (let* ((_len107866_
                                                     (length _hd107862_))
                                                    (_tmp107868_
                                                     (let ((__tmp114285
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114285))))
                                               (let ((__tmp114302
                                                      (cdr _exprs107832_))
                                                     (__tmp114295
                                                      (let ((__tmp114296
                                                             (lambda (_id107871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107872_)
                       (if (let () (declare (not safe)) (__AST-e _id107871_))
                           (let ((__tmp114297
                                  (let ((__tmp114301
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107871_)))
                                        (__tmp114298
                                         (let ((__tmp114299
                                                (let ((__tmp114300
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114300))))
                                           (declare (not safe))
                                           (cons __tmp114299 '()))))
                                    (declare (not safe))
                                    (cons __tmp114301 __tmp114298))))
                             (declare (not safe))
                             (cons __tmp114297 _r107872_))
                           _r107872_))))
                (declare (not safe))
                (foldl1 __tmp114296 _bind107833_ _hd107862_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114286
                                                      (let ((__tmp114287
                                                             (let ((__tmp114288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114294 (car _exprs107832_))
                                  (__tmp114289
                                   (let ((__tmp114290
                                          (let ((__tmp114292
                                                 (lambda (_id107874_ _k107875_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107874_))
                                                       (let ((__tmp114293
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107874_))))
                 (declare (not safe))
                 (cons __tmp114293 _k107875_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114291
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107866_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114292
                                             _hd107862_
                                             __tmp114291))))
                                     (declare (not safe))
                                     (cons _len107866_ __tmp114290))))
                              (declare (not safe))
                              (cons __tmp114294 __tmp114289))))
                       (declare (not safe))
                       (cons _tmp107868_ __tmp114288))))
                (declare (not safe))
                (cons __tmp114287 _post107834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107829_
                                                  _rest107861_
                                                  __tmp114302
                                                  __tmp114295
                                                  __tmp114286)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107673_
                                                _hd107862_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107835107849_))
                              (let ((_tl107845107902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107835107849_)))
                                    (_hd107844107900_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107835107849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107844107900_))
                                    (let ((_tl107847107907_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107844107900_)))
                                          (_hd107846107905_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107844107900_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107847107907_))
                                          (let ((_hd107910_ _hd107846107905_)
                                                (_rest107912_
                                                 _tl107845107902_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107843107897_
                                               _rest107912_
                                               _hd107910_)))
                                          (let ((_hd107885_ _hd107844107900_)
                                                (_rest107887_
                                                 _tl107845107902_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107840107877_
                                               _rest107887_
                                               _hd107885_)))))
                                    (let ((_hd107885_ _hd107844107900_)
                                          (_rest107887_ _tl107845107902_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107840107877_
                                         _rest107887_
                                         _hd107885_)))))
                              (let ()
                                (declare (not safe))
                                (_else107838107857_))))))))
                 (_compile-bind107677_
                  (lambda (_bind107821_ _post107822_ _body107823_)
                    (let ((__tmp114321
                           (let ((__tmp114322
                                  (let ((__tmp114325 (reverse _bind107821_))
                                        (__tmp114323
                                         (let ((__tmp114324
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107678_
                                                   _post107822_
                                                   _body107823_))))
                                           (declare (not safe))
                                           (cons __tmp114324 '()))))
                                    (declare (not safe))
                                    (cons __tmp114325 __tmp114323))))
                             (declare (not safe))
                             (cons 'let __tmp114322))))
                      (declare (not safe))
                      (__SRC__% __tmp114321 _stx107673_))))
                 (_compile-post107678_
                  (lambda (_post107680_ _body107681_)
                    (let ((__tmp114326
                           (let ((__tmp114327
                                  (let ((__tmp114328
                                         (let ((__tmp114330
                                                (lambda (_hd107683_ _r107684_)
                                                  (let* ((_hd107685107708_
                                                          _hd107683_)
                                                         (_E107689107712_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107685107708_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107702107806_
                                                           (lambda (_expr107804_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107804_ _r107684_))))
                  (_K107697107784_
                   (lambda (_expr107781_ _id107782_)
                     (let ((__tmp114331
                            (let ((__tmp114332
                                   (let ((__tmp114333
                                          (let ((__tmp114334
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107781_ '()))))
                                            (declare (not safe))
                                            (cons _id107782_ __tmp114334))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114333))))
                              (declare (not safe))
                              (__SRC__% __tmp114332 _stx107673_))))
                       (declare (not safe))
                       (cons __tmp114331 _r107684_))))
                  (_K107690107751_
                   (lambda (_init107716_ _len107717_ _expr107718_ _tmp107719_)
                     (let ((__tmp114335
                            (let ((__tmp114336
                                   (let ((__tmp114337
                                          (let ((__tmp114351
                                                 (let ((__tmp114352
                                                        (let ((__tmp114353
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107718_ '()))))
                  (declare (not safe))
                  (cons _tmp107719_ __tmp114353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114352 '())))
                                                (__tmp114338
                                                 (let ((__tmp114347
                                                        (let ((__tmp114348
                                                               (let ((__tmp114349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114350
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107717_ '()))))
                                (declare (not safe))
                                (cons _tmp107719_ __tmp114350))))
                         (declare (not safe))
                         (cons '__check-values __tmp114349))))
                  (declare (not safe))
                  (__SRC__% __tmp114348 _stx107673_)))
               (__tmp114339
                (let ((__tmp114340
                       (map (lambda (_hd107721_)
                              (let* ((_hd107722107729_ _hd107721_)
                                     (_E107724107733_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107722107729_)))
                                     (_K107725107739_
                                      (lambda (_k107736_ _id107737_)
                                        (let ((__tmp114341
                                               (let ((__tmp114342
                                                      (let ((__tmp114343
                                                             (let ((__tmp114344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114345
                                   (let ((__tmp114346
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107736_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107719_ __tmp114346))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114345))))
                       (declare (not safe))
                       (cons __tmp114344 '()))))
                (declare (not safe))
                (cons _id107737_ __tmp114343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114342))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114341
                                           _stx107673_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107722107729_))
                                    (let ((_hd107726107742_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107722107729_)))
                                          (_tl107727107744_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107722107729_))))
                                      (let* ((_id107747_ _hd107726107742_)
                                             (_k107749_ _tl107727107744_))
                                        (declare (not safe))
                                        (_K107725107739_
                                         _k107749_
                                         _id107747_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107724107733_)))))
                            _init107716_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114347
                                                         __tmp114339))))
                                            (declare (not safe))
                                            (cons __tmp114351 __tmp114338))))
                                     (declare (not safe))
                                     (cons 'let __tmp114337))))
                              (declare (not safe))
                              (__SRC__% __tmp114336 _stx107673_))))
                       (declare (not safe))
                       (cons __tmp114335 _r107684_)))))
              (if (let () (declare (not safe)) (##pair? _hd107685107708_))
                  (let ((_tl107704107811_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107685107708_)))
                        (_hd107703107809_
                         (let ()
                           (declare (not safe))
                           (##car _hd107685107708_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107703107809_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107704107811_))
                            (let ((_tl107706107816_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107704107811_)))
                                  (_hd107705107814_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107704107811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107706107816_))
                                  (let ((_expr107819_ _hd107705107814_))
                                    (declare (not safe))
                                    (_K107702107806_ _expr107819_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107706107816_))
                                      (let ((_tl107696107770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107706107816_)))
                                            (_hd107695107768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107706107816_))))
                                        (let ((_tmp107759_ _hd107703107809_)
                                              (_expr107766_ _hd107705107814_)
                                              (_len107773_ _hd107695107768_)
                                              (_init107775_ _tl107696107770_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107690107751_
                                             _init107775_
                                             _len107773_
                                             _expr107766_
                                             _tmp107759_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107689107712_)))))
                            (let () (declare (not safe)) (_E107689107712_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107704107811_))
                            (let ((_tl107701107796_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107704107811_)))
                                  (_hd107700107794_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107704107811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107701107796_))
                                  (let ((_id107792_ _hd107703107809_)
                                        (_expr107799_ _hd107700107794_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107697107784_
                                       _expr107799_
                                       _id107792_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107701107796_))
                                      (let ((_tl107696107770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107701107796_)))
                                            (_hd107695107768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107701107796_))))
                                        (let ((_tmp107759_ _hd107703107809_)
                                              (_expr107766_ _hd107700107794_)
                                              (_len107773_ _hd107695107768_)
                                              (_init107775_ _tl107696107770_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107690107751_
                                             _init107775_
                                             _len107773_
                                             _expr107766_
                                             _tmp107759_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107689107712_)))))
                            (let () (declare (not safe)) (_E107689107712_)))))
                  (let () (declare (not safe)) (_E107689107712_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114329
                                                (list _body107681_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114330
                                                   __tmp114329
                                                   _post107680_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114328))))
                             (declare (not safe))
                             (cons 'begin __tmp114327))))
                      (declare (not safe))
                      (__SRC__% __tmp114326 _stx107673_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107673_
             _compile-simple107675_
             _compile-values107676_)))))
    (define __compile-call%
      (lambda (_stx107633_)
        (let* ((_$e107635_ _stx107633_)
               (_$E107637107646_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107635_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107635_))
              (let* ((_$tgt107638107649_
                      (let () (declare (not safe)) (__AST-e _$e107635_)))
                     (_$hd107639107652_
                      (let () (declare (not safe)) (##car _$tgt107638107649_)))
                     (_$tl107640107655_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107638107649_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107640107655_))
                    (let* ((_$tgt107641107659_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107640107655_)))
                           (_$hd107642107662_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107641107659_)))
                           (_$tl107643107665_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107641107659_))))
                      (let* ((_rator107669_ _$hd107642107662_)
                             (_rands107671_ _$tl107643107665_)
                             (__tmp114354
                              (let ((__tmp114356
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107669_)))
                                    (__tmp114355
                                     (map __compile _rands107671_)))
                                (declare (not safe))
                                (cons __tmp114356 __tmp114355))))
                        (declare (not safe))
                        (__SRC__% __tmp114354 _stx107633_)))
                    (let () (declare (not safe)) (_$E107637107646_))))
              (let () (declare (not safe)) (_$E107637107646_))))))
    (define __compile-ref%
      (lambda (_stx107595_)
        (let* ((_$e107597_ _stx107595_)
               (_$E107599107608_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107597_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107597_))
              (let* ((_$tgt107600107611_
                      (let () (declare (not safe)) (__AST-e _$e107597_)))
                     (_$hd107601107614_
                      (let () (declare (not safe)) (##car _$tgt107600107611_)))
                     (_$tl107602107617_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107600107611_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107602107617_))
                    (let* ((_$tgt107603107621_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107602107617_)))
                           (_$hd107604107624_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107603107621_)))
                           (_$tl107605107627_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107603107621_))))
                      (let ((_id107631_ _$hd107604107624_))
                        (if (let ((__tmp114357
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107605107627_))))
                              (declare (not safe))
                              (equal? __tmp114357 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107631_ _stx107595_))
                            (let () (declare (not safe)) (_$E107599107608_)))))
                    (let () (declare (not safe)) (_$E107599107608_))))
              (let () (declare (not safe)) (_$E107599107608_))))))
    (define __compile-setq%
      (lambda (_stx107542_)
        (let* ((_$e107544_ _stx107542_)
               (_$E107546107558_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107544_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107544_))
              (let* ((_$tgt107547107561_
                      (let () (declare (not safe)) (__AST-e _$e107544_)))
                     (_$hd107548107564_
                      (let () (declare (not safe)) (##car _$tgt107547107561_)))
                     (_$tl107549107567_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107547107561_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107549107567_))
                    (let* ((_$tgt107550107571_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107549107567_)))
                           (_$hd107551107574_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107550107571_)))
                           (_$tl107552107577_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107550107571_))))
                      (let ((_id107581_ _$hd107551107574_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107552107577_))
                            (let* ((_$tgt107553107583_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107552107577_)))
                                   (_$hd107554107586_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107553107583_)))
                                   (_$tl107555107589_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107553107583_))))
                              (let ((_expr107593_ _$hd107554107586_))
                                (if (let ((__tmp114363
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107555107589_))))
                                      (declare (not safe))
                                      (equal? __tmp114363 '()))
                                    (let ((__tmp114358
                                           (let ((__tmp114359
                                                  (let ((__tmp114362
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107581_
                                                            _stx107542_)))
                                                        (__tmp114360
                                                         (let ((__tmp114361
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107593_))))
                   (declare (not safe))
                   (cons __tmp114361 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114362
                                                          __tmp114360))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114359))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114358 _stx107542_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107546107558_)))))
                            (let () (declare (not safe)) (_$E107546107558_)))))
                    (let () (declare (not safe)) (_$E107546107558_))))
              (let () (declare (not safe)) (_$E107546107558_))))))
    (define __compile-if%
      (lambda (_stx107474_)
        (let* ((_$e107476_ _stx107474_)
               (_$E107478107493_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107476_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107476_))
              (let* ((_$tgt107479107496_
                      (let () (declare (not safe)) (__AST-e _$e107476_)))
                     (_$hd107480107499_
                      (let () (declare (not safe)) (##car _$tgt107479107496_)))
                     (_$tl107481107502_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107479107496_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107481107502_))
                    (let* ((_$tgt107482107506_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107481107502_)))
                           (_$hd107483107509_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107482107506_)))
                           (_$tl107484107512_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107482107506_))))
                      (let ((_p107516_ _$hd107483107509_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107484107512_))
                            (let* ((_$tgt107485107518_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107484107512_)))
                                   (_$hd107486107521_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107485107518_)))
                                   (_$tl107487107524_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107485107518_))))
                              (let ((_t107528_ _$hd107486107521_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107487107524_))
                                    (let* ((_$tgt107488107530_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107487107524_)))
                                           (_$hd107489107533_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107488107530_)))
                                           (_$tl107490107536_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107488107530_))))
                                      (let ((_f107540_ _$hd107489107533_))
                                        (if (let ((__tmp114371
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107490107536_))))
                                              (declare (not safe))
                                              (equal? __tmp114371 '()))
                                            (let ((__tmp114364
                                                   (let ((__tmp114365
                                                          (let ((__tmp114370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107516_)))
                        (__tmp114366
                         (let ((__tmp114369
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107528_)))
                               (__tmp114367
                                (let ((__tmp114368
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107540_))))
                                  (declare (not safe))
                                  (cons __tmp114368 '()))))
                           (declare (not safe))
                           (cons __tmp114369 __tmp114367))))
                    (declare (not safe))
                    (cons __tmp114370 __tmp114366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114365))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114364
                                               _stx107474_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107478107493_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107478107493_)))))
                            (let () (declare (not safe)) (_$E107478107493_)))))
                    (let () (declare (not safe)) (_$E107478107493_))))
              (let () (declare (not safe)) (_$E107478107493_))))))
    (define __compile-quote%
      (lambda (_stx107436_)
        (let* ((_$e107438_ _stx107436_)
               (_$E107440107449_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107438_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107438_))
              (let* ((_$tgt107441107452_
                      (let () (declare (not safe)) (__AST-e _$e107438_)))
                     (_$hd107442107455_
                      (let () (declare (not safe)) (##car _$tgt107441107452_)))
                     (_$tl107443107458_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107441107452_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107443107458_))
                    (let* ((_$tgt107444107462_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107443107458_)))
                           (_$hd107445107465_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107444107462_)))
                           (_$tl107446107468_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107444107462_))))
                      (let ((_e107472_ _$hd107445107465_))
                        (if (let ((__tmp114375
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107446107468_))))
                              (declare (not safe))
                              (equal? __tmp114375 '()))
                            (let ((__tmp114372
                                   (let ((__tmp114373
                                          (let ((__tmp114374
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107472_))))
                                            (declare (not safe))
                                            (cons __tmp114374 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114373))))
                              (declare (not safe))
                              (__SRC__% __tmp114372 _stx107436_))
                            (let () (declare (not safe)) (_$E107440107449_)))))
                    (let () (declare (not safe)) (_$E107440107449_))))
              (let () (declare (not safe)) (_$E107440107449_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107398_)
        (let* ((_$e107400_ _stx107398_)
               (_$E107402107411_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107400_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107400_))
              (let* ((_$tgt107403107414_
                      (let () (declare (not safe)) (__AST-e _$e107400_)))
                     (_$hd107404107417_
                      (let () (declare (not safe)) (##car _$tgt107403107414_)))
                     (_$tl107405107420_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107403107414_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107405107420_))
                    (let* ((_$tgt107406107424_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107405107420_)))
                           (_$hd107407107427_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107406107424_)))
                           (_$tl107408107430_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107406107424_))))
                      (let ((_e107434_ _$hd107407107427_))
                        (if (let ((__tmp114378
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107408107430_))))
                              (declare (not safe))
                              (equal? __tmp114378 '()))
                            (let ((__tmp114376
                                   (let ((__tmp114377
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107434_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114377))))
                              (declare (not safe))
                              (__SRC__% __tmp114376 _stx107398_))
                            (let () (declare (not safe)) (_$E107402107411_)))))
                    (let () (declare (not safe)) (_$E107402107411_))))
              (let () (declare (not safe)) (_$E107402107411_))))))
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
