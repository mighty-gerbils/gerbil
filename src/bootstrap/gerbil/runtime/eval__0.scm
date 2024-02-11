(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707651232)
  (begin
    (define __context::t
      (let ((__tmp113594 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp113594
         '(t ns super table)
         '()
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args108917_
        (apply make-class-instance __context::t _$args108917_)))
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
      (let ((__tmp113595 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp113595
         '(id)
         '()
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args108914_
        (apply make-class-instance __runtime::t _$args108914_)))
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
      (let ((__tmp113596 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113596
         '(e id)
         '()
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args108911_
        (apply make-class-instance __syntax::t _$args108911_)))
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
      (let ((__tmp113597 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp113597
         '()
         '()
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args108908_
        (apply make-class-instance __macro::t _$args108908_)))
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
      (let ((__tmp113598 (list __macro::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp113598
         '()
         '()
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args108905_
        (apply make-class-instance __special-form::t _$args108905_)))
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
      (let ((__tmp113599 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113599
         '()
         '()
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args108902_
        (apply make-class-instance __core-form::t _$args108902_)))
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
      (let ((__tmp113600 (list __core-form::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113600
         '()
         '()
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args108899_
        (apply make-class-instance __core-expression::t _$args108899_)))
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
      (let ((__tmp113601 (list __core-form::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113601
         '()
         '()
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args108896_
        (apply make-class-instance __core-special-form::t _$args108896_)))
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
      (let ((__tmp113602 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp113602
         '()
         '()
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args108893_
        (apply make-class-instance __struct-info::t _$args108893_)))
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
      (let ((__tmp113603 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp113603
         '()
         '()
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args108890_
        (apply make-class-instance __feature::t _$args108890_)))
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
      (let ((__tmp113604 (list __context::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp113604
         '(id path import export)
         '()
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args108887_
        (apply make-class-instance __module::t _$args108887_)))
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
      (let ((__obj113582
             (let ()
               (declare (not safe))
               (##structure __context::t '#f '#f '#f '#f))))
        (class-instance-init!
         __obj113582
         'top
         '#f
         (let ((__obj113581
                (let ()
                  (declare (not safe))
                  (##structure __context::t '#f '#f '#f '#f))))
           (class-instance-init! __obj113581 'root '#f '#f __*core*)
           __obj113581)
         (let () (declare (not safe)) (make-table 'test: eq?)))
        __obj113582))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id108862_ _ctx108863_)
        (if _ctx108863_
            (let ((_id108865_
                   (let () (declare (not safe)) (__AST-e _id108862_))))
              (let _lp108867_ ((_ctx108869_ _ctx108863_))
                (let ((_$e108871_
                       (table-ref
                        (let ((__obj113583 _ctx108869_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj113583
                                 'gerbil/runtime/eval#__context::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj113583
                                 '4
                                 __context::t
                                 '#f))
                              (class-slot-ref
                               __context::t
                               __obj113583
                               'table)))
                        _id108865_
                        '#f)))
                  (if _$e108871_
                      (values _$e108871_)
                      (let ((_$e108874_
                             (let ((__obj113584 _ctx108869_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj113584
                                      'gerbil/runtime/eval#__context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj113584
                                      '3
                                      __context::t
                                      '#f))
                                   (class-slot-ref
                                    __context::t
                                    __obj113584
                                    'super)))))
                        (if _$e108874_
                            (let ()
                              (declare (not safe))
                              (_lp108867_ _$e108874_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id108880_)
        (let ((_ctx108882_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id108880_ _ctx108882_))))
    (define __core-resolve
      (lambda _g113606_
        (let ((_g113605_ (let () (declare (not safe)) (##length _g113606_))))
          (cond ((let () (declare (not safe)) (##fx= _g113605_ 1))
                 (apply (lambda (_id108880_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id108880_)))
                        _g113606_))
                ((let () (declare (not safe)) (##fx= _g113605_ 2))
                 (apply (lambda (_id108884_ _ctx108885_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id108884_ _ctx108885_)))
                        _g113606_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113606_))))))
    (define __core-bound-id?__%
      (lambda (_id108845_ _is?108846_)
        (let ((_$e108848_
               (let () (declare (not safe)) (__core-resolve__0 _id108845_))))
          (if _$e108848_ (_is?108846_ _$e108848_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id108854_)
        (let ((_is?108856_ true))
          (declare (not safe))
          (__core-bound-id?__% _id108854_ _is?108856_))))
    (define __core-bound-id?
      (lambda _g113608_
        (let ((_g113607_ (let () (declare (not safe)) (##length _g113608_))))
          (cond ((let () (declare (not safe)) (##fx= _g113607_ 1))
                 (apply (lambda (_id108854_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id108854_)))
                        _g113608_))
                ((let () (declare (not safe)) (##fx= _g113607_ 2))
                 (apply (lambda (_id108858_ _is?108859_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id108858_ _is?108859_)))
                        _g113608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113608_))))))
    (define __core-bind-runtime!__%
      (lambda (_id108828_ _eid108829_ _ctx108830_)
        (if _eid108829_
            (let ((__tmp113611
                   (let ((__obj113585 _ctx108830_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj113585
                            'gerbil/runtime/eval#__context::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj113585
                            '4
                            __context::t
                            '#f))
                         (class-slot-ref __context::t __obj113585 'table))))
                  (__tmp113610
                   (let () (declare (not safe)) (__AST-e _id108828_)))
                  (__tmp113609
                   (let ((__obj113586
                          (let ()
                            (declare (not safe))
                            (##structure __runtime::t '#f))))
                     (class-instance-init! __obj113586 _eid108829_)
                     __obj113586)))
              (declare (not safe))
              (table-set! __tmp113611 __tmp113610 __tmp113609))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id108835_ _eid108836_)
        (let ((_ctx108838_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id108835_ _eid108836_ _ctx108838_))))
    (define __core-bind-runtime!
      (lambda _g113613_
        (let ((_g113612_ (let () (declare (not safe)) (##length _g113613_))))
          (cond ((let () (declare (not safe)) (##fx= _g113612_ 2))
                 (apply (lambda (_id108835_ _eid108836_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id108835_ _eid108836_)))
                        _g113613_))
                ((let () (declare (not safe)) (##fx= _g113612_ 3))
                 (apply (lambda (_id108840_ _eid108841_ _ctx108842_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id108840_
                             _eid108841_
                             _ctx108842_)))
                        _g113613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113613_))))))
    (define __core-bind-syntax!__%
      (lambda (_id108811_ _e108812_ _make108813_)
        (let ((__tmp113614
               (if (let ()
                     (declare (not safe))
                     (class-instance? __syntax::t _e108812_))
                   _e108812_
                   (_make108813_ _e108812_ _id108811_))))
          (declare (not safe))
          (table-set! __*core* _id108811_ __tmp113614))))
    (define __core-bind-syntax!__0
      (lambda (_id108818_ _e108819_)
        (let ((_make108821_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id108818_ _e108819_ _make108821_))))
    (define __core-bind-syntax!
      (lambda _g113616_
        (let ((_g113615_ (let () (declare (not safe)) (##length _g113616_))))
          (cond ((let () (declare (not safe)) (##fx= _g113615_ 2))
                 (apply (lambda (_id108818_ _e108819_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id108818_ _e108819_)))
                        _g113616_))
                ((let () (declare (not safe)) (##fx= _g113615_ 3))
                 (apply (lambda (_id108823_ _e108824_ _make108825_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id108823_
                             _e108824_
                             _make108825_)))
                        _g113616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113616_))))))
    (define __core-bind-macro!
      (lambda (_id108807_ _e108808_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108807_ _e108808_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id108804_ _e108805_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108804_ _e108805_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id108788_ _e108789_ _ctx108790_)
        (let ((__tmp113619
               (let ((__obj113587 _ctx108790_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj113587
                        'gerbil/runtime/eval#__context::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj113587
                        '4
                        __context::t
                        '#f))
                     (class-slot-ref __context::t __obj113587 'table))))
              (__tmp113618 (let () (declare (not safe)) (__AST-e _id108788_)))
              (__tmp113617
               (if (let ()
                     (declare (not safe))
                     (class-instance? __syntax::t _e108789_))
                   _e108789_
                   (let ((__obj113588
                          (let ()
                            (declare (not safe))
                            (##structure __syntax::t '#f '#f))))
                     (class-instance-init!
                      __obj113588
                      _e108789_
                      (let () (declare (not safe)) (__AST-e _id108788_)))
                     __obj113588))))
          (declare (not safe))
          (table-set! __tmp113619 __tmp113618 __tmp113617))))
    (define __core-bind-user-syntax!__0
      (lambda (_id108795_ _e108796_)
        (let ((_ctx108798_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id108795_ _e108796_ _ctx108798_))))
    (define __core-bind-user-syntax!
      (lambda _g113621_
        (let ((_g113620_ (let () (declare (not safe)) (##length _g113621_))))
          (cond ((let () (declare (not safe)) (##fx= _g113620_ 2))
                 (apply (lambda (_id108795_ _e108796_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id108795_
                             _e108796_)))
                        _g113621_))
                ((let () (declare (not safe)) (##fx= _g113620_ 3))
                 (apply (lambda (_id108800_ _e108801_ _ctx108802_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id108800_
                             _e108801_
                             _ctx108802_)))
                        _g113621_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113621_))))))
    (define make-__runtime-id__%
      (lambda (_id108769_ _ctx108770_)
        (let ((_id108772_ (let () (declare (not safe)) (__AST-e _id108769_))))
          (if (let () (declare (not safe)) (eq? _id108772_ '_))
              '#f
              (if (uninterned-symbol? _id108772_)
                  (gensym _id108772_)
                  (if (let () (declare (not safe)) (symbol? _id108772_))
                      (let ((_$e108774_
                             (let ((__obj113589 _ctx108770_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj113589
                                      'gerbil/runtime/eval#__context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj113589
                                      '1
                                      __context::t
                                      '#f))
                                   (class-slot-ref
                                    __context::t
                                    __obj113589
                                    't)))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e108774_))
                            (gensym _id108772_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e108774_))
                                (let ((__tmp113622
                                       (let ((__obj113590 _ctx108770_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj113590
                                                'gerbil/runtime/eval#__context::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj113590
                                                '2
                                                __context::t
                                                '#f))
                                             (class-slot-ref
                                              __context::t
                                              __obj113590
                                              'ns)))))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113622 '"#" _id108772_))
                                _id108772_)))
                      (error '"Illegal runtime identifier" _id108772_)))))))
    (define make-__runtime-id__0
      (lambda (_id108780_)
        (let ((_ctx108782_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id108780_ _ctx108782_))))
    (define make-__runtime-id
      (lambda _g113624_
        (let ((_g113623_ (let () (declare (not safe)) (##length _g113624_))))
          (cond ((let () (declare (not safe)) (##fx= _g113623_ 1))
                 (apply (lambda (_id108780_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id108780_)))
                        _g113624_))
                ((let () (declare (not safe)) (##fx= _g113623_ 2))
                 (apply (lambda (_id108784_ _ctx108785_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id108784_ _ctx108785_)))
                        _g113624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113624_))))))
    (define make-__context-local__%
      (lambda (_super108758_)
        (let ((__obj113591
               (let ()
                 (declare (not safe))
                 (##structure __context::t '#f '#f '#f '#f))))
          (class-instance-init!
           __obj113591
           'local
           '#f
           _super108758_
           (let () (declare (not safe)) (make-table 'test: eq?)))
          __obj113591)))
    (define make-__context-local__0
      (lambda ()
        (let ((_super108764_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super108764_))))
    (define make-__context-local
      (lambda _g113626_
        (let ((_g113625_ (let () (declare (not safe)) (##length _g113626_))))
          (cond ((let () (declare (not safe)) (##fx= _g113625_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g113626_))
                ((let () (declare (not safe)) (##fx= _g113625_ 1))
                 (apply (lambda (_super108766_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super108766_)))
                        _g113626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g113626_))))))
    (define make-__context-module__%
      (lambda (_id108738_ _ns108739_ _path108740_ _super108741_)
        (let ((__obj113592
               (let ()
                 (declare (not safe))
                 (##structure __module::t '#f '#f '#f '#f '#f '#f '#f '#f))))
          (class-instance-init!
           __obj113592
           'module
           _ns108739_
           _super108741_
           (let () (declare (not safe)) (make-table 'test: eq?))
           _id108738_
           _path108740_
           '#f
           '#f)
          __obj113592)))
    (define make-__context-module__0
      (lambda (_id108746_ _ns108747_ _path108748_)
        (let ((_super108750_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id108746_
           _ns108747_
           _path108748_
           _super108750_))))
    (define make-__context-module
      (lambda _g113628_
        (let ((_g113627_ (let () (declare (not safe)) (##length _g113628_))))
          (cond ((let () (declare (not safe)) (##fx= _g113627_ 3))
                 (apply (lambda (_id108746_ _ns108747_ _path108748_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id108746_
                             _ns108747_
                             _path108748_)))
                        _g113628_))
                ((let () (declare (not safe)) (##fx= _g113627_ 4))
                 (apply (lambda (_id108752_
                                 _ns108753_
                                 _path108754_
                                 _super108755_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id108752_
                             _ns108753_
                             _path108754_
                             _super108755_)))
                        _g113628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g113628_))))))
    (define __SRC__%
      (lambda (_e108721_ _src-stx108722_)
        (if (or (let () (declare (not safe)) (pair? _e108721_))
                (let () (declare (not safe)) (symbol? _e108721_)))
            (let ((__tmp113632
                   (if (let ()
                         (declare (not safe))
                         (class-instance? AST::t _src-stx108722_))
                       (let ((__tmp113633
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx108722_))))
                         (declare (not safe))
                         (__locat __tmp113633))
                       '#f)))
              (declare (not safe))
              (##make-source _e108721_ __tmp113632))
            (if (let ()
                  (declare (not safe))
                  (class-instance? AST::t _e108721_))
                (let ((__tmp113631
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _e108721_ 'e)))
                      (__tmp113629
                       (let ((__tmp113630
                              (let ()
                                (declare (not safe))
                                (__AST-source _e108721_))))
                         (declare (not safe))
                         (__locat __tmp113630))))
                  (declare (not safe))
                  (##make-source __tmp113631 __tmp113629))
                (error '"BUG! Cannot sourcify object" _e108721_)))))
    (define __SRC__0
      (lambda (_e108730_)
        (let ((_src-stx108732_ '#f))
          (declare (not safe))
          (__SRC__% _e108730_ _src-stx108732_))))
    (define __SRC
      (lambda _g113635_
        (let ((_g113634_ (let () (declare (not safe)) (##length _g113635_))))
          (cond ((let () (declare (not safe)) (##fx= _g113634_ 1))
                 (apply (lambda (_e108730_)
                          (let () (declare (not safe)) (__SRC__0 _e108730_)))
                        _g113635_))
                ((let () (declare (not safe)) (##fx= _g113634_ 2))
                 (apply (lambda (_e108734_ _src-stx108735_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e108734_ _src-stx108735_)))
                        _g113635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113635_))))))
    (define __locat
      (lambda (_loc108718_)
        (if (let () (declare (not safe)) (##locat? _loc108718_))
            _loc108718_
            '#f)))
    (define __check-values
      (lambda (_obj108713_ _k108714_)
        (let ((_count108716_
               (if (let () (declare (not safe)) (##values? _obj108713_))
                   (let () (declare (not safe)) (##vector-length _obj108713_))
                   '1)))
          (if (fx= _count108716_ _k108714_)
              '#!void
              (error (if (fx< _count108716_ _k108714_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj108713_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj108713_))
                         _obj108713_)
                     _k108714_)))))
    (define __compile
      (lambda (_stx108683_)
        (let* ((_$e108685_ _stx108683_)
               (_$E108687108693_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108685_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108685_))
              (let* ((_$tgt108688108696_
                      (let () (declare (not safe)) (__AST-e _$e108685_)))
                     (_$hd108689108699_
                      (let () (declare (not safe)) (##car _$tgt108688108696_)))
                     (_$tl108690108702_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108688108696_))))
                (let* ((_form108706_ _$hd108689108699_)
                       (_$e108708_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form108706_))))
                  (if _$e108708_
                      ((lambda (_bind108711_)
                         ((let ((__obj113593 _bind108711_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj113593
                                   'gerbil/runtime/eval#__syntax::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj113593
                                   '1
                                   __syntax::t
                                   '#f))
                                (class-slot-ref __syntax::t __obj113593 'e)))
                          _stx108683_))
                       _$e108708_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx108683_
                         _form108706_)))))
              (let () (declare (not safe)) (_$E108687108693_))))))
    (define __compile-error__%
      (lambda (_stx108670_ _detail108671_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx108670_
           _detail108671_))))
    (define __compile-error__0
      (lambda (_stx108676_)
        (let ((_detail108678_ '#f))
          (declare (not safe))
          (__compile-error__% _stx108676_ _detail108678_))))
    (define __compile-error
      (lambda _g113637_
        (let ((_g113636_ (let () (declare (not safe)) (##length _g113637_))))
          (cond ((let () (declare (not safe)) (##fx= _g113636_ 1))
                 (apply (lambda (_stx108676_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx108676_)))
                        _g113637_))
                ((let () (declare (not safe)) (##fx= _g113636_ 2))
                 (apply (lambda (_stx108680_ _detail108681_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx108680_ _detail108681_)))
                        _g113637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113637_))))))
    (define __compile-ignore%
      (lambda (_stx108667_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx108667_))))
    (define __compile-begin%
      (lambda (_stx108642_)
        (let* ((_$e108644_ _stx108642_)
               (_$E108646108652_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108644_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108644_))
              (let* ((_$tgt108647108655_
                      (let () (declare (not safe)) (__AST-e _$e108644_)))
                     (_$hd108648108658_
                      (let () (declare (not safe)) (##car _$tgt108647108655_)))
                     (_$tl108649108661_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108647108655_))))
                (let* ((_body108665_ _$tl108649108661_)
                       (__tmp113638
                        (let ((__tmp113639 (map __compile _body108665_)))
                          (declare (not safe))
                          (cons 'begin __tmp113639))))
                  (declare (not safe))
                  (__SRC__% __tmp113638 _stx108642_)))
              (let () (declare (not safe)) (_$E108646108652_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108617_)
        (let* ((_$e108619_ _stx108617_)
               (_$E108621108627_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108619_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108619_))
              (let* ((_$tgt108622108630_
                      (let () (declare (not safe)) (__AST-e _$e108619_)))
                     (_$hd108623108633_
                      (let () (declare (not safe)) (##car _$tgt108622108630_)))
                     (_$tl108624108636_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108622108630_))))
                (let* ((_body108640_ _$tl108624108636_)
                       (__tmp113640
                        (let ((__tmp113641
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body108640_))))
                          (declare (not safe))
                          (cons 'begin __tmp113641))))
                  (declare (not safe))
                  (__SRC__% __tmp113640 _stx108617_)))
              (let () (declare (not safe)) (_$E108621108627_))))))
    (define __compile-import%
      (lambda (_stx108592_)
        (let* ((_$e108594_ _stx108592_)
               (_$E108596108602_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108594_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108594_))
              (let* ((_$tgt108597108605_
                      (let () (declare (not safe)) (__AST-e _$e108594_)))
                     (_$hd108598108608_
                      (let () (declare (not safe)) (##car _$tgt108597108605_)))
                     (_$tl108599108611_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108597108605_))))
                (let* ((_body108615_ _$tl108599108611_)
                       (__tmp113642
                        (let ((__tmp113643
                               (let ((__tmp113644
                                      (let ((__tmp113645
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108615_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp113645))))
                                 (declare (not safe))
                                 (cons __tmp113644 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp113643))))
                  (declare (not safe))
                  (__SRC__% __tmp113642 _stx108592_)))
              (let () (declare (not safe)) (_$E108596108602_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108539_)
        (let* ((_$e108541_ _stx108539_)
               (_$E108543108555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108541_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108541_))
              (let* ((_$tgt108544108558_
                      (let () (declare (not safe)) (__AST-e _$e108541_)))
                     (_$hd108545108561_
                      (let () (declare (not safe)) (##car _$tgt108544108558_)))
                     (_$tl108546108564_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108544108558_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108546108564_))
                    (let* ((_$tgt108547108568_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108546108564_)))
                           (_$hd108548108571_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108547108568_)))
                           (_$tl108549108574_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108547108568_))))
                      (let ((_ann108578_ _$hd108548108571_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108549108574_))
                            (let* ((_$tgt108550108580_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108549108574_)))
                                   (_$hd108551108583_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108550108580_)))
                                   (_$tl108552108586_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108550108580_))))
                              (let ((_expr108590_ _$hd108551108583_))
                                (if (let ((__tmp113646
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108552108586_))))
                                      (declare (not safe))
                                      (equal? __tmp113646 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108590_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108543108555_)))))
                            (let () (declare (not safe)) (_$E108543108555_)))))
                    (let () (declare (not safe)) (_$E108543108555_))))
              (let () (declare (not safe)) (_$E108543108555_))))))
    (define __compile-define-values%
      (lambda (_stx108430_)
        (let* ((_$e108432_ _stx108430_)
               (_$E108434108446_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108432_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108432_))
              (let* ((_$tgt108435108449_
                      (let () (declare (not safe)) (__AST-e _$e108432_)))
                     (_$hd108436108452_
                      (let () (declare (not safe)) (##car _$tgt108435108449_)))
                     (_$tl108437108455_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108435108449_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108437108455_))
                    (let* ((_$tgt108438108459_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108437108455_)))
                           (_$hd108439108462_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108438108459_)))
                           (_$tl108440108465_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108438108459_))))
                      (let ((_hd108469_ _$hd108439108462_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108440108465_))
                            (let* ((_$tgt108441108471_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108440108465_)))
                                   (_$hd108442108474_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108441108471_)))
                                   (_$tl108443108477_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108441108471_))))
                              (let ((_expr108481_ _$hd108442108474_))
                                (if (let ((__tmp113679
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108443108477_))))
                                      (declare (not safe))
                                      (equal? __tmp113679 '()))
                                    (let* ((_$e108483_ _hd108469_)
                                           (_$E108485108526_
                                            (lambda ()
                                              (let ((_$E108486108511_
                                                     (lambda ()
                                                       (let* ((_$E108487108498_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108483_))))
                      (_ids108501_ _hd108469_)
                      (_len108503_ (length _ids108501_))
                      (_tmp108505_
                       (let ((__tmp113647 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp113647))))
                 (let ((__tmp113648
                        (let ((__tmp113649
                               (let ((__tmp113666
                                      (let ((__tmp113667
                                             (let ((__tmp113668
                                                    (let ((__tmp113669
                                                           (let ((__tmp113670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108481_))))
                     (declare (not safe))
                     (cons __tmp113670 '()))))
              (declare (not safe))
              (cons _tmp108505_ __tmp113669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp113668))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113667 _stx108430_)))
                                     (__tmp113650
                                      (let ((__tmp113662
                                             (let ((__tmp113663
                                                    (let ((__tmp113664
                                                           (let ((__tmp113665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108503_ '()))))
                     (declare (not safe))
                     (cons _tmp108505_ __tmp113665))))
              (declare (not safe))
              (cons '__check-values __tmp113664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp113663
                                                _stx108430_)))
                                            (__tmp113651
                                             (let ((__tmp113652
                                                    (let ((__tmp113654
                                                           (lambda (_id108508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108509_)
                     (if (let () (declare (not safe)) (__AST-e _id108508_))
                         (let ((__tmp113655
                                (let ((__tmp113656
                                       (let ((__tmp113661
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108508_)))
                                             (__tmp113657
                                              (let ((__tmp113658
                                                     (let ((__tmp113659
                                                            (let ((__tmp113660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108509_ '()))))
                      (declare (not safe))
                      (cons _tmp108505_ __tmp113660))))
               (declare (not safe))
               (cons '##vector-ref __tmp113659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113658 '()))))
                                         (declare (not safe))
                                         (cons __tmp113661 __tmp113657))))
                                  (declare (not safe))
                                  (cons 'define __tmp113656))))
                           (declare (not safe))
                           (__SRC__% __tmp113655 _stx108430_))
                         '#f)))
                  (__tmp113653
                   (let () (declare (not safe)) (iota _len108503_))))
              (declare (not safe))
              (filter-map2 __tmp113654 _ids108501_ __tmp113653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp113652))))
                                        (declare (not safe))
                                        (cons __tmp113662 __tmp113651))))
                                 (declare (not safe))
                                 (cons __tmp113666 __tmp113650))))
                          (declare (not safe))
                          (cons 'begin __tmp113649))))
                   (declare (not safe))
                   (__SRC__% __tmp113648 _stx108430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108483_))
                                                    (let* ((_$tgt108488108514_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108483_)))
                                                           (_$hd108489108517_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108488108514_)))
                                                           (_$tl108490108520_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108488108514_))))
                                                      (let ((_id108524_
                                                             _$hd108489108517_))
                                                        (if (let ((__tmp113676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108490108520_))))
                      (declare (not safe))
                      (equal? __tmp113676 '()))
                    (let ((__tmp113671
                           (let ((__tmp113672
                                  (let ((__tmp113675
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108524_)))
                                        (__tmp113673
                                         (let ((__tmp113674
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108481_))))
                                           (declare (not safe))
                                           (cons __tmp113674 '()))))
                                    (declare (not safe))
                                    (cons __tmp113675 __tmp113673))))
                             (declare (not safe))
                             (cons 'define __tmp113672))))
                      (declare (not safe))
                      (__SRC__% __tmp113671 _stx108430_))
                    (let () (declare (not safe)) (_$E108486108511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108486108511_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108483_))
                                          (let* ((_$tgt108491108529_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108483_)))
                                                 (_$hd108492108532_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108491108529_)))
                                                 (_$tl108493108535_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108491108529_))))
                                            (if (let ((__tmp113678
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108492108532_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113678 '#f))
                                                (if (let ((__tmp113677
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108493108535_))))
                                                      (declare (not safe))
                                                      (equal? __tmp113677 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108481_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108485108526_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108485108526_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108485108526_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108434108446_)))))
                            (let () (declare (not safe)) (_$E108434108446_)))))
                    (let () (declare (not safe)) (_$E108434108446_))))
              (let () (declare (not safe)) (_$E108434108446_))))))
    (define __compile-head-id
      (lambda (_e108428_)
        (let ((__tmp113680
               (if (let () (declare (not safe)) (__AST-e _e108428_))
                   _e108428_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp113680))))
    (define __compile-lambda-head
      (lambda (_hd108385_)
        (let _recur108387_ ((_rest108389_ _hd108385_))
          (let* ((_$e108391_ _rest108389_)
                 (_$E108393108411_
                  (lambda ()
                    (let ((_$E108394108408_
                           (lambda ()
                             (let* ((_$E108395108403_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108391_))))
                                    (_tail108406_ _$e108391_))
                               (declare (not safe))
                               (__compile-head-id _tail108406_)))))
                      (if (let ((__tmp113681
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108391_))))
                            (declare (not safe))
                            (equal? __tmp113681 '()))
                          '()
                          (let () (declare (not safe)) (_$E108394108408_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108391_))
                (let* ((_$tgt108396108414_
                        (let () (declare (not safe)) (__AST-e _$e108391_)))
                       (_$hd108397108417_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108396108414_)))
                       (_$tl108398108420_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108396108414_))))
                  (let* ((_hd108424_ _$hd108397108417_)
                         (_rest108426_ _$tl108398108420_))
                    (let ((__tmp113683
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108424_)))
                          (__tmp113682
                           (let ()
                             (declare (not safe))
                             (_recur108387_ _rest108426_))))
                      (declare (not safe))
                      (cons __tmp113683 __tmp113682))))
                (let () (declare (not safe)) (_$E108393108411_)))))))
    (define __compile-lambda%
      (lambda (_stx108332_)
        (let* ((_$e108334_ _stx108332_)
               (_$E108336108348_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108334_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108334_))
              (let* ((_$tgt108337108351_
                      (let () (declare (not safe)) (__AST-e _$e108334_)))
                     (_$hd108338108354_
                      (let () (declare (not safe)) (##car _$tgt108337108351_)))
                     (_$tl108339108357_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108337108351_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108339108357_))
                    (let* ((_$tgt108340108361_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108339108357_)))
                           (_$hd108341108364_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108340108361_)))
                           (_$tl108342108367_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108340108361_))))
                      (let ((_hd108371_ _$hd108341108364_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108342108367_))
                            (let* ((_$tgt108343108373_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108342108367_)))
                                   (_$hd108344108376_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108343108373_)))
                                   (_$tl108345108379_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108343108373_))))
                              (let ((_body108383_ _$hd108344108376_))
                                (if (let ((__tmp113689
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108345108379_))))
                                      (declare (not safe))
                                      (equal? __tmp113689 '()))
                                    (let ((__tmp113684
                                           (let ((__tmp113685
                                                  (let ((__tmp113688
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108371_)))
                                                        (__tmp113686
                                                         (let ((__tmp113687
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108383_))))
                   (declare (not safe))
                   (cons __tmp113687 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113688
                                                          __tmp113686))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp113685))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113684 _stx108332_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108336108348_)))))
                            (let () (declare (not safe)) (_$E108336108348_)))))
                    (let () (declare (not safe)) (_$E108336108348_))))
              (let () (declare (not safe)) (_$E108336108348_))))))
    (define __compile-case-lambda%
      (lambda (_stx108124_)
        (letrec ((_variadic?108126_
                  (lambda (_hd108297_)
                    (let* ((_$e108299_ _hd108297_)
                           (_$E108301108317_
                            (lambda ()
                              (let ((_$E108302108314_
                                     (lambda ()
                                       (let ((_$E108303108311_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108299_)))))
                                         '#t))))
                                (if (let ((__tmp113690
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108299_))))
                                      (declare (not safe))
                                      (equal? __tmp113690 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108302108314_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108299_))
                          (let* ((_$tgt108304108320_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108299_)))
                                 (_$hd108305108323_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108304108320_)))
                                 (_$tl108306108326_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108304108320_))))
                            (let ((_rest108330_ _$tl108306108326_))
                              (declare (not safe))
                              (_variadic?108126_ _rest108330_)))
                          (let () (declare (not safe)) (_$E108301108317_))))))
                 (_arity108127_
                  (lambda (_hd108262_)
                    (let _lp108264_ ((_rest108266_ _hd108262_) (_k108267_ '0))
                      (let* ((_$e108269_ _rest108266_)
                             (_$E108271108282_
                              (lambda ()
                                (let ((_$E108272108279_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108269_)))))
                                  _k108267_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108269_))
                            (let* ((_$tgt108273108285_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108269_)))
                                   (_$hd108274108288_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108273108285_)))
                                   (_$tl108275108291_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108273108285_))))
                              (let* ((_rest108295_ _$tl108275108291_)
                                     (__tmp113691
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108267_ '1))))
                                (declare (not safe))
                                (_lp108264_ _rest108295_ __tmp113691)))
                            (let ()
                              (declare (not safe))
                              (_$E108271108282_)))))))
                 (_generate108128_
                  (lambda (_rest108189_ _args108190_ _len108191_)
                    (let* ((_$e108193_ _rest108189_)
                           (_$E108195108206_
                            (lambda ()
                              (let* ((_$E108196108203_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108193_))))
                                     (__tmp113692
                                      (let ((__tmp113693
                                             (let ((__tmp113694
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108190_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp113694))))
                                        (declare (not safe))
                                        (cons 'error __tmp113693))))
                                (declare (not safe))
                                (__SRC__% __tmp113692 _stx108124_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108193_))
                          (let* ((_$tgt108197108209_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108193_)))
                                 (_$hd108198108212_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108197108209_)))
                                 (_$tl108199108215_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108197108209_))))
                            (let* ((_clause108219_ _$hd108198108212_)
                                   (_rest108221_ _$tl108199108215_)
                                   (_$e108223_ _clause108219_)
                                   (_$E108225108234_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108223_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108223_))
                                  (let* ((_$tgt108226108237_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108223_)))
                                         (_$hd108227108240_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108226108237_)))
                                         (_$tl108228108243_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108226108237_))))
                                    (let ((_hd108247_ _$hd108227108240_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108228108243_))
                                          (let* ((_$tgt108229108249_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108228108243_)))
                                                 (_$hd108230108252_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108229108249_)))
                                                 (_$tl108231108255_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108229108249_))))
                                            (if (let ((__tmp113709
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108231108255_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113709 '()))
                                                (let ((_clen108259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108127_
                                                          _hd108247_)))
                                                      (_cmp108260_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108126_
                                                              _hd108247_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp113695
                                                         (let ((__tmp113696
                                                                (let ((__tmp113706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113707
                                      (let ((__tmp113708
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108259_ '()))))
                                        (declare (not safe))
                                        (cons _len108191_ __tmp113708))))
                                 (declare (not safe))
                                 (cons _cmp108260_ __tmp113707)))
                              (__tmp113697
                               (let ((__tmp113700
                                      (let ((__tmp113701
                                             (let ((__tmp113702
                                                    (let ((__tmp113704
                                                           (let ((__tmp113705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108219_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp113705)))
                  (__tmp113703
                   (let () (declare (not safe)) (cons _args108190_ '()))))
              (declare (not safe))
              (cons __tmp113704 __tmp113703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp113702))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113701 _stx108124_)))
                                     (__tmp113698
                                      (let ((__tmp113699
                                             (let ()
                                               (declare (not safe))
                                               (_generate108128_
                                                _rest108221_
                                                _args108190_
                                                _len108191_))))
                                        (declare (not safe))
                                        (cons __tmp113699 '()))))
                                 (declare (not safe))
                                 (cons __tmp113700 __tmp113698))))
                          (declare (not safe))
                          (cons __tmp113706 __tmp113697))))
                   (declare (not safe))
                   (cons 'if __tmp113696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp113695
                                                     _stx108124_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108225108234_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108225108234_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108225108234_)))))
                          (let () (declare (not safe)) (_$E108195108206_)))))))
          (let* ((_$e108130_ _stx108124_)
                 (_$E108132108164_
                  (lambda ()
                    (let ((_$E108133108146_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108130_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108130_))
                          (let* ((_$tgt108134108149_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108130_)))
                                 (_$hd108135108152_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108134108149_)))
                                 (_$tl108136108155_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108134108149_))))
                            (let ((_clauses108159_ _$tl108136108155_))
                              (let ((_args108161_
                                     (let ((__tmp113710 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113710 _stx108124_)))
                                    (_len108162_
                                     (let ((__tmp113711 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113711 _stx108124_))))
                                (let ((__tmp113712
                                       (let ((__tmp113713
                                              (let ((__tmp113714
                                                     (let ((__tmp113715
                                                            (let ((__tmp113716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113717
                                  (let ((__tmp113720
                                         (let ((__tmp113721
                                                (let ((__tmp113722
                                                       (let ((__tmp113723
                                                              (let ((__tmp113724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113725
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108161_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp113725))))
                        (declare (not safe))
                        (__SRC__% __tmp113724 _stx108124_))))
                 (declare (not safe))
                 (cons __tmp113723 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108162_
                                                        __tmp113722))))
                                           (declare (not safe))
                                           (cons __tmp113721 '())))
                                        (__tmp113718
                                         (let ((__tmp113719
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108128_
                                                   _clauses108159_
                                                   _args108161_
                                                   _len108162_))))
                                           (declare (not safe))
                                           (cons __tmp113719 '()))))
                                    (declare (not safe))
                                    (cons __tmp113720 __tmp113718))))
                             (declare (not safe))
                             (cons 'let __tmp113717))))
                      (declare (not safe))
                      (__SRC__% __tmp113716 _stx108124_))))
               (declare (not safe))
               (cons __tmp113715 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108161_
                                                      __tmp113714))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp113713))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113712 _stx108124_)))))
                          (let () (declare (not safe)) (_$E108133108146_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108130_))
                (let* ((_$tgt108137108167_
                        (let () (declare (not safe)) (__AST-e _$e108130_)))
                       (_$hd108138108170_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108137108167_)))
                       (_$tl108139108173_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108137108167_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108139108173_))
                      (let* ((_$tgt108140108177_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108139108173_)))
                             (_$hd108141108180_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108140108177_)))
                             (_$tl108142108183_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108140108177_))))
                        (let ((_clause108187_ _$hd108141108180_))
                          (if (let ((__tmp113727
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108142108183_))))
                                (declare (not safe))
                                (equal? __tmp113727 '()))
                              (let ((__tmp113726
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108187_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp113726))
                              (let ()
                                (declare (not safe))
                                (_$E108132108164_)))))
                      (let () (declare (not safe)) (_$E108132108164_))))
                (let () (declare (not safe)) (_$E108132108164_)))))))
    (define __compile-let-form
      (lambda (_stx107893_ _compile-simple107894_ _compile-values107895_)
        (letrec ((_simple-bind?107897_
                  (lambda (_hd108082_)
                    (let* ((_hd108083108093_ _hd108082_)
                           (_else108086108101_ (lambda () '#f)))
                      (let ((_K108089108114_ (lambda (_id108112_) '#t))
                            (_K108088108106_ (lambda () '#t)))
                        (let ((_try-match108085108109_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108083108093_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108088108106_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108086108101_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108083108093_))
                              (let ((_tl108091108119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108083108093_)))
                                    (_hd108090108117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108083108093_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108091108119_))
                                    (let ((_id108122_ _hd108090108117_))
                                      (declare (not safe))
                                      (_K108089108114_ _id108122_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108085108109_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108085108109_))))))))
                 (_car-e107898_
                  (lambda (_hd108080_)
                    (if (let () (declare (not safe)) (pair? _hd108080_))
                        (car _hd108080_)
                        _hd108080_))))
          (let* ((_$e107900_ _stx107893_)
                 (_$E107902108045_
                  (lambda ()
                    (let ((_$E107903107925_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e107900_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e107900_))
                          (let* ((_$tgt107904107928_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e107900_)))
                                 (_$hd107905107931_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt107904107928_)))
                                 (_$tl107906107934_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt107904107928_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107906107934_))
                                (let* ((_$tgt107907107938_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107906107934_)))
                                       (_$hd107908107941_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107907107938_)))
                                       (_$tl107909107944_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107907107938_))))
                                  (let ((_hd107948_ _$hd107908107941_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl107909107944_))
                                        (let* ((_$tgt107910107950_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl107909107944_)))
                                               (_$hd107911107953_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt107910107950_)))
                                               (_$tl107912107956_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt107910107950_))))
                                          (let ((_body107960_
                                                 _$hd107911107953_))
                                            (if (let ((__tmp113730
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl107912107956_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113730 '()))
                                                (let* ((_hd-ids108000_
                                                        (map (lambda (_bind107962_)
                                                               (let* ((_$e107964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind107962_)
                              (_$E107966107975_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e107964_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e107964_))
                             (let* ((_$tgt107967107978_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e107964_)))
                                    (_$hd107968107981_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt107967107978_)))
                                    (_$tl107969107984_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt107967107978_))))
                               (let ((_ids107988_ _$hd107968107981_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl107969107984_))
                                     (let* ((_$tgt107970107990_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl107969107984_)))
                                            (_$hd107971107993_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt107970107990_)))
                                            (_$tl107972107996_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt107970107990_))))
                                       (if (let ((__tmp113728
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl107972107996_))))
                                             (declare (not safe))
                                             (equal? __tmp113728 '()))
                                           _ids107988_
                                           (let ()
                                             (declare (not safe))
                                             (_$E107966107975_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E107966107975_)))))
                             (let ()
                               (declare (not safe))
                               (_$E107966107975_)))))
                     _hd107948_))
               (_exprs108040_
                (map (lambda (_bind108002_)
                       (let* ((_$e108004_ _bind108002_)
                              (_$E108006108015_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108004_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108004_))
                             (let* ((_$tgt108007108018_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108004_)))
                                    (_$hd108008108021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108007108018_)))
                                    (_$tl108009108024_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108007108018_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108009108024_))
                                   (let* ((_$tgt108010108028_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108009108024_)))
                                          (_$hd108011108031_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108010108028_)))
                                          (_$tl108012108034_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108010108028_))))
                                     (let ((_expr108038_ _$hd108011108031_))
                                       (if (let ((__tmp113729
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108012108034_))))
                                             (declare (not safe))
                                             (equal? __tmp113729 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108038_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108006108015_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108006108015_))))
                             (let ()
                               (declare (not safe))
                               (_$E108006108015_)))))
                     _hd107948_))
               (_body108042_
                (let () (declare (not safe)) (__compile _body107960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?107897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108000_))
              (_compile-simple107894_
               (map _car-e107898_ _hd-ids108000_)
               _exprs108040_
               _body108042_)
              (_compile-values107895_
               _hd-ids108000_
               _exprs108040_
               _body108042_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E107903107925_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107903107925_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107903107925_))))
                          (let () (declare (not safe)) (_$E107903107925_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e107900_))
                (let* ((_$tgt107913108048_
                        (let () (declare (not safe)) (__AST-e _$e107900_)))
                       (_$hd107914108051_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt107913108048_)))
                       (_$tl107915108054_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt107913108048_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl107915108054_))
                      (let* ((_$tgt107916108058_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl107915108054_)))
                             (_$hd107917108061_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt107916108058_)))
                             (_$tl107918108064_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt107916108058_))))
                        (if (let ((__tmp113732
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd107917108061_))))
                              (declare (not safe))
                              (equal? __tmp113732 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl107918108064_))
                                (let* ((_$tgt107919108068_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl107918108064_)))
                                       (_$hd107920108071_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt107919108068_)))
                                       (_$tl107921108074_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt107919108068_))))
                                  (let ((_body108078_ _$hd107920108071_))
                                    (if (let ((__tmp113731
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl107921108074_))))
                                          (declare (not safe))
                                          (equal? __tmp113731 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108078_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E107902108045_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E107902108045_)))
                            (let () (declare (not safe)) (_$E107902108045_))))
                      (let () (declare (not safe)) (_$E107902108045_))))
                (let () (declare (not safe)) (_$E107902108045_)))))))
    (define __compile-let-values%
      (lambda (_stx107708_)
        (letrec ((_compile-simple107710_
                  (lambda (_hd-ids107889_ _exprs107890_ _body107891_)
                    (let ((__tmp113733
                           (let ((__tmp113734
                                  (let ((__tmp113736
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107889_)
                                              _exprs107890_))
                                        (__tmp113735
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107891_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113736 __tmp113735))))
                             (declare (not safe))
                             (cons 'let __tmp113734))))
                      (declare (not safe))
                      (__SRC__% __tmp113733 _stx107708_))))
                 (_compile-values107711_
                  (lambda (_hd-ids107807_ _exprs107808_ _body107809_)
                    (let _lp107811_ ((_rest107813_ _hd-ids107807_)
                                     (_exprs107814_ _exprs107808_)
                                     (_bind107815_ '())
                                     (_post107816_ '()))
                      (let* ((_rest107817107831_ _rest107813_)
                             (_else107820107839_
                              (lambda ()
                                (let ((__tmp113737
                                       (let ((__tmp113738
                                              (let ((__tmp113741
                                                     (reverse _bind107815_))
                                                    (__tmp113739
                                                     (let ((__tmp113740
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post107712_
                                                               _post107816_
                                                               _body107809_))))
                                                       (declare (not safe))
                                                       (cons __tmp113740
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp113741
                                                      __tmp113739))))
                                         (declare (not safe))
                                         (cons 'let __tmp113738))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113737 _stx107708_)))))
                        (let ((_K107825107872_
                               (lambda (_rest107869_ _id107870_)
                                 (let ((__tmp113747 (cdr _exprs107814_))
                                       (__tmp113742
                                        (let ((__tmp113743
                                               (let ((__tmp113746
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107870_)))
                                                     (__tmp113744
                                                      (let ((__tmp113745
                                                             (car _exprs107814_)))
                                                        (declare (not safe))
                                                        (cons __tmp113745
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113746
                                                       __tmp113744))))
                                          (declare (not safe))
                                          (cons __tmp113743 _bind107815_))))
                                   (declare (not safe))
                                   (_lp107811_
                                    _rest107869_
                                    __tmp113747
                                    __tmp113742
                                    _post107816_))))
                              (_K107822107854_
                               (lambda (_rest107843_ _hd107844_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107844_))
                                     (let ((__tmp113768 (cdr _exprs107814_))
                                           (__tmp113761
                                            (let ((__tmp113762
                                                   (let ((__tmp113767
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107844_)))
                                                         (__tmp113763
                                                          (let ((__tmp113764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113765
                                (let ((__tmp113766 (car _exprs107814_)))
                                  (declare (not safe))
                                  (cons __tmp113766 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113765))))
                    (declare (not safe))
                    (cons __tmp113764 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113767
                                                           __tmp113763))))
                                              (declare (not safe))
                                              (cons __tmp113762
                                                    _bind107815_))))
                                       (declare (not safe))
                                       (_lp107811_
                                        _rest107843_
                                        __tmp113768
                                        __tmp113761
                                        _post107816_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107844_))
                                         (let* ((_len107846_
                                                 (length _hd107844_))
                                                (_tmp107848_
                                                 (let ((__tmp113748 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113748))))
                                           (let ((__tmp113760
                                                  (cdr _exprs107814_))
                                                 (__tmp113756
                                                  (let ((__tmp113757
                                                         (let ((__tmp113758
                                                                (let ((__tmp113759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107814_)))
                          (declare (not safe))
                          (cons __tmp113759 '()))))
                   (declare (not safe))
                   (cons _tmp107848_ __tmp113758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113757
                                                          _bind107815_)))
                                                 (__tmp113749
                                                  (let ((__tmp113750
                                                         (let ((__tmp113751
                                                                (let ((__tmp113752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113754
                                      (lambda (_id107851_ _k107852_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107851_))
                                            (let ((__tmp113755
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107851_))))
                                              (declare (not safe))
                                              (cons __tmp113755 _k107852_))
                                            '#f)))
                                     (__tmp113753
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107846_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113754
                                  _hd107844_
                                  __tmp113753))))
                          (declare (not safe))
                          (cons _len107846_ __tmp113752))))
                   (declare (not safe))
                   (cons _tmp107848_ __tmp113751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113750
                                                          _post107816_))))
                                             (declare (not safe))
                                             (_lp107811_
                                              _rest107843_
                                              __tmp113760
                                              __tmp113756
                                              __tmp113749)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107708_
                                            _hd107844_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107817107831_))
                              (let ((_tl107827107877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107817107831_)))
                                    (_hd107826107875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107817107831_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107826107875_))
                                    (let ((_tl107829107882_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107826107875_)))
                                          (_hd107828107880_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107826107875_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107829107882_))
                                          (let ((_id107885_ _hd107828107880_)
                                                (_rest107887_
                                                 _tl107827107877_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107825107872_
                                               _rest107887_
                                               _id107885_)))
                                          (let ((_hd107862_ _hd107826107875_)
                                                (_rest107864_
                                                 _tl107827107877_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107822107854_
                                               _rest107864_
                                               _hd107862_)))))
                                    (let ((_hd107862_ _hd107826107875_)
                                          (_rest107864_ _tl107827107877_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107822107854_
                                         _rest107864_
                                         _hd107862_)))))
                              (let ()
                                (declare (not safe))
                                (_else107820107839_))))))))
                 (_compile-post107712_
                  (lambda (_post107714_ _body107715_)
                    (let _lp107717_ ((_rest107719_ _post107714_)
                                     (_check107720_ '())
                                     (_bind107721_ '()))
                      (let* ((_rest107722107734_ _rest107719_)
                             (_else107724107742_
                              (lambda ()
                                (let ((__tmp113769
                                       (let ((__tmp113770
                                              (let ((__tmp113771
                                                     (let ((__tmp113772
                                                            (let ((__tmp113773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113774
                                  (let ((__tmp113775
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107715_ '()))))
                                    (declare (not safe))
                                    (cons _bind107721_ __tmp113775))))
                             (declare (not safe))
                             (cons 'let __tmp113774))))
                      (declare (not safe))
                      (__SRC__% __tmp113773 _stx107708_))))
               (declare (not safe))
               (cons __tmp113772 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113771
                                                        _check107720_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113770))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113769 _stx107708_))))
                             (_K107726107781_
                              (lambda (_rest107745_
                                       _init107746_
                                       _len107747_
                                       _tmp107748_)
                                (let ((__tmp113783
                                       (let ((__tmp113784
                                              (let ((__tmp113785
                                                     (let ((__tmp113786
                                                            (let ((__tmp113787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107747_ '()))))
                      (declare (not safe))
                      (cons _tmp107748_ __tmp113787))))
               (declare (not safe))
               (cons '__check-values __tmp113786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113785
                                                 _stx107708_))))
                                         (declare (not safe))
                                         (cons __tmp113784 _check107720_)))
                                      (__tmp113776
                                       (let ((__tmp113777
                                              (lambda (_hd107750_ _r107751_)
                                                (let* ((_hd107752107759_
                                                        _hd107750_)
                                                       (_E107754107763_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107752107759_)))
               (_K107755107769_
                (lambda (_k107766_ _id107767_)
                  (let ((__tmp113778
                         (let ((__tmp113779
                                (let ((__tmp113780
                                       (let ((__tmp113781
                                              (let ((__tmp113782
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k107766_ '()))))
                                                (declare (not safe))
                                                (cons _tmp107748_
                                                      __tmp113782))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp113781))))
                                  (declare (not safe))
                                  (cons __tmp113780 '()))))
                           (declare (not safe))
                           (cons _id107767_ __tmp113779))))
                    (declare (not safe))
                    (cons __tmp113778 _r107751_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107752107759_))
                                                      (let ((_hd107756107772_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107752107759_)))
                    (_tl107757107774_
                     (let () (declare (not safe)) (##cdr _hd107752107759_))))
                (let* ((_id107777_ _hd107756107772_)
                       (_k107779_ _tl107757107774_))
                  (declare (not safe))
                  (_K107755107769_ _k107779_ _id107777_)))
              (let () (declare (not safe)) (_E107754107763_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113777
                                                 _bind107721_
                                                 _init107746_))))
                                  (declare (not safe))
                                  (_lp107717_
                                   _rest107745_
                                   __tmp113783
                                   __tmp113776)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107722107734_))
                            (let ((_hd107727107784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107722107734_)))
                                  (_tl107728107786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107722107734_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107727107784_))
                                  (let ((_hd107729107789_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107727107784_)))
                                        (_tl107730107791_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107727107784_))))
                                    (let ((_tmp107794_ _hd107729107789_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107730107791_))
                                          (let ((_hd107731107796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107730107791_)))
                                                (_tl107732107798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107730107791_))))
                                            (let* ((_len107801_
                                                    _hd107731107796_)
                                                   (_init107803_
                                                    _tl107732107798_)
                                                   (_rest107805_
                                                    _tl107728107786_))
                                              (declare (not safe))
                                              (_K107726107781_
                                               _rest107805_
                                               _init107803_
                                               _len107801_
                                               _tmp107794_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107724107742_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107724107742_))))
                            (let ()
                              (declare (not safe))
                              (_else107724107742_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107708_
             _compile-simple107710_
             _compile-values107711_)))))
    (define __compile-letrec-values%
      (lambda (_stx107508_)
        (letrec ((_compile-simple107510_
                  (lambda (_hd-ids107704_ _exprs107705_ _body107706_)
                    (let ((__tmp113788
                           (let ((__tmp113789
                                  (let ((__tmp113791
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107704_)
                                              _exprs107705_))
                                        (__tmp113790
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107706_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113791 __tmp113790))))
                             (declare (not safe))
                             (cons 'letrec __tmp113789))))
                      (declare (not safe))
                      (__SRC__% __tmp113788 _stx107508_))))
                 (_compile-values107511_
                  (lambda (_hd-ids107618_ _exprs107619_ _body107620_)
                    (let _lp107622_ ((_rest107624_ _hd-ids107618_)
                                     (_exprs107625_ _exprs107619_)
                                     (_pre107626_ '())
                                     (_bind107627_ '())
                                     (_post107628_ '()))
                      (let* ((_rest107629107643_ _rest107624_)
                             (_else107632107651_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107512_
                                   _pre107626_
                                   _bind107627_
                                   _post107628_
                                   _body107620_)))))
                        (let ((_K107637107687_
                               (lambda (_rest107684_ _id107685_)
                                 (let ((__tmp113797 (cdr _exprs107625_))
                                       (__tmp113792
                                        (let ((__tmp113793
                                               (let ((__tmp113796
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107685_)))
                                                     (__tmp113794
                                                      (let ((__tmp113795
                                                             (car _exprs107625_)))
                                                        (declare (not safe))
                                                        (cons __tmp113795
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113796
                                                       __tmp113794))))
                                          (declare (not safe))
                                          (cons __tmp113793 _bind107627_))))
                                   (declare (not safe))
                                   (_lp107622_
                                    _rest107684_
                                    __tmp113797
                                    _pre107626_
                                    __tmp113792
                                    _post107628_))))
                              (_K107634107669_
                               (lambda (_rest107655_ _hd107656_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107656_))
                                     (let ((__tmp113825 (cdr _exprs107625_))
                                           (__tmp113818
                                            (let ((__tmp113819
                                                   (let ((__tmp113824
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107656_)))
                                                         (__tmp113820
                                                          (let ((__tmp113821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113822
                                (let ((__tmp113823 (car _exprs107625_)))
                                  (declare (not safe))
                                  (cons __tmp113823 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113822))))
                    (declare (not safe))
                    (cons __tmp113821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113824
                                                           __tmp113820))))
                                              (declare (not safe))
                                              (cons __tmp113819
                                                    _bind107627_))))
                                       (declare (not safe))
                                       (_lp107622_
                                        _rest107655_
                                        __tmp113825
                                        _pre107626_
                                        __tmp113818
                                        _post107628_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107656_))
                                         (let* ((_len107658_
                                                 (length _hd107656_))
                                                (_tmp107660_
                                                 (let ((__tmp113798 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113798))))
                                           (let ((__tmp113817
                                                  (cdr _exprs107625_))
                                                 (__tmp113810
                                                  (let ((__tmp113811
                                                         (lambda (_id107663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r107664_)
                   (if (let () (declare (not safe)) (__AST-e _id107663_))
                       (let ((__tmp113812
                              (let ((__tmp113816
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id107663_)))
                                    (__tmp113813
                                     (let ((__tmp113814
                                            (let ((__tmp113815
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp113815))))
                                       (declare (not safe))
                                       (cons __tmp113814 '()))))
                                (declare (not safe))
                                (cons __tmp113816 __tmp113813))))
                         (declare (not safe))
                         (cons __tmp113812 _r107664_))
                       _r107664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp113811
                                                            _pre107626_
                                                            _hd107656_)))
                                                 (__tmp113806
                                                  (let ((__tmp113807
                                                         (let ((__tmp113808
                                                                (let ((__tmp113809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107625_)))
                          (declare (not safe))
                          (cons __tmp113809 '()))))
                   (declare (not safe))
                   (cons _tmp107660_ __tmp113808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113807
                                                          _bind107627_)))
                                                 (__tmp113799
                                                  (let ((__tmp113800
                                                         (let ((__tmp113801
                                                                (let ((__tmp113802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113804
                                      (lambda (_id107666_ _k107667_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107666_))
                                            (let ((__tmp113805
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107666_))))
                                              (declare (not safe))
                                              (cons __tmp113805 _k107667_))
                                            '#f)))
                                     (__tmp113803
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107658_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113804
                                  _hd107656_
                                  __tmp113803))))
                          (declare (not safe))
                          (cons _len107658_ __tmp113802))))
                   (declare (not safe))
                   (cons _tmp107660_ __tmp113801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113800
                                                          _post107628_))))
                                             (declare (not safe))
                                             (_lp107622_
                                              _rest107655_
                                              __tmp113817
                                              __tmp113810
                                              __tmp113806
                                              __tmp113799)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107508_
                                            _hd107656_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107629107643_))
                              (let ((_tl107639107692_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107629107643_)))
                                    (_hd107638107690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107629107643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107638107690_))
                                    (let ((_tl107641107697_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107638107690_)))
                                          (_hd107640107695_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107638107690_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107641107697_))
                                          (let ((_id107700_ _hd107640107695_)
                                                (_rest107702_
                                                 _tl107639107692_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107637107687_
                                               _rest107702_
                                               _id107700_)))
                                          (let ((_hd107677_ _hd107638107690_)
                                                (_rest107679_
                                                 _tl107639107692_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107634107669_
                                               _rest107679_
                                               _hd107677_)))))
                                    (let ((_hd107677_ _hd107638107690_)
                                          (_rest107679_ _tl107639107692_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107634107669_
                                         _rest107679_
                                         _hd107677_)))))
                              (let ()
                                (declare (not safe))
                                (_else107632107651_))))))))
                 (_compile-inner107512_
                  (lambda (_pre107613_ _bind107614_ _post107615_ _body107616_)
                    (if (let () (declare (not safe)) (null? _pre107613_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107513_
                           _bind107614_
                           _post107615_
                           _body107616_))
                        (let ((__tmp113826
                               (let ((__tmp113827
                                      (let ((__tmp113830 (reverse _pre107613_))
                                            (__tmp113828
                                             (let ((__tmp113829
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107513_
                                                       _bind107614_
                                                       _post107615_
                                                       _body107616_))))
                                               (declare (not safe))
                                               (cons __tmp113829 '()))))
                                        (declare (not safe))
                                        (cons __tmp113830 __tmp113828))))
                                 (declare (not safe))
                                 (cons 'let __tmp113827))))
                          (declare (not safe))
                          (__SRC__% __tmp113826 _stx107508_)))))
                 (_compile-bind107513_
                  (lambda (_bind107609_ _post107610_ _body107611_)
                    (let ((__tmp113831
                           (let ((__tmp113832
                                  (let ((__tmp113835 (reverse _bind107609_))
                                        (__tmp113833
                                         (let ((__tmp113834
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107514_
                                                   _post107610_
                                                   _body107611_))))
                                           (declare (not safe))
                                           (cons __tmp113834 '()))))
                                    (declare (not safe))
                                    (cons __tmp113835 __tmp113833))))
                             (declare (not safe))
                             (cons 'letrec __tmp113832))))
                      (declare (not safe))
                      (__SRC__% __tmp113831 _stx107508_))))
                 (_compile-post107514_
                  (lambda (_post107516_ _body107517_)
                    (let _lp107519_ ((_rest107521_ _post107516_)
                                     (_check107522_ '())
                                     (_bind107523_ '()))
                      (let* ((_rest107524107536_ _rest107521_)
                             (_else107526107544_
                              (lambda ()
                                (let ((__tmp113836
                                       (let ((__tmp113837
                                              (let ((__tmp113838
                                                     (let ((__tmp113839
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp113839 _bind107523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113838
                                                        _check107522_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113837))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113836 _stx107508_))))
                             (_K107528107583_
                              (lambda (_rest107547_
                                       _init107548_
                                       _len107549_
                                       _tmp107550_)
                                (let ((__tmp113848
                                       (let ((__tmp113849
                                              (let ((__tmp113850
                                                     (let ((__tmp113851
                                                            (let ((__tmp113852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107549_ '()))))
                      (declare (not safe))
                      (cons _tmp107550_ __tmp113852))))
               (declare (not safe))
               (cons '__check-values __tmp113851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113850
                                                 _stx107508_))))
                                         (declare (not safe))
                                         (cons __tmp113849 _check107522_)))
                                      (__tmp113840
                                       (let ((__tmp113841
                                              (lambda (_hd107552_ _r107553_)
                                                (let* ((_hd107554107561_
                                                        _hd107552_)
                                                       (_E107556107565_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107554107561_)))
               (_K107557107571_
                (lambda (_k107568_ _id107569_)
                  (let ((__tmp113842
                         (let ((__tmp113843
                                (let ((__tmp113844
                                       (let ((__tmp113845
                                              (let ((__tmp113846
                                                     (let ((__tmp113847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107550_ __tmp113847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp113846))))
                                         (declare (not safe))
                                         (cons __tmp113845 '()))))
                                  (declare (not safe))
                                  (cons _id107569_ __tmp113844))))
                           (declare (not safe))
                           (cons 'set! __tmp113843))))
                    (declare (not safe))
                    (cons __tmp113842 _r107553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107554107561_))
                                                      (let ((_hd107558107574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107554107561_)))
                    (_tl107559107576_
                     (let () (declare (not safe)) (##cdr _hd107554107561_))))
                (let* ((_id107579_ _hd107558107574_)
                       (_k107581_ _tl107559107576_))
                  (declare (not safe))
                  (_K107557107571_ _k107581_ _id107579_)))
              (let () (declare (not safe)) (_E107556107565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113841
                                                 _bind107523_
                                                 _init107548_))))
                                  (declare (not safe))
                                  (_lp107519_
                                   _rest107547_
                                   __tmp113848
                                   __tmp113840)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107524107536_))
                            (let ((_hd107529107586_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107524107536_)))
                                  (_tl107530107588_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107524107536_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107529107586_))
                                  (let ((_hd107531107591_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107529107586_)))
                                        (_tl107532107593_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107529107586_))))
                                    (let ((_tmp107596_ _hd107531107591_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107532107593_))
                                          (let ((_hd107533107598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107532107593_)))
                                                (_tl107534107600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107532107593_))))
                                            (let* ((_len107603_
                                                    _hd107533107598_)
                                                   (_init107605_
                                                    _tl107534107600_)
                                                   (_rest107607_
                                                    _tl107530107588_))
                                              (declare (not safe))
                                              (_K107528107583_
                                               _rest107607_
                                               _init107605_
                                               _len107603_
                                               _tmp107596_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107526107544_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107526107544_))))
                            (let ()
                              (declare (not safe))
                              (_else107526107544_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107508_
             _compile-simple107510_
             _compile-values107511_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107263_)
        (letrec ((_compile-simple107265_
                  (lambda (_hd-ids107504_ _exprs107505_ _body107506_)
                    (let ((__tmp113853
                           (let ((__tmp113854
                                  (let ((__tmp113856
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107504_)
                                              _exprs107505_))
                                        (__tmp113855
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107506_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113856 __tmp113855))))
                             (declare (not safe))
                             (cons 'letrec* __tmp113854))))
                      (declare (not safe))
                      (__SRC__% __tmp113853 _stx107263_))))
                 (_compile-values107266_
                  (lambda (_hd-ids107415_ _exprs107416_ _body107417_)
                    (let _lp107419_ ((_rest107421_ _hd-ids107415_)
                                     (_exprs107422_ _exprs107416_)
                                     (_bind107423_ '())
                                     (_post107424_ '()))
                      (let* ((_rest107425107439_ _rest107421_)
                             (_else107428107447_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107267_
                                   _bind107423_
                                   _post107424_
                                   _body107417_)))))
                        (let ((_K107433107487_
                               (lambda (_rest107482_ _hd107483_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107483_))
                                     (let ((_id107485_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107483_))))
                                       (let ((__tmp113871 (cdr _exprs107422_))
                                             (__tmp113866
                                              (let ((__tmp113867
                                                     (let ((__tmp113868
                                                            (let ((__tmp113869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113870
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113870))))
                      (declare (not safe))
                      (cons __tmp113869 '()))))
               (declare (not safe))
               (cons _id107485_ __tmp113868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113867
                                                      _bind107423_)))
                                             (__tmp113862
                                              (let ((__tmp113863
                                                     (let ((__tmp113864
                                                            (let ((__tmp113865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107422_)))
                      (declare (not safe))
                      (cons __tmp113865 '()))))
               (declare (not safe))
               (cons _id107485_ __tmp113864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113863
                                                      _post107424_))))
                                         (declare (not safe))
                                         (_lp107419_
                                          _rest107482_
                                          __tmp113871
                                          __tmp113866
                                          __tmp113862)))
                                     (let ((__tmp113861 (cdr _exprs107422_))
                                           (__tmp113857
                                            (let ((__tmp113858
                                                   (let ((__tmp113859
                                                          (let ((__tmp113860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107422_)))
                    (declare (not safe))
                    (cons __tmp113860 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp113859))))
                                              (declare (not safe))
                                              (cons __tmp113858
                                                    _post107424_))))
                                       (declare (not safe))
                                       (_lp107419_
                                        _rest107482_
                                        __tmp113861
                                        _bind107423_
                                        __tmp113857)))))
                              (_K107430107467_
                               (lambda (_rest107451_ _hd107452_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107452_))
                                     (let ((_id107454_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107452_))))
                                       (let ((__tmp113907 (cdr _exprs107422_))
                                             (__tmp113902
                                              (let ((__tmp113903
                                                     (let ((__tmp113904
                                                            (let ((__tmp113905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113906
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113906))))
                      (declare (not safe))
                      (cons __tmp113905 '()))))
               (declare (not safe))
               (cons _id107454_ __tmp113904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113903
                                                      _bind107423_)))
                                             (__tmp113896
                                              (let ((__tmp113897
                                                     (let ((__tmp113898
                                                            (let ((__tmp113899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113900
                                  (let ((__tmp113901 (car _exprs107422_)))
                                    (declare (not safe))
                                    (cons __tmp113901 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp113900))))
                      (declare (not safe))
                      (cons __tmp113899 '()))))
               (declare (not safe))
               (cons _id107454_ __tmp113898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113897
                                                      _post107424_))))
                                         (declare (not safe))
                                         (_lp107419_
                                          _rest107451_
                                          __tmp113907
                                          __tmp113902
                                          __tmp113896)))
                                     (if (let ((__tmp113895
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107452_))))
                                           (declare (not safe))
                                           (not __tmp113895))
                                         (let ((__tmp113894
                                                (cdr _exprs107422_))
                                               (__tmp113890
                                                (let ((__tmp113891
                                                       (let ((__tmp113892
                                                              (let ((__tmp113893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107422_)))
                        (declare (not safe))
                        (cons __tmp113893 '()))))
                 (declare (not safe))
                 (cons '#f __tmp113892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113891
                                                        _post107424_))))
                                           (declare (not safe))
                                           (_lp107419_
                                            _rest107451_
                                            __tmp113894
                                            _bind107423_
                                            __tmp113890))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107452_))
                                             (let* ((_len107456_
                                                     (length _hd107452_))
                                                    (_tmp107458_
                                                     (let ((__tmp113872
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp113872))))
                                               (let ((__tmp113889
                                                      (cdr _exprs107422_))
                                                     (__tmp113882
                                                      (let ((__tmp113883
                                                             (lambda (_id107461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107462_)
                       (if (let () (declare (not safe)) (__AST-e _id107461_))
                           (let ((__tmp113884
                                  (let ((__tmp113888
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107461_)))
                                        (__tmp113885
                                         (let ((__tmp113886
                                                (let ((__tmp113887
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp113887))))
                                           (declare (not safe))
                                           (cons __tmp113886 '()))))
                                    (declare (not safe))
                                    (cons __tmp113888 __tmp113885))))
                             (declare (not safe))
                             (cons __tmp113884 _r107462_))
                           _r107462_))))
                (declare (not safe))
                (foldl1 __tmp113883 _bind107423_ _hd107452_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113873
                                                      (let ((__tmp113874
                                                             (let ((__tmp113875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113881 (car _exprs107422_))
                                  (__tmp113876
                                   (let ((__tmp113877
                                          (let ((__tmp113879
                                                 (lambda (_id107464_ _k107465_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107464_))
                                                       (let ((__tmp113880
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107464_))))
                 (declare (not safe))
                 (cons __tmp113880 _k107465_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp113878
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107456_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp113879
                                             _hd107452_
                                             __tmp113878))))
                                     (declare (not safe))
                                     (cons _len107456_ __tmp113877))))
                              (declare (not safe))
                              (cons __tmp113881 __tmp113876))))
                       (declare (not safe))
                       (cons _tmp107458_ __tmp113875))))
                (declare (not safe))
                (cons __tmp113874 _post107424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107419_
                                                  _rest107451_
                                                  __tmp113889
                                                  __tmp113882
                                                  __tmp113873)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107263_
                                                _hd107452_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107425107439_))
                              (let ((_tl107435107492_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107425107439_)))
                                    (_hd107434107490_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107425107439_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107434107490_))
                                    (let ((_tl107437107497_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107434107490_)))
                                          (_hd107436107495_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107434107490_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107437107497_))
                                          (let ((_hd107500_ _hd107436107495_)
                                                (_rest107502_
                                                 _tl107435107492_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107433107487_
                                               _rest107502_
                                               _hd107500_)))
                                          (let ((_hd107475_ _hd107434107490_)
                                                (_rest107477_
                                                 _tl107435107492_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107430107467_
                                               _rest107477_
                                               _hd107475_)))))
                                    (let ((_hd107475_ _hd107434107490_)
                                          (_rest107477_ _tl107435107492_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107430107467_
                                         _rest107477_
                                         _hd107475_)))))
                              (let ()
                                (declare (not safe))
                                (_else107428107447_))))))))
                 (_compile-bind107267_
                  (lambda (_bind107411_ _post107412_ _body107413_)
                    (let ((__tmp113908
                           (let ((__tmp113909
                                  (let ((__tmp113912 (reverse _bind107411_))
                                        (__tmp113910
                                         (let ((__tmp113911
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107268_
                                                   _post107412_
                                                   _body107413_))))
                                           (declare (not safe))
                                           (cons __tmp113911 '()))))
                                    (declare (not safe))
                                    (cons __tmp113912 __tmp113910))))
                             (declare (not safe))
                             (cons 'let __tmp113909))))
                      (declare (not safe))
                      (__SRC__% __tmp113908 _stx107263_))))
                 (_compile-post107268_
                  (lambda (_post107270_ _body107271_)
                    (let ((__tmp113913
                           (let ((__tmp113914
                                  (let ((__tmp113915
                                         (let ((__tmp113917
                                                (lambda (_hd107273_ _r107274_)
                                                  (let* ((_hd107275107298_
                                                          _hd107273_)
                                                         (_E107279107302_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107275107298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107292107396_
                                                           (lambda (_expr107394_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107394_ _r107274_))))
                  (_K107287107374_
                   (lambda (_expr107371_ _id107372_)
                     (let ((__tmp113918
                            (let ((__tmp113919
                                   (let ((__tmp113920
                                          (let ((__tmp113921
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107371_ '()))))
                                            (declare (not safe))
                                            (cons _id107372_ __tmp113921))))
                                     (declare (not safe))
                                     (cons 'set! __tmp113920))))
                              (declare (not safe))
                              (__SRC__% __tmp113919 _stx107263_))))
                       (declare (not safe))
                       (cons __tmp113918 _r107274_))))
                  (_K107280107341_
                   (lambda (_init107306_ _len107307_ _expr107308_ _tmp107309_)
                     (let ((__tmp113922
                            (let ((__tmp113923
                                   (let ((__tmp113924
                                          (let ((__tmp113938
                                                 (let ((__tmp113939
                                                        (let ((__tmp113940
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107308_ '()))))
                  (declare (not safe))
                  (cons _tmp107309_ __tmp113940))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113939 '())))
                                                (__tmp113925
                                                 (let ((__tmp113934
                                                        (let ((__tmp113935
                                                               (let ((__tmp113936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp113937
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107307_ '()))))
                                (declare (not safe))
                                (cons _tmp107309_ __tmp113937))))
                         (declare (not safe))
                         (cons '__check-values __tmp113936))))
                  (declare (not safe))
                  (__SRC__% __tmp113935 _stx107263_)))
               (__tmp113926
                (let ((__tmp113927
                       (map (lambda (_hd107311_)
                              (let* ((_hd107312107319_ _hd107311_)
                                     (_E107314107323_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107312107319_)))
                                     (_K107315107329_
                                      (lambda (_k107326_ _id107327_)
                                        (let ((__tmp113928
                                               (let ((__tmp113929
                                                      (let ((__tmp113930
                                                             (let ((__tmp113931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113932
                                   (let ((__tmp113933
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107326_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107309_ __tmp113933))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp113932))))
                       (declare (not safe))
                       (cons __tmp113931 '()))))
                (declare (not safe))
                (cons _id107327_ __tmp113930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp113929))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp113928
                                           _stx107263_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107312107319_))
                                    (let ((_hd107316107332_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107312107319_)))
                                          (_tl107317107334_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107312107319_))))
                                      (let* ((_id107337_ _hd107316107332_)
                                             (_k107339_ _tl107317107334_))
                                        (declare (not safe))
                                        (_K107315107329_
                                         _k107339_
                                         _id107337_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107314107323_)))))
                            _init107306_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp113927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113934
                                                         __tmp113926))))
                                            (declare (not safe))
                                            (cons __tmp113938 __tmp113925))))
                                     (declare (not safe))
                                     (cons 'let __tmp113924))))
                              (declare (not safe))
                              (__SRC__% __tmp113923 _stx107263_))))
                       (declare (not safe))
                       (cons __tmp113922 _r107274_)))))
              (if (let () (declare (not safe)) (##pair? _hd107275107298_))
                  (let ((_tl107294107401_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107275107298_)))
                        (_hd107293107399_
                         (let ()
                           (declare (not safe))
                           (##car _hd107275107298_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107293107399_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107294107401_))
                            (let ((_tl107296107406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107294107401_)))
                                  (_hd107295107404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107294107401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107296107406_))
                                  (let ((_expr107409_ _hd107295107404_))
                                    (declare (not safe))
                                    (_K107292107396_ _expr107409_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107296107406_))
                                      (let ((_tl107286107360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107296107406_)))
                                            (_hd107285107358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107296107406_))))
                                        (let ((_tmp107349_ _hd107293107399_)
                                              (_expr107356_ _hd107295107404_)
                                              (_len107363_ _hd107285107358_)
                                              (_init107365_ _tl107286107360_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107280107341_
                                             _init107365_
                                             _len107363_
                                             _expr107356_
                                             _tmp107349_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107279107302_)))))
                            (let () (declare (not safe)) (_E107279107302_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107294107401_))
                            (let ((_tl107291107386_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107294107401_)))
                                  (_hd107290107384_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107294107401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107291107386_))
                                  (let ((_id107382_ _hd107293107399_)
                                        (_expr107389_ _hd107290107384_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107287107374_
                                       _expr107389_
                                       _id107382_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107291107386_))
                                      (let ((_tl107286107360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107291107386_)))
                                            (_hd107285107358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107291107386_))))
                                        (let ((_tmp107349_ _hd107293107399_)
                                              (_expr107356_ _hd107290107384_)
                                              (_len107363_ _hd107285107358_)
                                              (_init107365_ _tl107286107360_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107280107341_
                                             _init107365_
                                             _len107363_
                                             _expr107356_
                                             _tmp107349_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107279107302_)))))
                            (let () (declare (not safe)) (_E107279107302_)))))
                  (let () (declare (not safe)) (_E107279107302_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp113916
                                                (list _body107271_)))
                                           (declare (not safe))
                                           (foldl1 __tmp113917
                                                   __tmp113916
                                                   _post107270_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp113915))))
                             (declare (not safe))
                             (cons 'begin __tmp113914))))
                      (declare (not safe))
                      (__SRC__% __tmp113913 _stx107263_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107263_
             _compile-simple107265_
             _compile-values107266_)))))
    (define __compile-call%
      (lambda (_stx107223_)
        (let* ((_$e107225_ _stx107223_)
               (_$E107227107236_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107225_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107225_))
              (let* ((_$tgt107228107239_
                      (let () (declare (not safe)) (__AST-e _$e107225_)))
                     (_$hd107229107242_
                      (let () (declare (not safe)) (##car _$tgt107228107239_)))
                     (_$tl107230107245_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107228107239_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107230107245_))
                    (let* ((_$tgt107231107249_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107230107245_)))
                           (_$hd107232107252_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107231107249_)))
                           (_$tl107233107255_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107231107249_))))
                      (let* ((_rator107259_ _$hd107232107252_)
                             (_rands107261_ _$tl107233107255_)
                             (__tmp113941
                              (let ((__tmp113943
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107259_)))
                                    (__tmp113942
                                     (map __compile _rands107261_)))
                                (declare (not safe))
                                (cons __tmp113943 __tmp113942))))
                        (declare (not safe))
                        (__SRC__% __tmp113941 _stx107223_)))
                    (let () (declare (not safe)) (_$E107227107236_))))
              (let () (declare (not safe)) (_$E107227107236_))))))
    (define __compile-ref%
      (lambda (_stx107185_)
        (let* ((_$e107187_ _stx107185_)
               (_$E107189107198_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107187_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107187_))
              (let* ((_$tgt107190107201_
                      (let () (declare (not safe)) (__AST-e _$e107187_)))
                     (_$hd107191107204_
                      (let () (declare (not safe)) (##car _$tgt107190107201_)))
                     (_$tl107192107207_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107190107201_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107192107207_))
                    (let* ((_$tgt107193107211_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107192107207_)))
                           (_$hd107194107214_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107193107211_)))
                           (_$tl107195107217_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107193107211_))))
                      (let ((_id107221_ _$hd107194107214_))
                        (if (let ((__tmp113944
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107195107217_))))
                              (declare (not safe))
                              (equal? __tmp113944 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107221_ _stx107185_))
                            (let () (declare (not safe)) (_$E107189107198_)))))
                    (let () (declare (not safe)) (_$E107189107198_))))
              (let () (declare (not safe)) (_$E107189107198_))))))
    (define __compile-setq%
      (lambda (_stx107132_)
        (let* ((_$e107134_ _stx107132_)
               (_$E107136107148_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107134_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107134_))
              (let* ((_$tgt107137107151_
                      (let () (declare (not safe)) (__AST-e _$e107134_)))
                     (_$hd107138107154_
                      (let () (declare (not safe)) (##car _$tgt107137107151_)))
                     (_$tl107139107157_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107137107151_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107139107157_))
                    (let* ((_$tgt107140107161_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107139107157_)))
                           (_$hd107141107164_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107140107161_)))
                           (_$tl107142107167_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107140107161_))))
                      (let ((_id107171_ _$hd107141107164_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107142107167_))
                            (let* ((_$tgt107143107173_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107142107167_)))
                                   (_$hd107144107176_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107143107173_)))
                                   (_$tl107145107179_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107143107173_))))
                              (let ((_expr107183_ _$hd107144107176_))
                                (if (let ((__tmp113950
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107145107179_))))
                                      (declare (not safe))
                                      (equal? __tmp113950 '()))
                                    (let ((__tmp113945
                                           (let ((__tmp113946
                                                  (let ((__tmp113949
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107171_
                                                            _stx107132_)))
                                                        (__tmp113947
                                                         (let ((__tmp113948
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107183_))))
                   (declare (not safe))
                   (cons __tmp113948 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113949
                                                          __tmp113947))))
                                             (declare (not safe))
                                             (cons 'set! __tmp113946))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113945 _stx107132_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107136107148_)))))
                            (let () (declare (not safe)) (_$E107136107148_)))))
                    (let () (declare (not safe)) (_$E107136107148_))))
              (let () (declare (not safe)) (_$E107136107148_))))))
    (define __compile-if%
      (lambda (_stx107064_)
        (let* ((_$e107066_ _stx107064_)
               (_$E107068107083_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107066_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107066_))
              (let* ((_$tgt107069107086_
                      (let () (declare (not safe)) (__AST-e _$e107066_)))
                     (_$hd107070107089_
                      (let () (declare (not safe)) (##car _$tgt107069107086_)))
                     (_$tl107071107092_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107069107086_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107071107092_))
                    (let* ((_$tgt107072107096_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107071107092_)))
                           (_$hd107073107099_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107072107096_)))
                           (_$tl107074107102_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107072107096_))))
                      (let ((_p107106_ _$hd107073107099_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107074107102_))
                            (let* ((_$tgt107075107108_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107074107102_)))
                                   (_$hd107076107111_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107075107108_)))
                                   (_$tl107077107114_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107075107108_))))
                              (let ((_t107118_ _$hd107076107111_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107077107114_))
                                    (let* ((_$tgt107078107120_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107077107114_)))
                                           (_$hd107079107123_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107078107120_)))
                                           (_$tl107080107126_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107078107120_))))
                                      (let ((_f107130_ _$hd107079107123_))
                                        (if (let ((__tmp113958
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107080107126_))))
                                              (declare (not safe))
                                              (equal? __tmp113958 '()))
                                            (let ((__tmp113951
                                                   (let ((__tmp113952
                                                          (let ((__tmp113957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107106_)))
                        (__tmp113953
                         (let ((__tmp113956
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107118_)))
                               (__tmp113954
                                (let ((__tmp113955
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107130_))))
                                  (declare (not safe))
                                  (cons __tmp113955 '()))))
                           (declare (not safe))
                           (cons __tmp113956 __tmp113954))))
                    (declare (not safe))
                    (cons __tmp113957 __tmp113953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp113952))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp113951
                                               _stx107064_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107068107083_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107068107083_)))))
                            (let () (declare (not safe)) (_$E107068107083_)))))
                    (let () (declare (not safe)) (_$E107068107083_))))
              (let () (declare (not safe)) (_$E107068107083_))))))
    (define __compile-quote%
      (lambda (_stx107026_)
        (let* ((_$e107028_ _stx107026_)
               (_$E107030107039_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107028_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107028_))
              (let* ((_$tgt107031107042_
                      (let () (declare (not safe)) (__AST-e _$e107028_)))
                     (_$hd107032107045_
                      (let () (declare (not safe)) (##car _$tgt107031107042_)))
                     (_$tl107033107048_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107031107042_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107033107048_))
                    (let* ((_$tgt107034107052_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107033107048_)))
                           (_$hd107035107055_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107034107052_)))
                           (_$tl107036107058_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107034107052_))))
                      (let ((_e107062_ _$hd107035107055_))
                        (if (let ((__tmp113962
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107036107058_))))
                              (declare (not safe))
                              (equal? __tmp113962 '()))
                            (let ((__tmp113959
                                   (let ((__tmp113960
                                          (let ((__tmp113961
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107062_))))
                                            (declare (not safe))
                                            (cons __tmp113961 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp113960))))
                              (declare (not safe))
                              (__SRC__% __tmp113959 _stx107026_))
                            (let () (declare (not safe)) (_$E107030107039_)))))
                    (let () (declare (not safe)) (_$E107030107039_))))
              (let () (declare (not safe)) (_$E107030107039_))))))
    (define __compile-quote-syntax%
      (lambda (_stx106988_)
        (let* ((_$e106990_ _stx106988_)
               (_$E106992107001_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e106990_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e106990_))
              (let* ((_$tgt106993107004_
                      (let () (declare (not safe)) (__AST-e _$e106990_)))
                     (_$hd106994107007_
                      (let () (declare (not safe)) (##car _$tgt106993107004_)))
                     (_$tl106995107010_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt106993107004_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl106995107010_))
                    (let* ((_$tgt106996107014_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl106995107010_)))
                           (_$hd106997107017_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt106996107014_)))
                           (_$tl106998107020_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt106996107014_))))
                      (let ((_e107024_ _$hd106997107017_))
                        (if (let ((__tmp113965
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl106998107020_))))
                              (declare (not safe))
                              (equal? __tmp113965 '()))
                            (let ((__tmp113963
                                   (let ((__tmp113964
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107024_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp113964))))
                              (declare (not safe))
                              (__SRC__% __tmp113963 _stx106988_))
                            (let () (declare (not safe)) (_$E106992107001_)))))
                    (let () (declare (not safe)) (_$E106992107001_))))
              (let () (declare (not safe)) (_$E106992107001_))))))
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
