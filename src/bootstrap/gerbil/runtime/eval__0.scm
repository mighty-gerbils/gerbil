(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1707647932)
  (begin
    (define __context::t
      (let ((__tmp113715 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__context::t
         '__context
         __tmp113715
         '(t ns super table)
         '()
         '#f)))
    (define __context?
      (let () (declare (not safe)) (make-class-predicate __context::t)))
    (define make-__context
      (lambda _$args109038_
        (apply make-class-instance __context::t _$args109038_)))
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
      (let ((__tmp113716 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__runtime::t
         '__runtime
         __tmp113716
         '(id)
         '()
         '#f)))
    (define __runtime?
      (let () (declare (not safe)) (make-class-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args109035_
        (apply make-class-instance __runtime::t _$args109035_)))
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
      (let ((__tmp113717 (list)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113717
         '(e id)
         '()
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args109032_
        (apply make-class-instance __syntax::t _$args109032_)))
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
      (let ((__tmp113718 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__macro::t
         '__macro
         __tmp113718
         '()
         '()
         '#f)))
    (define __macro?
      (let () (declare (not safe)) (make-class-predicate __macro::t)))
    (define make-__macro
      (lambda _$args109029_
        (apply make-class-instance __macro::t _$args109029_)))
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
      (let ((__tmp113719 (list __macro::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__special-form::t
         '__special-form
         __tmp113719
         '()
         '()
         '#f)))
    (define __special-form?
      (let () (declare (not safe)) (make-class-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args109026_
        (apply make-class-instance __special-form::t _$args109026_)))
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
      (let ((__tmp113720 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113720
         '()
         '()
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args109023_
        (apply make-class-instance __core-form::t _$args109023_)))
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
      (let ((__tmp113721 (list __core-form::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113721
         '()
         '()
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args109020_
        (apply make-class-instance __core-expression::t _$args109020_)))
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
      (let ((__tmp113722 (list __core-form::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113722
         '()
         '()
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args109017_
        (apply make-class-instance __core-special-form::t _$args109017_)))
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
      (let ((__tmp113723 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__struct-info::t
         '__struct-info
         __tmp113723
         '()
         '()
         '#f)))
    (define __struct-info?
      (let () (declare (not safe)) (make-class-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args109014_
        (apply make-class-instance __struct-info::t _$args109014_)))
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
      (let ((__tmp113724 (list __syntax::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__feature::t
         '__feature
         __tmp113724
         '()
         '()
         '#f)))
    (define __feature?
      (let () (declare (not safe)) (make-class-predicate __feature::t)))
    (define make-__feature
      (lambda _$args109011_
        (apply make-class-instance __feature::t _$args109011_)))
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
      (let ((__tmp113725 (list __context::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__module::t
         '__module
         __tmp113725
         '(id path import export)
         '()
         '#f)))
    (define __module?
      (let () (declare (not safe)) (make-class-predicate __module::t)))
    (define make-__module
      (lambda _$args109008_
        (apply make-class-instance __module::t _$args109008_)))
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
      (let ((__obj113703
             (let ()
               (declare (not safe))
               (##structure __context::t '#f '#f '#f '#f))))
        (class-instance-init!
         __obj113703
         'top
         '#f
         (let ((__obj113702
                (let ()
                  (declare (not safe))
                  (##structure __context::t '#f '#f '#f '#f))))
           (class-instance-init! __obj113702 'root '#f '#f __*core*)
           __obj113702)
         (let () (declare (not safe)) (make-table 'test: eq?)))
        __obj113703))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id108983_ _ctx108984_)
        (if _ctx108984_
            (let ((_id108986_
                   (let () (declare (not safe)) (__AST-e _id108983_))))
              (let _lp108988_ ((_ctx108990_ _ctx108984_))
                (let ((_$e108992_
                       (table-ref
                        (let ((__obj113704 _ctx108990_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj113704
                                 'gerbil/runtime/eval#__context::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj113704
                                 '4
                                 __context::t
                                 '#f))
                              (class-slot-ref
                               __context::t
                               __obj113704
                               'table)))
                        _id108986_
                        '#f)))
                  (if _$e108992_
                      (values _$e108992_)
                      (let ((_$e108995_
                             (let ((__obj113705 _ctx108990_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj113705
                                      'gerbil/runtime/eval#__context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj113705
                                      '3
                                      __context::t
                                      '#f))
                                   (class-slot-ref
                                    __context::t
                                    __obj113705
                                    'super)))))
                        (if _$e108995_
                            (let ()
                              (declare (not safe))
                              (_lp108988_ _$e108995_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id109001_)
        (let ((_ctx109003_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id109001_ _ctx109003_))))
    (define __core-resolve
      (lambda _g113727_
        (let ((_g113726_ (let () (declare (not safe)) (##length _g113727_))))
          (cond ((let () (declare (not safe)) (##fx= _g113726_ 1))
                 (apply (lambda (_id109001_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id109001_)))
                        _g113727_))
                ((let () (declare (not safe)) (##fx= _g113726_ 2))
                 (apply (lambda (_id109005_ _ctx109006_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id109005_ _ctx109006_)))
                        _g113727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g113727_))))))
    (define __core-bound-id?__%
      (lambda (_id108966_ _is?108967_)
        (let ((_$e108969_
               (let () (declare (not safe)) (__core-resolve__0 _id108966_))))
          (if _$e108969_ (_is?108967_ _$e108969_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id108975_)
        (let ((_is?108977_ true))
          (declare (not safe))
          (__core-bound-id?__% _id108975_ _is?108977_))))
    (define __core-bound-id?
      (lambda _g113729_
        (let ((_g113728_ (let () (declare (not safe)) (##length _g113729_))))
          (cond ((let () (declare (not safe)) (##fx= _g113728_ 1))
                 (apply (lambda (_id108975_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id108975_)))
                        _g113729_))
                ((let () (declare (not safe)) (##fx= _g113728_ 2))
                 (apply (lambda (_id108979_ _is?108980_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id108979_ _is?108980_)))
                        _g113729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113729_))))))
    (define __core-bind-runtime!__%
      (lambda (_id108949_ _eid108950_ _ctx108951_)
        (if _eid108950_
            (let ((__tmp113732
                   (let ((__obj113706 _ctx108951_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj113706
                            'gerbil/runtime/eval#__context::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj113706
                            '4
                            __context::t
                            '#f))
                         (class-slot-ref __context::t __obj113706 'table))))
                  (__tmp113731
                   (let () (declare (not safe)) (__AST-e _id108949_)))
                  (__tmp113730
                   (let ((__obj113707
                          (let ()
                            (declare (not safe))
                            (##structure __runtime::t '#f))))
                     (class-instance-init! __obj113707 _eid108950_)
                     __obj113707)))
              (declare (not safe))
              (table-set! __tmp113732 __tmp113731 __tmp113730))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id108956_ _eid108957_)
        (let ((_ctx108959_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id108956_ _eid108957_ _ctx108959_))))
    (define __core-bind-runtime!
      (lambda _g113734_
        (let ((_g113733_ (let () (declare (not safe)) (##length _g113734_))))
          (cond ((let () (declare (not safe)) (##fx= _g113733_ 2))
                 (apply (lambda (_id108956_ _eid108957_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id108956_ _eid108957_)))
                        _g113734_))
                ((let () (declare (not safe)) (##fx= _g113733_ 3))
                 (apply (lambda (_id108961_ _eid108962_ _ctx108963_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id108961_
                             _eid108962_
                             _ctx108963_)))
                        _g113734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g113734_))))))
    (define __core-bind-syntax!__%
      (lambda (_id108932_ _e108933_ _make108934_)
        (let ((__tmp113735
               (if (let ()
                     (declare (not safe))
                     (class-instance? __syntax::t _e108933_))
                   _e108933_
                   (_make108934_ _e108933_ _id108932_))))
          (declare (not safe))
          (table-set! __*core* _id108932_ __tmp113735))))
    (define __core-bind-syntax!__0
      (lambda (_id108939_ _e108940_)
        (let ((_make108942_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id108939_ _e108940_ _make108942_))))
    (define __core-bind-syntax!
      (lambda _g113737_
        (let ((_g113736_ (let () (declare (not safe)) (##length _g113737_))))
          (cond ((let () (declare (not safe)) (##fx= _g113736_ 2))
                 (apply (lambda (_id108939_ _e108940_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id108939_ _e108940_)))
                        _g113737_))
                ((let () (declare (not safe)) (##fx= _g113736_ 3))
                 (apply (lambda (_id108944_ _e108945_ _make108946_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id108944_
                             _e108945_
                             _make108946_)))
                        _g113737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113737_))))))
    (define __core-bind-macro!
      (lambda (_id108928_ _e108929_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108928_ _e108929_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id108925_ _e108926_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id108925_ _e108926_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id108909_ _e108910_ _ctx108911_)
        (let ((__tmp113740
               (let ((__obj113708 _ctx108911_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj113708
                        'gerbil/runtime/eval#__context::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj113708
                        '4
                        __context::t
                        '#f))
                     (class-slot-ref __context::t __obj113708 'table))))
              (__tmp113739 (let () (declare (not safe)) (__AST-e _id108909_)))
              (__tmp113738
               (if (let ()
                     (declare (not safe))
                     (class-instance? __syntax::t _e108910_))
                   _e108910_
                   (let ((__obj113709
                          (let ()
                            (declare (not safe))
                            (##structure __syntax::t '#f '#f))))
                     (class-instance-init!
                      __obj113709
                      _e108910_
                      (let () (declare (not safe)) (__AST-e _id108909_)))
                     __obj113709))))
          (declare (not safe))
          (table-set! __tmp113740 __tmp113739 __tmp113738))))
    (define __core-bind-user-syntax!__0
      (lambda (_id108916_ _e108917_)
        (let ((_ctx108919_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id108916_ _e108917_ _ctx108919_))))
    (define __core-bind-user-syntax!
      (lambda _g113742_
        (let ((_g113741_ (let () (declare (not safe)) (##length _g113742_))))
          (cond ((let () (declare (not safe)) (##fx= _g113741_ 2))
                 (apply (lambda (_id108916_ _e108917_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0
                             _id108916_
                             _e108917_)))
                        _g113742_))
                ((let () (declare (not safe)) (##fx= _g113741_ 3))
                 (apply (lambda (_id108921_ _e108922_ _ctx108923_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id108921_
                             _e108922_
                             _ctx108923_)))
                        _g113742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g113742_))))))
    (define make-__runtime-id__%
      (lambda (_id108890_ _ctx108891_)
        (let ((_id108893_ (let () (declare (not safe)) (__AST-e _id108890_))))
          (if (let () (declare (not safe)) (eq? _id108893_ '_))
              '#f
              (if (uninterned-symbol? _id108893_)
                  (gensym _id108893_)
                  (if (let () (declare (not safe)) (symbol? _id108893_))
                      (let ((_$e108895_
                             (let ((__obj113710 _ctx108891_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj113710
                                      'gerbil/runtime/eval#__context::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj113710
                                      '1
                                      __context::t
                                      '#f))
                                   (class-slot-ref
                                    __context::t
                                    __obj113710
                                    't)))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e108895_))
                            (gensym _id108893_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e108895_))
                                (let ((__tmp113743
                                       (let ((__obj113711 _ctx108891_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj113711
                                                'gerbil/runtime/eval#__context::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj113711
                                                '2
                                                __context::t
                                                '#f))
                                             (class-slot-ref
                                              __context::t
                                              __obj113711
                                              'ns)))))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp113743 '"#" _id108893_))
                                _id108893_)))
                      (error '"Illegal runtime identifier" _id108893_)))))))
    (define make-__runtime-id__0
      (lambda (_id108901_)
        (let ((_ctx108903_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id108901_ _ctx108903_))))
    (define make-__runtime-id
      (lambda _g113745_
        (let ((_g113744_ (let () (declare (not safe)) (##length _g113745_))))
          (cond ((let () (declare (not safe)) (##fx= _g113744_ 1))
                 (apply (lambda (_id108901_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id108901_)))
                        _g113745_))
                ((let () (declare (not safe)) (##fx= _g113744_ 2))
                 (apply (lambda (_id108905_ _ctx108906_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id108905_ _ctx108906_)))
                        _g113745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g113745_))))))
    (define make-__context-local__%
      (lambda (_super108879_)
        (let ((__obj113712
               (let ()
                 (declare (not safe))
                 (##structure __context::t '#f '#f '#f '#f))))
          (class-instance-init!
           __obj113712
           'local
           '#f
           _super108879_
           (let () (declare (not safe)) (make-table 'test: eq?)))
          __obj113712)))
    (define make-__context-local__0
      (lambda ()
        (let ((_super108885_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super108885_))))
    (define make-__context-local
      (lambda _g113747_
        (let ((_g113746_ (let () (declare (not safe)) (##length _g113747_))))
          (cond ((let () (declare (not safe)) (##fx= _g113746_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g113747_))
                ((let () (declare (not safe)) (##fx= _g113746_ 1))
                 (apply (lambda (_super108887_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super108887_)))
                        _g113747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g113747_))))))
    (define make-__context-module__%
      (lambda (_id108859_ _ns108860_ _path108861_ _super108862_)
        (let ((__obj113713
               (let ()
                 (declare (not safe))
                 (##structure __module::t '#f '#f '#f '#f '#f '#f '#f '#f))))
          (class-instance-init!
           __obj113713
           'module
           _ns108860_
           _super108862_
           (let () (declare (not safe)) (make-table 'test: eq?))
           _id108859_
           _path108861_
           '#f
           '#f)
          __obj113713)))
    (define make-__context-module__0
      (lambda (_id108867_ _ns108868_ _path108869_)
        (let ((_super108871_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id108867_
           _ns108868_
           _path108869_
           _super108871_))))
    (define make-__context-module
      (lambda _g113749_
        (let ((_g113748_ (let () (declare (not safe)) (##length _g113749_))))
          (cond ((let () (declare (not safe)) (##fx= _g113748_ 3))
                 (apply (lambda (_id108867_ _ns108868_ _path108869_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id108867_
                             _ns108868_
                             _path108869_)))
                        _g113749_))
                ((let () (declare (not safe)) (##fx= _g113748_ 4))
                 (apply (lambda (_id108873_
                                 _ns108874_
                                 _path108875_
                                 _super108876_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id108873_
                             _ns108874_
                             _path108875_
                             _super108876_)))
                        _g113749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g113749_))))))
    (define __SRC__%
      (lambda (_e108842_ _src-stx108843_)
        (if (or (let () (declare (not safe)) (pair? _e108842_))
                (let () (declare (not safe)) (symbol? _e108842_)))
            (let ((__tmp113753
                   (if (let ()
                         (declare (not safe))
                         (class-instance? AST::t _src-stx108843_))
                       (let ((__tmp113754
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx108843_))))
                         (declare (not safe))
                         (__locat __tmp113754))
                       '#f)))
              (declare (not safe))
              (##make-source _e108842_ __tmp113753))
            (if (let ()
                  (declare (not safe))
                  (class-instance? AST::t _e108842_))
                (let ((__tmp113752
                       (let ()
                         (declare (not safe))
                         (unchecked-slot-ref _e108842_ 'e)))
                      (__tmp113750
                       (let ((__tmp113751
                              (let ()
                                (declare (not safe))
                                (__AST-source _e108842_))))
                         (declare (not safe))
                         (__locat __tmp113751))))
                  (declare (not safe))
                  (##make-source __tmp113752 __tmp113750))
                (error '"BUG! Cannot sourcify object" _e108842_)))))
    (define __SRC__0
      (lambda (_e108851_)
        (let ((_src-stx108853_ '#f))
          (declare (not safe))
          (__SRC__% _e108851_ _src-stx108853_))))
    (define __SRC
      (lambda _g113756_
        (let ((_g113755_ (let () (declare (not safe)) (##length _g113756_))))
          (cond ((let () (declare (not safe)) (##fx= _g113755_ 1))
                 (apply (lambda (_e108851_)
                          (let () (declare (not safe)) (__SRC__0 _e108851_)))
                        _g113756_))
                ((let () (declare (not safe)) (##fx= _g113755_ 2))
                 (apply (lambda (_e108855_ _src-stx108856_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e108855_ _src-stx108856_)))
                        _g113756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113756_))))))
    (define __locat
      (lambda (_loc108839_)
        (if (let () (declare (not safe)) (##locat? _loc108839_))
            _loc108839_
            '#f)))
    (define __check-values
      (lambda (_obj108834_ _k108835_)
        (let ((_count108837_
               (if (let () (declare (not safe)) (##values? _obj108834_))
                   (let () (declare (not safe)) (##vector-length _obj108834_))
                   '1)))
          (if (fx= _count108837_ _k108835_)
              '#!void
              (error (if (fx< _count108837_ _k108835_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj108834_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj108834_))
                         _obj108834_)
                     _k108835_)))))
    (define __compile
      (lambda (_stx108804_)
        (let* ((_$e108806_ _stx108804_)
               (_$E108808108814_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108806_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108806_))
              (let* ((_$tgt108809108817_
                      (let () (declare (not safe)) (__AST-e _$e108806_)))
                     (_$hd108810108820_
                      (let () (declare (not safe)) (##car _$tgt108809108817_)))
                     (_$tl108811108823_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108809108817_))))
                (let* ((_form108827_ _$hd108810108820_)
                       (_$e108829_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form108827_))))
                  (if _$e108829_
                      ((lambda (_bind108832_)
                         ((let ((__obj113714 _bind108832_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj113714
                                   'gerbil/runtime/eval#__syntax::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj113714
                                   '1
                                   __syntax::t
                                   '#f))
                                (class-slot-ref __syntax::t __obj113714 'e)))
                          _stx108804_))
                       _$e108829_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx108804_
                         _form108827_)))))
              (let () (declare (not safe)) (_$E108808108814_))))))
    (define __compile-error__%
      (lambda (_stx108791_ _detail108792_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx108791_
           _detail108792_))))
    (define __compile-error__0
      (lambda (_stx108797_)
        (let ((_detail108799_ '#f))
          (declare (not safe))
          (__compile-error__% _stx108797_ _detail108799_))))
    (define __compile-error
      (lambda _g113758_
        (let ((_g113757_ (let () (declare (not safe)) (##length _g113758_))))
          (cond ((let () (declare (not safe)) (##fx= _g113757_ 1))
                 (apply (lambda (_stx108797_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx108797_)))
                        _g113758_))
                ((let () (declare (not safe)) (##fx= _g113757_ 2))
                 (apply (lambda (_stx108801_ _detail108802_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx108801_ _detail108802_)))
                        _g113758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113758_))))))
    (define __compile-ignore%
      (lambda (_stx108788_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx108788_))))
    (define __compile-begin%
      (lambda (_stx108763_)
        (let* ((_$e108765_ _stx108763_)
               (_$E108767108773_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108765_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108765_))
              (let* ((_$tgt108768108776_
                      (let () (declare (not safe)) (__AST-e _$e108765_)))
                     (_$hd108769108779_
                      (let () (declare (not safe)) (##car _$tgt108768108776_)))
                     (_$tl108770108782_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108768108776_))))
                (let* ((_body108786_ _$tl108770108782_)
                       (__tmp113759
                        (let ((__tmp113760 (map __compile _body108786_)))
                          (declare (not safe))
                          (cons 'begin __tmp113760))))
                  (declare (not safe))
                  (__SRC__% __tmp113759 _stx108763_)))
              (let () (declare (not safe)) (_$E108767108773_))))))
    (define __compile-begin-foreign%
      (lambda (_stx108738_)
        (let* ((_$e108740_ _stx108738_)
               (_$E108742108748_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108740_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108740_))
              (let* ((_$tgt108743108751_
                      (let () (declare (not safe)) (__AST-e _$e108740_)))
                     (_$hd108744108754_
                      (let () (declare (not safe)) (##car _$tgt108743108751_)))
                     (_$tl108745108757_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108743108751_))))
                (let* ((_body108761_ _$tl108745108757_)
                       (__tmp113761
                        (let ((__tmp113762
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body108761_))))
                          (declare (not safe))
                          (cons 'begin __tmp113762))))
                  (declare (not safe))
                  (__SRC__% __tmp113761 _stx108738_)))
              (let () (declare (not safe)) (_$E108742108748_))))))
    (define __compile-import%
      (lambda (_stx108713_)
        (let* ((_$e108715_ _stx108713_)
               (_$E108717108723_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108715_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108715_))
              (let* ((_$tgt108718108726_
                      (let () (declare (not safe)) (__AST-e _$e108715_)))
                     (_$hd108719108729_
                      (let () (declare (not safe)) (##car _$tgt108718108726_)))
                     (_$tl108720108732_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108718108726_))))
                (let* ((_body108736_ _$tl108720108732_)
                       (__tmp113763
                        (let ((__tmp113764
                               (let ((__tmp113765
                                      (let ((__tmp113766
                                             (let ()
                                               (declare (not safe))
                                               (cons _body108736_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp113766))))
                                 (declare (not safe))
                                 (cons __tmp113765 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp113764))))
                  (declare (not safe))
                  (__SRC__% __tmp113763 _stx108713_)))
              (let () (declare (not safe)) (_$E108717108723_))))))
    (define __compile-begin-annotation%
      (lambda (_stx108660_)
        (let* ((_$e108662_ _stx108660_)
               (_$E108664108676_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108662_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108662_))
              (let* ((_$tgt108665108679_
                      (let () (declare (not safe)) (__AST-e _$e108662_)))
                     (_$hd108666108682_
                      (let () (declare (not safe)) (##car _$tgt108665108679_)))
                     (_$tl108667108685_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108665108679_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108667108685_))
                    (let* ((_$tgt108668108689_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108667108685_)))
                           (_$hd108669108692_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108668108689_)))
                           (_$tl108670108695_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108668108689_))))
                      (let ((_ann108699_ _$hd108669108692_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108670108695_))
                            (let* ((_$tgt108671108701_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108670108695_)))
                                   (_$hd108672108704_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108671108701_)))
                                   (_$tl108673108707_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108671108701_))))
                              (let ((_expr108711_ _$hd108672108704_))
                                (if (let ((__tmp113767
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108673108707_))))
                                      (declare (not safe))
                                      (equal? __tmp113767 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr108711_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108664108676_)))))
                            (let () (declare (not safe)) (_$E108664108676_)))))
                    (let () (declare (not safe)) (_$E108664108676_))))
              (let () (declare (not safe)) (_$E108664108676_))))))
    (define __compile-define-values%
      (lambda (_stx108551_)
        (let* ((_$e108553_ _stx108551_)
               (_$E108555108567_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108553_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108553_))
              (let* ((_$tgt108556108570_
                      (let () (declare (not safe)) (__AST-e _$e108553_)))
                     (_$hd108557108573_
                      (let () (declare (not safe)) (##car _$tgt108556108570_)))
                     (_$tl108558108576_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108556108570_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108558108576_))
                    (let* ((_$tgt108559108580_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108558108576_)))
                           (_$hd108560108583_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108559108580_)))
                           (_$tl108561108586_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108559108580_))))
                      (let ((_hd108590_ _$hd108560108583_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108561108586_))
                            (let* ((_$tgt108562108592_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108561108586_)))
                                   (_$hd108563108595_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108562108592_)))
                                   (_$tl108564108598_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108562108592_))))
                              (let ((_expr108602_ _$hd108563108595_))
                                (if (let ((__tmp113800
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108564108598_))))
                                      (declare (not safe))
                                      (equal? __tmp113800 '()))
                                    (let* ((_$e108604_ _hd108590_)
                                           (_$E108606108647_
                                            (lambda ()
                                              (let ((_$E108607108632_
                                                     (lambda ()
                                                       (let* ((_$E108608108619_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e108604_))))
                      (_ids108622_ _hd108590_)
                      (_len108624_ (length _ids108622_))
                      (_tmp108626_
                       (let ((__tmp113768 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp113768))))
                 (let ((__tmp113769
                        (let ((__tmp113770
                               (let ((__tmp113787
                                      (let ((__tmp113788
                                             (let ((__tmp113789
                                                    (let ((__tmp113790
                                                           (let ((__tmp113791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr108602_))))
                     (declare (not safe))
                     (cons __tmp113791 '()))))
              (declare (not safe))
              (cons _tmp108626_ __tmp113790))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp113789))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113788 _stx108551_)))
                                     (__tmp113771
                                      (let ((__tmp113783
                                             (let ((__tmp113784
                                                    (let ((__tmp113785
                                                           (let ((__tmp113786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len108624_ '()))))
                     (declare (not safe))
                     (cons _tmp108626_ __tmp113786))))
              (declare (not safe))
              (cons '__check-values __tmp113785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp113784
                                                _stx108551_)))
                                            (__tmp113772
                                             (let ((__tmp113773
                                                    (let ((__tmp113775
                                                           (lambda (_id108629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k108630_)
                     (if (let () (declare (not safe)) (__AST-e _id108629_))
                         (let ((__tmp113776
                                (let ((__tmp113777
                                       (let ((__tmp113782
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id108629_)))
                                             (__tmp113778
                                              (let ((__tmp113779
                                                     (let ((__tmp113780
                                                            (let ((__tmp113781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k108630_ '()))))
                      (declare (not safe))
                      (cons _tmp108626_ __tmp113781))))
               (declare (not safe))
               (cons '##vector-ref __tmp113780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113779 '()))))
                                         (declare (not safe))
                                         (cons __tmp113782 __tmp113778))))
                                  (declare (not safe))
                                  (cons 'define __tmp113777))))
                           (declare (not safe))
                           (__SRC__% __tmp113776 _stx108551_))
                         '#f)))
                  (__tmp113774
                   (let () (declare (not safe)) (iota _len108624_))))
              (declare (not safe))
              (filter-map2 __tmp113775 _ids108622_ __tmp113774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp113773))))
                                        (declare (not safe))
                                        (cons __tmp113783 __tmp113772))))
                                 (declare (not safe))
                                 (cons __tmp113787 __tmp113771))))
                          (declare (not safe))
                          (cons 'begin __tmp113770))))
                   (declare (not safe))
                   (__SRC__% __tmp113769 _stx108551_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e108604_))
                                                    (let* ((_$tgt108609108635_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e108604_)))
                                                           (_$hd108610108638_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt108609108635_)))
                                                           (_$tl108611108641_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt108609108635_))))
                                                      (let ((_id108645_
                                                             _$hd108610108638_))
                                                        (if (let ((__tmp113797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl108611108641_))))
                      (declare (not safe))
                      (equal? __tmp113797 '()))
                    (let ((__tmp113792
                           (let ((__tmp113793
                                  (let ((__tmp113796
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id108645_)))
                                        (__tmp113794
                                         (let ((__tmp113795
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr108602_))))
                                           (declare (not safe))
                                           (cons __tmp113795 '()))))
                                    (declare (not safe))
                                    (cons __tmp113796 __tmp113794))))
                             (declare (not safe))
                             (cons 'define __tmp113793))))
                      (declare (not safe))
                      (__SRC__% __tmp113792 _stx108551_))
                    (let () (declare (not safe)) (_$E108607108632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108607108632_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e108604_))
                                          (let* ((_$tgt108612108650_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e108604_)))
                                                 (_$hd108613108653_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108612108650_)))
                                                 (_$tl108614108656_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108612108650_))))
                                            (if (let ((__tmp113799
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd108613108653_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113799 '#f))
                                                (if (let ((__tmp113798
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl108614108656_))))
                                                      (declare (not safe))
                                                      (equal? __tmp113798 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr108602_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E108606108647_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108606108647_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108606108647_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108555108567_)))))
                            (let () (declare (not safe)) (_$E108555108567_)))))
                    (let () (declare (not safe)) (_$E108555108567_))))
              (let () (declare (not safe)) (_$E108555108567_))))))
    (define __compile-head-id
      (lambda (_e108549_)
        (let ((__tmp113801
               (if (let () (declare (not safe)) (__AST-e _e108549_))
                   _e108549_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp113801))))
    (define __compile-lambda-head
      (lambda (_hd108506_)
        (let _recur108508_ ((_rest108510_ _hd108506_))
          (let* ((_$e108512_ _rest108510_)
                 (_$E108514108532_
                  (lambda ()
                    (let ((_$E108515108529_
                           (lambda ()
                             (let* ((_$E108516108524_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e108512_))))
                                    (_tail108527_ _$e108512_))
                               (declare (not safe))
                               (__compile-head-id _tail108527_)))))
                      (if (let ((__tmp113802
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e108512_))))
                            (declare (not safe))
                            (equal? __tmp113802 '()))
                          '()
                          (let () (declare (not safe)) (_$E108515108529_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108512_))
                (let* ((_$tgt108517108535_
                        (let () (declare (not safe)) (__AST-e _$e108512_)))
                       (_$hd108518108538_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108517108535_)))
                       (_$tl108519108541_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108517108535_))))
                  (let* ((_hd108545_ _$hd108518108538_)
                         (_rest108547_ _$tl108519108541_))
                    (let ((__tmp113804
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd108545_)))
                          (__tmp113803
                           (let ()
                             (declare (not safe))
                             (_recur108508_ _rest108547_))))
                      (declare (not safe))
                      (cons __tmp113804 __tmp113803))))
                (let () (declare (not safe)) (_$E108514108532_)))))))
    (define __compile-lambda%
      (lambda (_stx108453_)
        (let* ((_$e108455_ _stx108453_)
               (_$E108457108469_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e108455_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e108455_))
              (let* ((_$tgt108458108472_
                      (let () (declare (not safe)) (__AST-e _$e108455_)))
                     (_$hd108459108475_
                      (let () (declare (not safe)) (##car _$tgt108458108472_)))
                     (_$tl108460108478_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt108458108472_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl108460108478_))
                    (let* ((_$tgt108461108482_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl108460108478_)))
                           (_$hd108462108485_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt108461108482_)))
                           (_$tl108463108488_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt108461108482_))))
                      (let ((_hd108492_ _$hd108462108485_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl108463108488_))
                            (let* ((_$tgt108464108494_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl108463108488_)))
                                   (_$hd108465108497_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108464108494_)))
                                   (_$tl108466108500_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108464108494_))))
                              (let ((_body108504_ _$hd108465108497_))
                                (if (let ((__tmp113810
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108466108500_))))
                                      (declare (not safe))
                                      (equal? __tmp113810 '()))
                                    (let ((__tmp113805
                                           (let ((__tmp113806
                                                  (let ((__tmp113809
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd108492_)))
                                                        (__tmp113807
                                                         (let ((__tmp113808
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body108504_))))
                   (declare (not safe))
                   (cons __tmp113808 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113809
                                                          __tmp113807))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp113806))))
                                      (declare (not safe))
                                      (__SRC__% __tmp113805 _stx108453_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E108457108469_)))))
                            (let () (declare (not safe)) (_$E108457108469_)))))
                    (let () (declare (not safe)) (_$E108457108469_))))
              (let () (declare (not safe)) (_$E108457108469_))))))
    (define __compile-case-lambda%
      (lambda (_stx108245_)
        (letrec ((_variadic?108247_
                  (lambda (_hd108418_)
                    (let* ((_$e108420_ _hd108418_)
                           (_$E108422108438_
                            (lambda ()
                              (let ((_$E108423108435_
                                     (lambda ()
                                       (let ((_$E108424108432_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e108420_)))))
                                         '#t))))
                                (if (let ((__tmp113811
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e108420_))))
                                      (declare (not safe))
                                      (equal? __tmp113811 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E108423108435_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108420_))
                          (let* ((_$tgt108425108441_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108420_)))
                                 (_$hd108426108444_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108425108441_)))
                                 (_$tl108427108447_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108425108441_))))
                            (let ((_rest108451_ _$tl108427108447_))
                              (declare (not safe))
                              (_variadic?108247_ _rest108451_)))
                          (let () (declare (not safe)) (_$E108422108438_))))))
                 (_arity108248_
                  (lambda (_hd108383_)
                    (let _lp108385_ ((_rest108387_ _hd108383_) (_k108388_ '0))
                      (let* ((_$e108390_ _rest108387_)
                             (_$E108392108403_
                              (lambda ()
                                (let ((_$E108393108400_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e108390_)))))
                                  _k108388_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e108390_))
                            (let* ((_$tgt108394108406_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e108390_)))
                                   (_$hd108395108409_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt108394108406_)))
                                   (_$tl108396108412_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt108394108406_))))
                              (let* ((_rest108416_ _$tl108396108412_)
                                     (__tmp113812
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k108388_ '1))))
                                (declare (not safe))
                                (_lp108385_ _rest108416_ __tmp113812)))
                            (let ()
                              (declare (not safe))
                              (_$E108392108403_)))))))
                 (_generate108249_
                  (lambda (_rest108310_ _args108311_ _len108312_)
                    (let* ((_$e108314_ _rest108310_)
                           (_$E108316108327_
                            (lambda ()
                              (let* ((_$E108317108324_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e108314_))))
                                     (__tmp113813
                                      (let ((__tmp113814
                                             (let ((__tmp113815
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108311_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp113815))))
                                        (declare (not safe))
                                        (cons 'error __tmp113814))))
                                (declare (not safe))
                                (__SRC__% __tmp113813 _stx108245_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108314_))
                          (let* ((_$tgt108318108330_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108314_)))
                                 (_$hd108319108333_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108318108330_)))
                                 (_$tl108320108336_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108318108330_))))
                            (let* ((_clause108340_ _$hd108319108333_)
                                   (_rest108342_ _$tl108320108336_)
                                   (_$e108344_ _clause108340_)
                                   (_$E108346108355_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e108344_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e108344_))
                                  (let* ((_$tgt108347108358_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e108344_)))
                                         (_$hd108348108361_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt108347108358_)))
                                         (_$tl108349108364_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt108347108358_))))
                                    (let ((_hd108368_ _$hd108348108361_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl108349108364_))
                                          (let* ((_$tgt108350108370_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108349108364_)))
                                                 (_$hd108351108373_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt108350108370_)))
                                                 (_$tl108352108376_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt108350108370_))))
                                            (if (let ((__tmp113830
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108352108376_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113830 '()))
                                                (let ((_clen108380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity108248_
                                                          _hd108368_)))
                                                      (_cmp108381_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?108247_
                                                              _hd108368_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp113816
                                                         (let ((__tmp113817
                                                                (let ((__tmp113827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113828
                                      (let ((__tmp113829
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen108380_ '()))))
                                        (declare (not safe))
                                        (cons _len108312_ __tmp113829))))
                                 (declare (not safe))
                                 (cons _cmp108381_ __tmp113828)))
                              (__tmp113818
                               (let ((__tmp113821
                                      (let ((__tmp113822
                                             (let ((__tmp113823
                                                    (let ((__tmp113825
                                                           (let ((__tmp113826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause108340_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp113826)))
                  (__tmp113824
                   (let () (declare (not safe)) (cons _args108311_ '()))))
              (declare (not safe))
              (cons __tmp113825 __tmp113824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp113823))))
                                        (declare (not safe))
                                        (__SRC__% __tmp113822 _stx108245_)))
                                     (__tmp113819
                                      (let ((__tmp113820
                                             (let ()
                                               (declare (not safe))
                                               (_generate108249_
                                                _rest108342_
                                                _args108311_
                                                _len108312_))))
                                        (declare (not safe))
                                        (cons __tmp113820 '()))))
                                 (declare (not safe))
                                 (cons __tmp113821 __tmp113819))))
                          (declare (not safe))
                          (cons __tmp113827 __tmp113818))))
                   (declare (not safe))
                   (cons 'if __tmp113817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp113816
                                                     _stx108245_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108346108355_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E108346108355_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E108346108355_)))))
                          (let () (declare (not safe)) (_$E108316108327_)))))))
          (let* ((_$e108251_ _stx108245_)
                 (_$E108253108285_
                  (lambda ()
                    (let ((_$E108254108267_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108251_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108251_))
                          (let* ((_$tgt108255108270_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108251_)))
                                 (_$hd108256108273_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108255108270_)))
                                 (_$tl108257108276_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108255108270_))))
                            (let ((_clauses108280_ _$tl108257108276_))
                              (let ((_args108282_
                                     (let ((__tmp113831 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113831 _stx108245_)))
                                    (_len108283_
                                     (let ((__tmp113832 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp113832 _stx108245_))))
                                (let ((__tmp113833
                                       (let ((__tmp113834
                                              (let ((__tmp113835
                                                     (let ((__tmp113836
                                                            (let ((__tmp113837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113838
                                  (let ((__tmp113841
                                         (let ((__tmp113842
                                                (let ((__tmp113843
                                                       (let ((__tmp113844
                                                              (let ((__tmp113845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113846
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108282_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp113846))))
                        (declare (not safe))
                        (__SRC__% __tmp113845 _stx108245_))))
                 (declare (not safe))
                 (cons __tmp113844 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len108283_
                                                        __tmp113843))))
                                           (declare (not safe))
                                           (cons __tmp113842 '())))
                                        (__tmp113839
                                         (let ((__tmp113840
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate108249_
                                                   _clauses108280_
                                                   _args108282_
                                                   _len108283_))))
                                           (declare (not safe))
                                           (cons __tmp113840 '()))))
                                    (declare (not safe))
                                    (cons __tmp113841 __tmp113839))))
                             (declare (not safe))
                             (cons 'let __tmp113838))))
                      (declare (not safe))
                      (__SRC__% __tmp113837 _stx108245_))))
               (declare (not safe))
               (cons __tmp113836 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args108282_
                                                      __tmp113835))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp113834))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113833 _stx108245_)))))
                          (let () (declare (not safe)) (_$E108254108267_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108251_))
                (let* ((_$tgt108258108288_
                        (let () (declare (not safe)) (__AST-e _$e108251_)))
                       (_$hd108259108291_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108258108288_)))
                       (_$tl108260108294_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108258108288_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108260108294_))
                      (let* ((_$tgt108261108298_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108260108294_)))
                             (_$hd108262108301_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108261108298_)))
                             (_$tl108263108304_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108261108298_))))
                        (let ((_clause108308_ _$hd108262108301_))
                          (if (let ((__tmp113848
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl108263108304_))))
                                (declare (not safe))
                                (equal? __tmp113848 '()))
                              (let ((__tmp113847
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause108308_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp113847))
                              (let ()
                                (declare (not safe))
                                (_$E108253108285_)))))
                      (let () (declare (not safe)) (_$E108253108285_))))
                (let () (declare (not safe)) (_$E108253108285_)))))))
    (define __compile-let-form
      (lambda (_stx108014_ _compile-simple108015_ _compile-values108016_)
        (letrec ((_simple-bind?108018_
                  (lambda (_hd108203_)
                    (let* ((_hd108204108214_ _hd108203_)
                           (_else108207108222_ (lambda () '#f)))
                      (let ((_K108210108235_ (lambda (_id108233_) '#t))
                            (_K108209108227_ (lambda () '#t)))
                        (let ((_try-match108206108230_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd108204108214_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K108209108227_))
                                     (let ()
                                       (declare (not safe))
                                       (_else108207108222_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd108204108214_))
                              (let ((_tl108212108240_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd108204108214_)))
                                    (_hd108211108238_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd108204108214_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl108212108240_))
                                    (let ((_id108243_ _hd108211108238_))
                                      (declare (not safe))
                                      (_K108210108235_ _id108243_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match108206108230_))))
                              (let ()
                                (declare (not safe))
                                (_try-match108206108230_))))))))
                 (_car-e108019_
                  (lambda (_hd108201_)
                    (if (let () (declare (not safe)) (pair? _hd108201_))
                        (car _hd108201_)
                        _hd108201_))))
          (let* ((_$e108021_ _stx108014_)
                 (_$E108023108166_
                  (lambda ()
                    (let ((_$E108024108046_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e108021_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e108021_))
                          (let* ((_$tgt108025108049_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e108021_)))
                                 (_$hd108026108052_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt108025108049_)))
                                 (_$tl108027108055_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt108025108049_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108027108055_))
                                (let* ((_$tgt108028108059_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108027108055_)))
                                       (_$hd108029108062_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108028108059_)))
                                       (_$tl108030108065_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108028108059_))))
                                  (let ((_hd108069_ _$hd108029108062_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl108030108065_))
                                        (let* ((_$tgt108031108071_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl108030108065_)))
                                               (_$hd108032108074_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt108031108071_)))
                                               (_$tl108033108077_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt108031108071_))))
                                          (let ((_body108081_
                                                 _$hd108032108074_))
                                            (if (let ((__tmp113851
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl108033108077_))))
                                                  (declare (not safe))
                                                  (equal? __tmp113851 '()))
                                                (let* ((_hd-ids108121_
                                                        (map (lambda (_bind108083_)
                                                               (let* ((_$e108085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind108083_)
                              (_$E108087108096_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108085_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108085_))
                             (let* ((_$tgt108088108099_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108085_)))
                                    (_$hd108089108102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108088108099_)))
                                    (_$tl108090108105_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108088108099_))))
                               (let ((_ids108109_ _$hd108089108102_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl108090108105_))
                                     (let* ((_$tgt108091108111_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl108090108105_)))
                                            (_$hd108092108114_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt108091108111_)))
                                            (_$tl108093108117_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt108091108111_))))
                                       (if (let ((__tmp113849
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108093108117_))))
                                             (declare (not safe))
                                             (equal? __tmp113849 '()))
                                           _ids108109_
                                           (let ()
                                             (declare (not safe))
                                             (_$E108087108096_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E108087108096_)))))
                             (let ()
                               (declare (not safe))
                               (_$E108087108096_)))))
                     _hd108069_))
               (_exprs108161_
                (map (lambda (_bind108123_)
                       (let* ((_$e108125_ _bind108123_)
                              (_$E108127108136_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e108125_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e108125_))
                             (let* ((_$tgt108128108139_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e108125_)))
                                    (_$hd108129108142_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt108128108139_)))
                                    (_$tl108130108145_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt108128108139_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl108130108145_))
                                   (let* ((_$tgt108131108149_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl108130108145_)))
                                          (_$hd108132108152_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt108131108149_)))
                                          (_$tl108133108155_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt108131108149_))))
                                     (let ((_expr108159_ _$hd108132108152_))
                                       (if (let ((__tmp113850
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl108133108155_))))
                                             (declare (not safe))
                                             (equal? __tmp113850 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr108159_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E108127108136_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E108127108136_))))
                             (let ()
                               (declare (not safe))
                               (_$E108127108136_)))))
                     _hd108069_))
               (_body108163_
                (let () (declare (not safe)) (__compile _body108081_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?108018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids108121_))
              (_compile-simple108015_
               (map _car-e108019_ _hd-ids108121_)
               _exprs108161_
               _body108163_)
              (_compile-values108016_
               _hd-ids108121_
               _exprs108161_
               _body108163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E108024108046_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108024108046_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108024108046_))))
                          (let () (declare (not safe)) (_$E108024108046_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e108021_))
                (let* ((_$tgt108034108169_
                        (let () (declare (not safe)) (__AST-e _$e108021_)))
                       (_$hd108035108172_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt108034108169_)))
                       (_$tl108036108175_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt108034108169_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl108036108175_))
                      (let* ((_$tgt108037108179_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl108036108175_)))
                             (_$hd108038108182_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt108037108179_)))
                             (_$tl108039108185_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt108037108179_))))
                        (if (let ((__tmp113853
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd108038108182_))))
                              (declare (not safe))
                              (equal? __tmp113853 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl108039108185_))
                                (let* ((_$tgt108040108189_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl108039108185_)))
                                       (_$hd108041108192_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt108040108189_)))
                                       (_$tl108042108195_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt108040108189_))))
                                  (let ((_body108199_ _$hd108041108192_))
                                    (if (let ((__tmp113852
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl108042108195_))))
                                          (declare (not safe))
                                          (equal? __tmp113852 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body108199_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E108023108166_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E108023108166_)))
                            (let () (declare (not safe)) (_$E108023108166_))))
                      (let () (declare (not safe)) (_$E108023108166_))))
                (let () (declare (not safe)) (_$E108023108166_)))))))
    (define __compile-let-values%
      (lambda (_stx107829_)
        (letrec ((_compile-simple107831_
                  (lambda (_hd-ids108010_ _exprs108011_ _body108012_)
                    (let ((__tmp113854
                           (let ((__tmp113855
                                  (let ((__tmp113857
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids108010_)
                                              _exprs108011_))
                                        (__tmp113856
                                         (let ()
                                           (declare (not safe))
                                           (cons _body108012_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113857 __tmp113856))))
                             (declare (not safe))
                             (cons 'let __tmp113855))))
                      (declare (not safe))
                      (__SRC__% __tmp113854 _stx107829_))))
                 (_compile-values107832_
                  (lambda (_hd-ids107928_ _exprs107929_ _body107930_)
                    (let _lp107932_ ((_rest107934_ _hd-ids107928_)
                                     (_exprs107935_ _exprs107929_)
                                     (_bind107936_ '())
                                     (_post107937_ '()))
                      (let* ((_rest107938107952_ _rest107934_)
                             (_else107941107960_
                              (lambda ()
                                (let ((__tmp113858
                                       (let ((__tmp113859
                                              (let ((__tmp113862
                                                     (reverse _bind107936_))
                                                    (__tmp113860
                                                     (let ((__tmp113861
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post107833_
                                                               _post107937_
                                                               _body107930_))))
                                                       (declare (not safe))
                                                       (cons __tmp113861
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp113862
                                                      __tmp113860))))
                                         (declare (not safe))
                                         (cons 'let __tmp113859))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113858 _stx107829_)))))
                        (let ((_K107946107993_
                               (lambda (_rest107990_ _id107991_)
                                 (let ((__tmp113868 (cdr _exprs107935_))
                                       (__tmp113863
                                        (let ((__tmp113864
                                               (let ((__tmp113867
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107991_)))
                                                     (__tmp113865
                                                      (let ((__tmp113866
                                                             (car _exprs107935_)))
                                                        (declare (not safe))
                                                        (cons __tmp113866
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113867
                                                       __tmp113865))))
                                          (declare (not safe))
                                          (cons __tmp113864 _bind107936_))))
                                   (declare (not safe))
                                   (_lp107932_
                                    _rest107990_
                                    __tmp113868
                                    __tmp113863
                                    _post107937_))))
                              (_K107943107975_
                               (lambda (_rest107964_ _hd107965_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107965_))
                                     (let ((__tmp113889 (cdr _exprs107935_))
                                           (__tmp113882
                                            (let ((__tmp113883
                                                   (let ((__tmp113888
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107965_)))
                                                         (__tmp113884
                                                          (let ((__tmp113885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113886
                                (let ((__tmp113887 (car _exprs107935_)))
                                  (declare (not safe))
                                  (cons __tmp113887 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113886))))
                    (declare (not safe))
                    (cons __tmp113885 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113888
                                                           __tmp113884))))
                                              (declare (not safe))
                                              (cons __tmp113883
                                                    _bind107936_))))
                                       (declare (not safe))
                                       (_lp107932_
                                        _rest107964_
                                        __tmp113889
                                        __tmp113882
                                        _post107937_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107965_))
                                         (let* ((_len107967_
                                                 (length _hd107965_))
                                                (_tmp107969_
                                                 (let ((__tmp113869 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113869))))
                                           (let ((__tmp113881
                                                  (cdr _exprs107935_))
                                                 (__tmp113877
                                                  (let ((__tmp113878
                                                         (let ((__tmp113879
                                                                (let ((__tmp113880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107935_)))
                          (declare (not safe))
                          (cons __tmp113880 '()))))
                   (declare (not safe))
                   (cons _tmp107969_ __tmp113879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113878
                                                          _bind107936_)))
                                                 (__tmp113870
                                                  (let ((__tmp113871
                                                         (let ((__tmp113872
                                                                (let ((__tmp113873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113875
                                      (lambda (_id107972_ _k107973_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107972_))
                                            (let ((__tmp113876
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107972_))))
                                              (declare (not safe))
                                              (cons __tmp113876 _k107973_))
                                            '#f)))
                                     (__tmp113874
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107967_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113875
                                  _hd107965_
                                  __tmp113874))))
                          (declare (not safe))
                          (cons _len107967_ __tmp113873))))
                   (declare (not safe))
                   (cons _tmp107969_ __tmp113872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113871
                                                          _post107937_))))
                                             (declare (not safe))
                                             (_lp107932_
                                              _rest107964_
                                              __tmp113881
                                              __tmp113877
                                              __tmp113870)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107829_
                                            _hd107965_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107938107952_))
                              (let ((_tl107948107998_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107938107952_)))
                                    (_hd107947107996_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107938107952_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107947107996_))
                                    (let ((_tl107950108003_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107947107996_)))
                                          (_hd107949108001_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107947107996_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107950108003_))
                                          (let ((_id108006_ _hd107949108001_)
                                                (_rest108008_
                                                 _tl107948107998_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107946107993_
                                               _rest108008_
                                               _id108006_)))
                                          (let ((_hd107983_ _hd107947107996_)
                                                (_rest107985_
                                                 _tl107948107998_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107943107975_
                                               _rest107985_
                                               _hd107983_)))))
                                    (let ((_hd107983_ _hd107947107996_)
                                          (_rest107985_ _tl107948107998_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107943107975_
                                         _rest107985_
                                         _hd107983_)))))
                              (let ()
                                (declare (not safe))
                                (_else107941107960_))))))))
                 (_compile-post107833_
                  (lambda (_post107835_ _body107836_)
                    (let _lp107838_ ((_rest107840_ _post107835_)
                                     (_check107841_ '())
                                     (_bind107842_ '()))
                      (let* ((_rest107843107855_ _rest107840_)
                             (_else107845107863_
                              (lambda ()
                                (let ((__tmp113890
                                       (let ((__tmp113891
                                              (let ((__tmp113892
                                                     (let ((__tmp113893
                                                            (let ((__tmp113894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113895
                                  (let ((__tmp113896
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107836_ '()))))
                                    (declare (not safe))
                                    (cons _bind107842_ __tmp113896))))
                             (declare (not safe))
                             (cons 'let __tmp113895))))
                      (declare (not safe))
                      (__SRC__% __tmp113894 _stx107829_))))
               (declare (not safe))
               (cons __tmp113893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113892
                                                        _check107841_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113891))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113890 _stx107829_))))
                             (_K107847107902_
                              (lambda (_rest107866_
                                       _init107867_
                                       _len107868_
                                       _tmp107869_)
                                (let ((__tmp113904
                                       (let ((__tmp113905
                                              (let ((__tmp113906
                                                     (let ((__tmp113907
                                                            (let ((__tmp113908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107868_ '()))))
                      (declare (not safe))
                      (cons _tmp107869_ __tmp113908))))
               (declare (not safe))
               (cons '__check-values __tmp113907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113906
                                                 _stx107829_))))
                                         (declare (not safe))
                                         (cons __tmp113905 _check107841_)))
                                      (__tmp113897
                                       (let ((__tmp113898
                                              (lambda (_hd107871_ _r107872_)
                                                (let* ((_hd107873107880_
                                                        _hd107871_)
                                                       (_E107875107884_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107873107880_)))
               (_K107876107890_
                (lambda (_k107887_ _id107888_)
                  (let ((__tmp113899
                         (let ((__tmp113900
                                (let ((__tmp113901
                                       (let ((__tmp113902
                                              (let ((__tmp113903
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k107887_ '()))))
                                                (declare (not safe))
                                                (cons _tmp107869_
                                                      __tmp113903))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp113902))))
                                  (declare (not safe))
                                  (cons __tmp113901 '()))))
                           (declare (not safe))
                           (cons _id107888_ __tmp113900))))
                    (declare (not safe))
                    (cons __tmp113899 _r107872_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107873107880_))
                                                      (let ((_hd107877107893_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107873107880_)))
                    (_tl107878107895_
                     (let () (declare (not safe)) (##cdr _hd107873107880_))))
                (let* ((_id107898_ _hd107877107893_)
                       (_k107900_ _tl107878107895_))
                  (declare (not safe))
                  (_K107876107890_ _k107900_ _id107898_)))
              (let () (declare (not safe)) (_E107875107884_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113898
                                                 _bind107842_
                                                 _init107867_))))
                                  (declare (not safe))
                                  (_lp107838_
                                   _rest107866_
                                   __tmp113904
                                   __tmp113897)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107843107855_))
                            (let ((_hd107848107905_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107843107855_)))
                                  (_tl107849107907_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107843107855_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107848107905_))
                                  (let ((_hd107850107910_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107848107905_)))
                                        (_tl107851107912_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107848107905_))))
                                    (let ((_tmp107915_ _hd107850107910_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107851107912_))
                                          (let ((_hd107852107917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107851107912_)))
                                                (_tl107853107919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107851107912_))))
                                            (let* ((_len107922_
                                                    _hd107852107917_)
                                                   (_init107924_
                                                    _tl107853107919_)
                                                   (_rest107926_
                                                    _tl107849107907_))
                                              (declare (not safe))
                                              (_K107847107902_
                                               _rest107926_
                                               _init107924_
                                               _len107922_
                                               _tmp107915_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107845107863_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107845107863_))))
                            (let ()
                              (declare (not safe))
                              (_else107845107863_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107829_
             _compile-simple107831_
             _compile-values107832_)))))
    (define __compile-letrec-values%
      (lambda (_stx107629_)
        (letrec ((_compile-simple107631_
                  (lambda (_hd-ids107825_ _exprs107826_ _body107827_)
                    (let ((__tmp113909
                           (let ((__tmp113910
                                  (let ((__tmp113912
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107825_)
                                              _exprs107826_))
                                        (__tmp113911
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107827_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113912 __tmp113911))))
                             (declare (not safe))
                             (cons 'letrec __tmp113910))))
                      (declare (not safe))
                      (__SRC__% __tmp113909 _stx107629_))))
                 (_compile-values107632_
                  (lambda (_hd-ids107739_ _exprs107740_ _body107741_)
                    (let _lp107743_ ((_rest107745_ _hd-ids107739_)
                                     (_exprs107746_ _exprs107740_)
                                     (_pre107747_ '())
                                     (_bind107748_ '())
                                     (_post107749_ '()))
                      (let* ((_rest107750107764_ _rest107745_)
                             (_else107753107772_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner107633_
                                   _pre107747_
                                   _bind107748_
                                   _post107749_
                                   _body107741_)))))
                        (let ((_K107758107808_
                               (lambda (_rest107805_ _id107806_)
                                 (let ((__tmp113918 (cdr _exprs107746_))
                                       (__tmp113913
                                        (let ((__tmp113914
                                               (let ((__tmp113917
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id107806_)))
                                                     (__tmp113915
                                                      (let ((__tmp113916
                                                             (car _exprs107746_)))
                                                        (declare (not safe))
                                                        (cons __tmp113916
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp113917
                                                       __tmp113915))))
                                          (declare (not safe))
                                          (cons __tmp113914 _bind107748_))))
                                   (declare (not safe))
                                   (_lp107743_
                                    _rest107805_
                                    __tmp113918
                                    _pre107747_
                                    __tmp113913
                                    _post107749_))))
                              (_K107755107790_
                               (lambda (_rest107776_ _hd107777_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107777_))
                                     (let ((__tmp113946 (cdr _exprs107746_))
                                           (__tmp113939
                                            (let ((__tmp113940
                                                   (let ((__tmp113945
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd107777_)))
                                                         (__tmp113941
                                                          (let ((__tmp113942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113943
                                (let ((__tmp113944 (car _exprs107746_)))
                                  (declare (not safe))
                                  (cons __tmp113944 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp113943))))
                    (declare (not safe))
                    (cons __tmp113942 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113945
                                                           __tmp113941))))
                                              (declare (not safe))
                                              (cons __tmp113940
                                                    _bind107748_))))
                                       (declare (not safe))
                                       (_lp107743_
                                        _rest107776_
                                        __tmp113946
                                        _pre107747_
                                        __tmp113939
                                        _post107749_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd107777_))
                                         (let* ((_len107779_
                                                 (length _hd107777_))
                                                (_tmp107781_
                                                 (let ((__tmp113919 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp113919))))
                                           (let ((__tmp113938
                                                  (cdr _exprs107746_))
                                                 (__tmp113931
                                                  (let ((__tmp113932
                                                         (lambda (_id107784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r107785_)
                   (if (let () (declare (not safe)) (__AST-e _id107784_))
                       (let ((__tmp113933
                              (let ((__tmp113937
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id107784_)))
                                    (__tmp113934
                                     (let ((__tmp113935
                                            (let ((__tmp113936
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp113936))))
                                       (declare (not safe))
                                       (cons __tmp113935 '()))))
                                (declare (not safe))
                                (cons __tmp113937 __tmp113934))))
                         (declare (not safe))
                         (cons __tmp113933 _r107785_))
                       _r107785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp113932
                                                            _pre107747_
                                                            _hd107777_)))
                                                 (__tmp113927
                                                  (let ((__tmp113928
                                                         (let ((__tmp113929
                                                                (let ((__tmp113930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs107746_)))
                          (declare (not safe))
                          (cons __tmp113930 '()))))
                   (declare (not safe))
                   (cons _tmp107781_ __tmp113929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113928
                                                          _bind107748_)))
                                                 (__tmp113920
                                                  (let ((__tmp113921
                                                         (let ((__tmp113922
                                                                (let ((__tmp113923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113925
                                      (lambda (_id107787_ _k107788_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id107787_))
                                            (let ((__tmp113926
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id107787_))))
                                              (declare (not safe))
                                              (cons __tmp113926 _k107788_))
                                            '#f)))
                                     (__tmp113924
                                      (let ()
                                        (declare (not safe))
                                        (iota _len107779_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp113925
                                  _hd107777_
                                  __tmp113924))))
                          (declare (not safe))
                          (cons _len107779_ __tmp113923))))
                   (declare (not safe))
                   (cons _tmp107781_ __tmp113922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113921
                                                          _post107749_))))
                                             (declare (not safe))
                                             (_lp107743_
                                              _rest107776_
                                              __tmp113938
                                              __tmp113931
                                              __tmp113927
                                              __tmp113920)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx107629_
                                            _hd107777_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107750107764_))
                              (let ((_tl107760107813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107750107764_)))
                                    (_hd107759107811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107750107764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107759107811_))
                                    (let ((_tl107762107818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107759107811_)))
                                          (_hd107761107816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107759107811_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107762107818_))
                                          (let ((_id107821_ _hd107761107816_)
                                                (_rest107823_
                                                 _tl107760107813_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107758107808_
                                               _rest107823_
                                               _id107821_)))
                                          (let ((_hd107798_ _hd107759107811_)
                                                (_rest107800_
                                                 _tl107760107813_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107755107790_
                                               _rest107800_
                                               _hd107798_)))))
                                    (let ((_hd107798_ _hd107759107811_)
                                          (_rest107800_ _tl107760107813_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107755107790_
                                         _rest107800_
                                         _hd107798_)))))
                              (let ()
                                (declare (not safe))
                                (_else107753107772_))))))))
                 (_compile-inner107633_
                  (lambda (_pre107734_ _bind107735_ _post107736_ _body107737_)
                    (if (let () (declare (not safe)) (null? _pre107734_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind107634_
                           _bind107735_
                           _post107736_
                           _body107737_))
                        (let ((__tmp113947
                               (let ((__tmp113948
                                      (let ((__tmp113951 (reverse _pre107734_))
                                            (__tmp113949
                                             (let ((__tmp113950
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind107634_
                                                       _bind107735_
                                                       _post107736_
                                                       _body107737_))))
                                               (declare (not safe))
                                               (cons __tmp113950 '()))))
                                        (declare (not safe))
                                        (cons __tmp113951 __tmp113949))))
                                 (declare (not safe))
                                 (cons 'let __tmp113948))))
                          (declare (not safe))
                          (__SRC__% __tmp113947 _stx107629_)))))
                 (_compile-bind107634_
                  (lambda (_bind107730_ _post107731_ _body107732_)
                    (let ((__tmp113952
                           (let ((__tmp113953
                                  (let ((__tmp113956 (reverse _bind107730_))
                                        (__tmp113954
                                         (let ((__tmp113955
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107635_
                                                   _post107731_
                                                   _body107732_))))
                                           (declare (not safe))
                                           (cons __tmp113955 '()))))
                                    (declare (not safe))
                                    (cons __tmp113956 __tmp113954))))
                             (declare (not safe))
                             (cons 'letrec __tmp113953))))
                      (declare (not safe))
                      (__SRC__% __tmp113952 _stx107629_))))
                 (_compile-post107635_
                  (lambda (_post107637_ _body107638_)
                    (let _lp107640_ ((_rest107642_ _post107637_)
                                     (_check107643_ '())
                                     (_bind107644_ '()))
                      (let* ((_rest107645107657_ _rest107642_)
                             (_else107647107665_
                              (lambda ()
                                (let ((__tmp113957
                                       (let ((__tmp113958
                                              (let ((__tmp113959
                                                     (let ((__tmp113960
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body107638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp113960 _bind107644_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp113959
                                                        _check107643_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp113958))))
                                  (declare (not safe))
                                  (__SRC__% __tmp113957 _stx107629_))))
                             (_K107649107704_
                              (lambda (_rest107668_
                                       _init107669_
                                       _len107670_
                                       _tmp107671_)
                                (let ((__tmp113969
                                       (let ((__tmp113970
                                              (let ((__tmp113971
                                                     (let ((__tmp113972
                                                            (let ((__tmp113973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len107670_ '()))))
                      (declare (not safe))
                      (cons _tmp107671_ __tmp113973))))
               (declare (not safe))
               (cons '__check-values __tmp113972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp113971
                                                 _stx107629_))))
                                         (declare (not safe))
                                         (cons __tmp113970 _check107643_)))
                                      (__tmp113961
                                       (let ((__tmp113962
                                              (lambda (_hd107673_ _r107674_)
                                                (let* ((_hd107675107682_
                                                        _hd107673_)
                                                       (_E107677107686_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd107675107682_)))
               (_K107678107692_
                (lambda (_k107689_ _id107690_)
                  (let ((__tmp113963
                         (let ((__tmp113964
                                (let ((__tmp113965
                                       (let ((__tmp113966
                                              (let ((__tmp113967
                                                     (let ((__tmp113968
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k107689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp107671_ __tmp113968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp113967))))
                                         (declare (not safe))
                                         (cons __tmp113966 '()))))
                                  (declare (not safe))
                                  (cons _id107690_ __tmp113965))))
                           (declare (not safe))
                           (cons 'set! __tmp113964))))
                    (declare (not safe))
                    (cons __tmp113963 _r107674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd107675107682_))
                                                      (let ((_hd107679107695_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd107675107682_)))
                    (_tl107680107697_
                     (let () (declare (not safe)) (##cdr _hd107675107682_))))
                (let* ((_id107700_ _hd107679107695_)
                       (_k107702_ _tl107680107697_))
                  (declare (not safe))
                  (_K107678107692_ _k107702_ _id107700_)))
              (let () (declare (not safe)) (_E107677107686_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp113962
                                                 _bind107644_
                                                 _init107669_))))
                                  (declare (not safe))
                                  (_lp107640_
                                   _rest107668_
                                   __tmp113969
                                   __tmp113961)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107645107657_))
                            (let ((_hd107650107707_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107645107657_)))
                                  (_tl107651107709_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107645107657_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd107650107707_))
                                  (let ((_hd107652107712_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd107650107707_)))
                                        (_tl107653107714_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd107650107707_))))
                                    (let ((_tmp107717_ _hd107652107712_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107653107714_))
                                          (let ((_hd107654107719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl107653107714_)))
                                                (_tl107655107721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107653107714_))))
                                            (let* ((_len107724_
                                                    _hd107654107719_)
                                                   (_init107726_
                                                    _tl107655107721_)
                                                   (_rest107728_
                                                    _tl107651107709_))
                                              (declare (not safe))
                                              (_K107649107704_
                                               _rest107728_
                                               _init107726_
                                               _len107724_
                                               _tmp107717_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107647107665_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else107647107665_))))
                            (let ()
                              (declare (not safe))
                              (_else107647107665_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107629_
             _compile-simple107631_
             _compile-values107632_)))))
    (define __compile-letrec*-values%
      (lambda (_stx107384_)
        (letrec ((_compile-simple107386_
                  (lambda (_hd-ids107625_ _exprs107626_ _body107627_)
                    (let ((__tmp113974
                           (let ((__tmp113975
                                  (let ((__tmp113977
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids107625_)
                                              _exprs107626_))
                                        (__tmp113976
                                         (let ()
                                           (declare (not safe))
                                           (cons _body107627_ '()))))
                                    (declare (not safe))
                                    (cons __tmp113977 __tmp113976))))
                             (declare (not safe))
                             (cons 'letrec* __tmp113975))))
                      (declare (not safe))
                      (__SRC__% __tmp113974 _stx107384_))))
                 (_compile-values107387_
                  (lambda (_hd-ids107536_ _exprs107537_ _body107538_)
                    (let _lp107540_ ((_rest107542_ _hd-ids107536_)
                                     (_exprs107543_ _exprs107537_)
                                     (_bind107544_ '())
                                     (_post107545_ '()))
                      (let* ((_rest107546107560_ _rest107542_)
                             (_else107549107568_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind107388_
                                   _bind107544_
                                   _post107545_
                                   _body107538_)))))
                        (let ((_K107554107608_
                               (lambda (_rest107603_ _hd107604_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107604_))
                                     (let ((_id107606_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107604_))))
                                       (let ((__tmp113992 (cdr _exprs107543_))
                                             (__tmp113987
                                              (let ((__tmp113988
                                                     (let ((__tmp113989
                                                            (let ((__tmp113990
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113991
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp113991))))
                      (declare (not safe))
                      (cons __tmp113990 '()))))
               (declare (not safe))
               (cons _id107606_ __tmp113989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113988
                                                      _bind107544_)))
                                             (__tmp113983
                                              (let ((__tmp113984
                                                     (let ((__tmp113985
                                                            (let ((__tmp113986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs107543_)))
                      (declare (not safe))
                      (cons __tmp113986 '()))))
               (declare (not safe))
               (cons _id107606_ __tmp113985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113984
                                                      _post107545_))))
                                         (declare (not safe))
                                         (_lp107540_
                                          _rest107603_
                                          __tmp113992
                                          __tmp113987
                                          __tmp113983)))
                                     (let ((__tmp113982 (cdr _exprs107543_))
                                           (__tmp113978
                                            (let ((__tmp113979
                                                   (let ((__tmp113980
                                                          (let ((__tmp113981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs107543_)))
                    (declare (not safe))
                    (cons __tmp113981 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp113980))))
                                              (declare (not safe))
                                              (cons __tmp113979
                                                    _post107545_))))
                                       (declare (not safe))
                                       (_lp107540_
                                        _rest107603_
                                        __tmp113982
                                        _bind107544_
                                        __tmp113978)))))
                              (_K107551107588_
                               (lambda (_rest107572_ _hd107573_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd107573_))
                                     (let ((_id107575_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd107573_))))
                                       (let ((__tmp114028 (cdr _exprs107543_))
                                             (__tmp114023
                                              (let ((__tmp114024
                                                     (let ((__tmp114025
                                                            (let ((__tmp114026
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114027
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp114027))))
                      (declare (not safe))
                      (cons __tmp114026 '()))))
               (declare (not safe))
               (cons _id107575_ __tmp114025))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114024
                                                      _bind107544_)))
                                             (__tmp114017
                                              (let ((__tmp114018
                                                     (let ((__tmp114019
                                                            (let ((__tmp114020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114021
                                  (let ((__tmp114022 (car _exprs107543_)))
                                    (declare (not safe))
                                    (cons __tmp114022 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp114021))))
                      (declare (not safe))
                      (cons __tmp114020 '()))))
               (declare (not safe))
               (cons _id107575_ __tmp114019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114018
                                                      _post107545_))))
                                         (declare (not safe))
                                         (_lp107540_
                                          _rest107572_
                                          __tmp114028
                                          __tmp114023
                                          __tmp114017)))
                                     (if (let ((__tmp114016
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd107573_))))
                                           (declare (not safe))
                                           (not __tmp114016))
                                         (let ((__tmp114015
                                                (cdr _exprs107543_))
                                               (__tmp114011
                                                (let ((__tmp114012
                                                       (let ((__tmp114013
                                                              (let ((__tmp114014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs107543_)))
                        (declare (not safe))
                        (cons __tmp114014 '()))))
                 (declare (not safe))
                 (cons '#f __tmp114013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114012
                                                        _post107545_))))
                                           (declare (not safe))
                                           (_lp107540_
                                            _rest107572_
                                            __tmp114015
                                            _bind107544_
                                            __tmp114011))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd107573_))
                                             (let* ((_len107577_
                                                     (length _hd107573_))
                                                    (_tmp107579_
                                                     (let ((__tmp113993
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp113993))))
                                               (let ((__tmp114010
                                                      (cdr _exprs107543_))
                                                     (__tmp114003
                                                      (let ((__tmp114004
                                                             (lambda (_id107582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r107583_)
                       (if (let () (declare (not safe)) (__AST-e _id107582_))
                           (let ((__tmp114005
                                  (let ((__tmp114009
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id107582_)))
                                        (__tmp114006
                                         (let ((__tmp114007
                                                (let ((__tmp114008
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp114008))))
                                           (declare (not safe))
                                           (cons __tmp114007 '()))))
                                    (declare (not safe))
                                    (cons __tmp114009 __tmp114006))))
                             (declare (not safe))
                             (cons __tmp114005 _r107583_))
                           _r107583_))))
                (declare (not safe))
                (foldl1 __tmp114004 _bind107544_ _hd107573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113994
                                                      (let ((__tmp113995
                                                             (let ((__tmp113996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114002 (car _exprs107543_))
                                  (__tmp113997
                                   (let ((__tmp113998
                                          (let ((__tmp114000
                                                 (lambda (_id107585_ _k107586_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id107585_))
                                                       (let ((__tmp114001
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id107585_))))
                 (declare (not safe))
                 (cons __tmp114001 _k107586_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp113999
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len107577_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp114000
                                             _hd107573_
                                             __tmp113999))))
                                     (declare (not safe))
                                     (cons _len107577_ __tmp113998))))
                              (declare (not safe))
                              (cons __tmp114002 __tmp113997))))
                       (declare (not safe))
                       (cons _tmp107579_ __tmp113996))))
                (declare (not safe))
                (cons __tmp113995 _post107545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp107540_
                                                  _rest107572_
                                                  __tmp114010
                                                  __tmp114003
                                                  __tmp113994)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx107384_
                                                _hd107573_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest107546107560_))
                              (let ((_tl107556107613_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest107546107560_)))
                                    (_hd107555107611_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest107546107560_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107555107611_))
                                    (let ((_tl107558107618_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107555107611_)))
                                          (_hd107557107616_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107555107611_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107558107618_))
                                          (let ((_hd107621_ _hd107557107616_)
                                                (_rest107623_
                                                 _tl107556107613_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107554107608_
                                               _rest107623_
                                               _hd107621_)))
                                          (let ((_hd107596_ _hd107555107611_)
                                                (_rest107598_
                                                 _tl107556107613_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107551107588_
                                               _rest107598_
                                               _hd107596_)))))
                                    (let ((_hd107596_ _hd107555107611_)
                                          (_rest107598_ _tl107556107613_))
                                      (let ()
                                        (declare (not safe))
                                        (_K107551107588_
                                         _rest107598_
                                         _hd107596_)))))
                              (let ()
                                (declare (not safe))
                                (_else107549107568_))))))))
                 (_compile-bind107388_
                  (lambda (_bind107532_ _post107533_ _body107534_)
                    (let ((__tmp114029
                           (let ((__tmp114030
                                  (let ((__tmp114033 (reverse _bind107532_))
                                        (__tmp114031
                                         (let ((__tmp114032
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post107389_
                                                   _post107533_
                                                   _body107534_))))
                                           (declare (not safe))
                                           (cons __tmp114032 '()))))
                                    (declare (not safe))
                                    (cons __tmp114033 __tmp114031))))
                             (declare (not safe))
                             (cons 'let __tmp114030))))
                      (declare (not safe))
                      (__SRC__% __tmp114029 _stx107384_))))
                 (_compile-post107389_
                  (lambda (_post107391_ _body107392_)
                    (let ((__tmp114034
                           (let ((__tmp114035
                                  (let ((__tmp114036
                                         (let ((__tmp114038
                                                (lambda (_hd107394_ _r107395_)
                                                  (let* ((_hd107396107419_
                                                          _hd107394_)
                                                         (_E107400107423_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd107396107419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K107413107517_
                                                           (lambda (_expr107515_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr107515_ _r107395_))))
                  (_K107408107495_
                   (lambda (_expr107492_ _id107493_)
                     (let ((__tmp114039
                            (let ((__tmp114040
                                   (let ((__tmp114041
                                          (let ((__tmp114042
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr107492_ '()))))
                                            (declare (not safe))
                                            (cons _id107493_ __tmp114042))))
                                     (declare (not safe))
                                     (cons 'set! __tmp114041))))
                              (declare (not safe))
                              (__SRC__% __tmp114040 _stx107384_))))
                       (declare (not safe))
                       (cons __tmp114039 _r107395_))))
                  (_K107401107462_
                   (lambda (_init107427_ _len107428_ _expr107429_ _tmp107430_)
                     (let ((__tmp114043
                            (let ((__tmp114044
                                   (let ((__tmp114045
                                          (let ((__tmp114059
                                                 (let ((__tmp114060
                                                        (let ((__tmp114061
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr107429_ '()))))
                  (declare (not safe))
                  (cons _tmp107430_ __tmp114061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114060 '())))
                                                (__tmp114046
                                                 (let ((__tmp114055
                                                        (let ((__tmp114056
                                                               (let ((__tmp114057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114058
                                     (let ()
                                       (declare (not safe))
                                       (cons _len107428_ '()))))
                                (declare (not safe))
                                (cons _tmp107430_ __tmp114058))))
                         (declare (not safe))
                         (cons '__check-values __tmp114057))))
                  (declare (not safe))
                  (__SRC__% __tmp114056 _stx107384_)))
               (__tmp114047
                (let ((__tmp114048
                       (map (lambda (_hd107432_)
                              (let* ((_hd107433107440_ _hd107432_)
                                     (_E107435107444_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd107433107440_)))
                                     (_K107436107450_
                                      (lambda (_k107447_ _id107448_)
                                        (let ((__tmp114049
                                               (let ((__tmp114050
                                                      (let ((__tmp114051
                                                             (let ((__tmp114052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114053
                                   (let ((__tmp114054
                                          (let ()
                                            (declare (not safe))
                                            (cons _k107447_ '()))))
                                     (declare (not safe))
                                     (cons _tmp107430_ __tmp114054))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp114053))))
                       (declare (not safe))
                       (cons __tmp114052 '()))))
                (declare (not safe))
                (cons _id107448_ __tmp114051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp114050))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp114049
                                           _stx107384_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107433107440_))
                                    (let ((_hd107437107453_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107433107440_)))
                                          (_tl107438107455_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107433107440_))))
                                      (let* ((_id107458_ _hd107437107453_)
                                             (_k107460_ _tl107438107455_))
                                        (declare (not safe))
                                        (_K107436107450_
                                         _k107460_
                                         _id107458_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E107435107444_)))))
                            _init107427_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp114048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114055
                                                         __tmp114047))))
                                            (declare (not safe))
                                            (cons __tmp114059 __tmp114046))))
                                     (declare (not safe))
                                     (cons 'let __tmp114045))))
                              (declare (not safe))
                              (__SRC__% __tmp114044 _stx107384_))))
                       (declare (not safe))
                       (cons __tmp114043 _r107395_)))))
              (if (let () (declare (not safe)) (##pair? _hd107396107419_))
                  (let ((_tl107415107522_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107396107419_)))
                        (_hd107414107520_
                         (let ()
                           (declare (not safe))
                           (##car _hd107396107419_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107414107520_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107415107522_))
                            (let ((_tl107417107527_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107415107522_)))
                                  (_hd107416107525_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107415107522_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107417107527_))
                                  (let ((_expr107530_ _hd107416107525_))
                                    (declare (not safe))
                                    (_K107413107517_ _expr107530_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107417107527_))
                                      (let ((_tl107407107481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107417107527_)))
                                            (_hd107406107479_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107417107527_))))
                                        (let ((_tmp107470_ _hd107414107520_)
                                              (_expr107477_ _hd107416107525_)
                                              (_len107484_ _hd107406107479_)
                                              (_init107486_ _tl107407107481_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107401107462_
                                             _init107486_
                                             _len107484_
                                             _expr107477_
                                             _tmp107470_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107400107423_)))))
                            (let () (declare (not safe)) (_E107400107423_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107415107522_))
                            (let ((_tl107412107507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107415107522_)))
                                  (_hd107411107505_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107415107522_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107412107507_))
                                  (let ((_id107503_ _hd107414107520_)
                                        (_expr107510_ _hd107411107505_))
                                    (let ()
                                      (declare (not safe))
                                      (_K107408107495_
                                       _expr107510_
                                       _id107503_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107412107507_))
                                      (let ((_tl107407107481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107412107507_)))
                                            (_hd107406107479_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107412107507_))))
                                        (let ((_tmp107470_ _hd107414107520_)
                                              (_expr107477_ _hd107411107505_)
                                              (_len107484_ _hd107406107479_)
                                              (_init107486_ _tl107407107481_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107401107462_
                                             _init107486_
                                             _len107484_
                                             _expr107477_
                                             _tmp107470_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E107400107423_)))))
                            (let () (declare (not safe)) (_E107400107423_)))))
                  (let () (declare (not safe)) (_E107400107423_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp114037
                                                (list _body107392_)))
                                           (declare (not safe))
                                           (foldl1 __tmp114038
                                                   __tmp114037
                                                   _post107391_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp114036))))
                             (declare (not safe))
                             (cons 'begin __tmp114035))))
                      (declare (not safe))
                      (__SRC__% __tmp114034 _stx107384_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx107384_
             _compile-simple107386_
             _compile-values107387_)))))
    (define __compile-call%
      (lambda (_stx107344_)
        (let* ((_$e107346_ _stx107344_)
               (_$E107348107357_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107346_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107346_))
              (let* ((_$tgt107349107360_
                      (let () (declare (not safe)) (__AST-e _$e107346_)))
                     (_$hd107350107363_
                      (let () (declare (not safe)) (##car _$tgt107349107360_)))
                     (_$tl107351107366_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107349107360_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107351107366_))
                    (let* ((_$tgt107352107370_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107351107366_)))
                           (_$hd107353107373_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107352107370_)))
                           (_$tl107354107376_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107352107370_))))
                      (let* ((_rator107380_ _$hd107353107373_)
                             (_rands107382_ _$tl107354107376_)
                             (__tmp114062
                              (let ((__tmp114064
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator107380_)))
                                    (__tmp114063
                                     (map __compile _rands107382_)))
                                (declare (not safe))
                                (cons __tmp114064 __tmp114063))))
                        (declare (not safe))
                        (__SRC__% __tmp114062 _stx107344_)))
                    (let () (declare (not safe)) (_$E107348107357_))))
              (let () (declare (not safe)) (_$E107348107357_))))))
    (define __compile-ref%
      (lambda (_stx107306_)
        (let* ((_$e107308_ _stx107306_)
               (_$E107310107319_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107308_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107308_))
              (let* ((_$tgt107311107322_
                      (let () (declare (not safe)) (__AST-e _$e107308_)))
                     (_$hd107312107325_
                      (let () (declare (not safe)) (##car _$tgt107311107322_)))
                     (_$tl107313107328_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107311107322_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107313107328_))
                    (let* ((_$tgt107314107332_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107313107328_)))
                           (_$hd107315107335_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107314107332_)))
                           (_$tl107316107338_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107314107332_))))
                      (let ((_id107342_ _$hd107315107335_))
                        (if (let ((__tmp114065
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107316107338_))))
                              (declare (not safe))
                              (equal? __tmp114065 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id107342_ _stx107306_))
                            (let () (declare (not safe)) (_$E107310107319_)))))
                    (let () (declare (not safe)) (_$E107310107319_))))
              (let () (declare (not safe)) (_$E107310107319_))))))
    (define __compile-setq%
      (lambda (_stx107253_)
        (let* ((_$e107255_ _stx107253_)
               (_$E107257107269_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107255_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107255_))
              (let* ((_$tgt107258107272_
                      (let () (declare (not safe)) (__AST-e _$e107255_)))
                     (_$hd107259107275_
                      (let () (declare (not safe)) (##car _$tgt107258107272_)))
                     (_$tl107260107278_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107258107272_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107260107278_))
                    (let* ((_$tgt107261107282_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107260107278_)))
                           (_$hd107262107285_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107261107282_)))
                           (_$tl107263107288_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107261107282_))))
                      (let ((_id107292_ _$hd107262107285_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107263107288_))
                            (let* ((_$tgt107264107294_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107263107288_)))
                                   (_$hd107265107297_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107264107294_)))
                                   (_$tl107266107300_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107264107294_))))
                              (let ((_expr107304_ _$hd107265107297_))
                                (if (let ((__tmp114071
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl107266107300_))))
                                      (declare (not safe))
                                      (equal? __tmp114071 '()))
                                    (let ((__tmp114066
                                           (let ((__tmp114067
                                                  (let ((__tmp114070
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id107292_
                                                            _stx107253_)))
                                                        (__tmp114068
                                                         (let ((__tmp114069
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr107304_))))
                   (declare (not safe))
                   (cons __tmp114069 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114070
                                                          __tmp114068))))
                                             (declare (not safe))
                                             (cons 'set! __tmp114067))))
                                      (declare (not safe))
                                      (__SRC__% __tmp114066 _stx107253_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107257107269_)))))
                            (let () (declare (not safe)) (_$E107257107269_)))))
                    (let () (declare (not safe)) (_$E107257107269_))))
              (let () (declare (not safe)) (_$E107257107269_))))))
    (define __compile-if%
      (lambda (_stx107185_)
        (let* ((_$e107187_ _stx107185_)
               (_$E107189107204_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107187_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107187_))
              (let* ((_$tgt107190107207_
                      (let () (declare (not safe)) (__AST-e _$e107187_)))
                     (_$hd107191107210_
                      (let () (declare (not safe)) (##car _$tgt107190107207_)))
                     (_$tl107192107213_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107190107207_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107192107213_))
                    (let* ((_$tgt107193107217_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107192107213_)))
                           (_$hd107194107220_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107193107217_)))
                           (_$tl107195107223_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107193107217_))))
                      (let ((_p107227_ _$hd107194107220_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl107195107223_))
                            (let* ((_$tgt107196107229_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl107195107223_)))
                                   (_$hd107197107232_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt107196107229_)))
                                   (_$tl107198107235_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt107196107229_))))
                              (let ((_t107239_ _$hd107197107232_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl107198107235_))
                                    (let* ((_$tgt107199107241_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl107198107235_)))
                                           (_$hd107200107244_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt107199107241_)))
                                           (_$tl107201107247_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt107199107241_))))
                                      (let ((_f107251_ _$hd107200107244_))
                                        (if (let ((__tmp114079
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl107201107247_))))
                                              (declare (not safe))
                                              (equal? __tmp114079 '()))
                                            (let ((__tmp114072
                                                   (let ((__tmp114073
                                                          (let ((__tmp114078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p107227_)))
                        (__tmp114074
                         (let ((__tmp114077
                                (let ()
                                  (declare (not safe))
                                  (__compile _t107239_)))
                               (__tmp114075
                                (let ((__tmp114076
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f107251_))))
                                  (declare (not safe))
                                  (cons __tmp114076 '()))))
                           (declare (not safe))
                           (cons __tmp114077 __tmp114075))))
                    (declare (not safe))
                    (cons __tmp114078 __tmp114074))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp114073))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp114072
                                               _stx107185_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E107189107204_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E107189107204_)))))
                            (let () (declare (not safe)) (_$E107189107204_)))))
                    (let () (declare (not safe)) (_$E107189107204_))))
              (let () (declare (not safe)) (_$E107189107204_))))))
    (define __compile-quote%
      (lambda (_stx107147_)
        (let* ((_$e107149_ _stx107147_)
               (_$E107151107160_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107149_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107149_))
              (let* ((_$tgt107152107163_
                      (let () (declare (not safe)) (__AST-e _$e107149_)))
                     (_$hd107153107166_
                      (let () (declare (not safe)) (##car _$tgt107152107163_)))
                     (_$tl107154107169_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107152107163_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107154107169_))
                    (let* ((_$tgt107155107173_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107154107169_)))
                           (_$hd107156107176_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107155107173_)))
                           (_$tl107157107179_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107155107173_))))
                      (let ((_e107183_ _$hd107156107176_))
                        (if (let ((__tmp114083
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107157107179_))))
                              (declare (not safe))
                              (equal? __tmp114083 '()))
                            (let ((__tmp114080
                                   (let ((__tmp114081
                                          (let ((__tmp114082
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e107183_))))
                                            (declare (not safe))
                                            (cons __tmp114082 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114081))))
                              (declare (not safe))
                              (__SRC__% __tmp114080 _stx107147_))
                            (let () (declare (not safe)) (_$E107151107160_)))))
                    (let () (declare (not safe)) (_$E107151107160_))))
              (let () (declare (not safe)) (_$E107151107160_))))))
    (define __compile-quote-syntax%
      (lambda (_stx107109_)
        (let* ((_$e107111_ _stx107109_)
               (_$E107113107122_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e107111_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e107111_))
              (let* ((_$tgt107114107125_
                      (let () (declare (not safe)) (__AST-e _$e107111_)))
                     (_$hd107115107128_
                      (let () (declare (not safe)) (##car _$tgt107114107125_)))
                     (_$tl107116107131_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt107114107125_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl107116107131_))
                    (let* ((_$tgt107117107135_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl107116107131_)))
                           (_$hd107118107138_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt107117107135_)))
                           (_$tl107119107141_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt107117107135_))))
                      (let ((_e107145_ _$hd107118107138_))
                        (if (let ((__tmp114086
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl107119107141_))))
                              (declare (not safe))
                              (equal? __tmp114086 '()))
                            (let ((__tmp114084
                                   (let ((__tmp114085
                                          (let ()
                                            (declare (not safe))
                                            (cons _e107145_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp114085))))
                              (declare (not safe))
                              (__SRC__% __tmp114084 _stx107109_))
                            (let () (declare (not safe)) (_$E107113107122_)))))
                    (let () (declare (not safe)) (_$E107113107122_))))
              (let () (declare (not safe)) (_$E107113107122_))))))
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
