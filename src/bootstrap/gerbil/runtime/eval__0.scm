(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707657569)
  (begin
    (define __context::t
      (let ((__tmp113639 (list))
            (__tmp113637
             (let ((__tmp113638
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113638 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp113639
         '(t ns super table)
         __tmp113637
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args108973_
        (apply make-class-instance __context::t _$args108973_)))
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
      (let ((__tmp113642 (list))
            (__tmp113640
             (let ((__tmp113641
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113641 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp113642
         '(id)
         __tmp113640
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args108970_
        (apply make-class-instance __runtime::t _$args108970_)))
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
      (let ((__tmp113645 (list))
            (__tmp113643
             (let ((__tmp113644
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113644 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113645
         '(e id)
         __tmp113643
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args108967_
        (apply make-class-instance __syntax::t _$args108967_)))
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
      (let ((__tmp113648 (list __syntax::t))
            (__tmp113646
             (let ((__tmp113647
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113647 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp113648
         '()
         __tmp113646
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args108964_
        (apply make-class-instance __macro::t _$args108964_)))
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
      (let ((__tmp113651 (list __macro::t))
            (__tmp113649
             (let ((__tmp113650
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113650 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp113651
         '()
         __tmp113649
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args108961_
        (apply make-class-instance __special-form::t _$args108961_)))
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
      (let ((__tmp113654 (list __syntax::t))
            (__tmp113652
             (let ((__tmp113653
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113653 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113654
         '()
         __tmp113652
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args108958_
        (apply make-class-instance __core-form::t _$args108958_)))
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
      (let ((__tmp113657 (list __core-form::t))
            (__tmp113655
             (let ((__tmp113656
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113656 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113657
         '()
         __tmp113655
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args108955_
        (apply make-class-instance __core-expression::t _$args108955_)))
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
      (let ((__tmp113660 (list __core-form::t))
            (__tmp113658
             (let ((__tmp113659
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113659 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113660
         '()
         __tmp113658
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args108952_
        (apply make-class-instance __core-special-form::t _$args108952_)))
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
      (let ((__tmp113663 (list __syntax::t))
            (__tmp113661
             (let ((__tmp113662
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113662 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp113663
         '()
         __tmp113661
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args108949_
        (apply make-class-instance __struct-info::t _$args108949_)))
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
      (let ((__tmp113666 (list __syntax::t))
            (__tmp113664
             (let ((__tmp113665
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113665 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp113666
         '()
         __tmp113664
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args108946_
        (apply make-class-instance __feature::t _$args108946_)))
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
      (let ((__tmp113669 (list __context::t))
            (__tmp113667
             (let ((__tmp113668
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113668 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp113669
         '(id path import export)
         __tmp113667
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args108943_
        (apply make-class-instance __module::t _$args108943_)))
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
      (let ((__tmp113671
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp113670
             (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp113671 __tmp113670)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id108918_ _ctx108919_)
        (if _ctx108919_
            (let ((_id108921_
                   (let () (declare (not safe)) (__AST-e _id108918_))))
              (let _lp108923_ ((_ctx108925_ _ctx108919_))
                (let ((_$e108927_
                       (table-ref
                        (##structure-ref _ctx108925_ '4 __context::t '#f)
                        _id108921_
                        '#f)))
                  (if _$e108927_
                      (values _$e108927_)
                      (let ((_$e108930_
                             (##structure-ref
                              _ctx108925_
                              '3
                              __context::t
                              '#f)))
                        (if _$e108930_
                            (let ()
                              (declare (not safe))
                              (_lp108923_ _$e108930_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id108936_)
        (let ((_ctx108938_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id108936_ _ctx108938_))))
    (define __core-resolve
      (lambda _g113673_
        (let ((_g113672_ (let () (declare (not safe)) (##length _g113673_))))
          (cond ((let () (declare (not safe)) (##fx= _g113672_ 1))
                 (apply (lambda (_id108936_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id108936_)))
                        _g113673_))
                ((let () (declare (not safe)) (##fx= _g113672_ 2))
                 (apply (lambda (_id108940_ _ctx108941_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id108940_ _ctx108941_)))
                        _g113673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113673_))))))
    (define __core-bound-id?__%
      (lambda (_id108901_ _is?108902_)
        (let ((_$e108904_
               (let () (declare (not safe)) (__core-resolve__0 _id108901_))))
          (if _$e108904_ (_is?108902_ _$e108904_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id108910_)
        (let ((_is?108912_ true))
          (declare (not safe))
          (__core-bound-id?__% _id108910_ _is?108912_))))
    (define __core-bound-id?
      (lambda _g113675_
        (let ((_g113674_ (let () (declare (not safe)) (##length _g113675_))))
          (cond ((let () (declare (not safe)) (##fx= _g113674_ 1))
                 (apply (lambda (_id108910_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id108910_)))
                        _g113675_))
                ((let () (declare (not safe)) (##fx= _g113674_ 2))
                 (apply (lambda (_id108914_ _is?108915_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id108914_ _is?108915_)))
                        _g113675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113675_))))))
    (define __core-bind-runtime!__%
      (lambda (_id108884_ _eid108885_ _ctx108886_)
        (if _eid108885_
            (let ((__tmp113678
                   (##structure-ref _ctx108886_ '4 __context::t '#f))
                  (__tmp113677
                   (let () (declare (not safe)) (__AST-e _id108884_)))
                  (__tmp113676
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid108885_))))
              (declare (not safe))
              (table-set! __tmp113678 __tmp113677 __tmp113676))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id108891_ _eid108892_)
        (let ((_ctx108894_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id108891_ _eid108892_ _ctx108894_))))
    (define __core-bind-runtime!
      (lambda _g113680_
        (let ((_g113679_ (let () (declare (not safe)) (##length _g113680_))))
          (cond ((let () (declare (not safe)) (##fx= _g113679_ 2))
                 (apply (lambda (_id108891_ _eid108892_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id108891_ _eid108892_)))
                        _g113680_))
                ((let () (declare (not safe)) (##fx= _g113679_ 3))
                 (apply (lambda (_id108896_ _eid108897_ _ctx108898_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id108896_
                             _eid108897_
                             _ctx108898_)))
                        _g113680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113680_))))))
    (define __core-bind-syntax!__%
      (lambda (_id108867_ _e108868_ _make108869_)
        (let ((__tmp113681
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e108868_
                      'gerbil/runtime/eval#__syntax::t))
                   _e108868_
                   (_make108869_ _e108868_ _id108867_))))
          (declare (not safe))
          (table-set! __*core* _id108867_ __tmp113681))))
    (define __core-bind-syntax!__0
      (lambda (_id108874_ _e108875_)
        (let ((_make108877_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id108874_ _e108875_ _make108877_))))
    (define __core-bind-syntax!
      (lambda _g113683_
        (let ((_g113682_ (let () (declare (not safe)) (##length _g113683_))))
          (cond ((let () (declare (not safe)) (##fx= _g113682_ 2))
                 (apply (lambda (_id108874_ _e108875_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id108874_ _e108875_)))
                        _g113683_))
                ((let () (declare (not safe)) (##fx= _g113682_ 3))
                 (apply (lambda (_id108879_ _e108880_ _make108881_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id108879_
                             _e108880_
                             _make108881_)))
                        _g113683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113683_))))))
    (define __core-bind-macro!
      (lambda (_id108863_ _e108864_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108863_ _e108864_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id108860_ _e108861_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108860_ _e108861_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id108844_ _e108845_ _ctx108846_)
        (let ((__tmp113687 (##structure-ref _ctx108846_ '4 __context::t '#f))
              (__tmp113686 (let () (declare (not safe)) (__AST-e _id108844_)))
              (__tmp113684
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e108845_
                      'gerbil/runtime/eval#__syntax::t))
                   _e108845_
                   (let ((__tmp113685
                          (let () (declare (not safe)) (__AST-e _id108844_))))
                     (declare (not safe))
                     (##structure __syntax::t _e108845_ __tmp113685)))))
          (declare (not safe))
          (table-set! __tmp113687 __tmp113686 __tmp113684))))
    (define __core-bind-user-syntax!__0
      (lambda (_id108851_ _e108852_)
        (let ((_ctx108854_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id108851_ _e108852_ _ctx108854_))))
    (define __core-bind-user-syntax!
      (lambda _g113689_
        (let ((_g113688_ (let () (declare (not safe)) (##length _g113689_))))
          (cond ((let () (declare (not safe)) (##fx= _g113688_ 2))
                 (apply (lambda (_id108851_ _e108852_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id108851_
                             _e108852_)))
                        _g113689_))
                ((let () (declare (not safe)) (##fx= _g113688_ 3))
                 (apply (lambda (_id108856_ _e108857_ _ctx108858_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id108856_
                             _e108857_
                             _ctx108858_)))
                        _g113689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113689_))))))
    (define make-__runtime-id__%
      (lambda (_id108825_ _ctx108826_)
        (let ((_id108828_ (let () (declare (not safe)) (__AST-e _id108825_))))
          (if (let () (declare (not safe)) (eq? _id108828_ '_))
              '#f
              (if (uninterned-symbol? _id108828_)
                  (gensym _id108828_)
                  (if (let () (declare (not safe)) (symbol? _id108828_))
                      (let ((_$e108830_
                             (##structure-ref
                              _ctx108826_
                              '1
                              __context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e108830_))
                            (gensym _id108828_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e108830_))
                                (let ((__tmp113690
                                       (##structure-ref
                                        _ctx108826_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113690 '"#" _id108828_))
                                _id108828_)))
                      (error '"Illegal runtime identifier" _id108828_)))))))
    (define make-__runtime-id__0
      (lambda (_id108836_)
        (let ((_ctx108838_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id108836_ _ctx108838_))))
    (define make-__runtime-id
      (lambda _g113692_
        (let ((_g113691_ (let () (declare (not safe)) (##length _g113692_))))
          (cond ((let () (declare (not safe)) (##fx= _g113691_ 1))
                 (apply (lambda (_id108836_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id108836_)))
                        _g113692_))
                ((let () (declare (not safe)) (##fx= _g113691_ 2))
                 (apply (lambda (_id108840_ _ctx108841_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id108840_ _ctx108841_)))
                        _g113692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113692_))))))
    (define make-__context-local__%
      (lambda (_super108814_)
        (let ((__tmp113693
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super108814_ __tmp113693))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super108820_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super108820_))))
    (define make-__context-local
      (lambda _g113695_
        (let ((_g113694_ (let () (declare (not safe)) (##length _g113695_))))
          (cond ((let () (declare (not safe)) (##fx= _g113694_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g113695_))
                ((let () (declare (not safe)) (##fx= _g113694_ 1))
                 (apply (lambda (_super108822_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super108822_)))
                        _g113695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g113695_))))))
    (define make-__context-module__%
      (lambda (_id108794_ _ns108795_ _path108796_ _super108797_)
        (let ((__tmp113696
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns108795_
           _super108797_
           __tmp113696
           _id108794_
           _path108796_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id108802_ _ns108803_ _path108804_)
        (let ((_super108806_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id108802_
           _ns108803_
           _path108804_
           _super108806_))))
    (define make-__context-module
      (lambda _g113698_
        (let ((_g113697_ (let () (declare (not safe)) (##length _g113698_))))
          (cond ((let () (declare (not safe)) (##fx= _g113697_ 3))
                 (apply (lambda (_id108802_ _ns108803_ _path108804_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id108802_
                             _ns108803_
                             _path108804_)))
                        _g113698_))
                ((let () (declare (not safe)) (##fx= _g113697_ 4))
                 (apply (lambda (_id108808_
                                 _ns108809_
                                 _path108810_
                                 _super108811_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id108808_
                             _ns108809_
                             _path108810_
                             _super108811_)))
                        _g113698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g113698_))))))
    (define __SRC__%
      (lambda (_e108777_ _src-stx108778_)
        (if (or (let () (declare (not safe)) (pair? _e108777_))
                (let () (declare (not safe)) (symbol? _e108777_)))
            (let ((__tmp113702
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx108778_
                          'gerbil#AST::t))
                       (let ((__tmp113703
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx108778_))))
                         (declare (not safe))
                         (__locat __tmp113703))
                       '#f)))
              (declare (not safe))
              (##make-source _e108777_ __tmp113702))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e108777_ 'gerbil#AST::t))
                (let ((__tmp113701
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e108777_ '1 AST::t '#f)))
                      (__tmp113699
                       (let ((__tmp113700
                              (let ()
                                (declare (not safe))
                                (__AST-source _e108777_))))
                         (declare (not safe))
                         (__locat __tmp113700))))
                  (declare (not safe))
                  (##make-source __tmp113701 __tmp113699))
                (error '"BUG! Cannot sourcify object" _e108777_)))))
    (define __SRC__0
      (lambda (_e108786_)
        (let ((_src-stx108788_ '#f))
          (declare (not safe))
          (__SRC__% _e108786_ _src-stx108788_))))
    (define __SRC
      (lambda _g113705_
        (let ((_g113704_ (let () (declare (not safe)) (##length _g113705_))))
          (cond ((let () (declare (not safe)) (##fx= _g113704_ 1))
                 (apply (lambda (_e108786_)
                          (let () (declare (not safe)) (__SRC__0 _e108786_)))
                        _g113705_))
                ((let () (declare (not safe)) (##fx= _g113704_ 2))
                 (apply (lambda (_e108790_ _src-stx108791_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e108790_ _src-stx108791_)))
                        _g113705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113705_))))))
    (define __locat
      (lambda (_loc108774_)
        (if (let () (declare (not safe)) (##locat? _loc108774_))
            _loc108774_
            '#f)))
    (define __check-values
      (lambda (_obj108769_ _k108770_)
        (let ((_count108772_
               (if (let () (declare (not safe)) (##values? _obj108769_))
                   (let () (declare (not safe)) (##vector-length _obj108769_))
                   '1)))
          (if (fx= _count108772_ _k108770_)
              '#!void
              (error (if (fx< _count108772_ _k108770_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj108769_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj108769_))
                         _obj108769_)
                     _k108770_)))))
    (define __compile
      (lambda (_stx108739_)
        (let* ((_$e108741_ _stx108739_)
               (_$E108743108749_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108741_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108741_))
              (let* ((_$tgt108744108752_
                      (let () (declare (not safe)) (__AST-e _$e108741_)))
                     (_$hd108745108755_
                      (let () (declare (not safe)) (##car _$tgt108744108752_)))
                     (_$tl108746108758_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108744108752_))))
                (let* ((_form108762_ _$hd108745108755_)
                       (_$e108764_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form108762_))))
                  (if _$e108764_
                      ((lambda (_bind108767_)
                         ((##structure-ref _bind108767_ '1 __syntax::t '#f)
                          _stx108739_))
                       _$e108764_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx108739_
                         _form108762_)))))
              (let () (declare (not safe)) (_$E108743108749_))))))
    (define __compile-error__%
      (lambda (_stx108726_ _detail108727_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx108726_
           _detail108727_))))
    (define __compile-error__0
      (lambda (_stx108732_)
        (let ((_detail108734_ '#f))
          (declare (not safe))
          (__compile-error__% _stx108732_ _detail108734_))))
    (define __compile-error
      (lambda _g113707_
        (let ((_g113706_ (let () (declare (not safe)) (##length _g113707_))))
          (cond ((let () (declare (not safe)) (##fx= _g113706_ 1))
                 (apply (lambda (_stx108732_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx108732_)))
                        _g113707_))
                ((let () (declare (not safe)) (##fx= _g113706_ 2))
                 (apply (lambda (_stx108736_ _detail108737_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx108736_ _detail108737_)))
                        _g113707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113707_))))))
    (define __compile-ignore%
      (lambda (_stx108723_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx108723_))))
    (define __compile-begin%
      (lambda (_stx108698_)
        (let* ((_$e108700_ _stx108698_)
               (_$E108702108708_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108700_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108700_))
              (let* ((_$tgt108703108711_
                      (let () (declare (not safe)) (__AST-e _$e108700_)))
                     (_$hd108704108714_
                      (let () (declare (not safe)) (##car _$tgt108703108711_)))
                     (_$tl108705108717_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108703108711_))))
                (let* ((_body108721_ _$tl108705108717_)
                       (__tmp113708
                        (let ((__tmp113709 (map __compile _body108721_)))
                          (declare (not safe))
                          (cons 'begin __tmp113709))))
                  (declare (not safe))
                  (__SRC__% __tmp113708 _stx108698_)))
              (let () (declare (not safe)) (_$E108702108708_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108673_)
        (let* ((_$e108675_ _stx108673_)
               (_$E108677108683_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108675_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108675_))
              (let* ((_$tgt108678108686_
                      (let () (declare (not safe)) (__AST-e _$e108675_)))
                     (_$hd108679108689_
                      (let () (declare (not safe)) (##car _$tgt108678108686_)))
                     (_$tl108680108692_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108678108686_))))
                (let* ((_body108696_ _$tl108680108692_)
                       (__tmp113710
                        (let ((__tmp113711
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body108696_))))
                          (declare (not safe))
                          (cons 'begin __tmp113711))))
                  (declare (not safe))
                  (__SRC__% __tmp113710 _stx108673_)))
              (let () (declare (not safe)) (_$E108677108683_))))))
    (define __compile-import%
      (lambda (_stx108648_)
        (let* ((_$e108650_ _stx108648_)
               (_$E108652108658_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108650_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108650_))
              (let* ((_$tgt108653108661_
                      (let () (declare (not safe)) (__AST-e _$e108650_)))
                     (_$hd108654108664_
                      (let () (declare (not safe)) (##car _$tgt108653108661_)))
                     (_$tl108655108667_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108653108661_))))
                (let* ((_body108671_ _$tl108655108667_)
                       (__tmp113712
                        (let ((__tmp113713
                               (let ((__tmp113714
                                      (let ((__tmp113715
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108671_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp113715))))
                                 (declare (not safe))
                                 (cons __tmp113714 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp113713))))
                  (declare (not safe))
                  (__SRC__% __tmp113712 _stx108648_)))
              (let () (declare (not safe)) (_$E108652108658_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108595_)
        (let* ((_$e108597_ _stx108595_)
               (_$E108599108611_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108597_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108597_))
              (let* ((_$tgt108600108614_
                      (let () (declare (not safe)) (__AST-e _$e108597_)))
                     (_$hd108601108617_
                      (let () (declare (not safe)) (##car _$tgt108600108614_)))
                     (_$tl108602108620_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108600108614_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108602108620_))
                    (let* ((_$tgt108603108624_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108602108620_)))
                           (_$hd108604108627_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108603108624_)))
                           (_$tl108605108630_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108603108624_))))
                      (let ((_ann108634_ _$hd108604108627_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108605108630_))
                            (let* ((_$tgt108606108636_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108605108630_)))
                                   (_$hd108607108639_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108606108636_)))
                                   (_$tl108608108642_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108606108636_))))
                              (let ((_expr108646_ _$hd108607108639_))
                                (if (let ((__tmp113716
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108608108642_))))
                                      (declare (not safe))
                                      (equal? __tmp113716 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108646_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108599108611_)))))
                            (let () (declare (not safe)) (_$E108599108611_)))))
                    (let () (declare (not safe)) (_$E108599108611_))))
              (let () (declare (not safe)) (_$E108599108611_))))))
    (define __compile-define-values%
      (lambda (_stx108486_)
        (let* ((_$e108488_ _stx108486_)
               (_$E108490108502_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108488_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108488_))
              (let* ((_$tgt108491108505_
                      (let () (declare (not safe)) (__AST-e _$e108488_)))
                     (_$hd108492108508_
                      (let () (declare (not safe)) (##car _$tgt108491108505_)))
                     (_$tl108493108511_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108491108505_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108493108511_))
                    (let* ((_$tgt108494108515_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108493108511_)))
                           (_$hd108495108518_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108494108515_)))
                           (_$tl108496108521_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108494108515_))))
                      (let ((_hd108525_ _$hd108495108518_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108496108521_))
                            (let* ((_$tgt108497108527_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108496108521_)))
                                   (_$hd108498108530_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108497108527_)))
                                   (_$tl108499108533_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108497108527_))))
                              (let ((_expr108537_ _$hd108498108530_))
                                (if (let ((__tmp113749
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108499108533_))))
                                      (declare (not safe))
                                      (equal? __tmp113749 '()))
                                    (let* ((_$e108539_ _hd108525_)
                                           (_$E108541108582_
                                            (lambda ()
                                              (let ((_$E108542108567_
                                                     (lambda ()
                                                       (let* ((_$E108543108554_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108539_))))
                      (_ids108557_ _hd108525_)
                      (_len108559_ (length _ids108557_))
                      (_tmp108561_
                       (let ((__tmp113717 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp113717))))
                 (let ((__tmp113718
                        (let ((__tmp113719
                               (let ((__tmp113736
                                      (let ((__tmp113737
                                             (let ((__tmp113738
                                                    (let ((__tmp113739
                                                           (let ((__tmp113740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108537_))))
                     (declare (not safe))
                     (cons __tmp113740 '()))))
              (declare (not safe))
              (cons _tmp108561_ __tmp113739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp113738))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113737 _stx108486_)))
                                     (__tmp113720
                                      (let ((__tmp113732
                                             (let ((__tmp113733
                                                    (let ((__tmp113734
                                                           (let ((__tmp113735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108559_ '()))))
                     (declare (not safe))
                     (cons _tmp108561_ __tmp113735))))
              (declare (not safe))
              (cons '__check-values __tmp113734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp113733
                                                _stx108486_)))
                                            (__tmp113721
                                             (let ((__tmp113722
                                                    (let ((__tmp113724
                                                           (lambda (_id108564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108565_)
                     (if (let () (declare (not safe)) (__AST-e _id108564_))
                         (let ((__tmp113725
                                (let ((__tmp113726
                                       (let ((__tmp113731
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108564_)))
                                             (__tmp113727
                                              (let ((__tmp113728
                                                     (let ((__tmp113729
                                                            (let ((__tmp113730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108565_ '()))))
                      (declare (not safe))
                      (cons _tmp108561_ __tmp113730))))
               (declare (not safe))
               (cons '##vector-ref __tmp113729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113728 '()))))
                                         (declare (not safe))
                                         (cons __tmp113731 __tmp113727))))
                                  (declare (not safe))
                                  (cons 'define __tmp113726))))
                           (declare (not safe))
                           (__SRC__% __tmp113725 _stx108486_))
                         '#f)))
                  (__tmp113723
                   (let () (declare (not safe)) (iota _len108559_))))
              (declare (not safe))
              (filter-map2 __tmp113724 _ids108557_ __tmp113723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp113722))))
                                        (declare (not safe))
                                        (cons __tmp113732 __tmp113721))))
                                 (declare (not safe))
                                 (cons __tmp113736 __tmp113720))))
                          (declare (not safe))
                          (cons 'begin __tmp113719))))
                   (declare (not safe))
                   (__SRC__% __tmp113718 _stx108486_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108539_))
                                                    (let* ((_$tgt108544108570_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108539_)))
                                                           (_$hd108545108573_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108544108570_)))
                                                           (_$tl108546108576_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108544108570_))))
                                                      (let ((_id108580_
                                                             _$hd108545108573_))
                                                        (if (let ((__tmp113746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108546108576_))))
                      (declare (not safe))
                      (equal? __tmp113746 '()))
                    (let ((__tmp113741
                           (let ((__tmp113742
                                  (let ((__tmp113745
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108580_)))
                                        (__tmp113743
                                         (let ((__tmp113744
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108537_))))
                                           (declare (not safe))
                                           (cons __tmp113744 '()))))
                                    (declare (not safe))
                                    (cons __tmp113745 __tmp113743))))
                             (declare (not safe))
                             (cons 'define __tmp113742))))
                      (declare (not safe))
                      (__SRC__% __tmp113741 _stx108486_))
                    (let () (declare (not safe)) (_$E108542108567_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108542108567_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108539_))
                                          (let* ((_$tgt108547108585_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108539_)))
                                                 (_$hd108548108588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108547108585_)))
                                                 (_$tl108549108591_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108547108585_))))
                                            (if (let ((__tmp113748
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108548108588_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113748 '#f))
                                                (if (let ((__tmp113747
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108549108591_))))
                                                      (declare (not safe))
                                                      (equal? __tmp113747 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108537_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108541108582_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108541108582_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108541108582_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108490108502_)))))
                            (let () (declare (not safe)) (_$E108490108502_)))))
                    (let () (declare (not safe)) (_$E108490108502_))))
              (let () (declare (not safe)) (_$E108490108502_))))))
    (define __compile-head-id
      (lambda (_e108484_)
        (let ((__tmp113750
               (if (let () (declare (not safe)) (__AST-e _e108484_))
                   _e108484_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp113750))))
    (define __compile-lambda-head
      (lambda (_hd108441_)
        (let _recur108443_ ((_rest108445_ _hd108441_))
          (let* ((_$e108447_ _rest108445_)
                 (_$E108449108467_
                  (lambda ()
                    (let ((_$E108450108464_
                           (lambda ()
                             (let* ((_$E108451108459_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108447_))))
                                    (_tail108462_ _$e108447_))
                               (declare (not safe))
                               (__compile-head-id _tail108462_)))))
                      (if (let ((__tmp113751
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108447_))))
                            (declare (not safe))
                            (equal? __tmp113751 '()))
                          '()
                          (let () (declare (not safe)) (_$E108450108464_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108447_))
                (let* ((_$tgt108452108470_
                        (let () (declare (not safe)) (__AST-e _$e108447_)))
                       (_$hd108453108473_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108452108470_)))
                       (_$tl108454108476_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108452108470_))))
                  (let* ((_hd108480_ _$hd108453108473_)
                         (_rest108482_ _$tl108454108476_))
                    (let ((__tmp113753
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108480_)))
                          (__tmp113752
                           (let ()
                             (declare (not safe))
                             (_recur108443_ _rest108482_))))
                      (declare (not safe))
                      (cons __tmp113753 __tmp113752))))
                (let () (declare (not safe)) (_$E108449108467_)))))))
    (define __compile-lambda%
      (lambda (_stx108388_)
        (let* ((_$e108390_ _stx108388_)
               (_$E108392108404_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108390_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108390_))
              (let* ((_$tgt108393108407_
                      (let () (declare (not safe)) (__AST-e _$e108390_)))
                     (_$hd108394108410_
                      (let () (declare (not safe)) (##car _$tgt108393108407_)))
                     (_$tl108395108413_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108393108407_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108395108413_))
                    (let* ((_$tgt108396108417_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108395108413_)))
                           (_$hd108397108420_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108396108417_)))
                           (_$tl108398108423_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108396108417_))))
                      (let ((_hd108427_ _$hd108397108420_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108398108423_))
                            (let* ((_$tgt108399108429_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108398108423_)))
                                   (_$hd108400108432_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108399108429_)))
                                   (_$tl108401108435_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108399108429_))))
                              (let ((_body108439_ _$hd108400108432_))
                                (if (let ((__tmp113759
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108401108435_))))
                                      (declare (not safe))
                                      (equal? __tmp113759 '()))
                                    (let ((__tmp113754
                                           (let ((__tmp113755
                                                  (let ((__tmp113758
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108427_)))
                                                        (__tmp113756
                                                         (let ((__tmp113757
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108439_))))
                   (declare (not safe))
                   (cons __tmp113757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113758
                                                          __tmp113756))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp113755))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113754 _stx108388_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108392108404_)))))
                            (let () (declare (not safe)) (_$E108392108404_)))))
                    (let () (declare (not safe)) (_$E108392108404_))))
              (let () (declare (not safe)) (_$E108392108404_))))))
    (define __compile-case-lambda%
      (lambda (_stx108180_)
        (letrec ((_variadic?108182_
                  (lambda (_hd108353_)
                    (let* ((_$e108355_ _hd108353_)
                           (_$E108357108373_
                            (lambda ()
                              (let ((_$E108358108370_
                                     (lambda ()
                                       (let ((_$E108359108367_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108355_)))))
                                         '#t))))
                                (if (let ((__tmp113760
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108355_))))
                                      (declare (not safe))
                                      (equal? __tmp113760 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108358108370_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108355_))
                          (let* ((_$tgt108360108376_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108355_)))
                                 (_$hd108361108379_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108360108376_)))
                                 (_$tl108362108382_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108360108376_))))
                            (let ((_rest108386_ _$tl108362108382_))
                              (declare (not safe))
                              (_variadic?108182_ _rest108386_)))
                          (let () (declare (not safe)) (_$E108357108373_))))))
                 (_arity108183_
                  (lambda (_hd108318_)
                    (let _lp108320_ ((_rest108322_ _hd108318_) (_k108323_ '0))
                      (let* ((_$e108325_ _rest108322_)
                             (_$E108327108338_
                              (lambda ()
                                (let ((_$E108328108335_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108325_)))))
                                  _k108323_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108325_))
                            (let* ((_$tgt108329108341_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108325_)))
                                   (_$hd108330108344_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108329108341_)))
                                   (_$tl108331108347_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108329108341_))))
                              (let* ((_rest108351_ _$tl108331108347_)
                                     (__tmp113761
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108323_ '1))))
                                (declare (not safe))
                                (_lp108320_ _rest108351_ __tmp113761)))
                            (let ()
                              (declare (not safe))
                              (_$E108327108338_)))))))
                 (_generate108184_
                  (lambda (_rest108245_ _args108246_ _len108247_)
                    (let* ((_$e108249_ _rest108245_)
                           (_$E108251108262_
                            (lambda ()
                              (let* ((_$E108252108259_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108249_))))
                                     (__tmp113762
                                      (let ((__tmp113763
                                             (let ((__tmp113764
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108246_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp113764))))
                                        (declare (not safe))
                                        (cons 'error __tmp113763))))
                                (declare (not safe))
                                (__SRC__% __tmp113762 _stx108180_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108249_))
                          (let* ((_$tgt108253108265_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108249_)))
                                 (_$hd108254108268_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108253108265_)))
                                 (_$tl108255108271_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108253108265_))))
                            (let* ((_clause108275_ _$hd108254108268_)
                                   (_rest108277_ _$tl108255108271_)
                                   (_$e108279_ _clause108275_)
                                   (_$E108281108290_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108279_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108279_))
                                  (let* ((_$tgt108282108293_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108279_)))
                                         (_$hd108283108296_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108282108293_)))
                                         (_$tl108284108299_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108282108293_))))
                                    (let ((_hd108303_ _$hd108283108296_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108284108299_))
                                          (let* ((_$tgt108285108305_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108284108299_)))
                                                 (_$hd108286108308_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108285108305_)))
                                                 (_$tl108287108311_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108285108305_))))
                                            (if (let ((__tmp113779
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108287108311_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113779 '()))
                                                (let ((_clen108315_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108183_
                                                          _hd108303_)))
                                                      (_cmp108316_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108182_
                                                              _hd108303_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp113765
                                                         (let ((__tmp113766
                                                                (let ((__tmp113776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113777
                                      (let ((__tmp113778
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108315_ '()))))
                                        (declare (not safe))
                                        (cons _len108247_ __tmp113778))))
                                 (declare (not safe))
                                 (cons _cmp108316_ __tmp113777)))
                              (__tmp113767
                               (let ((__tmp113770
                                      (let ((__tmp113771
                                             (let ((__tmp113772
                                                    (let ((__tmp113774
                                                           (let ((__tmp113775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108275_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp113775)))
                  (__tmp113773
                   (let () (declare (not safe)) (cons _args108246_ '()))))
              (declare (not safe))
              (cons __tmp113774 __tmp113773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp113772))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113771 _stx108180_)))
                                     (__tmp113768
                                      (let ((__tmp113769
                                             (let ()
                                               (declare (not safe))
                                               (_generate108184_
                                                _rest108277_
                                                _args108246_
                                                _len108247_))))
                                        (declare (not safe))
                                        (cons __tmp113769 '()))))
                                 (declare (not safe))
                                 (cons __tmp113770 __tmp113768))))
                          (declare (not safe))
                          (cons __tmp113776 __tmp113767))))
                   (declare (not safe))
                   (cons 'if __tmp113766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp113765
                                                     _stx108180_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108281108290_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108281108290_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108281108290_)))))
                          (let () (declare (not safe)) (_$E108251108262_)))))))
          (let* ((_$e108186_ _stx108180_)
                 (_$E108188108220_
                  (lambda ()
                    (let ((_$E108189108202_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108186_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108186_))
                          (let* ((_$tgt108190108205_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108186_)))
                                 (_$hd108191108208_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108190108205_)))
                                 (_$tl108192108211_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108190108205_))))
                            (let ((_clauses108215_ _$tl108192108211_))
                              (let ((_args108217_
                                     (let ((__tmp113780 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113780 _stx108180_)))
                                    (_len108218_
                                     (let ((__tmp113781 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113781 _stx108180_))))
                                (let ((__tmp113782
                                       (let ((__tmp113783
                                              (let ((__tmp113784
                                                     (let ((__tmp113785
                                                            (let ((__tmp113786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113787
                                  (let ((__tmp113790
                                         (let ((__tmp113791
                                                (let ((__tmp113792
                                                       (let ((__tmp113793
                                                              (let ((__tmp113794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113795
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108217_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp113795))))
                        (declare (not safe))
                        (__SRC__% __tmp113794 _stx108180_))))
                 (declare (not safe))
                 (cons __tmp113793 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108218_
                                                        __tmp113792))))
                                           (declare (not safe))
                                           (cons __tmp113791 '())))
                                        (__tmp113788
                                         (let ((__tmp113789
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108184_
                                                   _clauses108215_
                                                   _args108217_
                                                   _len108218_))))
                                           (declare (not safe))
                                           (cons __tmp113789 '()))))
                                    (declare (not safe))
                                    (cons __tmp113790 __tmp113788))))
                             (declare (not safe))
                             (cons 'let __tmp113787))))
                      (declare (not safe))
                      (__SRC__% __tmp113786 _stx108180_))))
               (declare (not safe))
               (cons __tmp113785 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108217_
                                                      __tmp113784))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp113783))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113782 _stx108180_)))))
                          (let () (declare (not safe)) (_$E108189108202_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108186_))
                (let* ((_$tgt108193108223_
                        (let () (declare (not safe)) (__AST-e _$e108186_)))
                       (_$hd108194108226_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108193108223_)))
                       (_$tl108195108229_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108193108223_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108195108229_))
                      (let* ((_$tgt108196108233_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108195108229_)))
                             (_$hd108197108236_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108196108233_)))
                             (_$tl108198108239_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108196108233_))))
                        (let ((_clause108243_ _$hd108197108236_))
                          (if (let ((__tmp113797
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108198108239_))))
                                (declare (not safe))
                                (equal? __tmp113797 '()))
                              (let ((__tmp113796
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108243_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp113796))
                              (let ()
                                (declare (not safe))
                                (_$E108188108220_)))))
                      (let () (declare (not safe)) (_$E108188108220_))))
                (let () (declare (not safe)) (_$E108188108220_)))))))
    (define __compile-let-form
      (lambda (_stx107949_ _compile-simple107950_ _compile-values107951_)
        (letrec ((_simple-bind?107953_
                  (lambda (_hd108138_)
                    (let* ((_hd108139108149_ _hd108138_)
                           (_else108142108157_ (lambda () '#f)))
                      (let ((_K108145108170_ (lambda (_id108168_) '#t))
                            (_K108144108162_ (lambda () '#t)))
                        (let ((_try-match108141108165_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108139108149_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108144108162_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108142108157_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108139108149_))
                              (let ((_tl108147108175_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108139108149_)))
                                    (_hd108146108173_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108139108149_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108147108175_))
                                    (let ((_id108178_ _hd108146108173_))
                                      (declare (not safe))
                                      (_K108145108170_ _id108178_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108141108165_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108141108165_))))))))
                 (_car-e107954_
                  (lambda (_hd108136_)
                    (if (let () (declare (not safe)) (pair? _hd108136_))
                        (car _hd108136_)
                        _hd108136_))))
          (let* ((_$e107956_ _stx107949_)
                 (_$E107958108101_
                  (lambda ()
                    (let ((_$E107959107981_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e107956_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107956_))
                          (let* ((_$tgt107960107984_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107956_)))
                                 (_$hd107961107987_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107960107984_)))
                                 (_$tl107962107990_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107960107984_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107962107990_))
                                (let* ((_$tgt107963107994_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107962107990_)))
                                       (_$hd107964107997_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107963107994_)))
                                       (_$tl107965108000_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107963107994_))))
                                  (let ((_hd108004_ _$hd107964107997_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl107965108000_))
                                        (let* ((_$tgt107966108006_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl107965108000_)))
                                               (_$hd107967108009_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt107966108006_)))
                                               (_$tl107968108012_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt107966108006_))))
                                          (let ((_body108016_
                                                 _$hd107967108009_))
                                            (if (let ((__tmp113800
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107968108012_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113800 '()))
                                                (let* ((_hd-ids108056_
                                                        (map (lambda (_bind108018_)
                                                               (let* ((_$e108020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108018_)
                              (_$E108022108031_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108020_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108020_))
                             (let* ((_$tgt108023108034_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108020_)))
                                    (_$hd108024108037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108023108034_)))
                                    (_$tl108025108040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108023108034_))))
                               (let ((_ids108044_ _$hd108024108037_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108025108040_))
                                     (let* ((_$tgt108026108046_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108025108040_)))
                                            (_$hd108027108049_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108026108046_)))
                                            (_$tl108028108052_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108026108046_))))
                                       (if (let ((__tmp113798
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108028108052_))))
                                             (declare (not safe))
                                             (equal? __tmp113798 '()))
                                           _ids108044_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108022108031_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108022108031_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108022108031_)))))
                     _hd108004_))
               (_exprs108096_
                (map (lambda (_bind108058_)
                       (let* ((_$e108060_ _bind108058_)
                              (_$E108062108071_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108060_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108060_))
                             (let* ((_$tgt108063108074_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108060_)))
                                    (_$hd108064108077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108063108074_)))
                                    (_$tl108065108080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108063108074_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108065108080_))
                                   (let* ((_$tgt108066108084_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108065108080_)))
                                          (_$hd108067108087_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108066108084_)))
                                          (_$tl108068108090_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108066108084_))))
                                     (let ((_expr108094_ _$hd108067108087_))
                                       (if (let ((__tmp113799
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108068108090_))))
                                             (declare (not safe))
                                             (equal? __tmp113799 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108094_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108062108071_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108062108071_))))
                             (let ()
                               (declare (not safe))
                               (_$E108062108071_)))))
                     _hd108004_))
               (_body108098_
                (let () (declare (not safe)) (__compile _body108016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?107953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108056_))
              (_compile-simple107950_
               (map _car-e107954_ _hd-ids108056_)
               _exprs108096_
               _body108098_)
              (_compile-values107951_
               _hd-ids108056_
               _exprs108096_
               _body108098_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107959107981_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107959107981_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107959107981_))))
                          (let () (declare (not safe)) (_$E107959107981_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107956_))
                (let* ((_$tgt107969108104_
                        (let () (declare (not safe)) (__AST-e _$e107956_)))
                       (_$hd107970108107_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107969108104_)))
                       (_$tl107971108110_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107969108104_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl107971108110_))
                      (let* ((_$tgt107972108114_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl107971108110_)))
                             (_$hd107973108117_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt107972108114_)))
                             (_$tl107974108120_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt107972108114_))))
                        (if (let ((__tmp113802
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd107973108117_))))
                              (declare (not safe))
                              (equal? __tmp113802 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107974108120_))
                                (let* ((_$tgt107975108124_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107974108120_)))
                                       (_$hd107976108127_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107975108124_)))
                                       (_$tl107977108130_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107975108124_))))
                                  (let ((_body108134_ _$hd107976108127_))
                                    (if (let ((__tmp113801
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl107977108130_))))
                                          (declare (not safe))
                                          (equal? __tmp113801 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108134_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107958108101_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107958108101_)))
                            (let () (declare (not safe)) (_$E107958108101_))))
                      (let () (declare (not safe)) (_$E107958108101_))))
                (let () (declare (not safe)) (_$E107958108101_)))))))
    (define __compile-let-values%
      (lambda (_stx107764_)
        (letrec ((_compile-simple107766_
                  (lambda (_hd-ids107945_ _exprs107946_ _body107947_)
                    (let ((__tmp113803
                           (let ((__tmp113804
                                  (let ((__tmp113806
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107945_)
                                              _exprs107946_))
                                        (__tmp113805
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107947_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113806 __tmp113805))))
                             (declare (not safe))
                             (cons 'let __tmp113804))))
                      (declare (not safe))
                      (__SRC__% __tmp113803 _stx107764_))))
                 (_compile-values107767_
                  (lambda (_hd-ids107863_ _exprs107864_ _body107865_)
                    (let _lp107867_ ((_rest107869_ _hd-ids107863_)
                                     (_exprs107870_ _exprs107864_)
                                     (_bind107871_ '())
                                     (_post107872_ '()))
                      (let* ((_rest107873107887_ _rest107869_)
                             (_else107876107895_
                              (lambda ()
                                (let ((__tmp113807
                                       (let ((__tmp113808
                                              (let ((__tmp113811
                                                     (reverse _bind107871_))
                                                    (__tmp113809
                                                     (let ((__tmp113810
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post107768_
                                                               _post107872_
                                                               _body107865_))))
                                                       (declare (not safe))
                                                       (cons __tmp113810
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp113811
                                                      __tmp113809))))
                                         (declare (not safe))
                                         (cons 'let __tmp113808))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113807 _stx107764_)))))
                        (let ((_K107881107928_
                               (lambda (_rest107925_ _id107926_)
                                 (let ((__tmp113817 (cdr _exprs107870_))
                                       (__tmp113812
                                        (let ((__tmp113813
                                               (let ((__tmp113816
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107926_)))
                                                     (__tmp113814
                                                      (let ((__tmp113815
                                                             (car _exprs107870_)))
                                                        (declare (not safe))
                                                        (cons __tmp113815
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113816
                                                       __tmp113814))))
                                          (declare (not safe))
                                          (cons __tmp113813 _bind107871_))))
                                   (declare (not safe))
                                   (_lp107867_
                                    _rest107925_
                                    __tmp113817
                                    __tmp113812
                                    _post107872_))))
                              (_K107878107910_
                               (lambda (_rest107899_ _hd107900_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107900_))
                                     (let ((__tmp113838 (cdr _exprs107870_))
                                           (__tmp113831
                                            (let ((__tmp113832
                                                   (let ((__tmp113837
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107900_)))
                                                         (__tmp113833
                                                          (let ((__tmp113834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113835
                                (let ((__tmp113836 (car _exprs107870_)))
                                  (declare (not safe))
                                  (cons __tmp113836 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113835))))
                    (declare (not safe))
                    (cons __tmp113834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113837
                                                           __tmp113833))))
                                              (declare (not safe))
                                              (cons __tmp113832
                                                    _bind107871_))))
                                       (declare (not safe))
                                       (_lp107867_
                                        _rest107899_
                                        __tmp113838
                                        __tmp113831
                                        _post107872_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107900_))
                                         (let* ((_len107902_
                                                 (length _hd107900_))
                                                (_tmp107904_
                                                 (let ((__tmp113818 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113818))))
                                           (let ((__tmp113830
                                                  (cdr _exprs107870_))
                                                 (__tmp113826
                                                  (let ((__tmp113827
                                                         (let ((__tmp113828
                                                                (let ((__tmp113829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107870_)))
                          (declare (not safe))
                          (cons __tmp113829 '()))))
                   (declare (not safe))
                   (cons _tmp107904_ __tmp113828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113827
                                                          _bind107871_)))
                                                 (__tmp113819
                                                  (let ((__tmp113820
                                                         (let ((__tmp113821
                                                                (let ((__tmp113822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113824
                                      (lambda (_id107907_ _k107908_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107907_))
                                            (let ((__tmp113825
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107907_))))
                                              (declare (not safe))
                                              (cons __tmp113825 _k107908_))
                                            '#f)))
                                     (__tmp113823
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107902_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113824
                                  _hd107900_
                                  __tmp113823))))
                          (declare (not safe))
                          (cons _len107902_ __tmp113822))))
                   (declare (not safe))
                   (cons _tmp107904_ __tmp113821))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113820
                                                          _post107872_))))
                                             (declare (not safe))
                                             (_lp107867_
                                              _rest107899_
                                              __tmp113830
                                              __tmp113826
                                              __tmp113819)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107764_
                                            _hd107900_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107873107887_))
                              (let ((_tl107883107933_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107873107887_)))
                                    (_hd107882107931_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107873107887_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107882107931_))
                                    (let ((_tl107885107938_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107882107931_)))
                                          (_hd107884107936_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107882107931_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107885107938_))
                                          (let ((_id107941_ _hd107884107936_)
                                                (_rest107943_
                                                 _tl107883107933_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107881107928_
                                               _rest107943_
                                               _id107941_)))
                                          (let ((_hd107918_ _hd107882107931_)
                                                (_rest107920_
                                                 _tl107883107933_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107878107910_
                                               _rest107920_
                                               _hd107918_)))))
                                    (let ((_hd107918_ _hd107882107931_)
                                          (_rest107920_ _tl107883107933_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107878107910_
                                         _rest107920_
                                         _hd107918_)))))
                              (let ()
                                (declare (not safe))
                                (_else107876107895_))))))))
                 (_compile-post107768_
                  (lambda (_post107770_ _body107771_)
                    (let _lp107773_ ((_rest107775_ _post107770_)
                                     (_check107776_ '())
                                     (_bind107777_ '()))
                      (let* ((_rest107778107790_ _rest107775_)
                             (_else107780107798_
                              (lambda ()
                                (let ((__tmp113839
                                       (let ((__tmp113840
                                              (let ((__tmp113841
                                                     (let ((__tmp113842
                                                            (let ((__tmp113843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113844
                                  (let ((__tmp113845
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107771_ '()))))
                                    (declare (not safe))
                                    (cons _bind107777_ __tmp113845))))
                             (declare (not safe))
                             (cons 'let __tmp113844))))
                      (declare (not safe))
                      (__SRC__% __tmp113843 _stx107764_))))
               (declare (not safe))
               (cons __tmp113842 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113841
                                                        _check107776_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113840))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113839 _stx107764_))))
                             (_K107782107837_
                              (lambda (_rest107801_
                                       _init107802_
                                       _len107803_
                                       _tmp107804_)
                                (let ((__tmp113853
                                       (let ((__tmp113854
                                              (let ((__tmp113855
                                                     (let ((__tmp113856
                                                            (let ((__tmp113857
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107803_ '()))))
                      (declare (not safe))
                      (cons _tmp107804_ __tmp113857))))
               (declare (not safe))
               (cons '__check-values __tmp113856))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113855
                                                 _stx107764_))))
                                         (declare (not safe))
                                         (cons __tmp113854 _check107776_)))
                                      (__tmp113846
                                       (let ((__tmp113847
                                              (lambda (_hd107806_ _r107807_)
                                                (let* ((_hd107808107815_
                                                        _hd107806_)
                                                       (_E107810107819_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107808107815_)))
               (_K107811107825_
                (lambda (_k107822_ _id107823_)
                  (let ((__tmp113848
                         (let ((__tmp113849
                                (let ((__tmp113850
                                       (let ((__tmp113851
                                              (let ((__tmp113852
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k107822_ '()))))
                                                (declare (not safe))
                                                (cons _tmp107804_
                                                      __tmp113852))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp113851))))
                                  (declare (not safe))
                                  (cons __tmp113850 '()))))
                           (declare (not safe))
                           (cons _id107823_ __tmp113849))))
                    (declare (not safe))
                    (cons __tmp113848 _r107807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107808107815_))
                                                      (let ((_hd107812107828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107808107815_)))
                    (_tl107813107830_
                     (let () (declare (not safe)) (##cdr _hd107808107815_))))
                (let* ((_id107833_ _hd107812107828_)
                       (_k107835_ _tl107813107830_))
                  (declare (not safe))
                  (_K107811107825_ _k107835_ _id107833_)))
              (let () (declare (not safe)) (_E107810107819_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113847
                                                 _bind107777_
                                                 _init107802_))))
                                  (declare (not safe))
                                  (_lp107773_
                                   _rest107801_
                                   __tmp113853
                                   __tmp113846)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107778107790_))
                            (let ((_hd107783107840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107778107790_)))
                                  (_tl107784107842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107778107790_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107783107840_))
                                  (let ((_hd107785107845_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107783107840_)))
                                        (_tl107786107847_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107783107840_))))
                                    (let ((_tmp107850_ _hd107785107845_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107786107847_))
                                          (let ((_hd107787107852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107786107847_)))
                                                (_tl107788107854_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107786107847_))))
                                            (let* ((_len107857_
                                                    _hd107787107852_)
                                                   (_init107859_
                                                    _tl107788107854_)
                                                   (_rest107861_
                                                    _tl107784107842_))
                                              (declare (not safe))
                                              (_K107782107837_
                                               _rest107861_
                                               _init107859_
                                               _len107857_
                                               _tmp107850_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107780107798_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107780107798_))))
                            (let ()
                              (declare (not safe))
                              (_else107780107798_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107764_
             _compile-simple107766_
             _compile-values107767_)))))
    (define __compile-letrec-values%
      (lambda (_stx107564_)
        (letrec ((_compile-simple107566_
                  (lambda (_hd-ids107760_ _exprs107761_ _body107762_)
                    (let ((__tmp113858
                           (let ((__tmp113859
                                  (let ((__tmp113861
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107760_)
                                              _exprs107761_))
                                        (__tmp113860
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107762_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113861 __tmp113860))))
                             (declare (not safe))
                             (cons 'letrec __tmp113859))))
                      (declare (not safe))
                      (__SRC__% __tmp113858 _stx107564_))))
                 (_compile-values107567_
                  (lambda (_hd-ids107674_ _exprs107675_ _body107676_)
                    (let _lp107678_ ((_rest107680_ _hd-ids107674_)
                                     (_exprs107681_ _exprs107675_)
                                     (_pre107682_ '())
                                     (_bind107683_ '())
                                     (_post107684_ '()))
                      (let* ((_rest107685107699_ _rest107680_)
                             (_else107688107707_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107568_
                                   _pre107682_
                                   _bind107683_
                                   _post107684_
                                   _body107676_)))))
                        (let ((_K107693107743_
                               (lambda (_rest107740_ _id107741_)
                                 (let ((__tmp113867 (cdr _exprs107681_))
                                       (__tmp113862
                                        (let ((__tmp113863
                                               (let ((__tmp113866
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107741_)))
                                                     (__tmp113864
                                                      (let ((__tmp113865
                                                             (car _exprs107681_)))
                                                        (declare (not safe))
                                                        (cons __tmp113865
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113866
                                                       __tmp113864))))
                                          (declare (not safe))
                                          (cons __tmp113863 _bind107683_))))
                                   (declare (not safe))
                                   (_lp107678_
                                    _rest107740_
                                    __tmp113867
                                    _pre107682_
                                    __tmp113862
                                    _post107684_))))
                              (_K107690107725_
                               (lambda (_rest107711_ _hd107712_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107712_))
                                     (let ((__tmp113895 (cdr _exprs107681_))
                                           (__tmp113888
                                            (let ((__tmp113889
                                                   (let ((__tmp113894
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107712_)))
                                                         (__tmp113890
                                                          (let ((__tmp113891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113892
                                (let ((__tmp113893 (car _exprs107681_)))
                                  (declare (not safe))
                                  (cons __tmp113893 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113892))))
                    (declare (not safe))
                    (cons __tmp113891 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113894
                                                           __tmp113890))))
                                              (declare (not safe))
                                              (cons __tmp113889
                                                    _bind107683_))))
                                       (declare (not safe))
                                       (_lp107678_
                                        _rest107711_
                                        __tmp113895
                                        _pre107682_
                                        __tmp113888
                                        _post107684_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107712_))
                                         (let* ((_len107714_
                                                 (length _hd107712_))
                                                (_tmp107716_
                                                 (let ((__tmp113868 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113868))))
                                           (let ((__tmp113887
                                                  (cdr _exprs107681_))
                                                 (__tmp113880
                                                  (let ((__tmp113881
                                                         (lambda (_id107719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r107720_)
                   (if (let () (declare (not safe)) (__AST-e _id107719_))
                       (let ((__tmp113882
                              (let ((__tmp113886
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id107719_)))
                                    (__tmp113883
                                     (let ((__tmp113884
                                            (let ((__tmp113885
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp113885))))
                                       (declare (not safe))
                                       (cons __tmp113884 '()))))
                                (declare (not safe))
                                (cons __tmp113886 __tmp113883))))
                         (declare (not safe))
                         (cons __tmp113882 _r107720_))
                       _r107720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp113881
                                                            _pre107682_
                                                            _hd107712_)))
                                                 (__tmp113876
                                                  (let ((__tmp113877
                                                         (let ((__tmp113878
                                                                (let ((__tmp113879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107681_)))
                          (declare (not safe))
                          (cons __tmp113879 '()))))
                   (declare (not safe))
                   (cons _tmp107716_ __tmp113878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113877
                                                          _bind107683_)))
                                                 (__tmp113869
                                                  (let ((__tmp113870
                                                         (let ((__tmp113871
                                                                (let ((__tmp113872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113874
                                      (lambda (_id107722_ _k107723_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107722_))
                                            (let ((__tmp113875
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107722_))))
                                              (declare (not safe))
                                              (cons __tmp113875 _k107723_))
                                            '#f)))
                                     (__tmp113873
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107714_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113874
                                  _hd107712_
                                  __tmp113873))))
                          (declare (not safe))
                          (cons _len107714_ __tmp113872))))
                   (declare (not safe))
                   (cons _tmp107716_ __tmp113871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113870
                                                          _post107684_))))
                                             (declare (not safe))
                                             (_lp107678_
                                              _rest107711_
                                              __tmp113887
                                              __tmp113880
                                              __tmp113876
                                              __tmp113869)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107564_
                                            _hd107712_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107685107699_))
                              (let ((_tl107695107748_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107685107699_)))
                                    (_hd107694107746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107685107699_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107694107746_))
                                    (let ((_tl107697107753_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107694107746_)))
                                          (_hd107696107751_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107694107746_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107697107753_))
                                          (let ((_id107756_ _hd107696107751_)
                                                (_rest107758_
                                                 _tl107695107748_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107693107743_
                                               _rest107758_
                                               _id107756_)))
                                          (let ((_hd107733_ _hd107694107746_)
                                                (_rest107735_
                                                 _tl107695107748_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107690107725_
                                               _rest107735_
                                               _hd107733_)))))
                                    (let ((_hd107733_ _hd107694107746_)
                                          (_rest107735_ _tl107695107748_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107690107725_
                                         _rest107735_
                                         _hd107733_)))))
                              (let ()
                                (declare (not safe))
                                (_else107688107707_))))))))
                 (_compile-inner107568_
                  (lambda (_pre107669_ _bind107670_ _post107671_ _body107672_)
                    (if (let () (declare (not safe)) (null? _pre107669_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107569_
                           _bind107670_
                           _post107671_
                           _body107672_))
                        (let ((__tmp113896
                               (let ((__tmp113897
                                      (let ((__tmp113900 (reverse _pre107669_))
                                            (__tmp113898
                                             (let ((__tmp113899
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107569_
                                                       _bind107670_
                                                       _post107671_
                                                       _body107672_))))
                                               (declare (not safe))
                                               (cons __tmp113899 '()))))
                                        (declare (not safe))
                                        (cons __tmp113900 __tmp113898))))
                                 (declare (not safe))
                                 (cons 'let __tmp113897))))
                          (declare (not safe))
                          (__SRC__% __tmp113896 _stx107564_)))))
                 (_compile-bind107569_
                  (lambda (_bind107665_ _post107666_ _body107667_)
                    (let ((__tmp113901
                           (let ((__tmp113902
                                  (let ((__tmp113905 (reverse _bind107665_))
                                        (__tmp113903
                                         (let ((__tmp113904
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107570_
                                                   _post107666_
                                                   _body107667_))))
                                           (declare (not safe))
                                           (cons __tmp113904 '()))))
                                    (declare (not safe))
                                    (cons __tmp113905 __tmp113903))))
                             (declare (not safe))
                             (cons 'letrec __tmp113902))))
                      (declare (not safe))
                      (__SRC__% __tmp113901 _stx107564_))))
                 (_compile-post107570_
                  (lambda (_post107572_ _body107573_)
                    (let _lp107575_ ((_rest107577_ _post107572_)
                                     (_check107578_ '())
                                     (_bind107579_ '()))
                      (let* ((_rest107580107592_ _rest107577_)
                             (_else107582107600_
                              (lambda ()
                                (let ((__tmp113906
                                       (let ((__tmp113907
                                              (let ((__tmp113908
                                                     (let ((__tmp113909
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp113909 _bind107579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113908
                                                        _check107578_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113907))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113906 _stx107564_))))
                             (_K107584107639_
                              (lambda (_rest107603_
                                       _init107604_
                                       _len107605_
                                       _tmp107606_)
                                (let ((__tmp113918
                                       (let ((__tmp113919
                                              (let ((__tmp113920
                                                     (let ((__tmp113921
                                                            (let ((__tmp113922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107605_ '()))))
                      (declare (not safe))
                      (cons _tmp107606_ __tmp113922))))
               (declare (not safe))
               (cons '__check-values __tmp113921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113920
                                                 _stx107564_))))
                                         (declare (not safe))
                                         (cons __tmp113919 _check107578_)))
                                      (__tmp113910
                                       (let ((__tmp113911
                                              (lambda (_hd107608_ _r107609_)
                                                (let* ((_hd107610107617_
                                                        _hd107608_)
                                                       (_E107612107621_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107610107617_)))
               (_K107613107627_
                (lambda (_k107624_ _id107625_)
                  (let ((__tmp113912
                         (let ((__tmp113913
                                (let ((__tmp113914
                                       (let ((__tmp113915
                                              (let ((__tmp113916
                                                     (let ((__tmp113917
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107606_ __tmp113917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp113916))))
                                         (declare (not safe))
                                         (cons __tmp113915 '()))))
                                  (declare (not safe))
                                  (cons _id107625_ __tmp113914))))
                           (declare (not safe))
                           (cons 'set! __tmp113913))))
                    (declare (not safe))
                    (cons __tmp113912 _r107609_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107610107617_))
                                                      (let ((_hd107614107630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107610107617_)))
                    (_tl107615107632_
                     (let () (declare (not safe)) (##cdr _hd107610107617_))))
                (let* ((_id107635_ _hd107614107630_)
                       (_k107637_ _tl107615107632_))
                  (declare (not safe))
                  (_K107613107627_ _k107637_ _id107635_)))
              (let () (declare (not safe)) (_E107612107621_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113911
                                                 _bind107579_
                                                 _init107604_))))
                                  (declare (not safe))
                                  (_lp107575_
                                   _rest107603_
                                   __tmp113918
                                   __tmp113910)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107580107592_))
                            (let ((_hd107585107642_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107580107592_)))
                                  (_tl107586107644_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107580107592_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107585107642_))
                                  (let ((_hd107587107647_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107585107642_)))
                                        (_tl107588107649_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107585107642_))))
                                    (let ((_tmp107652_ _hd107587107647_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107588107649_))
                                          (let ((_hd107589107654_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107588107649_)))
                                                (_tl107590107656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107588107649_))))
                                            (let* ((_len107659_
                                                    _hd107589107654_)
                                                   (_init107661_
                                                    _tl107590107656_)
                                                   (_rest107663_
                                                    _tl107586107644_))
                                              (declare (not safe))
                                              (_K107584107639_
                                               _rest107663_
                                               _init107661_
                                               _len107659_
                                               _tmp107652_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107582107600_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107582107600_))))
                            (let ()
                              (declare (not safe))
                              (_else107582107600_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107564_
             _compile-simple107566_
             _compile-values107567_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107319_)
        (letrec ((_compile-simple107321_
                  (lambda (_hd-ids107560_ _exprs107561_ _body107562_)
                    (let ((__tmp113923
                           (let ((__tmp113924
                                  (let ((__tmp113926
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107560_)
                                              _exprs107561_))
                                        (__tmp113925
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107562_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113926 __tmp113925))))
                             (declare (not safe))
                             (cons 'letrec* __tmp113924))))
                      (declare (not safe))
                      (__SRC__% __tmp113923 _stx107319_))))
                 (_compile-values107322_
                  (lambda (_hd-ids107471_ _exprs107472_ _body107473_)
                    (let _lp107475_ ((_rest107477_ _hd-ids107471_)
                                     (_exprs107478_ _exprs107472_)
                                     (_bind107479_ '())
                                     (_post107480_ '()))
                      (let* ((_rest107481107495_ _rest107477_)
                             (_else107484107503_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107323_
                                   _bind107479_
                                   _post107480_
                                   _body107473_)))))
                        (let ((_K107489107543_
                               (lambda (_rest107538_ _hd107539_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107539_))
                                     (let ((_id107541_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107539_))))
                                       (let ((__tmp113941 (cdr _exprs107478_))
                                             (__tmp113936
                                              (let ((__tmp113937
                                                     (let ((__tmp113938
                                                            (let ((__tmp113939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113940
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113940))))
                      (declare (not safe))
                      (cons __tmp113939 '()))))
               (declare (not safe))
               (cons _id107541_ __tmp113938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113937
                                                      _bind107479_)))
                                             (__tmp113932
                                              (let ((__tmp113933
                                                     (let ((__tmp113934
                                                            (let ((__tmp113935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107478_)))
                      (declare (not safe))
                      (cons __tmp113935 '()))))
               (declare (not safe))
               (cons _id107541_ __tmp113934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113933
                                                      _post107480_))))
                                         (declare (not safe))
                                         (_lp107475_
                                          _rest107538_
                                          __tmp113941
                                          __tmp113936
                                          __tmp113932)))
                                     (let ((__tmp113931 (cdr _exprs107478_))
                                           (__tmp113927
                                            (let ((__tmp113928
                                                   (let ((__tmp113929
                                                          (let ((__tmp113930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107478_)))
                    (declare (not safe))
                    (cons __tmp113930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp113929))))
                                              (declare (not safe))
                                              (cons __tmp113928
                                                    _post107480_))))
                                       (declare (not safe))
                                       (_lp107475_
                                        _rest107538_
                                        __tmp113931
                                        _bind107479_
                                        __tmp113927)))))
                              (_K107486107523_
                               (lambda (_rest107507_ _hd107508_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107508_))
                                     (let ((_id107510_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107508_))))
                                       (let ((__tmp113977 (cdr _exprs107478_))
                                             (__tmp113972
                                              (let ((__tmp113973
                                                     (let ((__tmp113974
                                                            (let ((__tmp113975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113976
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113976))))
                      (declare (not safe))
                      (cons __tmp113975 '()))))
               (declare (not safe))
               (cons _id107510_ __tmp113974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113973
                                                      _bind107479_)))
                                             (__tmp113966
                                              (let ((__tmp113967
                                                     (let ((__tmp113968
                                                            (let ((__tmp113969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113970
                                  (let ((__tmp113971 (car _exprs107478_)))
                                    (declare (not safe))
                                    (cons __tmp113971 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp113970))))
                      (declare (not safe))
                      (cons __tmp113969 '()))))
               (declare (not safe))
               (cons _id107510_ __tmp113968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113967
                                                      _post107480_))))
                                         (declare (not safe))
                                         (_lp107475_
                                          _rest107507_
                                          __tmp113977
                                          __tmp113972
                                          __tmp113966)))
                                     (if (let ((__tmp113965
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107508_))))
                                           (declare (not safe))
                                           (not __tmp113965))
                                         (let ((__tmp113964
                                                (cdr _exprs107478_))
                                               (__tmp113960
                                                (let ((__tmp113961
                                                       (let ((__tmp113962
                                                              (let ((__tmp113963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107478_)))
                        (declare (not safe))
                        (cons __tmp113963 '()))))
                 (declare (not safe))
                 (cons '#f __tmp113962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113961
                                                        _post107480_))))
                                           (declare (not safe))
                                           (_lp107475_
                                            _rest107507_
                                            __tmp113964
                                            _bind107479_
                                            __tmp113960))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107508_))
                                             (let* ((_len107512_
                                                     (length _hd107508_))
                                                    (_tmp107514_
                                                     (let ((__tmp113942
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp113942))))
                                               (let ((__tmp113959
                                                      (cdr _exprs107478_))
                                                     (__tmp113952
                                                      (let ((__tmp113953
                                                             (lambda (_id107517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107518_)
                       (if (let () (declare (not safe)) (__AST-e _id107517_))
                           (let ((__tmp113954
                                  (let ((__tmp113958
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107517_)))
                                        (__tmp113955
                                         (let ((__tmp113956
                                                (let ((__tmp113957
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp113957))))
                                           (declare (not safe))
                                           (cons __tmp113956 '()))))
                                    (declare (not safe))
                                    (cons __tmp113958 __tmp113955))))
                             (declare (not safe))
                             (cons __tmp113954 _r107518_))
                           _r107518_))))
                (declare (not safe))
                (foldl1 __tmp113953 _bind107479_ _hd107508_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113943
                                                      (let ((__tmp113944
                                                             (let ((__tmp113945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113951 (car _exprs107478_))
                                  (__tmp113946
                                   (let ((__tmp113947
                                          (let ((__tmp113949
                                                 (lambda (_id107520_ _k107521_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107520_))
                                                       (let ((__tmp113950
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107520_))))
                 (declare (not safe))
                 (cons __tmp113950 _k107521_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp113948
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107512_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp113949
                                             _hd107508_
                                             __tmp113948))))
                                     (declare (not safe))
                                     (cons _len107512_ __tmp113947))))
                              (declare (not safe))
                              (cons __tmp113951 __tmp113946))))
                       (declare (not safe))
                       (cons _tmp107514_ __tmp113945))))
                (declare (not safe))
                (cons __tmp113944 _post107480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107475_
                                                  _rest107507_
                                                  __tmp113959
                                                  __tmp113952
                                                  __tmp113943)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107319_
                                                _hd107508_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107481107495_))
                              (let ((_tl107491107548_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107481107495_)))
                                    (_hd107490107546_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107481107495_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107490107546_))
                                    (let ((_tl107493107553_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107490107546_)))
                                          (_hd107492107551_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107490107546_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107493107553_))
                                          (let ((_hd107556_ _hd107492107551_)
                                                (_rest107558_
                                                 _tl107491107548_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107489107543_
                                               _rest107558_
                                               _hd107556_)))
                                          (let ((_hd107531_ _hd107490107546_)
                                                (_rest107533_
                                                 _tl107491107548_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107486107523_
                                               _rest107533_
                                               _hd107531_)))))
                                    (let ((_hd107531_ _hd107490107546_)
                                          (_rest107533_ _tl107491107548_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107486107523_
                                         _rest107533_
                                         _hd107531_)))))
                              (let ()
                                (declare (not safe))
                                (_else107484107503_))))))))
                 (_compile-bind107323_
                  (lambda (_bind107467_ _post107468_ _body107469_)
                    (let ((__tmp113978
                           (let ((__tmp113979
                                  (let ((__tmp113982 (reverse _bind107467_))
                                        (__tmp113980
                                         (let ((__tmp113981
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107324_
                                                   _post107468_
                                                   _body107469_))))
                                           (declare (not safe))
                                           (cons __tmp113981 '()))))
                                    (declare (not safe))
                                    (cons __tmp113982 __tmp113980))))
                             (declare (not safe))
                             (cons 'let __tmp113979))))
                      (declare (not safe))
                      (__SRC__% __tmp113978 _stx107319_))))
                 (_compile-post107324_
                  (lambda (_post107326_ _body107327_)
                    (let ((__tmp113983
                           (let ((__tmp113984
                                  (let ((__tmp113985
                                         (let ((__tmp113987
                                                (lambda (_hd107329_ _r107330_)
                                                  (let* ((_hd107331107354_
                                                          _hd107329_)
                                                         (_E107335107358_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107331107354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107348107452_
                                                           (lambda (_expr107450_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107450_ _r107330_))))
                  (_K107343107430_
                   (lambda (_expr107427_ _id107428_)
                     (let ((__tmp113988
                            (let ((__tmp113989
                                   (let ((__tmp113990
                                          (let ((__tmp113991
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107427_ '()))))
                                            (declare (not safe))
                                            (cons _id107428_ __tmp113991))))
                                     (declare (not safe))
                                     (cons 'set! __tmp113990))))
                              (declare (not safe))
                              (__SRC__% __tmp113989 _stx107319_))))
                       (declare (not safe))
                       (cons __tmp113988 _r107330_))))
                  (_K107336107397_
                   (lambda (_init107362_ _len107363_ _expr107364_ _tmp107365_)
                     (let ((__tmp113992
                            (let ((__tmp113993
                                   (let ((__tmp113994
                                          (let ((__tmp114008
                                                 (let ((__tmp114009
                                                        (let ((__tmp114010
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107364_ '()))))
                  (declare (not safe))
                  (cons _tmp107365_ __tmp114010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114009 '())))
                                                (__tmp113995
                                                 (let ((__tmp114004
                                                        (let ((__tmp114005
                                                               (let ((__tmp114006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114007
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107363_ '()))))
                                (declare (not safe))
                                (cons _tmp107365_ __tmp114007))))
                         (declare (not safe))
                         (cons '__check-values __tmp114006))))
                  (declare (not safe))
                  (__SRC__% __tmp114005 _stx107319_)))
               (__tmp113996
                (let ((__tmp113997
                       (map (lambda (_hd107367_)
                              (let* ((_hd107368107375_ _hd107367_)
                                     (_E107370107379_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107368107375_)))
                                     (_K107371107385_
                                      (lambda (_k107382_ _id107383_)
                                        (let ((__tmp113998
                                               (let ((__tmp113999
                                                      (let ((__tmp114000
                                                             (let ((__tmp114001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114002
                                   (let ((__tmp114003
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107382_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107365_ __tmp114003))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114002))))
                       (declare (not safe))
                       (cons __tmp114001 '()))))
                (declare (not safe))
                (cons _id107383_ __tmp114000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp113999))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp113998
                                           _stx107319_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107368107375_))
                                    (let ((_hd107372107388_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107368107375_)))
                                          (_tl107373107390_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107368107375_))))
                                      (let* ((_id107393_ _hd107372107388_)
                                             (_k107395_ _tl107373107390_))
                                        (declare (not safe))
                                        (_K107371107385_
                                         _k107395_
                                         _id107393_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107370107379_)))))
                            _init107362_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp113997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114004
                                                         __tmp113996))))
                                            (declare (not safe))
                                            (cons __tmp114008 __tmp113995))))
                                     (declare (not safe))
                                     (cons 'let __tmp113994))))
                              (declare (not safe))
                              (__SRC__% __tmp113993 _stx107319_))))
                       (declare (not safe))
                       (cons __tmp113992 _r107330_)))))
              (if (let () (declare (not safe)) (##pair? _hd107331107354_))
                  (let ((_tl107350107457_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107331107354_)))
                        (_hd107349107455_
                         (let ()
                           (declare (not safe))
                           (##car _hd107331107354_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107349107455_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107350107457_))
                            (let ((_tl107352107462_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107350107457_)))
                                  (_hd107351107460_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107350107457_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107352107462_))
                                  (let ((_expr107465_ _hd107351107460_))
                                    (declare (not safe))
                                    (_K107348107452_ _expr107465_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107352107462_))
                                      (let ((_tl107342107416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107352107462_)))
                                            (_hd107341107414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107352107462_))))
                                        (let ((_tmp107405_ _hd107349107455_)
                                              (_expr107412_ _hd107351107460_)
                                              (_len107419_ _hd107341107414_)
                                              (_init107421_ _tl107342107416_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107336107397_
                                             _init107421_
                                             _len107419_
                                             _expr107412_
                                             _tmp107405_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107335107358_)))))
                            (let () (declare (not safe)) (_E107335107358_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107350107457_))
                            (let ((_tl107347107442_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107350107457_)))
                                  (_hd107346107440_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107350107457_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107347107442_))
                                  (let ((_id107438_ _hd107349107455_)
                                        (_expr107445_ _hd107346107440_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107343107430_
                                       _expr107445_
                                       _id107438_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107347107442_))
                                      (let ((_tl107342107416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107347107442_)))
                                            (_hd107341107414_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107347107442_))))
                                        (let ((_tmp107405_ _hd107349107455_)
                                              (_expr107412_ _hd107346107440_)
                                              (_len107419_ _hd107341107414_)
                                              (_init107421_ _tl107342107416_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107336107397_
                                             _init107421_
                                             _len107419_
                                             _expr107412_
                                             _tmp107405_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107335107358_)))))
                            (let () (declare (not safe)) (_E107335107358_)))))
                  (let () (declare (not safe)) (_E107335107358_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp113986
                                                (list _body107327_)))
                                           (declare (not safe))
                                           (foldl1 __tmp113987
                                                   __tmp113986
                                                   _post107326_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp113985))))
                             (declare (not safe))
                             (cons 'begin __tmp113984))))
                      (declare (not safe))
                      (__SRC__% __tmp113983 _stx107319_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107319_
             _compile-simple107321_
             _compile-values107322_)))))
    (define __compile-call%
      (lambda (_stx107279_)
        (let* ((_$e107281_ _stx107279_)
               (_$E107283107292_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107281_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107281_))
              (let* ((_$tgt107284107295_
                      (let () (declare (not safe)) (__AST-e _$e107281_)))
                     (_$hd107285107298_
                      (let () (declare (not safe)) (##car _$tgt107284107295_)))
                     (_$tl107286107301_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107284107295_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107286107301_))
                    (let* ((_$tgt107287107305_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107286107301_)))
                           (_$hd107288107308_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107287107305_)))
                           (_$tl107289107311_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107287107305_))))
                      (let* ((_rator107315_ _$hd107288107308_)
                             (_rands107317_ _$tl107289107311_)
                             (__tmp114011
                              (let ((__tmp114013
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107315_)))
                                    (__tmp114012
                                     (map __compile _rands107317_)))
                                (declare (not safe))
                                (cons __tmp114013 __tmp114012))))
                        (declare (not safe))
                        (__SRC__% __tmp114011 _stx107279_)))
                    (let () (declare (not safe)) (_$E107283107292_))))
              (let () (declare (not safe)) (_$E107283107292_))))))
    (define __compile-ref%
      (lambda (_stx107241_)
        (let* ((_$e107243_ _stx107241_)
               (_$E107245107254_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107243_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107243_))
              (let* ((_$tgt107246107257_
                      (let () (declare (not safe)) (__AST-e _$e107243_)))
                     (_$hd107247107260_
                      (let () (declare (not safe)) (##car _$tgt107246107257_)))
                     (_$tl107248107263_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107246107257_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107248107263_))
                    (let* ((_$tgt107249107267_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107248107263_)))
                           (_$hd107250107270_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107249107267_)))
                           (_$tl107251107273_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107249107267_))))
                      (let ((_id107277_ _$hd107250107270_))
                        (if (let ((__tmp114014
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107251107273_))))
                              (declare (not safe))
                              (equal? __tmp114014 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107277_ _stx107241_))
                            (let () (declare (not safe)) (_$E107245107254_)))))
                    (let () (declare (not safe)) (_$E107245107254_))))
              (let () (declare (not safe)) (_$E107245107254_))))))
    (define __compile-setq%
      (lambda (_stx107188_)
        (let* ((_$e107190_ _stx107188_)
               (_$E107192107204_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107190_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107190_))
              (let* ((_$tgt107193107207_
                      (let () (declare (not safe)) (__AST-e _$e107190_)))
                     (_$hd107194107210_
                      (let () (declare (not safe)) (##car _$tgt107193107207_)))
                     (_$tl107195107213_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107193107207_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107195107213_))
                    (let* ((_$tgt107196107217_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107195107213_)))
                           (_$hd107197107220_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107196107217_)))
                           (_$tl107198107223_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107196107217_))))
                      (let ((_id107227_ _$hd107197107220_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107198107223_))
                            (let* ((_$tgt107199107229_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107198107223_)))
                                   (_$hd107200107232_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107199107229_)))
                                   (_$tl107201107235_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107199107229_))))
                              (let ((_expr107239_ _$hd107200107232_))
                                (if (let ((__tmp114020
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107201107235_))))
                                      (declare (not safe))
                                      (equal? __tmp114020 '()))
                                    (let ((__tmp114015
                                           (let ((__tmp114016
                                                  (let ((__tmp114019
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107227_
                                                            _stx107188_)))
                                                        (__tmp114017
                                                         (let ((__tmp114018
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107239_))))
                   (declare (not safe))
                   (cons __tmp114018 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114019
                                                          __tmp114017))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114016))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114015 _stx107188_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107192107204_)))))
                            (let () (declare (not safe)) (_$E107192107204_)))))
                    (let () (declare (not safe)) (_$E107192107204_))))
              (let () (declare (not safe)) (_$E107192107204_))))))
    (define __compile-if%
      (lambda (_stx107120_)
        (let* ((_$e107122_ _stx107120_)
               (_$E107124107139_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107122_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107122_))
              (let* ((_$tgt107125107142_
                      (let () (declare (not safe)) (__AST-e _$e107122_)))
                     (_$hd107126107145_
                      (let () (declare (not safe)) (##car _$tgt107125107142_)))
                     (_$tl107127107148_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107125107142_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107127107148_))
                    (let* ((_$tgt107128107152_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107127107148_)))
                           (_$hd107129107155_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107128107152_)))
                           (_$tl107130107158_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107128107152_))))
                      (let ((_p107162_ _$hd107129107155_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107130107158_))
                            (let* ((_$tgt107131107164_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107130107158_)))
                                   (_$hd107132107167_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107131107164_)))
                                   (_$tl107133107170_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107131107164_))))
                              (let ((_t107174_ _$hd107132107167_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107133107170_))
                                    (let* ((_$tgt107134107176_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107133107170_)))
                                           (_$hd107135107179_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107134107176_)))
                                           (_$tl107136107182_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107134107176_))))
                                      (let ((_f107186_ _$hd107135107179_))
                                        (if (let ((__tmp114028
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107136107182_))))
                                              (declare (not safe))
                                              (equal? __tmp114028 '()))
                                            (let ((__tmp114021
                                                   (let ((__tmp114022
                                                          (let ((__tmp114027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107162_)))
                        (__tmp114023
                         (let ((__tmp114026
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107174_)))
                               (__tmp114024
                                (let ((__tmp114025
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107186_))))
                                  (declare (not safe))
                                  (cons __tmp114025 '()))))
                           (declare (not safe))
                           (cons __tmp114026 __tmp114024))))
                    (declare (not safe))
                    (cons __tmp114027 __tmp114023))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114022))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114021
                                               _stx107120_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107124107139_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107124107139_)))))
                            (let () (declare (not safe)) (_$E107124107139_)))))
                    (let () (declare (not safe)) (_$E107124107139_))))
              (let () (declare (not safe)) (_$E107124107139_))))))
    (define __compile-quote%
      (lambda (_stx107082_)
        (let* ((_$e107084_ _stx107082_)
               (_$E107086107095_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107084_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107084_))
              (let* ((_$tgt107087107098_
                      (let () (declare (not safe)) (__AST-e _$e107084_)))
                     (_$hd107088107101_
                      (let () (declare (not safe)) (##car _$tgt107087107098_)))
                     (_$tl107089107104_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107087107098_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107089107104_))
                    (let* ((_$tgt107090107108_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107089107104_)))
                           (_$hd107091107111_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107090107108_)))
                           (_$tl107092107114_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107090107108_))))
                      (let ((_e107118_ _$hd107091107111_))
                        (if (let ((__tmp114032
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107092107114_))))
                              (declare (not safe))
                              (equal? __tmp114032 '()))
                            (let ((__tmp114029
                                   (let ((__tmp114030
                                          (let ((__tmp114031
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107118_))))
                                            (declare (not safe))
                                            (cons __tmp114031 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114030))))
                              (declare (not safe))
                              (__SRC__% __tmp114029 _stx107082_))
                            (let () (declare (not safe)) (_$E107086107095_)))))
                    (let () (declare (not safe)) (_$E107086107095_))))
              (let () (declare (not safe)) (_$E107086107095_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107044_)
        (let* ((_$e107046_ _stx107044_)
               (_$E107048107057_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107046_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107046_))
              (let* ((_$tgt107049107060_
                      (let () (declare (not safe)) (__AST-e _$e107046_)))
                     (_$hd107050107063_
                      (let () (declare (not safe)) (##car _$tgt107049107060_)))
                     (_$tl107051107066_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107049107060_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107051107066_))
                    (let* ((_$tgt107052107070_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107051107066_)))
                           (_$hd107053107073_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107052107070_)))
                           (_$tl107054107076_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107052107070_))))
                      (let ((_e107080_ _$hd107053107073_))
                        (if (let ((__tmp114035
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107054107076_))))
                              (declare (not safe))
                              (equal? __tmp114035 '()))
                            (let ((__tmp114033
                                   (let ((__tmp114034
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107080_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114034))))
                              (declare (not safe))
                              (__SRC__% __tmp114033 _stx107044_))
                            (let () (declare (not safe)) (_$E107048107057_)))))
                    (let () (declare (not safe)) (_$E107048107057_))))
              (let () (declare (not safe)) (_$E107048107057_))))))
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
