(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707620169)
  (begin
    (define __context::t
      (let ((__tmp114001
             (let ((__tmp114002
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114002 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp114001
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109337_
        (apply make-struct-instance __context::t _$args109337_)))
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
      (let ((__tmp114003
             (let ((__tmp114004
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114004 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp114003
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109334_
        (apply make-struct-instance __runtime::t _$args109334_)))
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
      (let ((__tmp114005
             (let ((__tmp114006
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114006 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp114005
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109331_
        (apply make-struct-instance __syntax::t _$args109331_)))
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
      (let ((__tmp114007
             (let ((__tmp114008
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114008 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp114007
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109328_
        (apply make-struct-instance __macro::t _$args109328_)))
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
      (let ((__tmp114009
             (let ((__tmp114010
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114010 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp114009
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109325_
        (apply make-struct-instance __special-form::t _$args109325_)))
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
      (let ((__tmp114011
             (let ((__tmp114012
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114012 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp114011
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109322_
        (apply make-struct-instance __core-form::t _$args109322_)))
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
      (let ((__tmp114013
             (let ((__tmp114014
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114014 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp114013
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109319_
        (apply make-struct-instance __core-expression::t _$args109319_)))
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
      (let ((__tmp114015
             (let ((__tmp114016
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114016 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp114015
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109316_
        (apply make-struct-instance __core-special-form::t _$args109316_)))
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
      (let ((__tmp114017
             (let ((__tmp114018
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114018 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp114017
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109313_
        (apply make-struct-instance __struct-info::t _$args109313_)))
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
      (let ((__tmp114019
             (let ((__tmp114020
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114020 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp114019
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109310_
        (apply make-struct-instance __feature::t _$args109310_)))
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
      (let ((__tmp114021
             (let ((__tmp114022
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114022 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp114021
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109307_
        (apply make-struct-instance __module::t _$args109307_)))
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
      (let ((__tmp114024
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114023
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114024 __tmp114023)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109282_ _ctx109283_)
        (if _ctx109283_
            (let ((_id109285_
                   (let () (declare (not safe)) (__AST-e _id109282_))))
              (let _lp109287_ ((_ctx109289_ _ctx109283_))
                (let ((_$e109291_
                       (table-ref
                        (##structure-ref _ctx109289_ '4 __context::t '#f)
                        _id109285_
                        '#f)))
                  (if _$e109291_
                      (values _$e109291_)
                      (let ((_$e109294_
                             (##structure-ref
                              _ctx109289_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109294_
                            (let ()
                              (declare (not safe))
                              (_lp109287_ _$e109294_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109300_)
        (let ((_ctx109302_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109300_ _ctx109302_))))
    (define __core-resolve
      (lambda _g114026_
        (let ((_g114025_ (let () (declare (not safe)) (##length _g114026_))))
          (cond ((let () (declare (not safe)) (##fx= _g114025_ 1))
                 (apply (lambda (_id109300_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109300_)))
                        _g114026_))
                ((let () (declare (not safe)) (##fx= _g114025_ 2))
                 (apply (lambda (_id109304_ _ctx109305_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109304_ _ctx109305_)))
                        _g114026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114026_))))))
    (define __core-bound-id?__%
      (lambda (_id109265_ _is?109266_)
        (let ((_$e109268_
               (let () (declare (not safe)) (__core-resolve__0 _id109265_))))
          (if _$e109268_ (_is?109266_ _$e109268_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109274_)
        (let ((_is?109276_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109274_ _is?109276_))))
    (define __core-bound-id?
      (lambda _g114028_
        (let ((_g114027_ (let () (declare (not safe)) (##length _g114028_))))
          (cond ((let () (declare (not safe)) (##fx= _g114027_ 1))
                 (apply (lambda (_id109274_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109274_)))
                        _g114028_))
                ((let () (declare (not safe)) (##fx= _g114027_ 2))
                 (apply (lambda (_id109278_ _is?109279_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109278_ _is?109279_)))
                        _g114028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114028_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109248_ _eid109249_ _ctx109250_)
        (if _eid109249_
            (let ((__tmp114031
                   (##structure-ref _ctx109250_ '4 __context::t '#f))
                  (__tmp114030
                   (let () (declare (not safe)) (__AST-e _id109248_)))
                  (__tmp114029
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109249_))))
              (declare (not safe))
              (table-set! __tmp114031 __tmp114030 __tmp114029))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109255_ _eid109256_)
        (let ((_ctx109258_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109255_ _eid109256_ _ctx109258_))))
    (define __core-bind-runtime!
      (lambda _g114033_
        (let ((_g114032_ (let () (declare (not safe)) (##length _g114033_))))
          (cond ((let () (declare (not safe)) (##fx= _g114032_ 2))
                 (apply (lambda (_id109255_ _eid109256_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109255_ _eid109256_)))
                        _g114033_))
                ((let () (declare (not safe)) (##fx= _g114032_ 3))
                 (apply (lambda (_id109260_ _eid109261_ _ctx109262_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109260_
                             _eid109261_
                             _ctx109262_)))
                        _g114033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114033_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109231_ _e109232_ _make109233_)
        (let ((__tmp114034
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109232_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109232_
                   (_make109233_ _e109232_ _id109231_))))
          (declare (not safe))
          (table-set! __*core* _id109231_ __tmp114034))))
    (define __core-bind-syntax!__0
      (lambda (_id109238_ _e109239_)
        (let ((_make109241_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109238_ _e109239_ _make109241_))))
    (define __core-bind-syntax!
      (lambda _g114036_
        (let ((_g114035_ (let () (declare (not safe)) (##length _g114036_))))
          (cond ((let () (declare (not safe)) (##fx= _g114035_ 2))
                 (apply (lambda (_id109238_ _e109239_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109238_ _e109239_)))
                        _g114036_))
                ((let () (declare (not safe)) (##fx= _g114035_ 3))
                 (apply (lambda (_id109243_ _e109244_ _make109245_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109243_
                             _e109244_
                             _make109245_)))
                        _g114036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114036_))))))
    (define __core-bind-macro!
      (lambda (_id109227_ _e109228_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109227_ _e109228_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109224_ _e109225_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109224_ _e109225_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109208_ _e109209_ _ctx109210_)
        (let ((__tmp114040 (##structure-ref _ctx109210_ '4 __context::t '#f))
              (__tmp114039 (let () (declare (not safe)) (__AST-e _id109208_)))
              (__tmp114037
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109209_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109209_
                   (let ((__tmp114038
                          (let () (declare (not safe)) (__AST-e _id109208_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109209_ __tmp114038)))))
          (declare (not safe))
          (table-set! __tmp114040 __tmp114039 __tmp114037))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109215_ _e109216_)
        (let ((_ctx109218_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109215_ _e109216_ _ctx109218_))))
    (define __core-bind-user-syntax!
      (lambda _g114042_
        (let ((_g114041_ (let () (declare (not safe)) (##length _g114042_))))
          (cond ((let () (declare (not safe)) (##fx= _g114041_ 2))
                 (apply (lambda (_id109215_ _e109216_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109215_
                             _e109216_)))
                        _g114042_))
                ((let () (declare (not safe)) (##fx= _g114041_ 3))
                 (apply (lambda (_id109220_ _e109221_ _ctx109222_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109220_
                             _e109221_
                             _ctx109222_)))
                        _g114042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114042_))))))
    (define make-__runtime-id__%
      (lambda (_id109189_ _ctx109190_)
        (let ((_id109192_ (let () (declare (not safe)) (__AST-e _id109189_))))
          (if (let () (declare (not safe)) (eq? _id109192_ '_))
              '#f
              (if (uninterned-symbol? _id109192_)
                  (gensym _id109192_)
                  (if (let () (declare (not safe)) (symbol? _id109192_))
                      (let ((_$e109194_
                             (##structure-ref
                              _ctx109190_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109194_))
                            (gensym _id109192_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109194_))
                                (let ((__tmp114043
                                       (##structure-ref
                                        _ctx109190_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114043 '"#" _id109192_))
                                _id109192_)))
                      (error '"Illegal runtime identifier" _id109192_)))))))
    (define make-__runtime-id__0
      (lambda (_id109200_)
        (let ((_ctx109202_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109200_ _ctx109202_))))
    (define make-__runtime-id
      (lambda _g114045_
        (let ((_g114044_ (let () (declare (not safe)) (##length _g114045_))))
          (cond ((let () (declare (not safe)) (##fx= _g114044_ 1))
                 (apply (lambda (_id109200_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109200_)))
                        _g114045_))
                ((let () (declare (not safe)) (##fx= _g114044_ 2))
                 (apply (lambda (_id109204_ _ctx109205_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109204_ _ctx109205_)))
                        _g114045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114045_))))))
    (define make-__context-local__%
      (lambda (_super109178_)
        (let ((__tmp114046
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109178_ __tmp114046))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109184_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109184_))))
    (define make-__context-local
      (lambda _g114048_
        (let ((_g114047_ (let () (declare (not safe)) (##length _g114048_))))
          (cond ((let () (declare (not safe)) (##fx= _g114047_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114048_))
                ((let () (declare (not safe)) (##fx= _g114047_ 1))
                 (apply (lambda (_super109186_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109186_)))
                        _g114048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114048_))))))
    (define make-__context-module__%
      (lambda (_id109158_ _ns109159_ _path109160_ _super109161_)
        (let ((__tmp114049
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109159_
           _super109161_
           __tmp114049
           _id109158_
           _path109160_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109166_ _ns109167_ _path109168_)
        (let ((_super109170_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109166_
           _ns109167_
           _path109168_
           _super109170_))))
    (define make-__context-module
      (lambda _g114051_
        (let ((_g114050_ (let () (declare (not safe)) (##length _g114051_))))
          (cond ((let () (declare (not safe)) (##fx= _g114050_ 3))
                 (apply (lambda (_id109166_ _ns109167_ _path109168_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109166_
                             _ns109167_
                             _path109168_)))
                        _g114051_))
                ((let () (declare (not safe)) (##fx= _g114050_ 4))
                 (apply (lambda (_id109172_
                                 _ns109173_
                                 _path109174_
                                 _super109175_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109172_
                             _ns109173_
                             _path109174_
                             _super109175_)))
                        _g114051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114051_))))))
    (define __SRC__%
      (lambda (_e109141_ _src-stx109142_)
        (if (or (let () (declare (not safe)) (pair? _e109141_))
                (let () (declare (not safe)) (symbol? _e109141_)))
            (let ((__tmp114055
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109142_
                          'gerbil#AST::t))
                       (let ((__tmp114056
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109142_))))
                         (declare (not safe))
                         (__locat __tmp114056))
                       '#f)))
              (declare (not safe))
              (##make-source _e109141_ __tmp114055))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109141_ 'gerbil#AST::t))
                (let ((__tmp114054
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109141_ '1 AST::t '#f)))
                      (__tmp114052
                       (let ((__tmp114053
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109141_))))
                         (declare (not safe))
                         (__locat __tmp114053))))
                  (declare (not safe))
                  (##make-source __tmp114054 __tmp114052))
                (error '"BUG! Cannot sourcify object" _e109141_)))))
    (define __SRC__0
      (lambda (_e109150_)
        (let ((_src-stx109152_ '#f))
          (declare (not safe))
          (__SRC__% _e109150_ _src-stx109152_))))
    (define __SRC
      (lambda _g114058_
        (let ((_g114057_ (let () (declare (not safe)) (##length _g114058_))))
          (cond ((let () (declare (not safe)) (##fx= _g114057_ 1))
                 (apply (lambda (_e109150_)
                          (let () (declare (not safe)) (__SRC__0 _e109150_)))
                        _g114058_))
                ((let () (declare (not safe)) (##fx= _g114057_ 2))
                 (apply (lambda (_e109154_ _src-stx109155_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109154_ _src-stx109155_)))
                        _g114058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114058_))))))
    (define __locat
      (lambda (_loc109138_)
        (if (let () (declare (not safe)) (##locat? _loc109138_))
            _loc109138_
            '#f)))
    (define __check-values
      (lambda (_obj109133_ _k109134_)
        (let ((_count109136_
               (if (let () (declare (not safe)) (##values? _obj109133_))
                   (let () (declare (not safe)) (##vector-length _obj109133_))
                   '1)))
          (if (fx= _count109136_ _k109134_)
              '#!void
              (error (if (fx< _count109136_ _k109134_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109133_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109133_))
                         _obj109133_)
                     _k109134_)))))
    (define __compile
      (lambda (_stx109103_)
        (let* ((_$e109105_ _stx109103_)
               (_$E109107109113_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109105_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109105_))
              (let* ((_$tgt109108109116_
                      (let () (declare (not safe)) (__AST-e _$e109105_)))
                     (_$hd109109109119_
                      (let () (declare (not safe)) (##car _$tgt109108109116_)))
                     (_$tl109110109122_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109108109116_))))
                (let* ((_form109126_ _$hd109109109119_)
                       (_$e109128_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109126_))))
                  (if _$e109128_
                      ((lambda (_bind109131_)
                         ((##structure-ref _bind109131_ '1 __syntax::t '#f)
                          _stx109103_))
                       _$e109128_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109103_
                         _form109126_)))))
              (let () (declare (not safe)) (_$E109107109113_))))))
    (define __compile-error__%
      (lambda (_stx109090_ _detail109091_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109090_
           _detail109091_))))
    (define __compile-error__0
      (lambda (_stx109096_)
        (let ((_detail109098_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109096_ _detail109098_))))
    (define __compile-error
      (lambda _g114060_
        (let ((_g114059_ (let () (declare (not safe)) (##length _g114060_))))
          (cond ((let () (declare (not safe)) (##fx= _g114059_ 1))
                 (apply (lambda (_stx109096_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109096_)))
                        _g114060_))
                ((let () (declare (not safe)) (##fx= _g114059_ 2))
                 (apply (lambda (_stx109100_ _detail109101_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109100_ _detail109101_)))
                        _g114060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114060_))))))
    (define __compile-ignore%
      (lambda (_stx109087_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109087_))))
    (define __compile-begin%
      (lambda (_stx109062_)
        (let* ((_$e109064_ _stx109062_)
               (_$E109066109072_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109064_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109064_))
              (let* ((_$tgt109067109075_
                      (let () (declare (not safe)) (__AST-e _$e109064_)))
                     (_$hd109068109078_
                      (let () (declare (not safe)) (##car _$tgt109067109075_)))
                     (_$tl109069109081_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109067109075_))))
                (let* ((_body109085_ _$tl109069109081_)
                       (__tmp114061
                        (let ((__tmp114062 (map __compile _body109085_)))
                          (declare (not safe))
                          (cons 'begin __tmp114062))))
                  (declare (not safe))
                  (__SRC__% __tmp114061 _stx109062_)))
              (let () (declare (not safe)) (_$E109066109072_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109037_)
        (let* ((_$e109039_ _stx109037_)
               (_$E109041109047_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109039_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109039_))
              (let* ((_$tgt109042109050_
                      (let () (declare (not safe)) (__AST-e _$e109039_)))
                     (_$hd109043109053_
                      (let () (declare (not safe)) (##car _$tgt109042109050_)))
                     (_$tl109044109056_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109042109050_))))
                (let* ((_body109060_ _$tl109044109056_)
                       (__tmp114063
                        (let ((__tmp114064
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109060_))))
                          (declare (not safe))
                          (cons 'begin __tmp114064))))
                  (declare (not safe))
                  (__SRC__% __tmp114063 _stx109037_)))
              (let () (declare (not safe)) (_$E109041109047_))))))
    (define __compile-import%
      (lambda (_stx109012_)
        (let* ((_$e109014_ _stx109012_)
               (_$E109016109022_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109014_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109014_))
              (let* ((_$tgt109017109025_
                      (let () (declare (not safe)) (__AST-e _$e109014_)))
                     (_$hd109018109028_
                      (let () (declare (not safe)) (##car _$tgt109017109025_)))
                     (_$tl109019109031_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109017109025_))))
                (let* ((_body109035_ _$tl109019109031_)
                       (__tmp114065
                        (let ((__tmp114066
                               (let ((__tmp114067
                                      (let ((__tmp114068
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109035_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114068))))
                                 (declare (not safe))
                                 (cons __tmp114067 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114066))))
                  (declare (not safe))
                  (__SRC__% __tmp114065 _stx109012_)))
              (let () (declare (not safe)) (_$E109016109022_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108959_)
        (let* ((_$e108961_ _stx108959_)
               (_$E108963108975_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108961_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108961_))
              (let* ((_$tgt108964108978_
                      (let () (declare (not safe)) (__AST-e _$e108961_)))
                     (_$hd108965108981_
                      (let () (declare (not safe)) (##car _$tgt108964108978_)))
                     (_$tl108966108984_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108964108978_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108966108984_))
                    (let* ((_$tgt108967108988_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108966108984_)))
                           (_$hd108968108991_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108967108988_)))
                           (_$tl108969108994_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108967108988_))))
                      (let ((_ann108998_ _$hd108968108991_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108969108994_))
                            (let* ((_$tgt108970109000_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108969108994_)))
                                   (_$hd108971109003_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108970109000_)))
                                   (_$tl108972109006_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108970109000_))))
                              (let ((_expr109010_ _$hd108971109003_))
                                (if (let ((__tmp114069
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108972109006_))))
                                      (declare (not safe))
                                      (equal? __tmp114069 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109010_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108963108975_)))))
                            (let () (declare (not safe)) (_$E108963108975_)))))
                    (let () (declare (not safe)) (_$E108963108975_))))
              (let () (declare (not safe)) (_$E108963108975_))))))
    (define __compile-define-values%
      (lambda (_stx108850_)
        (let* ((_$e108852_ _stx108850_)
               (_$E108854108866_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108852_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108852_))
              (let* ((_$tgt108855108869_
                      (let () (declare (not safe)) (__AST-e _$e108852_)))
                     (_$hd108856108872_
                      (let () (declare (not safe)) (##car _$tgt108855108869_)))
                     (_$tl108857108875_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108855108869_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108857108875_))
                    (let* ((_$tgt108858108879_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108857108875_)))
                           (_$hd108859108882_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108858108879_)))
                           (_$tl108860108885_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108858108879_))))
                      (let ((_hd108889_ _$hd108859108882_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108860108885_))
                            (let* ((_$tgt108861108891_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108860108885_)))
                                   (_$hd108862108894_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108861108891_)))
                                   (_$tl108863108897_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108861108891_))))
                              (let ((_expr108901_ _$hd108862108894_))
                                (if (let ((__tmp114102
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108863108897_))))
                                      (declare (not safe))
                                      (equal? __tmp114102 '()))
                                    (let* ((_$e108903_ _hd108889_)
                                           (_$E108905108946_
                                            (lambda ()
                                              (let ((_$E108906108931_
                                                     (lambda ()
                                                       (let* ((_$E108907108918_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108903_))))
                      (_ids108921_ _hd108889_)
                      (_len108923_ (length _ids108921_))
                      (_tmp108925_
                       (let ((__tmp114070 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114070))))
                 (let ((__tmp114071
                        (let ((__tmp114072
                               (let ((__tmp114089
                                      (let ((__tmp114090
                                             (let ((__tmp114091
                                                    (let ((__tmp114092
                                                           (let ((__tmp114093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108901_))))
                     (declare (not safe))
                     (cons __tmp114093 '()))))
              (declare (not safe))
              (cons _tmp108925_ __tmp114092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114091))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114090 _stx108850_)))
                                     (__tmp114073
                                      (let ((__tmp114085
                                             (let ((__tmp114086
                                                    (let ((__tmp114087
                                                           (let ((__tmp114088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108923_ '()))))
                     (declare (not safe))
                     (cons _tmp108925_ __tmp114088))))
              (declare (not safe))
              (cons '__check-values __tmp114087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114086
                                                _stx108850_)))
                                            (__tmp114074
                                             (let ((__tmp114075
                                                    (let ((__tmp114077
                                                           (lambda (_id108928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108929_)
                     (if (let () (declare (not safe)) (__AST-e _id108928_))
                         (let ((__tmp114078
                                (let ((__tmp114079
                                       (let ((__tmp114084
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108928_)))
                                             (__tmp114080
                                              (let ((__tmp114081
                                                     (let ((__tmp114082
                                                            (let ((__tmp114083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108929_ '()))))
                      (declare (not safe))
                      (cons _tmp108925_ __tmp114083))))
               (declare (not safe))
               (cons '##vector-ref __tmp114082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114081 '()))))
                                         (declare (not safe))
                                         (cons __tmp114084 __tmp114080))))
                                  (declare (not safe))
                                  (cons 'define __tmp114079))))
                           (declare (not safe))
                           (__SRC__% __tmp114078 _stx108850_))
                         '#f)))
                  (__tmp114076
                   (let () (declare (not safe)) (iota _len108923_))))
              (declare (not safe))
              (filter-map2 __tmp114077 _ids108921_ __tmp114076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114075))))
                                        (declare (not safe))
                                        (cons __tmp114085 __tmp114074))))
                                 (declare (not safe))
                                 (cons __tmp114089 __tmp114073))))
                          (declare (not safe))
                          (cons 'begin __tmp114072))))
                   (declare (not safe))
                   (__SRC__% __tmp114071 _stx108850_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108903_))
                                                    (let* ((_$tgt108908108934_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108903_)))
                                                           (_$hd108909108937_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108908108934_)))
                                                           (_$tl108910108940_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108908108934_))))
                                                      (let ((_id108944_
                                                             _$hd108909108937_))
                                                        (if (let ((__tmp114099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108910108940_))))
                      (declare (not safe))
                      (equal? __tmp114099 '()))
                    (let ((__tmp114094
                           (let ((__tmp114095
                                  (let ((__tmp114098
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108944_)))
                                        (__tmp114096
                                         (let ((__tmp114097
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108901_))))
                                           (declare (not safe))
                                           (cons __tmp114097 '()))))
                                    (declare (not safe))
                                    (cons __tmp114098 __tmp114096))))
                             (declare (not safe))
                             (cons 'define __tmp114095))))
                      (declare (not safe))
                      (__SRC__% __tmp114094 _stx108850_))
                    (let () (declare (not safe)) (_$E108906108931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108906108931_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108903_))
                                          (let* ((_$tgt108911108949_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108903_)))
                                                 (_$hd108912108952_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108911108949_)))
                                                 (_$tl108913108955_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108911108949_))))
                                            (if (let ((__tmp114101
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108912108952_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114101 '#f))
                                                (if (let ((__tmp114100
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108913108955_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114100 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108901_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108905108946_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108905108946_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108905108946_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108854108866_)))))
                            (let () (declare (not safe)) (_$E108854108866_)))))
                    (let () (declare (not safe)) (_$E108854108866_))))
              (let () (declare (not safe)) (_$E108854108866_))))))
    (define __compile-head-id
      (lambda (_e108848_)
        (let ((__tmp114103
               (if (let () (declare (not safe)) (__AST-e _e108848_))
                   _e108848_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114103))))
    (define __compile-lambda-head
      (lambda (_hd108805_)
        (let _recur108807_ ((_rest108809_ _hd108805_))
          (let* ((_$e108811_ _rest108809_)
                 (_$E108813108831_
                  (lambda ()
                    (let ((_$E108814108828_
                           (lambda ()
                             (let* ((_$E108815108823_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108811_))))
                                    (_tail108826_ _$e108811_))
                               (declare (not safe))
                               (__compile-head-id _tail108826_)))))
                      (if (let ((__tmp114104
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108811_))))
                            (declare (not safe))
                            (equal? __tmp114104 '()))
                          '()
                          (let () (declare (not safe)) (_$E108814108828_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108811_))
                (let* ((_$tgt108816108834_
                        (let () (declare (not safe)) (__AST-e _$e108811_)))
                       (_$hd108817108837_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108816108834_)))
                       (_$tl108818108840_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108816108834_))))
                  (let* ((_hd108844_ _$hd108817108837_)
                         (_rest108846_ _$tl108818108840_))
                    (let ((__tmp114106
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108844_)))
                          (__tmp114105
                           (let ()
                             (declare (not safe))
                             (_recur108807_ _rest108846_))))
                      (declare (not safe))
                      (cons __tmp114106 __tmp114105))))
                (let () (declare (not safe)) (_$E108813108831_)))))))
    (define __compile-lambda%
      (lambda (_stx108752_)
        (let* ((_$e108754_ _stx108752_)
               (_$E108756108768_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108754_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108754_))
              (let* ((_$tgt108757108771_
                      (let () (declare (not safe)) (__AST-e _$e108754_)))
                     (_$hd108758108774_
                      (let () (declare (not safe)) (##car _$tgt108757108771_)))
                     (_$tl108759108777_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108757108771_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108759108777_))
                    (let* ((_$tgt108760108781_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108759108777_)))
                           (_$hd108761108784_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108760108781_)))
                           (_$tl108762108787_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108760108781_))))
                      (let ((_hd108791_ _$hd108761108784_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108762108787_))
                            (let* ((_$tgt108763108793_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108762108787_)))
                                   (_$hd108764108796_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108763108793_)))
                                   (_$tl108765108799_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108763108793_))))
                              (let ((_body108803_ _$hd108764108796_))
                                (if (let ((__tmp114112
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108765108799_))))
                                      (declare (not safe))
                                      (equal? __tmp114112 '()))
                                    (let ((__tmp114107
                                           (let ((__tmp114108
                                                  (let ((__tmp114111
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108791_)))
                                                        (__tmp114109
                                                         (let ((__tmp114110
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108803_))))
                   (declare (not safe))
                   (cons __tmp114110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114111
                                                          __tmp114109))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114108))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114107 _stx108752_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108756108768_)))))
                            (let () (declare (not safe)) (_$E108756108768_)))))
                    (let () (declare (not safe)) (_$E108756108768_))))
              (let () (declare (not safe)) (_$E108756108768_))))))
    (define __compile-case-lambda%
      (lambda (_stx108544_)
        (letrec ((_variadic?108546_
                  (lambda (_hd108717_)
                    (let* ((_$e108719_ _hd108717_)
                           (_$E108721108737_
                            (lambda ()
                              (let ((_$E108722108734_
                                     (lambda ()
                                       (let ((_$E108723108731_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108719_)))))
                                         '#t))))
                                (if (let ((__tmp114113
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108719_))))
                                      (declare (not safe))
                                      (equal? __tmp114113 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108722108734_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108719_))
                          (let* ((_$tgt108724108740_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108719_)))
                                 (_$hd108725108743_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108724108740_)))
                                 (_$tl108726108746_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108724108740_))))
                            (let ((_rest108750_ _$tl108726108746_))
                              (declare (not safe))
                              (_variadic?108546_ _rest108750_)))
                          (let () (declare (not safe)) (_$E108721108737_))))))
                 (_arity108547_
                  (lambda (_hd108682_)
                    (let _lp108684_ ((_rest108686_ _hd108682_) (_k108687_ '0))
                      (let* ((_$e108689_ _rest108686_)
                             (_$E108691108702_
                              (lambda ()
                                (let ((_$E108692108699_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108689_)))))
                                  _k108687_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108689_))
                            (let* ((_$tgt108693108705_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108689_)))
                                   (_$hd108694108708_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108693108705_)))
                                   (_$tl108695108711_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108693108705_))))
                              (let* ((_rest108715_ _$tl108695108711_)
                                     (__tmp114114
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108687_ '1))))
                                (declare (not safe))
                                (_lp108684_ _rest108715_ __tmp114114)))
                            (let ()
                              (declare (not safe))
                              (_$E108691108702_)))))))
                 (_generate108548_
                  (lambda (_rest108609_ _args108610_ _len108611_)
                    (let* ((_$e108613_ _rest108609_)
                           (_$E108615108626_
                            (lambda ()
                              (let* ((_$E108616108623_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108613_))))
                                     (__tmp114115
                                      (let ((__tmp114116
                                             (let ((__tmp114117
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108610_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114117))))
                                        (declare (not safe))
                                        (cons 'error __tmp114116))))
                                (declare (not safe))
                                (__SRC__% __tmp114115 _stx108544_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108613_))
                          (let* ((_$tgt108617108629_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108613_)))
                                 (_$hd108618108632_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108617108629_)))
                                 (_$tl108619108635_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108617108629_))))
                            (let* ((_clause108639_ _$hd108618108632_)
                                   (_rest108641_ _$tl108619108635_)
                                   (_$e108643_ _clause108639_)
                                   (_$E108645108654_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108643_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108643_))
                                  (let* ((_$tgt108646108657_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108643_)))
                                         (_$hd108647108660_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108646108657_)))
                                         (_$tl108648108663_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108646108657_))))
                                    (let ((_hd108667_ _$hd108647108660_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108648108663_))
                                          (let* ((_$tgt108649108669_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108648108663_)))
                                                 (_$hd108650108672_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108649108669_)))
                                                 (_$tl108651108675_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108649108669_))))
                                            (if (let ((__tmp114132
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108651108675_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114132 '()))
                                                (let ((_clen108679_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108547_
                                                          _hd108667_)))
                                                      (_cmp108680_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108546_
                                                              _hd108667_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114118
                                                         (let ((__tmp114119
                                                                (let ((__tmp114129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114130
                                      (let ((__tmp114131
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108679_ '()))))
                                        (declare (not safe))
                                        (cons _len108611_ __tmp114131))))
                                 (declare (not safe))
                                 (cons _cmp108680_ __tmp114130)))
                              (__tmp114120
                               (let ((__tmp114123
                                      (let ((__tmp114124
                                             (let ((__tmp114125
                                                    (let ((__tmp114127
                                                           (let ((__tmp114128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108639_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114128)))
                  (__tmp114126
                   (let () (declare (not safe)) (cons _args108610_ '()))))
              (declare (not safe))
              (cons __tmp114127 __tmp114126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114125))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114124 _stx108544_)))
                                     (__tmp114121
                                      (let ((__tmp114122
                                             (let ()
                                               (declare (not safe))
                                               (_generate108548_
                                                _rest108641_
                                                _args108610_
                                                _len108611_))))
                                        (declare (not safe))
                                        (cons __tmp114122 '()))))
                                 (declare (not safe))
                                 (cons __tmp114123 __tmp114121))))
                          (declare (not safe))
                          (cons __tmp114129 __tmp114120))))
                   (declare (not safe))
                   (cons 'if __tmp114119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114118
                                                     _stx108544_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108645108654_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108645108654_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108645108654_)))))
                          (let () (declare (not safe)) (_$E108615108626_)))))))
          (let* ((_$e108550_ _stx108544_)
                 (_$E108552108584_
                  (lambda ()
                    (let ((_$E108553108566_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108550_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108550_))
                          (let* ((_$tgt108554108569_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108550_)))
                                 (_$hd108555108572_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108554108569_)))
                                 (_$tl108556108575_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108554108569_))))
                            (let ((_clauses108579_ _$tl108556108575_))
                              (let ((_args108581_
                                     (let ((__tmp114133 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114133 _stx108544_)))
                                    (_len108582_
                                     (let ((__tmp114134 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114134 _stx108544_))))
                                (let ((__tmp114135
                                       (let ((__tmp114136
                                              (let ((__tmp114137
                                                     (let ((__tmp114138
                                                            (let ((__tmp114139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114140
                                  (let ((__tmp114143
                                         (let ((__tmp114144
                                                (let ((__tmp114145
                                                       (let ((__tmp114146
                                                              (let ((__tmp114147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114148
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108581_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114148))))
                        (declare (not safe))
                        (__SRC__% __tmp114147 _stx108544_))))
                 (declare (not safe))
                 (cons __tmp114146 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108582_
                                                        __tmp114145))))
                                           (declare (not safe))
                                           (cons __tmp114144 '())))
                                        (__tmp114141
                                         (let ((__tmp114142
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108548_
                                                   _clauses108579_
                                                   _args108581_
                                                   _len108582_))))
                                           (declare (not safe))
                                           (cons __tmp114142 '()))))
                                    (declare (not safe))
                                    (cons __tmp114143 __tmp114141))))
                             (declare (not safe))
                             (cons 'let __tmp114140))))
                      (declare (not safe))
                      (__SRC__% __tmp114139 _stx108544_))))
               (declare (not safe))
               (cons __tmp114138 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108581_
                                                      __tmp114137))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114136))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114135 _stx108544_)))))
                          (let () (declare (not safe)) (_$E108553108566_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108550_))
                (let* ((_$tgt108557108587_
                        (let () (declare (not safe)) (__AST-e _$e108550_)))
                       (_$hd108558108590_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108557108587_)))
                       (_$tl108559108593_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108557108587_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108559108593_))
                      (let* ((_$tgt108560108597_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108559108593_)))
                             (_$hd108561108600_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108560108597_)))
                             (_$tl108562108603_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108560108597_))))
                        (let ((_clause108607_ _$hd108561108600_))
                          (if (let ((__tmp114150
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108562108603_))))
                                (declare (not safe))
                                (equal? __tmp114150 '()))
                              (let ((__tmp114149
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108607_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114149))
                              (let ()
                                (declare (not safe))
                                (_$E108552108584_)))))
                      (let () (declare (not safe)) (_$E108552108584_))))
                (let () (declare (not safe)) (_$E108552108584_)))))))
    (define __compile-let-form
      (lambda (_stx108313_ _compile-simple108314_ _compile-values108315_)
        (letrec ((_simple-bind?108317_
                  (lambda (_hd108502_)
                    (let* ((_hd108503108513_ _hd108502_)
                           (_else108506108521_ (lambda () '#f)))
                      (let ((_K108509108534_ (lambda (_id108532_) '#t))
                            (_K108508108526_ (lambda () '#t)))
                        (let ((_try-match108505108529_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108503108513_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108508108526_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108506108521_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108503108513_))
                              (let ((_tl108511108539_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108503108513_)))
                                    (_hd108510108537_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108503108513_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108511108539_))
                                    (let ((_id108542_ _hd108510108537_))
                                      (declare (not safe))
                                      (_K108509108534_ _id108542_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108505108529_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108505108529_))))))))
                 (_car-e108318_
                  (lambda (_hd108500_)
                    (if (let () (declare (not safe)) (pair? _hd108500_))
                        (car _hd108500_)
                        _hd108500_))))
          (let* ((_$e108320_ _stx108313_)
                 (_$E108322108465_
                  (lambda ()
                    (let ((_$E108323108345_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108320_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108320_))
                          (let* ((_$tgt108324108348_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108320_)))
                                 (_$hd108325108351_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108324108348_)))
                                 (_$tl108326108354_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108324108348_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108326108354_))
                                (let* ((_$tgt108327108358_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108326108354_)))
                                       (_$hd108328108361_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108327108358_)))
                                       (_$tl108329108364_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108327108358_))))
                                  (let ((_hd108368_ _$hd108328108361_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108329108364_))
                                        (let* ((_$tgt108330108370_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108329108364_)))
                                               (_$hd108331108373_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108330108370_)))
                                               (_$tl108332108376_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108330108370_))))
                                          (let ((_body108380_
                                                 _$hd108331108373_))
                                            (if (let ((__tmp114153
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108332108376_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114153 '()))
                                                (let* ((_hd-ids108420_
                                                        (map (lambda (_bind108382_)
                                                               (let* ((_$e108384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108382_)
                              (_$E108386108395_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108384_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108384_))
                             (let* ((_$tgt108387108398_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108384_)))
                                    (_$hd108388108401_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108387108398_)))
                                    (_$tl108389108404_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108387108398_))))
                               (let ((_ids108408_ _$hd108388108401_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108389108404_))
                                     (let* ((_$tgt108390108410_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108389108404_)))
                                            (_$hd108391108413_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108390108410_)))
                                            (_$tl108392108416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108390108410_))))
                                       (if (let ((__tmp114151
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108392108416_))))
                                             (declare (not safe))
                                             (equal? __tmp114151 '()))
                                           _ids108408_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108386108395_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108386108395_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108386108395_)))))
                     _hd108368_))
               (_exprs108460_
                (map (lambda (_bind108422_)
                       (let* ((_$e108424_ _bind108422_)
                              (_$E108426108435_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108424_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108424_))
                             (let* ((_$tgt108427108438_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108424_)))
                                    (_$hd108428108441_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108427108438_)))
                                    (_$tl108429108444_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108427108438_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108429108444_))
                                   (let* ((_$tgt108430108448_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108429108444_)))
                                          (_$hd108431108451_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108430108448_)))
                                          (_$tl108432108454_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108430108448_))))
                                     (let ((_expr108458_ _$hd108431108451_))
                                       (if (let ((__tmp114152
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108432108454_))))
                                             (declare (not safe))
                                             (equal? __tmp114152 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108458_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108426108435_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108426108435_))))
                             (let ()
                               (declare (not safe))
                               (_$E108426108435_)))))
                     _hd108368_))
               (_body108462_
                (let () (declare (not safe)) (__compile _body108380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108420_))
              (_compile-simple108314_
               (map _car-e108318_ _hd-ids108420_)
               _exprs108460_
               _body108462_)
              (_compile-values108315_
               _hd-ids108420_
               _exprs108460_
               _body108462_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108323108345_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108323108345_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108323108345_))))
                          (let () (declare (not safe)) (_$E108323108345_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108320_))
                (let* ((_$tgt108333108468_
                        (let () (declare (not safe)) (__AST-e _$e108320_)))
                       (_$hd108334108471_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108333108468_)))
                       (_$tl108335108474_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108333108468_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108335108474_))
                      (let* ((_$tgt108336108478_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108335108474_)))
                             (_$hd108337108481_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108336108478_)))
                             (_$tl108338108484_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108336108478_))))
                        (if (let ((__tmp114155
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108337108481_))))
                              (declare (not safe))
                              (equal? __tmp114155 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108338108484_))
                                (let* ((_$tgt108339108488_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108338108484_)))
                                       (_$hd108340108491_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108339108488_)))
                                       (_$tl108341108494_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108339108488_))))
                                  (let ((_body108498_ _$hd108340108491_))
                                    (if (let ((__tmp114154
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108341108494_))))
                                          (declare (not safe))
                                          (equal? __tmp114154 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108498_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108322108465_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108322108465_)))
                            (let () (declare (not safe)) (_$E108322108465_))))
                      (let () (declare (not safe)) (_$E108322108465_))))
                (let () (declare (not safe)) (_$E108322108465_)))))))
    (define __compile-let-values%
      (lambda (_stx108128_)
        (letrec ((_compile-simple108130_
                  (lambda (_hd-ids108309_ _exprs108310_ _body108311_)
                    (let ((__tmp114156
                           (let ((__tmp114157
                                  (let ((__tmp114159
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108309_)
                                              _exprs108310_))
                                        (__tmp114158
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108311_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114159 __tmp114158))))
                             (declare (not safe))
                             (cons 'let __tmp114157))))
                      (declare (not safe))
                      (__SRC__% __tmp114156 _stx108128_))))
                 (_compile-values108131_
                  (lambda (_hd-ids108227_ _exprs108228_ _body108229_)
                    (let _lp108231_ ((_rest108233_ _hd-ids108227_)
                                     (_exprs108234_ _exprs108228_)
                                     (_bind108235_ '())
                                     (_post108236_ '()))
                      (let* ((_rest108237108251_ _rest108233_)
                             (_else108240108259_
                              (lambda ()
                                (let ((__tmp114160
                                       (let ((__tmp114161
                                              (let ((__tmp114164
                                                     (reverse _bind108235_))
                                                    (__tmp114162
                                                     (let ((__tmp114163
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108132_
                                                               _post108236_
                                                               _body108229_))))
                                                       (declare (not safe))
                                                       (cons __tmp114163
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114164
                                                      __tmp114162))))
                                         (declare (not safe))
                                         (cons 'let __tmp114161))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114160 _stx108128_)))))
                        (let ((_K108245108292_
                               (lambda (_rest108289_ _id108290_)
                                 (let ((__tmp114170 (cdr _exprs108234_))
                                       (__tmp114165
                                        (let ((__tmp114166
                                               (let ((__tmp114169
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108290_)))
                                                     (__tmp114167
                                                      (let ((__tmp114168
                                                             (car _exprs108234_)))
                                                        (declare (not safe))
                                                        (cons __tmp114168
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114169
                                                       __tmp114167))))
                                          (declare (not safe))
                                          (cons __tmp114166 _bind108235_))))
                                   (declare (not safe))
                                   (_lp108231_
                                    _rest108289_
                                    __tmp114170
                                    __tmp114165
                                    _post108236_))))
                              (_K108242108274_
                               (lambda (_rest108263_ _hd108264_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108264_))
                                     (let ((__tmp114191 (cdr _exprs108234_))
                                           (__tmp114184
                                            (let ((__tmp114185
                                                   (let ((__tmp114190
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108264_)))
                                                         (__tmp114186
                                                          (let ((__tmp114187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114188
                                (let ((__tmp114189 (car _exprs108234_)))
                                  (declare (not safe))
                                  (cons __tmp114189 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114188))))
                    (declare (not safe))
                    (cons __tmp114187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114190
                                                           __tmp114186))))
                                              (declare (not safe))
                                              (cons __tmp114185
                                                    _bind108235_))))
                                       (declare (not safe))
                                       (_lp108231_
                                        _rest108263_
                                        __tmp114191
                                        __tmp114184
                                        _post108236_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108264_))
                                         (let* ((_len108266_
                                                 (length _hd108264_))
                                                (_tmp108268_
                                                 (let ((__tmp114171 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114171))))
                                           (let ((__tmp114183
                                                  (cdr _exprs108234_))
                                                 (__tmp114179
                                                  (let ((__tmp114180
                                                         (let ((__tmp114181
                                                                (let ((__tmp114182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108234_)))
                          (declare (not safe))
                          (cons __tmp114182 '()))))
                   (declare (not safe))
                   (cons _tmp108268_ __tmp114181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114180
                                                          _bind108235_)))
                                                 (__tmp114172
                                                  (let ((__tmp114173
                                                         (let ((__tmp114174
                                                                (let ((__tmp114175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114177
                                      (lambda (_id108271_ _k108272_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108271_))
                                            (let ((__tmp114178
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108271_))))
                                              (declare (not safe))
                                              (cons __tmp114178 _k108272_))
                                            '#f)))
                                     (__tmp114176
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108266_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114177
                                  _hd108264_
                                  __tmp114176))))
                          (declare (not safe))
                          (cons _len108266_ __tmp114175))))
                   (declare (not safe))
                   (cons _tmp108268_ __tmp114174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114173
                                                          _post108236_))))
                                             (declare (not safe))
                                             (_lp108231_
                                              _rest108263_
                                              __tmp114183
                                              __tmp114179
                                              __tmp114172)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108128_
                                            _hd108264_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108237108251_))
                              (let ((_tl108247108297_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108237108251_)))
                                    (_hd108246108295_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108237108251_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108246108295_))
                                    (let ((_tl108249108302_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108246108295_)))
                                          (_hd108248108300_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108246108295_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108249108302_))
                                          (let ((_id108305_ _hd108248108300_)
                                                (_rest108307_
                                                 _tl108247108297_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108245108292_
                                               _rest108307_
                                               _id108305_)))
                                          (let ((_hd108282_ _hd108246108295_)
                                                (_rest108284_
                                                 _tl108247108297_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108242108274_
                                               _rest108284_
                                               _hd108282_)))))
                                    (let ((_hd108282_ _hd108246108295_)
                                          (_rest108284_ _tl108247108297_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108242108274_
                                         _rest108284_
                                         _hd108282_)))))
                              (let ()
                                (declare (not safe))
                                (_else108240108259_))))))))
                 (_compile-post108132_
                  (lambda (_post108134_ _body108135_)
                    (let _lp108137_ ((_rest108139_ _post108134_)
                                     (_check108140_ '())
                                     (_bind108141_ '()))
                      (let* ((_rest108142108154_ _rest108139_)
                             (_else108144108162_
                              (lambda ()
                                (let ((__tmp114192
                                       (let ((__tmp114193
                                              (let ((__tmp114194
                                                     (let ((__tmp114195
                                                            (let ((__tmp114196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114197
                                  (let ((__tmp114198
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108135_ '()))))
                                    (declare (not safe))
                                    (cons _bind108141_ __tmp114198))))
                             (declare (not safe))
                             (cons 'let __tmp114197))))
                      (declare (not safe))
                      (__SRC__% __tmp114196 _stx108128_))))
               (declare (not safe))
               (cons __tmp114195 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114194
                                                        _check108140_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114193))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114192 _stx108128_))))
                             (_K108146108201_
                              (lambda (_rest108165_
                                       _init108166_
                                       _len108167_
                                       _tmp108168_)
                                (let ((__tmp114206
                                       (let ((__tmp114207
                                              (let ((__tmp114208
                                                     (let ((__tmp114209
                                                            (let ((__tmp114210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108167_ '()))))
                      (declare (not safe))
                      (cons _tmp108168_ __tmp114210))))
               (declare (not safe))
               (cons '__check-values __tmp114209))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114208
                                                 _stx108128_))))
                                         (declare (not safe))
                                         (cons __tmp114207 _check108140_)))
                                      (__tmp114199
                                       (let ((__tmp114200
                                              (lambda (_hd108170_ _r108171_)
                                                (let* ((_hd108172108179_
                                                        _hd108170_)
                                                       (_E108174108183_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108172108179_)))
               (_K108175108189_
                (lambda (_k108186_ _id108187_)
                  (let ((__tmp114201
                         (let ((__tmp114202
                                (let ((__tmp114203
                                       (let ((__tmp114204
                                              (let ((__tmp114205
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108186_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108168_
                                                      __tmp114205))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114204))))
                                  (declare (not safe))
                                  (cons __tmp114203 '()))))
                           (declare (not safe))
                           (cons _id108187_ __tmp114202))))
                    (declare (not safe))
                    (cons __tmp114201 _r108171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108172108179_))
                                                      (let ((_hd108176108192_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108172108179_)))
                    (_tl108177108194_
                     (let () (declare (not safe)) (##cdr _hd108172108179_))))
                (let* ((_id108197_ _hd108176108192_)
                       (_k108199_ _tl108177108194_))
                  (declare (not safe))
                  (_K108175108189_ _k108199_ _id108197_)))
              (let () (declare (not safe)) (_E108174108183_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114200
                                                 _bind108141_
                                                 _init108166_))))
                                  (declare (not safe))
                                  (_lp108137_
                                   _rest108165_
                                   __tmp114206
                                   __tmp114199)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108142108154_))
                            (let ((_hd108147108204_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108142108154_)))
                                  (_tl108148108206_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108142108154_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108147108204_))
                                  (let ((_hd108149108209_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108147108204_)))
                                        (_tl108150108211_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108147108204_))))
                                    (let ((_tmp108214_ _hd108149108209_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108150108211_))
                                          (let ((_hd108151108216_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108150108211_)))
                                                (_tl108152108218_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108150108211_))))
                                            (let* ((_len108221_
                                                    _hd108151108216_)
                                                   (_init108223_
                                                    _tl108152108218_)
                                                   (_rest108225_
                                                    _tl108148108206_))
                                              (declare (not safe))
                                              (_K108146108201_
                                               _rest108225_
                                               _init108223_
                                               _len108221_
                                               _tmp108214_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108144108162_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108144108162_))))
                            (let ()
                              (declare (not safe))
                              (_else108144108162_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108128_
             _compile-simple108130_
             _compile-values108131_)))))
    (define __compile-letrec-values%
      (lambda (_stx107928_)
        (letrec ((_compile-simple107930_
                  (lambda (_hd-ids108124_ _exprs108125_ _body108126_)
                    (let ((__tmp114211
                           (let ((__tmp114212
                                  (let ((__tmp114214
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108124_)
                                              _exprs108125_))
                                        (__tmp114213
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108126_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114214 __tmp114213))))
                             (declare (not safe))
                             (cons 'letrec __tmp114212))))
                      (declare (not safe))
                      (__SRC__% __tmp114211 _stx107928_))))
                 (_compile-values107931_
                  (lambda (_hd-ids108038_ _exprs108039_ _body108040_)
                    (let _lp108042_ ((_rest108044_ _hd-ids108038_)
                                     (_exprs108045_ _exprs108039_)
                                     (_pre108046_ '())
                                     (_bind108047_ '())
                                     (_post108048_ '()))
                      (let* ((_rest108049108063_ _rest108044_)
                             (_else108052108071_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107932_
                                   _pre108046_
                                   _bind108047_
                                   _post108048_
                                   _body108040_)))))
                        (let ((_K108057108107_
                               (lambda (_rest108104_ _id108105_)
                                 (let ((__tmp114220 (cdr _exprs108045_))
                                       (__tmp114215
                                        (let ((__tmp114216
                                               (let ((__tmp114219
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108105_)))
                                                     (__tmp114217
                                                      (let ((__tmp114218
                                                             (car _exprs108045_)))
                                                        (declare (not safe))
                                                        (cons __tmp114218
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114219
                                                       __tmp114217))))
                                          (declare (not safe))
                                          (cons __tmp114216 _bind108047_))))
                                   (declare (not safe))
                                   (_lp108042_
                                    _rest108104_
                                    __tmp114220
                                    _pre108046_
                                    __tmp114215
                                    _post108048_))))
                              (_K108054108089_
                               (lambda (_rest108075_ _hd108076_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108076_))
                                     (let ((__tmp114248 (cdr _exprs108045_))
                                           (__tmp114241
                                            (let ((__tmp114242
                                                   (let ((__tmp114247
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108076_)))
                                                         (__tmp114243
                                                          (let ((__tmp114244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114245
                                (let ((__tmp114246 (car _exprs108045_)))
                                  (declare (not safe))
                                  (cons __tmp114246 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114245))))
                    (declare (not safe))
                    (cons __tmp114244 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114247
                                                           __tmp114243))))
                                              (declare (not safe))
                                              (cons __tmp114242
                                                    _bind108047_))))
                                       (declare (not safe))
                                       (_lp108042_
                                        _rest108075_
                                        __tmp114248
                                        _pre108046_
                                        __tmp114241
                                        _post108048_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108076_))
                                         (let* ((_len108078_
                                                 (length _hd108076_))
                                                (_tmp108080_
                                                 (let ((__tmp114221 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114221))))
                                           (let ((__tmp114240
                                                  (cdr _exprs108045_))
                                                 (__tmp114233
                                                  (let ((__tmp114234
                                                         (lambda (_id108083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108084_)
                   (if (let () (declare (not safe)) (__AST-e _id108083_))
                       (let ((__tmp114235
                              (let ((__tmp114239
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108083_)))
                                    (__tmp114236
                                     (let ((__tmp114237
                                            (let ((__tmp114238
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114238))))
                                       (declare (not safe))
                                       (cons __tmp114237 '()))))
                                (declare (not safe))
                                (cons __tmp114239 __tmp114236))))
                         (declare (not safe))
                         (cons __tmp114235 _r108084_))
                       _r108084_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114234
                                                            _pre108046_
                                                            _hd108076_)))
                                                 (__tmp114229
                                                  (let ((__tmp114230
                                                         (let ((__tmp114231
                                                                (let ((__tmp114232
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108045_)))
                          (declare (not safe))
                          (cons __tmp114232 '()))))
                   (declare (not safe))
                   (cons _tmp108080_ __tmp114231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114230
                                                          _bind108047_)))
                                                 (__tmp114222
                                                  (let ((__tmp114223
                                                         (let ((__tmp114224
                                                                (let ((__tmp114225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114227
                                      (lambda (_id108086_ _k108087_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108086_))
                                            (let ((__tmp114228
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108086_))))
                                              (declare (not safe))
                                              (cons __tmp114228 _k108087_))
                                            '#f)))
                                     (__tmp114226
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108078_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114227
                                  _hd108076_
                                  __tmp114226))))
                          (declare (not safe))
                          (cons _len108078_ __tmp114225))))
                   (declare (not safe))
                   (cons _tmp108080_ __tmp114224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114223
                                                          _post108048_))))
                                             (declare (not safe))
                                             (_lp108042_
                                              _rest108075_
                                              __tmp114240
                                              __tmp114233
                                              __tmp114229
                                              __tmp114222)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107928_
                                            _hd108076_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108049108063_))
                              (let ((_tl108059108112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108049108063_)))
                                    (_hd108058108110_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108049108063_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108058108110_))
                                    (let ((_tl108061108117_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108058108110_)))
                                          (_hd108060108115_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108058108110_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108061108117_))
                                          (let ((_id108120_ _hd108060108115_)
                                                (_rest108122_
                                                 _tl108059108112_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108057108107_
                                               _rest108122_
                                               _id108120_)))
                                          (let ((_hd108097_ _hd108058108110_)
                                                (_rest108099_
                                                 _tl108059108112_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108054108089_
                                               _rest108099_
                                               _hd108097_)))))
                                    (let ((_hd108097_ _hd108058108110_)
                                          (_rest108099_ _tl108059108112_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108054108089_
                                         _rest108099_
                                         _hd108097_)))))
                              (let ()
                                (declare (not safe))
                                (_else108052108071_))))))))
                 (_compile-inner107932_
                  (lambda (_pre108033_ _bind108034_ _post108035_ _body108036_)
                    (if (let () (declare (not safe)) (null? _pre108033_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107933_
                           _bind108034_
                           _post108035_
                           _body108036_))
                        (let ((__tmp114249
                               (let ((__tmp114250
                                      (let ((__tmp114253 (reverse _pre108033_))
                                            (__tmp114251
                                             (let ((__tmp114252
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107933_
                                                       _bind108034_
                                                       _post108035_
                                                       _body108036_))))
                                               (declare (not safe))
                                               (cons __tmp114252 '()))))
                                        (declare (not safe))
                                        (cons __tmp114253 __tmp114251))))
                                 (declare (not safe))
                                 (cons 'let __tmp114250))))
                          (declare (not safe))
                          (__SRC__% __tmp114249 _stx107928_)))))
                 (_compile-bind107933_
                  (lambda (_bind108029_ _post108030_ _body108031_)
                    (let ((__tmp114254
                           (let ((__tmp114255
                                  (let ((__tmp114258 (reverse _bind108029_))
                                        (__tmp114256
                                         (let ((__tmp114257
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107934_
                                                   _post108030_
                                                   _body108031_))))
                                           (declare (not safe))
                                           (cons __tmp114257 '()))))
                                    (declare (not safe))
                                    (cons __tmp114258 __tmp114256))))
                             (declare (not safe))
                             (cons 'letrec __tmp114255))))
                      (declare (not safe))
                      (__SRC__% __tmp114254 _stx107928_))))
                 (_compile-post107934_
                  (lambda (_post107936_ _body107937_)
                    (let _lp107939_ ((_rest107941_ _post107936_)
                                     (_check107942_ '())
                                     (_bind107943_ '()))
                      (let* ((_rest107944107956_ _rest107941_)
                             (_else107946107964_
                              (lambda ()
                                (let ((__tmp114259
                                       (let ((__tmp114260
                                              (let ((__tmp114261
                                                     (let ((__tmp114262
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114262 _bind107943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114261
                                                        _check107942_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114260))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114259 _stx107928_))))
                             (_K107948108003_
                              (lambda (_rest107967_
                                       _init107968_
                                       _len107969_
                                       _tmp107970_)
                                (let ((__tmp114271
                                       (let ((__tmp114272
                                              (let ((__tmp114273
                                                     (let ((__tmp114274
                                                            (let ((__tmp114275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107969_ '()))))
                      (declare (not safe))
                      (cons _tmp107970_ __tmp114275))))
               (declare (not safe))
               (cons '__check-values __tmp114274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114273
                                                 _stx107928_))))
                                         (declare (not safe))
                                         (cons __tmp114272 _check107942_)))
                                      (__tmp114263
                                       (let ((__tmp114264
                                              (lambda (_hd107972_ _r107973_)
                                                (let* ((_hd107974107981_
                                                        _hd107972_)
                                                       (_E107976107985_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107974107981_)))
               (_K107977107991_
                (lambda (_k107988_ _id107989_)
                  (let ((__tmp114265
                         (let ((__tmp114266
                                (let ((__tmp114267
                                       (let ((__tmp114268
                                              (let ((__tmp114269
                                                     (let ((__tmp114270
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107970_ __tmp114270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114269))))
                                         (declare (not safe))
                                         (cons __tmp114268 '()))))
                                  (declare (not safe))
                                  (cons _id107989_ __tmp114267))))
                           (declare (not safe))
                           (cons 'set! __tmp114266))))
                    (declare (not safe))
                    (cons __tmp114265 _r107973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107974107981_))
                                                      (let ((_hd107978107994_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107974107981_)))
                    (_tl107979107996_
                     (let () (declare (not safe)) (##cdr _hd107974107981_))))
                (let* ((_id107999_ _hd107978107994_)
                       (_k108001_ _tl107979107996_))
                  (declare (not safe))
                  (_K107977107991_ _k108001_ _id107999_)))
              (let () (declare (not safe)) (_E107976107985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114264
                                                 _bind107943_
                                                 _init107968_))))
                                  (declare (not safe))
                                  (_lp107939_
                                   _rest107967_
                                   __tmp114271
                                   __tmp114263)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107944107956_))
                            (let ((_hd107949108006_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107944107956_)))
                                  (_tl107950108008_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107944107956_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107949108006_))
                                  (let ((_hd107951108011_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107949108006_)))
                                        (_tl107952108013_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107949108006_))))
                                    (let ((_tmp108016_ _hd107951108011_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107952108013_))
                                          (let ((_hd107953108018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107952108013_)))
                                                (_tl107954108020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107952108013_))))
                                            (let* ((_len108023_
                                                    _hd107953108018_)
                                                   (_init108025_
                                                    _tl107954108020_)
                                                   (_rest108027_
                                                    _tl107950108008_))
                                              (declare (not safe))
                                              (_K107948108003_
                                               _rest108027_
                                               _init108025_
                                               _len108023_
                                               _tmp108016_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107946107964_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107946107964_))))
                            (let ()
                              (declare (not safe))
                              (_else107946107964_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107928_
             _compile-simple107930_
             _compile-values107931_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107683_)
        (letrec ((_compile-simple107685_
                  (lambda (_hd-ids107924_ _exprs107925_ _body107926_)
                    (let ((__tmp114276
                           (let ((__tmp114277
                                  (let ((__tmp114279
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107924_)
                                              _exprs107925_))
                                        (__tmp114278
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107926_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114279 __tmp114278))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114277))))
                      (declare (not safe))
                      (__SRC__% __tmp114276 _stx107683_))))
                 (_compile-values107686_
                  (lambda (_hd-ids107835_ _exprs107836_ _body107837_)
                    (let _lp107839_ ((_rest107841_ _hd-ids107835_)
                                     (_exprs107842_ _exprs107836_)
                                     (_bind107843_ '())
                                     (_post107844_ '()))
                      (let* ((_rest107845107859_ _rest107841_)
                             (_else107848107867_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107687_
                                   _bind107843_
                                   _post107844_
                                   _body107837_)))))
                        (let ((_K107853107907_
                               (lambda (_rest107902_ _hd107903_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107903_))
                                     (let ((_id107905_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107903_))))
                                       (let ((__tmp114294 (cdr _exprs107842_))
                                             (__tmp114289
                                              (let ((__tmp114290
                                                     (let ((__tmp114291
                                                            (let ((__tmp114292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114293
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114293))))
                      (declare (not safe))
                      (cons __tmp114292 '()))))
               (declare (not safe))
               (cons _id107905_ __tmp114291))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114290
                                                      _bind107843_)))
                                             (__tmp114285
                                              (let ((__tmp114286
                                                     (let ((__tmp114287
                                                            (let ((__tmp114288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107842_)))
                      (declare (not safe))
                      (cons __tmp114288 '()))))
               (declare (not safe))
               (cons _id107905_ __tmp114287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114286
                                                      _post107844_))))
                                         (declare (not safe))
                                         (_lp107839_
                                          _rest107902_
                                          __tmp114294
                                          __tmp114289
                                          __tmp114285)))
                                     (let ((__tmp114284 (cdr _exprs107842_))
                                           (__tmp114280
                                            (let ((__tmp114281
                                                   (let ((__tmp114282
                                                          (let ((__tmp114283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107842_)))
                    (declare (not safe))
                    (cons __tmp114283 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114282))))
                                              (declare (not safe))
                                              (cons __tmp114281
                                                    _post107844_))))
                                       (declare (not safe))
                                       (_lp107839_
                                        _rest107902_
                                        __tmp114284
                                        _bind107843_
                                        __tmp114280)))))
                              (_K107850107887_
                               (lambda (_rest107871_ _hd107872_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107872_))
                                     (let ((_id107874_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107872_))))
                                       (let ((__tmp114330 (cdr _exprs107842_))
                                             (__tmp114325
                                              (let ((__tmp114326
                                                     (let ((__tmp114327
                                                            (let ((__tmp114328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114329
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114329))))
                      (declare (not safe))
                      (cons __tmp114328 '()))))
               (declare (not safe))
               (cons _id107874_ __tmp114327))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114326
                                                      _bind107843_)))
                                             (__tmp114319
                                              (let ((__tmp114320
                                                     (let ((__tmp114321
                                                            (let ((__tmp114322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114323
                                  (let ((__tmp114324 (car _exprs107842_)))
                                    (declare (not safe))
                                    (cons __tmp114324 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114323))))
                      (declare (not safe))
                      (cons __tmp114322 '()))))
               (declare (not safe))
               (cons _id107874_ __tmp114321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114320
                                                      _post107844_))))
                                         (declare (not safe))
                                         (_lp107839_
                                          _rest107871_
                                          __tmp114330
                                          __tmp114325
                                          __tmp114319)))
                                     (if (let ((__tmp114318
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107872_))))
                                           (declare (not safe))
                                           (not __tmp114318))
                                         (let ((__tmp114317
                                                (cdr _exprs107842_))
                                               (__tmp114313
                                                (let ((__tmp114314
                                                       (let ((__tmp114315
                                                              (let ((__tmp114316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107842_)))
                        (declare (not safe))
                        (cons __tmp114316 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114314
                                                        _post107844_))))
                                           (declare (not safe))
                                           (_lp107839_
                                            _rest107871_
                                            __tmp114317
                                            _bind107843_
                                            __tmp114313))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107872_))
                                             (let* ((_len107876_
                                                     (length _hd107872_))
                                                    (_tmp107878_
                                                     (let ((__tmp114295
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114295))))
                                               (let ((__tmp114312
                                                      (cdr _exprs107842_))
                                                     (__tmp114305
                                                      (let ((__tmp114306
                                                             (lambda (_id107881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107882_)
                       (if (let () (declare (not safe)) (__AST-e _id107881_))
                           (let ((__tmp114307
                                  (let ((__tmp114311
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107881_)))
                                        (__tmp114308
                                         (let ((__tmp114309
                                                (let ((__tmp114310
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114310))))
                                           (declare (not safe))
                                           (cons __tmp114309 '()))))
                                    (declare (not safe))
                                    (cons __tmp114311 __tmp114308))))
                             (declare (not safe))
                             (cons __tmp114307 _r107882_))
                           _r107882_))))
                (declare (not safe))
                (foldl1 __tmp114306 _bind107843_ _hd107872_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114296
                                                      (let ((__tmp114297
                                                             (let ((__tmp114298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114304 (car _exprs107842_))
                                  (__tmp114299
                                   (let ((__tmp114300
                                          (let ((__tmp114302
                                                 (lambda (_id107884_ _k107885_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107884_))
                                                       (let ((__tmp114303
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107884_))))
                 (declare (not safe))
                 (cons __tmp114303 _k107885_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114301
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107876_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114302
                                             _hd107872_
                                             __tmp114301))))
                                     (declare (not safe))
                                     (cons _len107876_ __tmp114300))))
                              (declare (not safe))
                              (cons __tmp114304 __tmp114299))))
                       (declare (not safe))
                       (cons _tmp107878_ __tmp114298))))
                (declare (not safe))
                (cons __tmp114297 _post107844_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107839_
                                                  _rest107871_
                                                  __tmp114312
                                                  __tmp114305
                                                  __tmp114296)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107683_
                                                _hd107872_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107845107859_))
                              (let ((_tl107855107912_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107845107859_)))
                                    (_hd107854107910_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107845107859_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107854107910_))
                                    (let ((_tl107857107917_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107854107910_)))
                                          (_hd107856107915_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107854107910_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107857107917_))
                                          (let ((_hd107920_ _hd107856107915_)
                                                (_rest107922_
                                                 _tl107855107912_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107853107907_
                                               _rest107922_
                                               _hd107920_)))
                                          (let ((_hd107895_ _hd107854107910_)
                                                (_rest107897_
                                                 _tl107855107912_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107850107887_
                                               _rest107897_
                                               _hd107895_)))))
                                    (let ((_hd107895_ _hd107854107910_)
                                          (_rest107897_ _tl107855107912_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107850107887_
                                         _rest107897_
                                         _hd107895_)))))
                              (let ()
                                (declare (not safe))
                                (_else107848107867_))))))))
                 (_compile-bind107687_
                  (lambda (_bind107831_ _post107832_ _body107833_)
                    (let ((__tmp114331
                           (let ((__tmp114332
                                  (let ((__tmp114335 (reverse _bind107831_))
                                        (__tmp114333
                                         (let ((__tmp114334
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107688_
                                                   _post107832_
                                                   _body107833_))))
                                           (declare (not safe))
                                           (cons __tmp114334 '()))))
                                    (declare (not safe))
                                    (cons __tmp114335 __tmp114333))))
                             (declare (not safe))
                             (cons 'let __tmp114332))))
                      (declare (not safe))
                      (__SRC__% __tmp114331 _stx107683_))))
                 (_compile-post107688_
                  (lambda (_post107690_ _body107691_)
                    (let ((__tmp114336
                           (let ((__tmp114337
                                  (let ((__tmp114338
                                         (let ((__tmp114340
                                                (lambda (_hd107693_ _r107694_)
                                                  (let* ((_hd107695107718_
                                                          _hd107693_)
                                                         (_E107699107722_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107695107718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107712107816_
                                                           (lambda (_expr107814_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107814_ _r107694_))))
                  (_K107707107794_
                   (lambda (_expr107791_ _id107792_)
                     (let ((__tmp114341
                            (let ((__tmp114342
                                   (let ((__tmp114343
                                          (let ((__tmp114344
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107791_ '()))))
                                            (declare (not safe))
                                            (cons _id107792_ __tmp114344))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114343))))
                              (declare (not safe))
                              (__SRC__% __tmp114342 _stx107683_))))
                       (declare (not safe))
                       (cons __tmp114341 _r107694_))))
                  (_K107700107761_
                   (lambda (_init107726_ _len107727_ _expr107728_ _tmp107729_)
                     (let ((__tmp114345
                            (let ((__tmp114346
                                   (let ((__tmp114347
                                          (let ((__tmp114361
                                                 (let ((__tmp114362
                                                        (let ((__tmp114363
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107728_ '()))))
                  (declare (not safe))
                  (cons _tmp107729_ __tmp114363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114362 '())))
                                                (__tmp114348
                                                 (let ((__tmp114357
                                                        (let ((__tmp114358
                                                               (let ((__tmp114359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114360
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107727_ '()))))
                                (declare (not safe))
                                (cons _tmp107729_ __tmp114360))))
                         (declare (not safe))
                         (cons '__check-values __tmp114359))))
                  (declare (not safe))
                  (__SRC__% __tmp114358 _stx107683_)))
               (__tmp114349
                (let ((__tmp114350
                       (map (lambda (_hd107731_)
                              (let* ((_hd107732107739_ _hd107731_)
                                     (_E107734107743_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107732107739_)))
                                     (_K107735107749_
                                      (lambda (_k107746_ _id107747_)
                                        (let ((__tmp114351
                                               (let ((__tmp114352
                                                      (let ((__tmp114353
                                                             (let ((__tmp114354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114355
                                   (let ((__tmp114356
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107746_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107729_ __tmp114356))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114355))))
                       (declare (not safe))
                       (cons __tmp114354 '()))))
                (declare (not safe))
                (cons _id107747_ __tmp114353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114352))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114351
                                           _stx107683_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107732107739_))
                                    (let ((_hd107736107752_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107732107739_)))
                                          (_tl107737107754_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107732107739_))))
                                      (let* ((_id107757_ _hd107736107752_)
                                             (_k107759_ _tl107737107754_))
                                        (declare (not safe))
                                        (_K107735107749_
                                         _k107759_
                                         _id107757_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107734107743_)))))
                            _init107726_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114357
                                                         __tmp114349))))
                                            (declare (not safe))
                                            (cons __tmp114361 __tmp114348))))
                                     (declare (not safe))
                                     (cons 'let __tmp114347))))
                              (declare (not safe))
                              (__SRC__% __tmp114346 _stx107683_))))
                       (declare (not safe))
                       (cons __tmp114345 _r107694_)))))
              (if (let () (declare (not safe)) (##pair? _hd107695107718_))
                  (let ((_tl107714107821_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107695107718_)))
                        (_hd107713107819_
                         (let ()
                           (declare (not safe))
                           (##car _hd107695107718_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107713107819_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107714107821_))
                            (let ((_tl107716107826_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107714107821_)))
                                  (_hd107715107824_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107714107821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107716107826_))
                                  (let ((_expr107829_ _hd107715107824_))
                                    (declare (not safe))
                                    (_K107712107816_ _expr107829_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107716107826_))
                                      (let ((_tl107706107780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107716107826_)))
                                            (_hd107705107778_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107716107826_))))
                                        (let ((_tmp107769_ _hd107713107819_)
                                              (_expr107776_ _hd107715107824_)
                                              (_len107783_ _hd107705107778_)
                                              (_init107785_ _tl107706107780_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107700107761_
                                             _init107785_
                                             _len107783_
                                             _expr107776_
                                             _tmp107769_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107699107722_)))))
                            (let () (declare (not safe)) (_E107699107722_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107714107821_))
                            (let ((_tl107711107806_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107714107821_)))
                                  (_hd107710107804_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107714107821_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107711107806_))
                                  (let ((_id107802_ _hd107713107819_)
                                        (_expr107809_ _hd107710107804_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107707107794_
                                       _expr107809_
                                       _id107802_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107711107806_))
                                      (let ((_tl107706107780_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107711107806_)))
                                            (_hd107705107778_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107711107806_))))
                                        (let ((_tmp107769_ _hd107713107819_)
                                              (_expr107776_ _hd107710107804_)
                                              (_len107783_ _hd107705107778_)
                                              (_init107785_ _tl107706107780_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107700107761_
                                             _init107785_
                                             _len107783_
                                             _expr107776_
                                             _tmp107769_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107699107722_)))))
                            (let () (declare (not safe)) (_E107699107722_)))))
                  (let () (declare (not safe)) (_E107699107722_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114339
                                                (list _body107691_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114340
                                                   __tmp114339
                                                   _post107690_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114338))))
                             (declare (not safe))
                             (cons 'begin __tmp114337))))
                      (declare (not safe))
                      (__SRC__% __tmp114336 _stx107683_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107683_
             _compile-simple107685_
             _compile-values107686_)))))
    (define __compile-call%
      (lambda (_stx107643_)
        (let* ((_$e107645_ _stx107643_)
               (_$E107647107656_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107645_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107645_))
              (let* ((_$tgt107648107659_
                      (let () (declare (not safe)) (__AST-e _$e107645_)))
                     (_$hd107649107662_
                      (let () (declare (not safe)) (##car _$tgt107648107659_)))
                     (_$tl107650107665_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107648107659_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107650107665_))
                    (let* ((_$tgt107651107669_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107650107665_)))
                           (_$hd107652107672_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107651107669_)))
                           (_$tl107653107675_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107651107669_))))
                      (let* ((_rator107679_ _$hd107652107672_)
                             (_rands107681_ _$tl107653107675_)
                             (__tmp114364
                              (let ((__tmp114366
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107679_)))
                                    (__tmp114365
                                     (map __compile _rands107681_)))
                                (declare (not safe))
                                (cons __tmp114366 __tmp114365))))
                        (declare (not safe))
                        (__SRC__% __tmp114364 _stx107643_)))
                    (let () (declare (not safe)) (_$E107647107656_))))
              (let () (declare (not safe)) (_$E107647107656_))))))
    (define __compile-ref%
      (lambda (_stx107605_)
        (let* ((_$e107607_ _stx107605_)
               (_$E107609107618_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107607_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107607_))
              (let* ((_$tgt107610107621_
                      (let () (declare (not safe)) (__AST-e _$e107607_)))
                     (_$hd107611107624_
                      (let () (declare (not safe)) (##car _$tgt107610107621_)))
                     (_$tl107612107627_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107610107621_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107612107627_))
                    (let* ((_$tgt107613107631_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107612107627_)))
                           (_$hd107614107634_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107613107631_)))
                           (_$tl107615107637_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107613107631_))))
                      (let ((_id107641_ _$hd107614107634_))
                        (if (let ((__tmp114367
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107615107637_))))
                              (declare (not safe))
                              (equal? __tmp114367 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107641_ _stx107605_))
                            (let () (declare (not safe)) (_$E107609107618_)))))
                    (let () (declare (not safe)) (_$E107609107618_))))
              (let () (declare (not safe)) (_$E107609107618_))))))
    (define __compile-setq%
      (lambda (_stx107552_)
        (let* ((_$e107554_ _stx107552_)
               (_$E107556107568_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107554_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107554_))
              (let* ((_$tgt107557107571_
                      (let () (declare (not safe)) (__AST-e _$e107554_)))
                     (_$hd107558107574_
                      (let () (declare (not safe)) (##car _$tgt107557107571_)))
                     (_$tl107559107577_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107557107571_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107559107577_))
                    (let* ((_$tgt107560107581_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107559107577_)))
                           (_$hd107561107584_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107560107581_)))
                           (_$tl107562107587_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107560107581_))))
                      (let ((_id107591_ _$hd107561107584_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107562107587_))
                            (let* ((_$tgt107563107593_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107562107587_)))
                                   (_$hd107564107596_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107563107593_)))
                                   (_$tl107565107599_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107563107593_))))
                              (let ((_expr107603_ _$hd107564107596_))
                                (if (let ((__tmp114373
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107565107599_))))
                                      (declare (not safe))
                                      (equal? __tmp114373 '()))
                                    (let ((__tmp114368
                                           (let ((__tmp114369
                                                  (let ((__tmp114372
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107591_
                                                            _stx107552_)))
                                                        (__tmp114370
                                                         (let ((__tmp114371
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107603_))))
                   (declare (not safe))
                   (cons __tmp114371 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114372
                                                          __tmp114370))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114369))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114368 _stx107552_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107556107568_)))))
                            (let () (declare (not safe)) (_$E107556107568_)))))
                    (let () (declare (not safe)) (_$E107556107568_))))
              (let () (declare (not safe)) (_$E107556107568_))))))
    (define __compile-if%
      (lambda (_stx107484_)
        (let* ((_$e107486_ _stx107484_)
               (_$E107488107503_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107486_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107486_))
              (let* ((_$tgt107489107506_
                      (let () (declare (not safe)) (__AST-e _$e107486_)))
                     (_$hd107490107509_
                      (let () (declare (not safe)) (##car _$tgt107489107506_)))
                     (_$tl107491107512_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107489107506_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107491107512_))
                    (let* ((_$tgt107492107516_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107491107512_)))
                           (_$hd107493107519_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107492107516_)))
                           (_$tl107494107522_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107492107516_))))
                      (let ((_p107526_ _$hd107493107519_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107494107522_))
                            (let* ((_$tgt107495107528_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107494107522_)))
                                   (_$hd107496107531_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107495107528_)))
                                   (_$tl107497107534_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107495107528_))))
                              (let ((_t107538_ _$hd107496107531_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107497107534_))
                                    (let* ((_$tgt107498107540_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107497107534_)))
                                           (_$hd107499107543_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107498107540_)))
                                           (_$tl107500107546_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107498107540_))))
                                      (let ((_f107550_ _$hd107499107543_))
                                        (if (let ((__tmp114381
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107500107546_))))
                                              (declare (not safe))
                                              (equal? __tmp114381 '()))
                                            (let ((__tmp114374
                                                   (let ((__tmp114375
                                                          (let ((__tmp114380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107526_)))
                        (__tmp114376
                         (let ((__tmp114379
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107538_)))
                               (__tmp114377
                                (let ((__tmp114378
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107550_))))
                                  (declare (not safe))
                                  (cons __tmp114378 '()))))
                           (declare (not safe))
                           (cons __tmp114379 __tmp114377))))
                    (declare (not safe))
                    (cons __tmp114380 __tmp114376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114375))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114374
                                               _stx107484_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107488107503_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107488107503_)))))
                            (let () (declare (not safe)) (_$E107488107503_)))))
                    (let () (declare (not safe)) (_$E107488107503_))))
              (let () (declare (not safe)) (_$E107488107503_))))))
    (define __compile-quote%
      (lambda (_stx107446_)
        (let* ((_$e107448_ _stx107446_)
               (_$E107450107459_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107448_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107448_))
              (let* ((_$tgt107451107462_
                      (let () (declare (not safe)) (__AST-e _$e107448_)))
                     (_$hd107452107465_
                      (let () (declare (not safe)) (##car _$tgt107451107462_)))
                     (_$tl107453107468_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107451107462_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107453107468_))
                    (let* ((_$tgt107454107472_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107453107468_)))
                           (_$hd107455107475_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107454107472_)))
                           (_$tl107456107478_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107454107472_))))
                      (let ((_e107482_ _$hd107455107475_))
                        (if (let ((__tmp114385
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107456107478_))))
                              (declare (not safe))
                              (equal? __tmp114385 '()))
                            (let ((__tmp114382
                                   (let ((__tmp114383
                                          (let ((__tmp114384
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107482_))))
                                            (declare (not safe))
                                            (cons __tmp114384 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114383))))
                              (declare (not safe))
                              (__SRC__% __tmp114382 _stx107446_))
                            (let () (declare (not safe)) (_$E107450107459_)))))
                    (let () (declare (not safe)) (_$E107450107459_))))
              (let () (declare (not safe)) (_$E107450107459_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107408_)
        (let* ((_$e107410_ _stx107408_)
               (_$E107412107421_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107410_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107410_))
              (let* ((_$tgt107413107424_
                      (let () (declare (not safe)) (__AST-e _$e107410_)))
                     (_$hd107414107427_
                      (let () (declare (not safe)) (##car _$tgt107413107424_)))
                     (_$tl107415107430_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107413107424_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107415107430_))
                    (let* ((_$tgt107416107434_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107415107430_)))
                           (_$hd107417107437_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107416107434_)))
                           (_$tl107418107440_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107416107434_))))
                      (let ((_e107444_ _$hd107417107437_))
                        (if (let ((__tmp114388
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107418107440_))))
                              (declare (not safe))
                              (equal? __tmp114388 '()))
                            (let ((__tmp114386
                                   (let ((__tmp114387
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107444_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114387))))
                              (declare (not safe))
                              (__SRC__% __tmp114386 _stx107408_))
                            (let () (declare (not safe)) (_$E107412107421_)))))
                    (let () (declare (not safe)) (_$E107412107421_))))
              (let () (declare (not safe)) (_$E107412107421_))))))
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
