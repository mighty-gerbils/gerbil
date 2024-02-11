(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707618264)
  (begin
    (define __context::t
      (let ((__tmp113994
             (let ((__tmp113995
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113995 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '__context
         '#f
         '(t ns super table)
         __tmp113994
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args109330_
        (apply make-struct-instance __context::t _$args109330_)))
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
      (let ((__tmp113996
             (let ((__tmp113997
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113997 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         '#f
         '(id)
         __tmp113996
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109327_
        (apply make-struct-instance __runtime::t _$args109327_)))
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
      (let ((__tmp113998
             (let ((__tmp113999
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113999 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         '#f
         '(e id)
         __tmp113998
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109324_
        (apply make-struct-instance __syntax::t _$args109324_)))
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
      (let ((__tmp114000
             (let ((__tmp114001
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114001 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __syntax::t
         '()
         __tmp114000
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109321_
        (apply make-struct-instance __macro::t _$args109321_)))
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
      (let ((__tmp114002
             (let ((__tmp114003
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114003 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __macro::t
         '()
         __tmp114002
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109318_
        (apply make-struct-instance __special-form::t _$args109318_)))
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
      (let ((__tmp114004
             (let ((__tmp114005
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114005 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __syntax::t
         '()
         __tmp114004
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109315_
        (apply make-struct-instance __core-form::t _$args109315_)))
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
      (let ((__tmp114006
             (let ((__tmp114007
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114007 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __core-form::t
         '()
         __tmp114006
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109312_
        (apply make-struct-instance __core-expression::t _$args109312_)))
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
      (let ((__tmp114008
             (let ((__tmp114009
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114009 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __core-form::t
         '()
         __tmp114008
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109309_
        (apply make-struct-instance __core-special-form::t _$args109309_)))
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
      (let ((__tmp114010
             (let ((__tmp114011
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114011 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __syntax::t
         '()
         __tmp114010
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109306_
        (apply make-struct-instance __struct-info::t _$args109306_)))
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
      (let ((__tmp114012
             (let ((__tmp114013
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114013 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __syntax::t
         '()
         __tmp114012
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109303_
        (apply make-struct-instance __feature::t _$args109303_)))
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
      (let ((__tmp114014
             (let ((__tmp114015
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114015 '()))))
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         '__module
         __context::t
         '(id path import export)
         __tmp114014
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args109300_
        (apply make-struct-instance __module::t _$args109300_)))
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
      (let ((__tmp114017
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp114016
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp114017 __tmp114016)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id109275_ _ctx109276_)
        (if _ctx109276_
            (let ((_id109278_
                   (let () (declare (not safe)) (__AST-e _id109275_))))
              (let _lp109280_ ((_ctx109282_ _ctx109276_))
                (let ((_$e109284_
                       (table-ref
                        (##structure-ref _ctx109282_ '4 __context::t '#f)
                        _id109278_
                        '#f)))
                  (if _$e109284_
                      (values _$e109284_)
                      (let ((_$e109287_
                             (##structure-ref
                              _ctx109282_
                              '3
                              __context::t
                              '#f)))
                        (if _$e109287_
                            (let ()
                              (declare (not safe))
                              (_lp109280_ _$e109287_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109293_)
        (let ((_ctx109295_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109293_ _ctx109295_))))
    (define __core-resolve
      (lambda _g114019_
        (let ((_g114018_ (let () (declare (not safe)) (##length _g114019_))))
          (cond ((let () (declare (not safe)) (##fx= _g114018_ 1))
                 (apply (lambda (_id109293_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109293_)))
                        _g114019_))
                ((let () (declare (not safe)) (##fx= _g114018_ 2))
                 (apply (lambda (_id109297_ _ctx109298_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109297_ _ctx109298_)))
                        _g114019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g114019_))))))
    (define __core-bound-id?__%
      (lambda (_id109258_ _is?109259_)
        (let ((_$e109261_
               (let () (declare (not safe)) (__core-resolve__0 _id109258_))))
          (if _$e109261_ (_is?109259_ _$e109261_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id109267_)
        (let ((_is?109269_ true))
          (declare (not safe))
          (__core-bound-id?__% _id109267_ _is?109269_))))
    (define __core-bound-id?
      (lambda _g114021_
        (let ((_g114020_ (let () (declare (not safe)) (##length _g114021_))))
          (cond ((let () (declare (not safe)) (##fx= _g114020_ 1))
                 (apply (lambda (_id109267_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id109267_)))
                        _g114021_))
                ((let () (declare (not safe)) (##fx= _g114020_ 2))
                 (apply (lambda (_id109271_ _is?109272_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id109271_ _is?109272_)))
                        _g114021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g114021_))))))
    (define __core-bind-runtime!__%
      (lambda (_id109241_ _eid109242_ _ctx109243_)
        (if _eid109242_
            (let ((__tmp114024
                   (##structure-ref _ctx109243_ '4 __context::t '#f))
                  (__tmp114023
                   (let () (declare (not safe)) (__AST-e _id109241_)))
                  (__tmp114022
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid109242_))))
              (declare (not safe))
              (table-set! __tmp114024 __tmp114023 __tmp114022))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id109248_ _eid109249_)
        (let ((_ctx109251_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id109248_ _eid109249_ _ctx109251_))))
    (define __core-bind-runtime!
      (lambda _g114026_
        (let ((_g114025_ (let () (declare (not safe)) (##length _g114026_))))
          (cond ((let () (declare (not safe)) (##fx= _g114025_ 2))
                 (apply (lambda (_id109248_ _eid109249_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id109248_ _eid109249_)))
                        _g114026_))
                ((let () (declare (not safe)) (##fx= _g114025_ 3))
                 (apply (lambda (_id109253_ _eid109254_ _ctx109255_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id109253_
                             _eid109254_
                             _ctx109255_)))
                        _g114026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g114026_))))))
    (define __core-bind-syntax!__%
      (lambda (_id109224_ _e109225_ _make109226_)
        (let ((__tmp114027
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109225_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109225_
                   (_make109226_ _e109225_ _id109224_))))
          (declare (not safe))
          (table-set! __*core* _id109224_ __tmp114027))))
    (define __core-bind-syntax!__0
      (lambda (_id109231_ _e109232_)
        (let ((_make109234_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id109231_ _e109232_ _make109234_))))
    (define __core-bind-syntax!
      (lambda _g114029_
        (let ((_g114028_ (let () (declare (not safe)) (##length _g114029_))))
          (cond ((let () (declare (not safe)) (##fx= _g114028_ 2))
                 (apply (lambda (_id109231_ _e109232_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id109231_ _e109232_)))
                        _g114029_))
                ((let () (declare (not safe)) (##fx= _g114028_ 3))
                 (apply (lambda (_id109236_ _e109237_ _make109238_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id109236_
                             _e109237_
                             _make109238_)))
                        _g114029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g114029_))))))
    (define __core-bind-macro!
      (lambda (_id109220_ _e109221_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109220_ _e109221_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id109217_ _e109218_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id109217_ _e109218_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id109201_ _e109202_ _ctx109203_)
        (let ((__tmp114033 (##structure-ref _ctx109203_ '4 __context::t '#f))
              (__tmp114032 (let () (declare (not safe)) (__AST-e _id109201_)))
              (__tmp114030
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e109202_
                      'gerbil/runtime/eval#__syntax::t))
                   _e109202_
                   (let ((__tmp114031
                          (let () (declare (not safe)) (__AST-e _id109201_))))
                     (declare (not safe))
                     (##structure __syntax::t _e109202_ __tmp114031)))))
          (declare (not safe))
          (table-set! __tmp114033 __tmp114032 __tmp114030))))
    (define __core-bind-user-syntax!__0
      (lambda (_id109208_ _e109209_)
        (let ((_ctx109211_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id109208_ _e109209_ _ctx109211_))))
    (define __core-bind-user-syntax!
      (lambda _g114035_
        (let ((_g114034_ (let () (declare (not safe)) (##length _g114035_))))
          (cond ((let () (declare (not safe)) (##fx= _g114034_ 2))
                 (apply (lambda (_id109208_ _e109209_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id109208_
                             _e109209_)))
                        _g114035_))
                ((let () (declare (not safe)) (##fx= _g114034_ 3))
                 (apply (lambda (_id109213_ _e109214_ _ctx109215_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id109213_
                             _e109214_
                             _ctx109215_)))
                        _g114035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g114035_))))))
    (define make-__runtime-id__%
      (lambda (_id109182_ _ctx109183_)
        (let ((_id109185_ (let () (declare (not safe)) (__AST-e _id109182_))))
          (if (let () (declare (not safe)) (eq? _id109185_ '_))
              '#f
              (if (uninterned-symbol? _id109185_)
                  (gensym _id109185_)
                  (if (let () (declare (not safe)) (symbol? _id109185_))
                      (let ((_$e109187_
                             (##structure-ref
                              _ctx109183_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e109187_))
                            (gensym _id109185_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e109187_))
                                (let ((__tmp114036
                                       (##structure-ref
                                        _ctx109183_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp114036 '"#" _id109185_))
                                _id109185_)))
                      (error '"Illegal runtime identifier" _id109185_)))))))
    (define make-__runtime-id__0
      (lambda (_id109193_)
        (let ((_ctx109195_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id109193_ _ctx109195_))))
    (define make-__runtime-id
      (lambda _g114038_
        (let ((_g114037_ (let () (declare (not safe)) (##length _g114038_))))
          (cond ((let () (declare (not safe)) (##fx= _g114037_ 1))
                 (apply (lambda (_id109193_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id109193_)))
                        _g114038_))
                ((let () (declare (not safe)) (##fx= _g114037_ 2))
                 (apply (lambda (_id109197_ _ctx109198_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id109197_ _ctx109198_)))
                        _g114038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g114038_))))))
    (define make-__context-local__%
      (lambda (_super109171_)
        (let ((__tmp114039
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super109171_ __tmp114039))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super109177_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super109177_))))
    (define make-__context-local
      (lambda _g114041_
        (let ((_g114040_ (let () (declare (not safe)) (##length _g114041_))))
          (cond ((let () (declare (not safe)) (##fx= _g114040_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g114041_))
                ((let () (declare (not safe)) (##fx= _g114040_ 1))
                 (apply (lambda (_super109179_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super109179_)))
                        _g114041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g114041_))))))
    (define make-__context-module__%
      (lambda (_id109151_ _ns109152_ _path109153_ _super109154_)
        (let ((__tmp114042
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns109152_
           _super109154_
           __tmp114042
           _id109151_
           _path109153_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id109159_ _ns109160_ _path109161_)
        (let ((_super109163_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id109159_
           _ns109160_
           _path109161_
           _super109163_))))
    (define make-__context-module
      (lambda _g114044_
        (let ((_g114043_ (let () (declare (not safe)) (##length _g114044_))))
          (cond ((let () (declare (not safe)) (##fx= _g114043_ 3))
                 (apply (lambda (_id109159_ _ns109160_ _path109161_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id109159_
                             _ns109160_
                             _path109161_)))
                        _g114044_))
                ((let () (declare (not safe)) (##fx= _g114043_ 4))
                 (apply (lambda (_id109165_
                                 _ns109166_
                                 _path109167_
                                 _super109168_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id109165_
                             _ns109166_
                             _path109167_
                             _super109168_)))
                        _g114044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g114044_))))))
    (define __SRC__%
      (lambda (_e109134_ _src-stx109135_)
        (if (or (let () (declare (not safe)) (pair? _e109134_))
                (let () (declare (not safe)) (symbol? _e109134_)))
            (let ((__tmp114048
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx109135_
                          'gerbil#AST::t))
                       (let ((__tmp114049
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx109135_))))
                         (declare (not safe))
                         (__locat __tmp114049))
                       '#f)))
              (declare (not safe))
              (##make-source _e109134_ __tmp114048))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e109134_ 'gerbil#AST::t))
                (let ((__tmp114047
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e109134_ '1 AST::t '#f)))
                      (__tmp114045
                       (let ((__tmp114046
                              (let ()
                                (declare (not safe))
                                (__AST-source _e109134_))))
                         (declare (not safe))
                         (__locat __tmp114046))))
                  (declare (not safe))
                  (##make-source __tmp114047 __tmp114045))
                (error '"BUG! Cannot sourcify object" _e109134_)))))
    (define __SRC__0
      (lambda (_e109143_)
        (let ((_src-stx109145_ '#f))
          (declare (not safe))
          (__SRC__% _e109143_ _src-stx109145_))))
    (define __SRC
      (lambda _g114051_
        (let ((_g114050_ (let () (declare (not safe)) (##length _g114051_))))
          (cond ((let () (declare (not safe)) (##fx= _g114050_ 1))
                 (apply (lambda (_e109143_)
                          (let () (declare (not safe)) (__SRC__0 _e109143_)))
                        _g114051_))
                ((let () (declare (not safe)) (##fx= _g114050_ 2))
                 (apply (lambda (_e109147_ _src-stx109148_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e109147_ _src-stx109148_)))
                        _g114051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g114051_))))))
    (define __locat
      (lambda (_loc109131_)
        (if (let () (declare (not safe)) (##locat? _loc109131_))
            _loc109131_
            '#f)))
    (define __check-values
      (lambda (_obj109126_ _k109127_)
        (let ((_count109129_
               (if (let () (declare (not safe)) (##values? _obj109126_))
                   (let () (declare (not safe)) (##vector-length _obj109126_))
                   '1)))
          (if (fx= _count109129_ _k109127_)
              '#!void
              (error (if (fx< _count109129_ _k109127_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj109126_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj109126_))
                         _obj109126_)
                     _k109127_)))))
    (define __compile
      (lambda (_stx109096_)
        (let* ((_$e109098_ _stx109096_)
               (_$E109100109106_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109098_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109098_))
              (let* ((_$tgt109101109109_
                      (let () (declare (not safe)) (__AST-e _$e109098_)))
                     (_$hd109102109112_
                      (let () (declare (not safe)) (##car _$tgt109101109109_)))
                     (_$tl109103109115_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109101109109_))))
                (let* ((_form109119_ _$hd109102109112_)
                       (_$e109121_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form109119_))))
                  (if _$e109121_
                      ((lambda (_bind109124_)
                         ((##structure-ref _bind109124_ '1 __syntax::t '#f)
                          _stx109096_))
                       _$e109121_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx109096_
                         _form109119_)))))
              (let () (declare (not safe)) (_$E109100109106_))))))
    (define __compile-error__%
      (lambda (_stx109083_ _detail109084_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx109083_
           _detail109084_))))
    (define __compile-error__0
      (lambda (_stx109089_)
        (let ((_detail109091_ '#f))
          (declare (not safe))
          (__compile-error__% _stx109089_ _detail109091_))))
    (define __compile-error
      (lambda _g114053_
        (let ((_g114052_ (let () (declare (not safe)) (##length _g114053_))))
          (cond ((let () (declare (not safe)) (##fx= _g114052_ 1))
                 (apply (lambda (_stx109089_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx109089_)))
                        _g114053_))
                ((let () (declare (not safe)) (##fx= _g114052_ 2))
                 (apply (lambda (_stx109093_ _detail109094_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx109093_ _detail109094_)))
                        _g114053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g114053_))))))
    (define __compile-ignore%
      (lambda (_stx109080_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx109080_))))
    (define __compile-begin%
      (lambda (_stx109055_)
        (let* ((_$e109057_ _stx109055_)
               (_$E109059109065_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109057_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109057_))
              (let* ((_$tgt109060109068_
                      (let () (declare (not safe)) (__AST-e _$e109057_)))
                     (_$hd109061109071_
                      (let () (declare (not safe)) (##car _$tgt109060109068_)))
                     (_$tl109062109074_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109060109068_))))
                (let* ((_body109078_ _$tl109062109074_)
                       (__tmp114054
                        (let ((__tmp114055 (map __compile _body109078_)))
                          (declare (not safe))
                          (cons 'begin __tmp114055))))
                  (declare (not safe))
                  (__SRC__% __tmp114054 _stx109055_)))
              (let () (declare (not safe)) (_$E109059109065_))))))
    (define __compile-begin-foreign%
      (lambda (_stx109030_)
        (let* ((_$e109032_ _stx109030_)
               (_$E109034109040_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109032_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109032_))
              (let* ((_$tgt109035109043_
                      (let () (declare (not safe)) (__AST-e _$e109032_)))
                     (_$hd109036109046_
                      (let () (declare (not safe)) (##car _$tgt109035109043_)))
                     (_$tl109037109049_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109035109043_))))
                (let* ((_body109053_ _$tl109037109049_)
                       (__tmp114056
                        (let ((__tmp114057
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body109053_))))
                          (declare (not safe))
                          (cons 'begin __tmp114057))))
                  (declare (not safe))
                  (__SRC__% __tmp114056 _stx109030_)))
              (let () (declare (not safe)) (_$E109034109040_))))))
    (define __compile-import%
      (lambda (_stx109005_)
        (let* ((_$e109007_ _stx109005_)
               (_$E109009109015_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e109007_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e109007_))
              (let* ((_$tgt109010109018_
                      (let () (declare (not safe)) (__AST-e _$e109007_)))
                     (_$hd109011109021_
                      (let () (declare (not safe)) (##car _$tgt109010109018_)))
                     (_$tl109012109024_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt109010109018_))))
                (let* ((_body109028_ _$tl109012109024_)
                       (__tmp114058
                        (let ((__tmp114059
                               (let ((__tmp114060
                                      (let ((__tmp114061
                                             (let ()
                                               (declare (not safe))
                                               (cons _body109028_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp114061))))
                                 (declare (not safe))
                                 (cons __tmp114060 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp114059))))
                  (declare (not safe))
                  (__SRC__% __tmp114058 _stx109005_)))
              (let () (declare (not safe)) (_$E109009109015_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108952_)
        (let* ((_$e108954_ _stx108952_)
               (_$E108956108968_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108954_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108954_))
              (let* ((_$tgt108957108971_
                      (let () (declare (not safe)) (__AST-e _$e108954_)))
                     (_$hd108958108974_
                      (let () (declare (not safe)) (##car _$tgt108957108971_)))
                     (_$tl108959108977_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108957108971_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108959108977_))
                    (let* ((_$tgt108960108981_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108959108977_)))
                           (_$hd108961108984_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108960108981_)))
                           (_$tl108962108987_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108960108981_))))
                      (let ((_ann108991_ _$hd108961108984_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108962108987_))
                            (let* ((_$tgt108963108993_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108962108987_)))
                                   (_$hd108964108996_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108963108993_)))
                                   (_$tl108965108999_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108963108993_))))
                              (let ((_expr109003_ _$hd108964108996_))
                                (if (let ((__tmp114062
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108965108999_))))
                                      (declare (not safe))
                                      (equal? __tmp114062 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr109003_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108956108968_)))))
                            (let () (declare (not safe)) (_$E108956108968_)))))
                    (let () (declare (not safe)) (_$E108956108968_))))
              (let () (declare (not safe)) (_$E108956108968_))))))
    (define __compile-define-values%
      (lambda (_stx108843_)
        (let* ((_$e108845_ _stx108843_)
               (_$E108847108859_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108845_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108845_))
              (let* ((_$tgt108848108862_
                      (let () (declare (not safe)) (__AST-e _$e108845_)))
                     (_$hd108849108865_
                      (let () (declare (not safe)) (##car _$tgt108848108862_)))
                     (_$tl108850108868_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108848108862_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108850108868_))
                    (let* ((_$tgt108851108872_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108850108868_)))
                           (_$hd108852108875_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108851108872_)))
                           (_$tl108853108878_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108851108872_))))
                      (let ((_hd108882_ _$hd108852108875_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108853108878_))
                            (let* ((_$tgt108854108884_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108853108878_)))
                                   (_$hd108855108887_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108854108884_)))
                                   (_$tl108856108890_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108854108884_))))
                              (let ((_expr108894_ _$hd108855108887_))
                                (if (let ((__tmp114095
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108856108890_))))
                                      (declare (not safe))
                                      (equal? __tmp114095 '()))
                                    (let* ((_$e108896_ _hd108882_)
                                           (_$E108898108939_
                                            (lambda ()
                                              (let ((_$E108899108924_
                                                     (lambda ()
                                                       (let* ((_$E108900108911_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108896_))))
                      (_ids108914_ _hd108882_)
                      (_len108916_ (length _ids108914_))
                      (_tmp108918_
                       (let ((__tmp114063 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp114063))))
                 (let ((__tmp114064
                        (let ((__tmp114065
                               (let ((__tmp114082
                                      (let ((__tmp114083
                                             (let ((__tmp114084
                                                    (let ((__tmp114085
                                                           (let ((__tmp114086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108894_))))
                     (declare (not safe))
                     (cons __tmp114086 '()))))
              (declare (not safe))
              (cons _tmp108918_ __tmp114085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp114084))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114083 _stx108843_)))
                                     (__tmp114066
                                      (let ((__tmp114078
                                             (let ((__tmp114079
                                                    (let ((__tmp114080
                                                           (let ((__tmp114081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108916_ '()))))
                     (declare (not safe))
                     (cons _tmp108918_ __tmp114081))))
              (declare (not safe))
              (cons '__check-values __tmp114080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp114079
                                                _stx108843_)))
                                            (__tmp114067
                                             (let ((__tmp114068
                                                    (let ((__tmp114070
                                                           (lambda (_id108921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108922_)
                     (if (let () (declare (not safe)) (__AST-e _id108921_))
                         (let ((__tmp114071
                                (let ((__tmp114072
                                       (let ((__tmp114077
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108921_)))
                                             (__tmp114073
                                              (let ((__tmp114074
                                                     (let ((__tmp114075
                                                            (let ((__tmp114076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108922_ '()))))
                      (declare (not safe))
                      (cons _tmp108918_ __tmp114076))))
               (declare (not safe))
               (cons '##vector-ref __tmp114075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114074 '()))))
                                         (declare (not safe))
                                         (cons __tmp114077 __tmp114073))))
                                  (declare (not safe))
                                  (cons 'define __tmp114072))))
                           (declare (not safe))
                           (__SRC__% __tmp114071 _stx108843_))
                         '#f)))
                  (__tmp114069
                   (let () (declare (not safe)) (iota _len108916_))))
              (declare (not safe))
              (filter-map2 __tmp114070 _ids108914_ __tmp114069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp114068))))
                                        (declare (not safe))
                                        (cons __tmp114078 __tmp114067))))
                                 (declare (not safe))
                                 (cons __tmp114082 __tmp114066))))
                          (declare (not safe))
                          (cons 'begin __tmp114065))))
                   (declare (not safe))
                   (__SRC__% __tmp114064 _stx108843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108896_))
                                                    (let* ((_$tgt108901108927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108896_)))
                                                           (_$hd108902108930_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108901108927_)))
                                                           (_$tl108903108933_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108901108927_))))
                                                      (let ((_id108937_
                                                             _$hd108902108930_))
                                                        (if (let ((__tmp114092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108903108933_))))
                      (declare (not safe))
                      (equal? __tmp114092 '()))
                    (let ((__tmp114087
                           (let ((__tmp114088
                                  (let ((__tmp114091
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108937_)))
                                        (__tmp114089
                                         (let ((__tmp114090
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108894_))))
                                           (declare (not safe))
                                           (cons __tmp114090 '()))))
                                    (declare (not safe))
                                    (cons __tmp114091 __tmp114089))))
                             (declare (not safe))
                             (cons 'define __tmp114088))))
                      (declare (not safe))
                      (__SRC__% __tmp114087 _stx108843_))
                    (let () (declare (not safe)) (_$E108899108924_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108899108924_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108896_))
                                          (let* ((_$tgt108904108942_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108896_)))
                                                 (_$hd108905108945_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108904108942_)))
                                                 (_$tl108906108948_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108904108942_))))
                                            (if (let ((__tmp114094
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108905108945_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114094 '#f))
                                                (if (let ((__tmp114093
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108906108948_))))
                                                      (declare (not safe))
                                                      (equal? __tmp114093 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108894_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108898108939_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108898108939_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108898108939_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108847108859_)))))
                            (let () (declare (not safe)) (_$E108847108859_)))))
                    (let () (declare (not safe)) (_$E108847108859_))))
              (let () (declare (not safe)) (_$E108847108859_))))))
    (define __compile-head-id
      (lambda (_e108841_)
        (let ((__tmp114096
               (if (let () (declare (not safe)) (__AST-e _e108841_))
                   _e108841_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp114096))))
    (define __compile-lambda-head
      (lambda (_hd108798_)
        (let _recur108800_ ((_rest108802_ _hd108798_))
          (let* ((_$e108804_ _rest108802_)
                 (_$E108806108824_
                  (lambda ()
                    (let ((_$E108807108821_
                           (lambda ()
                             (let* ((_$E108808108816_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108804_))))
                                    (_tail108819_ _$e108804_))
                               (declare (not safe))
                               (__compile-head-id _tail108819_)))))
                      (if (let ((__tmp114097
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108804_))))
                            (declare (not safe))
                            (equal? __tmp114097 '()))
                          '()
                          (let () (declare (not safe)) (_$E108807108821_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108804_))
                (let* ((_$tgt108809108827_
                        (let () (declare (not safe)) (__AST-e _$e108804_)))
                       (_$hd108810108830_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108809108827_)))
                       (_$tl108811108833_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108809108827_))))
                  (let* ((_hd108837_ _$hd108810108830_)
                         (_rest108839_ _$tl108811108833_))
                    (let ((__tmp114099
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108837_)))
                          (__tmp114098
                           (let ()
                             (declare (not safe))
                             (_recur108800_ _rest108839_))))
                      (declare (not safe))
                      (cons __tmp114099 __tmp114098))))
                (let () (declare (not safe)) (_$E108806108824_)))))))
    (define __compile-lambda%
      (lambda (_stx108745_)
        (let* ((_$e108747_ _stx108745_)
               (_$E108749108761_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108747_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108747_))
              (let* ((_$tgt108750108764_
                      (let () (declare (not safe)) (__AST-e _$e108747_)))
                     (_$hd108751108767_
                      (let () (declare (not safe)) (##car _$tgt108750108764_)))
                     (_$tl108752108770_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108750108764_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108752108770_))
                    (let* ((_$tgt108753108774_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108752108770_)))
                           (_$hd108754108777_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108753108774_)))
                           (_$tl108755108780_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108753108774_))))
                      (let ((_hd108784_ _$hd108754108777_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108755108780_))
                            (let* ((_$tgt108756108786_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108755108780_)))
                                   (_$hd108757108789_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108756108786_)))
                                   (_$tl108758108792_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108756108786_))))
                              (let ((_body108796_ _$hd108757108789_))
                                (if (let ((__tmp114105
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108758108792_))))
                                      (declare (not safe))
                                      (equal? __tmp114105 '()))
                                    (let ((__tmp114100
                                           (let ((__tmp114101
                                                  (let ((__tmp114104
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108784_)))
                                                        (__tmp114102
                                                         (let ((__tmp114103
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108796_))))
                   (declare (not safe))
                   (cons __tmp114103 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114104
                                                          __tmp114102))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp114101))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114100 _stx108745_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108749108761_)))))
                            (let () (declare (not safe)) (_$E108749108761_)))))
                    (let () (declare (not safe)) (_$E108749108761_))))
              (let () (declare (not safe)) (_$E108749108761_))))))
    (define __compile-case-lambda%
      (lambda (_stx108537_)
        (letrec ((_variadic?108539_
                  (lambda (_hd108710_)
                    (let* ((_$e108712_ _hd108710_)
                           (_$E108714108730_
                            (lambda ()
                              (let ((_$E108715108727_
                                     (lambda ()
                                       (let ((_$E108716108724_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108712_)))))
                                         '#t))))
                                (if (let ((__tmp114106
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108712_))))
                                      (declare (not safe))
                                      (equal? __tmp114106 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108715108727_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108712_))
                          (let* ((_$tgt108717108733_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108712_)))
                                 (_$hd108718108736_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108717108733_)))
                                 (_$tl108719108739_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108717108733_))))
                            (let ((_rest108743_ _$tl108719108739_))
                              (declare (not safe))
                              (_variadic?108539_ _rest108743_)))
                          (let () (declare (not safe)) (_$E108714108730_))))))
                 (_arity108540_
                  (lambda (_hd108675_)
                    (let _lp108677_ ((_rest108679_ _hd108675_) (_k108680_ '0))
                      (let* ((_$e108682_ _rest108679_)
                             (_$E108684108695_
                              (lambda ()
                                (let ((_$E108685108692_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108682_)))))
                                  _k108680_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108682_))
                            (let* ((_$tgt108686108698_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108682_)))
                                   (_$hd108687108701_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108686108698_)))
                                   (_$tl108688108704_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108686108698_))))
                              (let* ((_rest108708_ _$tl108688108704_)
                                     (__tmp114107
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108680_ '1))))
                                (declare (not safe))
                                (_lp108677_ _rest108708_ __tmp114107)))
                            (let ()
                              (declare (not safe))
                              (_$E108684108695_)))))))
                 (_generate108541_
                  (lambda (_rest108602_ _args108603_ _len108604_)
                    (let* ((_$e108606_ _rest108602_)
                           (_$E108608108619_
                            (lambda ()
                              (let* ((_$E108609108616_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108606_))))
                                     (__tmp114108
                                      (let ((__tmp114109
                                             (let ((__tmp114110
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108603_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp114110))))
                                        (declare (not safe))
                                        (cons 'error __tmp114109))))
                                (declare (not safe))
                                (__SRC__% __tmp114108 _stx108537_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108606_))
                          (let* ((_$tgt108610108622_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108606_)))
                                 (_$hd108611108625_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108610108622_)))
                                 (_$tl108612108628_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108610108622_))))
                            (let* ((_clause108632_ _$hd108611108625_)
                                   (_rest108634_ _$tl108612108628_)
                                   (_$e108636_ _clause108632_)
                                   (_$E108638108647_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108636_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108636_))
                                  (let* ((_$tgt108639108650_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108636_)))
                                         (_$hd108640108653_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108639108650_)))
                                         (_$tl108641108656_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108639108650_))))
                                    (let ((_hd108660_ _$hd108640108653_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108641108656_))
                                          (let* ((_$tgt108642108662_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108641108656_)))
                                                 (_$hd108643108665_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108642108662_)))
                                                 (_$tl108644108668_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108642108662_))))
                                            (if (let ((__tmp114125
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108644108668_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114125 '()))
                                                (let ((_clen108672_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108540_
                                                          _hd108660_)))
                                                      (_cmp108673_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108539_
                                                              _hd108660_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp114111
                                                         (let ((__tmp114112
                                                                (let ((__tmp114122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114123
                                      (let ((__tmp114124
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108672_ '()))))
                                        (declare (not safe))
                                        (cons _len108604_ __tmp114124))))
                                 (declare (not safe))
                                 (cons _cmp108673_ __tmp114123)))
                              (__tmp114113
                               (let ((__tmp114116
                                      (let ((__tmp114117
                                             (let ((__tmp114118
                                                    (let ((__tmp114120
                                                           (let ((__tmp114121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108632_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp114121)))
                  (__tmp114119
                   (let () (declare (not safe)) (cons _args108603_ '()))))
              (declare (not safe))
              (cons __tmp114120 __tmp114119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp114118))))
                                        (declare (not safe))
                                        (__SRC__% __tmp114117 _stx108537_)))
                                     (__tmp114114
                                      (let ((__tmp114115
                                             (let ()
                                               (declare (not safe))
                                               (_generate108541_
                                                _rest108634_
                                                _args108603_
                                                _len108604_))))
                                        (declare (not safe))
                                        (cons __tmp114115 '()))))
                                 (declare (not safe))
                                 (cons __tmp114116 __tmp114114))))
                          (declare (not safe))
                          (cons __tmp114122 __tmp114113))))
                   (declare (not safe))
                   (cons 'if __tmp114112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp114111
                                                     _stx108537_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108638108647_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108638108647_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108638108647_)))))
                          (let () (declare (not safe)) (_$E108608108619_)))))))
          (let* ((_$e108543_ _stx108537_)
                 (_$E108545108577_
                  (lambda ()
                    (let ((_$E108546108559_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108543_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108543_))
                          (let* ((_$tgt108547108562_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108543_)))
                                 (_$hd108548108565_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108547108562_)))
                                 (_$tl108549108568_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108547108562_))))
                            (let ((_clauses108572_ _$tl108549108568_))
                              (let ((_args108574_
                                     (let ((__tmp114126 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114126 _stx108537_)))
                                    (_len108575_
                                     (let ((__tmp114127 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp114127 _stx108537_))))
                                (let ((__tmp114128
                                       (let ((__tmp114129
                                              (let ((__tmp114130
                                                     (let ((__tmp114131
                                                            (let ((__tmp114132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114133
                                  (let ((__tmp114136
                                         (let ((__tmp114137
                                                (let ((__tmp114138
                                                       (let ((__tmp114139
                                                              (let ((__tmp114140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114141
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108574_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp114141))))
                        (declare (not safe))
                        (__SRC__% __tmp114140 _stx108537_))))
                 (declare (not safe))
                 (cons __tmp114139 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108575_
                                                        __tmp114138))))
                                           (declare (not safe))
                                           (cons __tmp114137 '())))
                                        (__tmp114134
                                         (let ((__tmp114135
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108541_
                                                   _clauses108572_
                                                   _args108574_
                                                   _len108575_))))
                                           (declare (not safe))
                                           (cons __tmp114135 '()))))
                                    (declare (not safe))
                                    (cons __tmp114136 __tmp114134))))
                             (declare (not safe))
                             (cons 'let __tmp114133))))
                      (declare (not safe))
                      (__SRC__% __tmp114132 _stx108537_))))
               (declare (not safe))
               (cons __tmp114131 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108574_
                                                      __tmp114130))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp114129))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114128 _stx108537_)))))
                          (let () (declare (not safe)) (_$E108546108559_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108543_))
                (let* ((_$tgt108550108580_
                        (let () (declare (not safe)) (__AST-e _$e108543_)))
                       (_$hd108551108583_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108550108580_)))
                       (_$tl108552108586_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108550108580_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108552108586_))
                      (let* ((_$tgt108553108590_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108552108586_)))
                             (_$hd108554108593_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108553108590_)))
                             (_$tl108555108596_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108553108590_))))
                        (let ((_clause108600_ _$hd108554108593_))
                          (if (let ((__tmp114143
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108555108596_))))
                                (declare (not safe))
                                (equal? __tmp114143 '()))
                              (let ((__tmp114142
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108600_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp114142))
                              (let ()
                                (declare (not safe))
                                (_$E108545108577_)))))
                      (let () (declare (not safe)) (_$E108545108577_))))
                (let () (declare (not safe)) (_$E108545108577_)))))))
    (define __compile-let-form
      (lambda (_stx108306_ _compile-simple108307_ _compile-values108308_)
        (letrec ((_simple-bind?108310_
                  (lambda (_hd108495_)
                    (let* ((_hd108496108506_ _hd108495_)
                           (_else108499108514_ (lambda () '#f)))
                      (let ((_K108502108527_ (lambda (_id108525_) '#t))
                            (_K108501108519_ (lambda () '#t)))
                        (let ((_try-match108498108522_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108496108506_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108501108519_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108499108514_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108496108506_))
                              (let ((_tl108504108532_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108496108506_)))
                                    (_hd108503108530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108496108506_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108504108532_))
                                    (let ((_id108535_ _hd108503108530_))
                                      (declare (not safe))
                                      (_K108502108527_ _id108535_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108498108522_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108498108522_))))))))
                 (_car-e108311_
                  (lambda (_hd108493_)
                    (if (let () (declare (not safe)) (pair? _hd108493_))
                        (car _hd108493_)
                        _hd108493_))))
          (let* ((_$e108313_ _stx108306_)
                 (_$E108315108458_
                  (lambda ()
                    (let ((_$E108316108338_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108313_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108313_))
                          (let* ((_$tgt108317108341_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108313_)))
                                 (_$hd108318108344_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108317108341_)))
                                 (_$tl108319108347_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108317108341_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108319108347_))
                                (let* ((_$tgt108320108351_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108319108347_)))
                                       (_$hd108321108354_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108320108351_)))
                                       (_$tl108322108357_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108320108351_))))
                                  (let ((_hd108361_ _$hd108321108354_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108322108357_))
                                        (let* ((_$tgt108323108363_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108322108357_)))
                                               (_$hd108324108366_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108323108363_)))
                                               (_$tl108325108369_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108323108363_))))
                                          (let ((_body108373_
                                                 _$hd108324108366_))
                                            (if (let ((__tmp114146
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108325108369_))))
                                                  (declare (not safe))
                                                  (equal? __tmp114146 '()))
                                                (let* ((_hd-ids108413_
                                                        (map (lambda (_bind108375_)
                                                               (let* ((_$e108377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108375_)
                              (_$E108379108388_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108377_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108377_))
                             (let* ((_$tgt108380108391_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108377_)))
                                    (_$hd108381108394_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108380108391_)))
                                    (_$tl108382108397_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108380108391_))))
                               (let ((_ids108401_ _$hd108381108394_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108382108397_))
                                     (let* ((_$tgt108383108403_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108382108397_)))
                                            (_$hd108384108406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108383108403_)))
                                            (_$tl108385108409_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108383108403_))))
                                       (if (let ((__tmp114144
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108385108409_))))
                                             (declare (not safe))
                                             (equal? __tmp114144 '()))
                                           _ids108401_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108379108388_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108379108388_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108379108388_)))))
                     _hd108361_))
               (_exprs108453_
                (map (lambda (_bind108415_)
                       (let* ((_$e108417_ _bind108415_)
                              (_$E108419108428_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108417_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108417_))
                             (let* ((_$tgt108420108431_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108417_)))
                                    (_$hd108421108434_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108420108431_)))
                                    (_$tl108422108437_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108420108431_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108422108437_))
                                   (let* ((_$tgt108423108441_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108422108437_)))
                                          (_$hd108424108444_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108423108441_)))
                                          (_$tl108425108447_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108423108441_))))
                                     (let ((_expr108451_ _$hd108424108444_))
                                       (if (let ((__tmp114145
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108425108447_))))
                                             (declare (not safe))
                                             (equal? __tmp114145 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108451_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108419108428_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108419108428_))))
                             (let ()
                               (declare (not safe))
                               (_$E108419108428_)))))
                     _hd108361_))
               (_body108455_
                (let () (declare (not safe)) (__compile _body108373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108413_))
              (_compile-simple108307_
               (map _car-e108311_ _hd-ids108413_)
               _exprs108453_
               _body108455_)
              (_compile-values108308_
               _hd-ids108413_
               _exprs108453_
               _body108455_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108316108338_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108316108338_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108316108338_))))
                          (let () (declare (not safe)) (_$E108316108338_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108313_))
                (let* ((_$tgt108326108461_
                        (let () (declare (not safe)) (__AST-e _$e108313_)))
                       (_$hd108327108464_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108326108461_)))
                       (_$tl108328108467_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108326108461_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108328108467_))
                      (let* ((_$tgt108329108471_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108328108467_)))
                             (_$hd108330108474_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108329108471_)))
                             (_$tl108331108477_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108329108471_))))
                        (if (let ((__tmp114148
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108330108474_))))
                              (declare (not safe))
                              (equal? __tmp114148 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108331108477_))
                                (let* ((_$tgt108332108481_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108331108477_)))
                                       (_$hd108333108484_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108332108481_)))
                                       (_$tl108334108487_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108332108481_))))
                                  (let ((_body108491_ _$hd108333108484_))
                                    (if (let ((__tmp114147
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108334108487_))))
                                          (declare (not safe))
                                          (equal? __tmp114147 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108491_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108315108458_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108315108458_)))
                            (let () (declare (not safe)) (_$E108315108458_))))
                      (let () (declare (not safe)) (_$E108315108458_))))
                (let () (declare (not safe)) (_$E108315108458_)))))))
    (define __compile-let-values%
      (lambda (_stx108121_)
        (letrec ((_compile-simple108123_
                  (lambda (_hd-ids108302_ _exprs108303_ _body108304_)
                    (let ((__tmp114149
                           (let ((__tmp114150
                                  (let ((__tmp114152
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108302_)
                                              _exprs108303_))
                                        (__tmp114151
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108304_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114152 __tmp114151))))
                             (declare (not safe))
                             (cons 'let __tmp114150))))
                      (declare (not safe))
                      (__SRC__% __tmp114149 _stx108121_))))
                 (_compile-values108124_
                  (lambda (_hd-ids108220_ _exprs108221_ _body108222_)
                    (let _lp108224_ ((_rest108226_ _hd-ids108220_)
                                     (_exprs108227_ _exprs108221_)
                                     (_bind108228_ '())
                                     (_post108229_ '()))
                      (let* ((_rest108230108244_ _rest108226_)
                             (_else108233108252_
                              (lambda ()
                                (let ((__tmp114153
                                       (let ((__tmp114154
                                              (let ((__tmp114157
                                                     (reverse _bind108228_))
                                                    (__tmp114155
                                                     (let ((__tmp114156
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post108125_
                                                               _post108229_
                                                               _body108222_))))
                                                       (declare (not safe))
                                                       (cons __tmp114156
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp114157
                                                      __tmp114155))))
                                         (declare (not safe))
                                         (cons 'let __tmp114154))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114153 _stx108121_)))))
                        (let ((_K108238108285_
                               (lambda (_rest108282_ _id108283_)
                                 (let ((__tmp114163 (cdr _exprs108227_))
                                       (__tmp114158
                                        (let ((__tmp114159
                                               (let ((__tmp114162
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108283_)))
                                                     (__tmp114160
                                                      (let ((__tmp114161
                                                             (car _exprs108227_)))
                                                        (declare (not safe))
                                                        (cons __tmp114161
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114162
                                                       __tmp114160))))
                                          (declare (not safe))
                                          (cons __tmp114159 _bind108228_))))
                                   (declare (not safe))
                                   (_lp108224_
                                    _rest108282_
                                    __tmp114163
                                    __tmp114158
                                    _post108229_))))
                              (_K108235108267_
                               (lambda (_rest108256_ _hd108257_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108257_))
                                     (let ((__tmp114184 (cdr _exprs108227_))
                                           (__tmp114177
                                            (let ((__tmp114178
                                                   (let ((__tmp114183
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108257_)))
                                                         (__tmp114179
                                                          (let ((__tmp114180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114181
                                (let ((__tmp114182 (car _exprs108227_)))
                                  (declare (not safe))
                                  (cons __tmp114182 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114181))))
                    (declare (not safe))
                    (cons __tmp114180 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114183
                                                           __tmp114179))))
                                              (declare (not safe))
                                              (cons __tmp114178
                                                    _bind108228_))))
                                       (declare (not safe))
                                       (_lp108224_
                                        _rest108256_
                                        __tmp114184
                                        __tmp114177
                                        _post108229_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108257_))
                                         (let* ((_len108259_
                                                 (length _hd108257_))
                                                (_tmp108261_
                                                 (let ((__tmp114164 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114164))))
                                           (let ((__tmp114176
                                                  (cdr _exprs108227_))
                                                 (__tmp114172
                                                  (let ((__tmp114173
                                                         (let ((__tmp114174
                                                                (let ((__tmp114175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108227_)))
                          (declare (not safe))
                          (cons __tmp114175 '()))))
                   (declare (not safe))
                   (cons _tmp108261_ __tmp114174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114173
                                                          _bind108228_)))
                                                 (__tmp114165
                                                  (let ((__tmp114166
                                                         (let ((__tmp114167
                                                                (let ((__tmp114168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114170
                                      (lambda (_id108264_ _k108265_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108264_))
                                            (let ((__tmp114171
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108264_))))
                                              (declare (not safe))
                                              (cons __tmp114171 _k108265_))
                                            '#f)))
                                     (__tmp114169
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108259_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114170
                                  _hd108257_
                                  __tmp114169))))
                          (declare (not safe))
                          (cons _len108259_ __tmp114168))))
                   (declare (not safe))
                   (cons _tmp108261_ __tmp114167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114166
                                                          _post108229_))))
                                             (declare (not safe))
                                             (_lp108224_
                                              _rest108256_
                                              __tmp114176
                                              __tmp114172
                                              __tmp114165)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx108121_
                                            _hd108257_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108230108244_))
                              (let ((_tl108240108290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108230108244_)))
                                    (_hd108239108288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108230108244_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108239108288_))
                                    (let ((_tl108242108295_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108239108288_)))
                                          (_hd108241108293_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108239108288_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108242108295_))
                                          (let ((_id108298_ _hd108241108293_)
                                                (_rest108300_
                                                 _tl108240108290_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108238108285_
                                               _rest108300_
                                               _id108298_)))
                                          (let ((_hd108275_ _hd108239108288_)
                                                (_rest108277_
                                                 _tl108240108290_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108235108267_
                                               _rest108277_
                                               _hd108275_)))))
                                    (let ((_hd108275_ _hd108239108288_)
                                          (_rest108277_ _tl108240108290_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108235108267_
                                         _rest108277_
                                         _hd108275_)))))
                              (let ()
                                (declare (not safe))
                                (_else108233108252_))))))))
                 (_compile-post108125_
                  (lambda (_post108127_ _body108128_)
                    (let _lp108130_ ((_rest108132_ _post108127_)
                                     (_check108133_ '())
                                     (_bind108134_ '()))
                      (let* ((_rest108135108147_ _rest108132_)
                             (_else108137108155_
                              (lambda ()
                                (let ((__tmp114185
                                       (let ((__tmp114186
                                              (let ((__tmp114187
                                                     (let ((__tmp114188
                                                            (let ((__tmp114189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114190
                                  (let ((__tmp114191
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108128_ '()))))
                                    (declare (not safe))
                                    (cons _bind108134_ __tmp114191))))
                             (declare (not safe))
                             (cons 'let __tmp114190))))
                      (declare (not safe))
                      (__SRC__% __tmp114189 _stx108121_))))
               (declare (not safe))
               (cons __tmp114188 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114187
                                                        _check108133_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114186))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114185 _stx108121_))))
                             (_K108139108194_
                              (lambda (_rest108158_
                                       _init108159_
                                       _len108160_
                                       _tmp108161_)
                                (let ((__tmp114199
                                       (let ((__tmp114200
                                              (let ((__tmp114201
                                                     (let ((__tmp114202
                                                            (let ((__tmp114203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len108160_ '()))))
                      (declare (not safe))
                      (cons _tmp108161_ __tmp114203))))
               (declare (not safe))
               (cons '__check-values __tmp114202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114201
                                                 _stx108121_))))
                                         (declare (not safe))
                                         (cons __tmp114200 _check108133_)))
                                      (__tmp114192
                                       (let ((__tmp114193
                                              (lambda (_hd108163_ _r108164_)
                                                (let* ((_hd108165108172_
                                                        _hd108163_)
                                                       (_E108167108176_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd108165108172_)))
               (_K108168108182_
                (lambda (_k108179_ _id108180_)
                  (let ((__tmp114194
                         (let ((__tmp114195
                                (let ((__tmp114196
                                       (let ((__tmp114197
                                              (let ((__tmp114198
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k108179_ '()))))
                                                (declare (not safe))
                                                (cons _tmp108161_
                                                      __tmp114198))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp114197))))
                                  (declare (not safe))
                                  (cons __tmp114196 '()))))
                           (declare (not safe))
                           (cons _id108180_ __tmp114195))))
                    (declare (not safe))
                    (cons __tmp114194 _r108164_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd108165108172_))
                                                      (let ((_hd108169108185_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd108165108172_)))
                    (_tl108170108187_
                     (let () (declare (not safe)) (##cdr _hd108165108172_))))
                (let* ((_id108190_ _hd108169108185_)
                       (_k108192_ _tl108170108187_))
                  (declare (not safe))
                  (_K108168108182_ _k108192_ _id108190_)))
              (let () (declare (not safe)) (_E108167108176_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114193
                                                 _bind108134_
                                                 _init108159_))))
                                  (declare (not safe))
                                  (_lp108130_
                                   _rest108158_
                                   __tmp114199
                                   __tmp114192)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108135108147_))
                            (let ((_hd108140108197_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108135108147_)))
                                  (_tl108141108199_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108135108147_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd108140108197_))
                                  (let ((_hd108142108202_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd108140108197_)))
                                        (_tl108143108204_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd108140108197_))))
                                    (let ((_tmp108207_ _hd108142108202_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108143108204_))
                                          (let ((_hd108144108209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl108143108204_)))
                                                (_tl108145108211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108143108204_))))
                                            (let* ((_len108214_
                                                    _hd108144108209_)
                                                   (_init108216_
                                                    _tl108145108211_)
                                                   (_rest108218_
                                                    _tl108141108199_))
                                              (declare (not safe))
                                              (_K108139108194_
                                               _rest108218_
                                               _init108216_
                                               _len108214_
                                               _tmp108207_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else108137108155_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else108137108155_))))
                            (let ()
                              (declare (not safe))
                              (_else108137108155_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx108121_
             _compile-simple108123_
             _compile-values108124_)))))
    (define __compile-letrec-values%
      (lambda (_stx107921_)
        (letrec ((_compile-simple107923_
                  (lambda (_hd-ids108117_ _exprs108118_ _body108119_)
                    (let ((__tmp114204
                           (let ((__tmp114205
                                  (let ((__tmp114207
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108117_)
                                              _exprs108118_))
                                        (__tmp114206
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108119_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114207 __tmp114206))))
                             (declare (not safe))
                             (cons 'letrec __tmp114205))))
                      (declare (not safe))
                      (__SRC__% __tmp114204 _stx107921_))))
                 (_compile-values107924_
                  (lambda (_hd-ids108031_ _exprs108032_ _body108033_)
                    (let _lp108035_ ((_rest108037_ _hd-ids108031_)
                                     (_exprs108038_ _exprs108032_)
                                     (_pre108039_ '())
                                     (_bind108040_ '())
                                     (_post108041_ '()))
                      (let* ((_rest108042108056_ _rest108037_)
                             (_else108045108064_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107925_
                                   _pre108039_
                                   _bind108040_
                                   _post108041_
                                   _body108033_)))))
                        (let ((_K108050108100_
                               (lambda (_rest108097_ _id108098_)
                                 (let ((__tmp114213 (cdr _exprs108038_))
                                       (__tmp114208
                                        (let ((__tmp114209
                                               (let ((__tmp114212
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id108098_)))
                                                     (__tmp114210
                                                      (let ((__tmp114211
                                                             (car _exprs108038_)))
                                                        (declare (not safe))
                                                        (cons __tmp114211
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp114212
                                                       __tmp114210))))
                                          (declare (not safe))
                                          (cons __tmp114209 _bind108040_))))
                                   (declare (not safe))
                                   (_lp108035_
                                    _rest108097_
                                    __tmp114213
                                    _pre108039_
                                    __tmp114208
                                    _post108041_))))
                              (_K108047108082_
                               (lambda (_rest108068_ _hd108069_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd108069_))
                                     (let ((__tmp114241 (cdr _exprs108038_))
                                           (__tmp114234
                                            (let ((__tmp114235
                                                   (let ((__tmp114240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd108069_)))
                                                         (__tmp114236
                                                          (let ((__tmp114237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114238
                                (let ((__tmp114239 (car _exprs108038_)))
                                  (declare (not safe))
                                  (cons __tmp114239 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp114238))))
                    (declare (not safe))
                    (cons __tmp114237 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114240
                                                           __tmp114236))))
                                              (declare (not safe))
                                              (cons __tmp114235
                                                    _bind108040_))))
                                       (declare (not safe))
                                       (_lp108035_
                                        _rest108068_
                                        __tmp114241
                                        _pre108039_
                                        __tmp114234
                                        _post108041_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd108069_))
                                         (let* ((_len108071_
                                                 (length _hd108069_))
                                                (_tmp108073_
                                                 (let ((__tmp114214 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp114214))))
                                           (let ((__tmp114233
                                                  (cdr _exprs108038_))
                                                 (__tmp114226
                                                  (let ((__tmp114227
                                                         (lambda (_id108076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r108077_)
                   (if (let () (declare (not safe)) (__AST-e _id108076_))
                       (let ((__tmp114228
                              (let ((__tmp114232
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id108076_)))
                                    (__tmp114229
                                     (let ((__tmp114230
                                            (let ((__tmp114231
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp114231))))
                                       (declare (not safe))
                                       (cons __tmp114230 '()))))
                                (declare (not safe))
                                (cons __tmp114232 __tmp114229))))
                         (declare (not safe))
                         (cons __tmp114228 _r108077_))
                       _r108077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp114227
                                                            _pre108039_
                                                            _hd108069_)))
                                                 (__tmp114222
                                                  (let ((__tmp114223
                                                         (let ((__tmp114224
                                                                (let ((__tmp114225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs108038_)))
                          (declare (not safe))
                          (cons __tmp114225 '()))))
                   (declare (not safe))
                   (cons _tmp108073_ __tmp114224))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114223
                                                          _bind108040_)))
                                                 (__tmp114215
                                                  (let ((__tmp114216
                                                         (let ((__tmp114217
                                                                (let ((__tmp114218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114220
                                      (lambda (_id108079_ _k108080_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id108079_))
                                            (let ((__tmp114221
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id108079_))))
                                              (declare (not safe))
                                              (cons __tmp114221 _k108080_))
                                            '#f)))
                                     (__tmp114219
                                      (let ()
                                        (declare (not safe))
                                        (iota _len108071_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp114220
                                  _hd108069_
                                  __tmp114219))))
                          (declare (not safe))
                          (cons _len108071_ __tmp114218))))
                   (declare (not safe))
                   (cons _tmp108073_ __tmp114217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114216
                                                          _post108041_))))
                                             (declare (not safe))
                                             (_lp108035_
                                              _rest108068_
                                              __tmp114233
                                              __tmp114226
                                              __tmp114222
                                              __tmp114215)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107921_
                                            _hd108069_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest108042108056_))
                              (let ((_tl108052108105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest108042108056_)))
                                    (_hd108051108103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest108042108056_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd108051108103_))
                                    (let ((_tl108054108110_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd108051108103_)))
                                          (_hd108053108108_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd108051108103_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl108054108110_))
                                          (let ((_id108113_ _hd108053108108_)
                                                (_rest108115_
                                                 _tl108052108105_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108050108100_
                                               _rest108115_
                                               _id108113_)))
                                          (let ((_hd108090_ _hd108051108103_)
                                                (_rest108092_
                                                 _tl108052108105_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108047108082_
                                               _rest108092_
                                               _hd108090_)))))
                                    (let ((_hd108090_ _hd108051108103_)
                                          (_rest108092_ _tl108052108105_))
                                      (let ()
                                        (declare (not safe))
                                        (_K108047108082_
                                         _rest108092_
                                         _hd108090_)))))
                              (let ()
                                (declare (not safe))
                                (_else108045108064_))))))))
                 (_compile-inner107925_
                  (lambda (_pre108026_ _bind108027_ _post108028_ _body108029_)
                    (if (let () (declare (not safe)) (null? _pre108026_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107926_
                           _bind108027_
                           _post108028_
                           _body108029_))
                        (let ((__tmp114242
                               (let ((__tmp114243
                                      (let ((__tmp114246 (reverse _pre108026_))
                                            (__tmp114244
                                             (let ((__tmp114245
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107926_
                                                       _bind108027_
                                                       _post108028_
                                                       _body108029_))))
                                               (declare (not safe))
                                               (cons __tmp114245 '()))))
                                        (declare (not safe))
                                        (cons __tmp114246 __tmp114244))))
                                 (declare (not safe))
                                 (cons 'let __tmp114243))))
                          (declare (not safe))
                          (__SRC__% __tmp114242 _stx107921_)))))
                 (_compile-bind107926_
                  (lambda (_bind108022_ _post108023_ _body108024_)
                    (let ((__tmp114247
                           (let ((__tmp114248
                                  (let ((__tmp114251 (reverse _bind108022_))
                                        (__tmp114249
                                         (let ((__tmp114250
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107927_
                                                   _post108023_
                                                   _body108024_))))
                                           (declare (not safe))
                                           (cons __tmp114250 '()))))
                                    (declare (not safe))
                                    (cons __tmp114251 __tmp114249))))
                             (declare (not safe))
                             (cons 'letrec __tmp114248))))
                      (declare (not safe))
                      (__SRC__% __tmp114247 _stx107921_))))
                 (_compile-post107927_
                  (lambda (_post107929_ _body107930_)
                    (let _lp107932_ ((_rest107934_ _post107929_)
                                     (_check107935_ '())
                                     (_bind107936_ '()))
                      (let* ((_rest107937107949_ _rest107934_)
                             (_else107939107957_
                              (lambda ()
                                (let ((__tmp114252
                                       (let ((__tmp114253
                                              (let ((__tmp114254
                                                     (let ((__tmp114255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp114255 _bind107936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp114254
                                                        _check107935_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp114253))))
                                  (declare (not safe))
                                  (__SRC__% __tmp114252 _stx107921_))))
                             (_K107941107996_
                              (lambda (_rest107960_
                                       _init107961_
                                       _len107962_
                                       _tmp107963_)
                                (let ((__tmp114264
                                       (let ((__tmp114265
                                              (let ((__tmp114266
                                                     (let ((__tmp114267
                                                            (let ((__tmp114268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107962_ '()))))
                      (declare (not safe))
                      (cons _tmp107963_ __tmp114268))))
               (declare (not safe))
               (cons '__check-values __tmp114267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp114266
                                                 _stx107921_))))
                                         (declare (not safe))
                                         (cons __tmp114265 _check107935_)))
                                      (__tmp114256
                                       (let ((__tmp114257
                                              (lambda (_hd107965_ _r107966_)
                                                (let* ((_hd107967107974_
                                                        _hd107965_)
                                                       (_E107969107978_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107967107974_)))
               (_K107970107984_
                (lambda (_k107981_ _id107982_)
                  (let ((__tmp114258
                         (let ((__tmp114259
                                (let ((__tmp114260
                                       (let ((__tmp114261
                                              (let ((__tmp114262
                                                     (let ((__tmp114263
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107963_ __tmp114263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp114262))))
                                         (declare (not safe))
                                         (cons __tmp114261 '()))))
                                  (declare (not safe))
                                  (cons _id107982_ __tmp114260))))
                           (declare (not safe))
                           (cons 'set! __tmp114259))))
                    (declare (not safe))
                    (cons __tmp114258 _r107966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107967107974_))
                                                      (let ((_hd107971107987_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107967107974_)))
                    (_tl107972107989_
                     (let () (declare (not safe)) (##cdr _hd107967107974_))))
                (let* ((_id107992_ _hd107971107987_)
                       (_k107994_ _tl107972107989_))
                  (declare (not safe))
                  (_K107970107984_ _k107994_ _id107992_)))
              (let () (declare (not safe)) (_E107969107978_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp114257
                                                 _bind107936_
                                                 _init107961_))))
                                  (declare (not safe))
                                  (_lp107932_
                                   _rest107960_
                                   __tmp114264
                                   __tmp114256)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107937107949_))
                            (let ((_hd107942107999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107937107949_)))
                                  (_tl107943108001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107937107949_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107942107999_))
                                  (let ((_hd107944108004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107942107999_)))
                                        (_tl107945108006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107942107999_))))
                                    (let ((_tmp108009_ _hd107944108004_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107945108006_))
                                          (let ((_hd107946108011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107945108006_)))
                                                (_tl107947108013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107945108006_))))
                                            (let* ((_len108016_
                                                    _hd107946108011_)
                                                   (_init108018_
                                                    _tl107947108013_)
                                                   (_rest108020_
                                                    _tl107943108001_))
                                              (declare (not safe))
                                              (_K107941107996_
                                               _rest108020_
                                               _init108018_
                                               _len108016_
                                               _tmp108009_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107939107957_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107939107957_))))
                            (let ()
                              (declare (not safe))
                              (_else107939107957_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107921_
             _compile-simple107923_
             _compile-values107924_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107676_)
        (letrec ((_compile-simple107678_
                  (lambda (_hd-ids107917_ _exprs107918_ _body107919_)
                    (let ((__tmp114269
                           (let ((__tmp114270
                                  (let ((__tmp114272
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107917_)
                                              _exprs107918_))
                                        (__tmp114271
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107919_ '()))))
                                    (declare (not safe))
                                    (cons __tmp114272 __tmp114271))))
                             (declare (not safe))
                             (cons 'letrec* __tmp114270))))
                      (declare (not safe))
                      (__SRC__% __tmp114269 _stx107676_))))
                 (_compile-values107679_
                  (lambda (_hd-ids107828_ _exprs107829_ _body107830_)
                    (let _lp107832_ ((_rest107834_ _hd-ids107828_)
                                     (_exprs107835_ _exprs107829_)
                                     (_bind107836_ '())
                                     (_post107837_ '()))
                      (let* ((_rest107838107852_ _rest107834_)
                             (_else107841107860_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107680_
                                   _bind107836_
                                   _post107837_
                                   _body107830_)))))
                        (let ((_K107846107900_
                               (lambda (_rest107895_ _hd107896_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107896_))
                                     (let ((_id107898_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107896_))))
                                       (let ((__tmp114287 (cdr _exprs107835_))
                                             (__tmp114282
                                              (let ((__tmp114283
                                                     (let ((__tmp114284
                                                            (let ((__tmp114285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114286
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114286))))
                      (declare (not safe))
                      (cons __tmp114285 '()))))
               (declare (not safe))
               (cons _id107898_ __tmp114284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114283
                                                      _bind107836_)))
                                             (__tmp114278
                                              (let ((__tmp114279
                                                     (let ((__tmp114280
                                                            (let ((__tmp114281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107835_)))
                      (declare (not safe))
                      (cons __tmp114281 '()))))
               (declare (not safe))
               (cons _id107898_ __tmp114280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114279
                                                      _post107837_))))
                                         (declare (not safe))
                                         (_lp107832_
                                          _rest107895_
                                          __tmp114287
                                          __tmp114282
                                          __tmp114278)))
                                     (let ((__tmp114277 (cdr _exprs107835_))
                                           (__tmp114273
                                            (let ((__tmp114274
                                                   (let ((__tmp114275
                                                          (let ((__tmp114276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107835_)))
                    (declare (not safe))
                    (cons __tmp114276 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp114275))))
                                              (declare (not safe))
                                              (cons __tmp114274
                                                    _post107837_))))
                                       (declare (not safe))
                                       (_lp107832_
                                        _rest107895_
                                        __tmp114277
                                        _bind107836_
                                        __tmp114273)))))
                              (_K107843107880_
                               (lambda (_rest107864_ _hd107865_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107865_))
                                     (let ((_id107867_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107865_))))
                                       (let ((__tmp114323 (cdr _exprs107835_))
                                             (__tmp114318
                                              (let ((__tmp114319
                                                     (let ((__tmp114320
                                                            (let ((__tmp114321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114322
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114322))))
                      (declare (not safe))
                      (cons __tmp114321 '()))))
               (declare (not safe))
               (cons _id107867_ __tmp114320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114319
                                                      _bind107836_)))
                                             (__tmp114312
                                              (let ((__tmp114313
                                                     (let ((__tmp114314
                                                            (let ((__tmp114315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114316
                                  (let ((__tmp114317 (car _exprs107835_)))
                                    (declare (not safe))
                                    (cons __tmp114317 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114316))))
                      (declare (not safe))
                      (cons __tmp114315 '()))))
               (declare (not safe))
               (cons _id107867_ __tmp114314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114313
                                                      _post107837_))))
                                         (declare (not safe))
                                         (_lp107832_
                                          _rest107864_
                                          __tmp114323
                                          __tmp114318
                                          __tmp114312)))
                                     (if (let ((__tmp114311
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107865_))))
                                           (declare (not safe))
                                           (not __tmp114311))
                                         (let ((__tmp114310
                                                (cdr _exprs107835_))
                                               (__tmp114306
                                                (let ((__tmp114307
                                                       (let ((__tmp114308
                                                              (let ((__tmp114309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107835_)))
                        (declare (not safe))
                        (cons __tmp114309 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114307
                                                        _post107837_))))
                                           (declare (not safe))
                                           (_lp107832_
                                            _rest107864_
                                            __tmp114310
                                            _bind107836_
                                            __tmp114306))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107865_))
                                             (let* ((_len107869_
                                                     (length _hd107865_))
                                                    (_tmp107871_
                                                     (let ((__tmp114288
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp114288))))
                                               (let ((__tmp114305
                                                      (cdr _exprs107835_))
                                                     (__tmp114298
                                                      (let ((__tmp114299
                                                             (lambda (_id107874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107875_)
                       (if (let () (declare (not safe)) (__AST-e _id107874_))
                           (let ((__tmp114300
                                  (let ((__tmp114304
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107874_)))
                                        (__tmp114301
                                         (let ((__tmp114302
                                                (let ((__tmp114303
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114303))))
                                           (declare (not safe))
                                           (cons __tmp114302 '()))))
                                    (declare (not safe))
                                    (cons __tmp114304 __tmp114301))))
                             (declare (not safe))
                             (cons __tmp114300 _r107875_))
                           _r107875_))))
                (declare (not safe))
                (foldl1 __tmp114299 _bind107836_ _hd107865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114289
                                                      (let ((__tmp114290
                                                             (let ((__tmp114291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114297 (car _exprs107835_))
                                  (__tmp114292
                                   (let ((__tmp114293
                                          (let ((__tmp114295
                                                 (lambda (_id107877_ _k107878_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107877_))
                                                       (let ((__tmp114296
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107877_))))
                 (declare (not safe))
                 (cons __tmp114296 _k107878_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp114294
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107869_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114295
                                             _hd107865_
                                             __tmp114294))))
                                     (declare (not safe))
                                     (cons _len107869_ __tmp114293))))
                              (declare (not safe))
                              (cons __tmp114297 __tmp114292))))
                       (declare (not safe))
                       (cons _tmp107871_ __tmp114291))))
                (declare (not safe))
                (cons __tmp114290 _post107837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107832_
                                                  _rest107864_
                                                  __tmp114305
                                                  __tmp114298
                                                  __tmp114289)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107676_
                                                _hd107865_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107838107852_))
                              (let ((_tl107848107905_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107838107852_)))
                                    (_hd107847107903_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107838107852_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107847107903_))
                                    (let ((_tl107850107910_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107847107903_)))
                                          (_hd107849107908_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107847107903_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107850107910_))
                                          (let ((_hd107913_ _hd107849107908_)
                                                (_rest107915_
                                                 _tl107848107905_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107846107900_
                                               _rest107915_
                                               _hd107913_)))
                                          (let ((_hd107888_ _hd107847107903_)
                                                (_rest107890_
                                                 _tl107848107905_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107843107880_
                                               _rest107890_
                                               _hd107888_)))))
                                    (let ((_hd107888_ _hd107847107903_)
                                          (_rest107890_ _tl107848107905_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107843107880_
                                         _rest107890_
                                         _hd107888_)))))
                              (let ()
                                (declare (not safe))
                                (_else107841107860_))))))))
                 (_compile-bind107680_
                  (lambda (_bind107824_ _post107825_ _body107826_)
                    (let ((__tmp114324
                           (let ((__tmp114325
                                  (let ((__tmp114328 (reverse _bind107824_))
                                        (__tmp114326
                                         (let ((__tmp114327
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107681_
                                                   _post107825_
                                                   _body107826_))))
                                           (declare (not safe))
                                           (cons __tmp114327 '()))))
                                    (declare (not safe))
                                    (cons __tmp114328 __tmp114326))))
                             (declare (not safe))
                             (cons 'let __tmp114325))))
                      (declare (not safe))
                      (__SRC__% __tmp114324 _stx107676_))))
                 (_compile-post107681_
                  (lambda (_post107683_ _body107684_)
                    (let ((__tmp114329
                           (let ((__tmp114330
                                  (let ((__tmp114331
                                         (let ((__tmp114333
                                                (lambda (_hd107686_ _r107687_)
                                                  (let* ((_hd107688107711_
                                                          _hd107686_)
                                                         (_E107692107715_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107688107711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107705107809_
                                                           (lambda (_expr107807_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107807_ _r107687_))))
                  (_K107700107787_
                   (lambda (_expr107784_ _id107785_)
                     (let ((__tmp114334
                            (let ((__tmp114335
                                   (let ((__tmp114336
                                          (let ((__tmp114337
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107784_ '()))))
                                            (declare (not safe))
                                            (cons _id107785_ __tmp114337))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114336))))
                              (declare (not safe))
                              (__SRC__% __tmp114335 _stx107676_))))
                       (declare (not safe))
                       (cons __tmp114334 _r107687_))))
                  (_K107693107754_
                   (lambda (_init107719_ _len107720_ _expr107721_ _tmp107722_)
                     (let ((__tmp114338
                            (let ((__tmp114339
                                   (let ((__tmp114340
                                          (let ((__tmp114354
                                                 (let ((__tmp114355
                                                        (let ((__tmp114356
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107721_ '()))))
                  (declare (not safe))
                  (cons _tmp107722_ __tmp114356))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114355 '())))
                                                (__tmp114341
                                                 (let ((__tmp114350
                                                        (let ((__tmp114351
                                                               (let ((__tmp114352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114353
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107720_ '()))))
                                (declare (not safe))
                                (cons _tmp107722_ __tmp114353))))
                         (declare (not safe))
                         (cons '__check-values __tmp114352))))
                  (declare (not safe))
                  (__SRC__% __tmp114351 _stx107676_)))
               (__tmp114342
                (let ((__tmp114343
                       (map (lambda (_hd107724_)
                              (let* ((_hd107725107732_ _hd107724_)
                                     (_E107727107736_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107725107732_)))
                                     (_K107728107742_
                                      (lambda (_k107739_ _id107740_)
                                        (let ((__tmp114344
                                               (let ((__tmp114345
                                                      (let ((__tmp114346
                                                             (let ((__tmp114347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114348
                                   (let ((__tmp114349
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107739_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107722_ __tmp114349))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114348))))
                       (declare (not safe))
                       (cons __tmp114347 '()))))
                (declare (not safe))
                (cons _id107740_ __tmp114346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114345))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114344
                                           _stx107676_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107725107732_))
                                    (let ((_hd107729107745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107725107732_)))
                                          (_tl107730107747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107725107732_))))
                                      (let* ((_id107750_ _hd107729107745_)
                                             (_k107752_ _tl107730107747_))
                                        (declare (not safe))
                                        (_K107728107742_
                                         _k107752_
                                         _id107750_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107727107736_)))))
                            _init107719_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114350
                                                         __tmp114342))))
                                            (declare (not safe))
                                            (cons __tmp114354 __tmp114341))))
                                     (declare (not safe))
                                     (cons 'let __tmp114340))))
                              (declare (not safe))
                              (__SRC__% __tmp114339 _stx107676_))))
                       (declare (not safe))
                       (cons __tmp114338 _r107687_)))))
              (if (let () (declare (not safe)) (##pair? _hd107688107711_))
                  (let ((_tl107707107814_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107688107711_)))
                        (_hd107706107812_
                         (let ()
                           (declare (not safe))
                           (##car _hd107688107711_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107706107812_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107707107814_))
                            (let ((_tl107709107819_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107707107814_)))
                                  (_hd107708107817_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107707107814_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107709107819_))
                                  (let ((_expr107822_ _hd107708107817_))
                                    (declare (not safe))
                                    (_K107705107809_ _expr107822_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107709107819_))
                                      (let ((_tl107699107773_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107709107819_)))
                                            (_hd107698107771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107709107819_))))
                                        (let ((_tmp107762_ _hd107706107812_)
                                              (_expr107769_ _hd107708107817_)
                                              (_len107776_ _hd107698107771_)
                                              (_init107778_ _tl107699107773_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107693107754_
                                             _init107778_
                                             _len107776_
                                             _expr107769_
                                             _tmp107762_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107692107715_)))))
                            (let () (declare (not safe)) (_E107692107715_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107707107814_))
                            (let ((_tl107704107799_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107707107814_)))
                                  (_hd107703107797_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107707107814_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107704107799_))
                                  (let ((_id107795_ _hd107706107812_)
                                        (_expr107802_ _hd107703107797_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107700107787_
                                       _expr107802_
                                       _id107795_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107704107799_))
                                      (let ((_tl107699107773_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107704107799_)))
                                            (_hd107698107771_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107704107799_))))
                                        (let ((_tmp107762_ _hd107706107812_)
                                              (_expr107769_ _hd107703107797_)
                                              (_len107776_ _hd107698107771_)
                                              (_init107778_ _tl107699107773_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107693107754_
                                             _init107778_
                                             _len107776_
                                             _expr107769_
                                             _tmp107762_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107692107715_)))))
                            (let () (declare (not safe)) (_E107692107715_)))))
                  (let () (declare (not safe)) (_E107692107715_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114332
                                                (list _body107684_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114333
                                                   __tmp114332
                                                   _post107683_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114331))))
                             (declare (not safe))
                             (cons 'begin __tmp114330))))
                      (declare (not safe))
                      (__SRC__% __tmp114329 _stx107676_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107676_
             _compile-simple107678_
             _compile-values107679_)))))
    (define __compile-call%
      (lambda (_stx107636_)
        (let* ((_$e107638_ _stx107636_)
               (_$E107640107649_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107638_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107638_))
              (let* ((_$tgt107641107652_
                      (let () (declare (not safe)) (__AST-e _$e107638_)))
                     (_$hd107642107655_
                      (let () (declare (not safe)) (##car _$tgt107641107652_)))
                     (_$tl107643107658_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107641107652_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107643107658_))
                    (let* ((_$tgt107644107662_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107643107658_)))
                           (_$hd107645107665_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107644107662_)))
                           (_$tl107646107668_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107644107662_))))
                      (let* ((_rator107672_ _$hd107645107665_)
                             (_rands107674_ _$tl107646107668_)
                             (__tmp114357
                              (let ((__tmp114359
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107672_)))
                                    (__tmp114358
                                     (map __compile _rands107674_)))
                                (declare (not safe))
                                (cons __tmp114359 __tmp114358))))
                        (declare (not safe))
                        (__SRC__% __tmp114357 _stx107636_)))
                    (let () (declare (not safe)) (_$E107640107649_))))
              (let () (declare (not safe)) (_$E107640107649_))))))
    (define __compile-ref%
      (lambda (_stx107598_)
        (let* ((_$e107600_ _stx107598_)
               (_$E107602107611_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107600_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107600_))
              (let* ((_$tgt107603107614_
                      (let () (declare (not safe)) (__AST-e _$e107600_)))
                     (_$hd107604107617_
                      (let () (declare (not safe)) (##car _$tgt107603107614_)))
                     (_$tl107605107620_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107603107614_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107605107620_))
                    (let* ((_$tgt107606107624_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107605107620_)))
                           (_$hd107607107627_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107606107624_)))
                           (_$tl107608107630_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107606107624_))))
                      (let ((_id107634_ _$hd107607107627_))
                        (if (let ((__tmp114360
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107608107630_))))
                              (declare (not safe))
                              (equal? __tmp114360 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107634_ _stx107598_))
                            (let () (declare (not safe)) (_$E107602107611_)))))
                    (let () (declare (not safe)) (_$E107602107611_))))
              (let () (declare (not safe)) (_$E107602107611_))))))
    (define __compile-setq%
      (lambda (_stx107545_)
        (let* ((_$e107547_ _stx107545_)
               (_$E107549107561_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107547_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107547_))
              (let* ((_$tgt107550107564_
                      (let () (declare (not safe)) (__AST-e _$e107547_)))
                     (_$hd107551107567_
                      (let () (declare (not safe)) (##car _$tgt107550107564_)))
                     (_$tl107552107570_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107550107564_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107552107570_))
                    (let* ((_$tgt107553107574_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107552107570_)))
                           (_$hd107554107577_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107553107574_)))
                           (_$tl107555107580_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107553107574_))))
                      (let ((_id107584_ _$hd107554107577_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107555107580_))
                            (let* ((_$tgt107556107586_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107555107580_)))
                                   (_$hd107557107589_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107556107586_)))
                                   (_$tl107558107592_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107556107586_))))
                              (let ((_expr107596_ _$hd107557107589_))
                                (if (let ((__tmp114366
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107558107592_))))
                                      (declare (not safe))
                                      (equal? __tmp114366 '()))
                                    (let ((__tmp114361
                                           (let ((__tmp114362
                                                  (let ((__tmp114365
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107584_
                                                            _stx107545_)))
                                                        (__tmp114363
                                                         (let ((__tmp114364
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107596_))))
                   (declare (not safe))
                   (cons __tmp114364 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114365
                                                          __tmp114363))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114362))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114361 _stx107545_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107549107561_)))))
                            (let () (declare (not safe)) (_$E107549107561_)))))
                    (let () (declare (not safe)) (_$E107549107561_))))
              (let () (declare (not safe)) (_$E107549107561_))))))
    (define __compile-if%
      (lambda (_stx107477_)
        (let* ((_$e107479_ _stx107477_)
               (_$E107481107496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107479_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107479_))
              (let* ((_$tgt107482107499_
                      (let () (declare (not safe)) (__AST-e _$e107479_)))
                     (_$hd107483107502_
                      (let () (declare (not safe)) (##car _$tgt107482107499_)))
                     (_$tl107484107505_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107482107499_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107484107505_))
                    (let* ((_$tgt107485107509_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107484107505_)))
                           (_$hd107486107512_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107485107509_)))
                           (_$tl107487107515_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107485107509_))))
                      (let ((_p107519_ _$hd107486107512_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107487107515_))
                            (let* ((_$tgt107488107521_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107487107515_)))
                                   (_$hd107489107524_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107488107521_)))
                                   (_$tl107490107527_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107488107521_))))
                              (let ((_t107531_ _$hd107489107524_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107490107527_))
                                    (let* ((_$tgt107491107533_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107490107527_)))
                                           (_$hd107492107536_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107491107533_)))
                                           (_$tl107493107539_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107491107533_))))
                                      (let ((_f107543_ _$hd107492107536_))
                                        (if (let ((__tmp114374
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107493107539_))))
                                              (declare (not safe))
                                              (equal? __tmp114374 '()))
                                            (let ((__tmp114367
                                                   (let ((__tmp114368
                                                          (let ((__tmp114373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107519_)))
                        (__tmp114369
                         (let ((__tmp114372
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107531_)))
                               (__tmp114370
                                (let ((__tmp114371
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107543_))))
                                  (declare (not safe))
                                  (cons __tmp114371 '()))))
                           (declare (not safe))
                           (cons __tmp114372 __tmp114370))))
                    (declare (not safe))
                    (cons __tmp114373 __tmp114369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114368))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114367
                                               _stx107477_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107481107496_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107481107496_)))))
                            (let () (declare (not safe)) (_$E107481107496_)))))
                    (let () (declare (not safe)) (_$E107481107496_))))
              (let () (declare (not safe)) (_$E107481107496_))))))
    (define __compile-quote%
      (lambda (_stx107439_)
        (let* ((_$e107441_ _stx107439_)
               (_$E107443107452_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107441_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107441_))
              (let* ((_$tgt107444107455_
                      (let () (declare (not safe)) (__AST-e _$e107441_)))
                     (_$hd107445107458_
                      (let () (declare (not safe)) (##car _$tgt107444107455_)))
                     (_$tl107446107461_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107444107455_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107446107461_))
                    (let* ((_$tgt107447107465_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107446107461_)))
                           (_$hd107448107468_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107447107465_)))
                           (_$tl107449107471_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107447107465_))))
                      (let ((_e107475_ _$hd107448107468_))
                        (if (let ((__tmp114378
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107449107471_))))
                              (declare (not safe))
                              (equal? __tmp114378 '()))
                            (let ((__tmp114375
                                   (let ((__tmp114376
                                          (let ((__tmp114377
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107475_))))
                                            (declare (not safe))
                                            (cons __tmp114377 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114376))))
                              (declare (not safe))
                              (__SRC__% __tmp114375 _stx107439_))
                            (let () (declare (not safe)) (_$E107443107452_)))))
                    (let () (declare (not safe)) (_$E107443107452_))))
              (let () (declare (not safe)) (_$E107443107452_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107401_)
        (let* ((_$e107403_ _stx107401_)
               (_$E107405107414_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107403_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107403_))
              (let* ((_$tgt107406107417_
                      (let () (declare (not safe)) (__AST-e _$e107403_)))
                     (_$hd107407107420_
                      (let () (declare (not safe)) (##car _$tgt107406107417_)))
                     (_$tl107408107423_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107406107417_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107408107423_))
                    (let* ((_$tgt107409107427_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107408107423_)))
                           (_$hd107410107430_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107409107427_)))
                           (_$tl107411107433_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107409107427_))))
                      (let ((_e107437_ _$hd107410107430_))
                        (if (let ((__tmp114381
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107411107433_))))
                              (declare (not safe))
                              (equal? __tmp114381 '()))
                            (let ((__tmp114379
                                   (let ((__tmp114380
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107437_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114380))))
                              (declare (not safe))
                              (__SRC__% __tmp114379 _stx107401_))
                            (let () (declare (not safe)) (_$E107405107414_)))))
                    (let () (declare (not safe)) (_$E107405107414_))))
              (let () (declare (not safe)) (_$E107405107414_))))))
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
