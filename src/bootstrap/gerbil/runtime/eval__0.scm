(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1697117311)
  (begin
    (define __context::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__context::t
         '#f
         '4
         '__context
         '()
         '#f
         '(t ns super table))))
    (define __context?
      (let () (declare (not safe)) (make-struct-predicate __context::t)))
    (define make-__context
      (lambda _$args17452_
        (apply make-struct-instance __context::t _$args17452_)))
    (define __context-t
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '0)))
    (define __context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '1)))
    (define __context-super
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '2)))
    (define __context-table
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __context::t '3)))
    (define __context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '0)))
    (define __context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '1)))
    (define __context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '2)))
    (define __context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __context::t '3)))
    (define &__context-t
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '0)))
    (define &__context-ns
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '1)))
    (define &__context-super
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '2)))
    (define &__context-table
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __context::t '3)))
    (define &__context-t-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '0)))
    (define &__context-ns-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '1)))
    (define &__context-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '2)))
    (define &__context-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __context::t '3)))
    (define __runtime::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__runtime::t
         '#f
         '1
         '__runtime
         '()
         '#f
         '(id))))
    (define __runtime?
      (let () (declare (not safe)) (make-struct-predicate __runtime::t)))
    (define make-__runtime
      (lambda _$args17449_
        (apply make-struct-instance __runtime::t _$args17449_)))
    (define __runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __runtime::t '0)))
    (define __runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator __runtime::t '0)))
    (define &__runtime-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __runtime::t '0)))
    (define &__runtime-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __runtime::t '0)))
    (define __syntax::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__syntax::t
         '#f
         '2
         '__syntax
         '()
         '#f
         '(e id))))
    (define __syntax?
      (let () (declare (not safe)) (make-struct-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args17446_
        (apply make-struct-instance __syntax::t _$args17446_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '0)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __syntax::t '1)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '0)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __syntax::t '1)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '0)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __syntax::t '1)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '0)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __syntax::t '1)))
    (define __macro::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__macro::t
         __syntax::t
         '0
         '__macro
         '()
         '#f
         '())))
    (define __macro?
      (let () (declare (not safe)) (make-struct-predicate __macro::t)))
    (define make-__macro
      (lambda _$args17443_
        (apply make-struct-instance __macro::t _$args17443_)))
    (define __special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__special-form::t
         __macro::t
         '0
         '__special-form
         '()
         '#f
         '())))
    (define __special-form?
      (let () (declare (not safe)) (make-struct-predicate __special-form::t)))
    (define make-__special-form
      (lambda _$args17440_
        (apply make-struct-instance __special-form::t _$args17440_)))
    (define __core-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-form::t
         __syntax::t
         '0
         '__core-form
         '()
         '#f
         '())))
    (define __core-form?
      (let () (declare (not safe)) (make-struct-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args17437_
        (apply make-struct-instance __core-form::t _$args17437_)))
    (define __core-expression::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-expression::t
         __core-form::t
         '0
         '__core-expression
         '()
         '#f
         '())))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args17434_
        (apply make-struct-instance __core-expression::t _$args17434_)))
    (define __core-special-form::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__core-special-form::t
         __core-form::t
         '0
         '__core-special-form
         '()
         '#f
         '())))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-struct-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args17431_
        (apply make-struct-instance __core-special-form::t _$args17431_)))
    (define __struct-info::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__struct-info::t
         __syntax::t
         '0
         '__struct-info
         '()
         '#f
         '())))
    (define __struct-info?
      (let () (declare (not safe)) (make-struct-predicate __struct-info::t)))
    (define make-__struct-info
      (lambda _$args17428_
        (apply make-struct-instance __struct-info::t _$args17428_)))
    (define __feature::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__feature::t
         __syntax::t
         '0
         '__feature
         '()
         '#f
         '())))
    (define __feature?
      (let () (declare (not safe)) (make-struct-predicate __feature::t)))
    (define make-__feature
      (lambda _$args17425_
        (apply make-struct-instance __feature::t _$args17425_)))
    (define __module::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gerbil/runtime/eval#__module::t
         __context::t
         '4
         '__module
         '()
         '#f
         '(id path import export))))
    (define __module?
      (let () (declare (not safe)) (make-struct-predicate __module::t)))
    (define make-__module
      (lambda _$args17422_
        (apply make-struct-instance __module::t _$args17422_)))
    (define __module-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '0)))
    (define __module-path
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '1)))
    (define __module-import
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '2)))
    (define __module-export
      (let ()
        (declare (not safe))
        (make-struct-field-accessor __module::t '3)))
    (define __module-id-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '0)))
    (define __module-path-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '1)))
    (define __module-import-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '2)))
    (define __module-export-set!
      (let () (declare (not safe)) (make-struct-field-mutator __module::t '3)))
    (define &__module-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '0)))
    (define &__module-path
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '1)))
    (define &__module-import
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '2)))
    (define &__module-export
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor __module::t '3)))
    (define &__module-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '0)))
    (define &__module-path-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '1)))
    (define &__module-import-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '2)))
    (define &__module-export-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator __module::t '3)))
    (define __*modules* (let () (declare (not safe)) (make-table)))
    (define __*core* (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __*top*
      (let ((__tmp17638
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17637 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17638 __tmp17637)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve__%
      (lambda (_id17397_ _ctx17398_)
        (if _ctx17398_
            (let ((_id17400_
                   (let () (declare (not safe)) (__AST-e _id17397_))))
              (let _lp17402_ ((_ctx17404_ _ctx17398_))
                (let ((_$e17406_
                       (table-ref
                        (##structure-ref _ctx17404_ '4 __context::t '#f)
                        _id17400_
                        '#f)))
                  (if _$e17406_
                      (values _$e17406_)
                      (let ((_$e17409_
                             (##structure-ref _ctx17404_ '3 __context::t '#f)))
                        (if _$e17409_
                            (let () (declare (not safe)) (_lp17402_ _$e17409_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id17415_)
        (let ((_ctx17417_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id17415_ _ctx17417_))))
    (define __core-resolve
      (lambda _g17640_
        (let ((_g17639_ (let () (declare (not safe)) (##length _g17640_))))
          (cond ((let () (declare (not safe)) (##fx= _g17639_ 1))
                 (apply (lambda (_id17415_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id17415_)))
                        _g17640_))
                ((let () (declare (not safe)) (##fx= _g17639_ 2))
                 (apply (lambda (_id17419_ _ctx17420_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id17419_ _ctx17420_)))
                        _g17640_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17640_))))))
    (define __core-bound-id?__%
      (lambda (_id17380_ _is?17381_)
        (let ((_$e17383_
               (let () (declare (not safe)) (__core-resolve__0 _id17380_))))
          (if _$e17383_ (_is?17381_ _$e17383_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id17389_)
        (let ((_is?17391_ true))
          (declare (not safe))
          (__core-bound-id?__% _id17389_ _is?17391_))))
    (define __core-bound-id?
      (lambda _g17642_
        (let ((_g17641_ (let () (declare (not safe)) (##length _g17642_))))
          (cond ((let () (declare (not safe)) (##fx= _g17641_ 1))
                 (apply (lambda (_id17389_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id17389_)))
                        _g17642_))
                ((let () (declare (not safe)) (##fx= _g17641_ 2))
                 (apply (lambda (_id17393_ _is?17394_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id17393_ _is?17394_)))
                        _g17642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17642_))))))
    (define __core-bind-runtime!__%
      (lambda (_id17363_ _eid17364_ _ctx17365_)
        (if _eid17364_
            (let ((__tmp17645 (##structure-ref _ctx17365_ '4 __context::t '#f))
                  (__tmp17644
                   (let () (declare (not safe)) (__AST-e _id17363_)))
                  (__tmp17643
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid17364_))))
              (declare (not safe))
              (table-set! __tmp17645 __tmp17644 __tmp17643))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id17370_ _eid17371_)
        (let ((_ctx17373_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id17370_ _eid17371_ _ctx17373_))))
    (define __core-bind-runtime!
      (lambda _g17647_
        (let ((_g17646_ (let () (declare (not safe)) (##length _g17647_))))
          (cond ((let () (declare (not safe)) (##fx= _g17646_ 2))
                 (apply (lambda (_id17370_ _eid17371_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id17370_ _eid17371_)))
                        _g17647_))
                ((let () (declare (not safe)) (##fx= _g17646_ 3))
                 (apply (lambda (_id17375_ _eid17376_ _ctx17377_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id17375_
                             _eid17376_
                             _ctx17377_)))
                        _g17647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17647_))))))
    (define __core-bind-syntax!__%
      (lambda (_id17346_ _e17347_ _make17348_)
        (let ((__tmp17648
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17347_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17347_
                   (_make17348_ _e17347_ _id17346_))))
          (declare (not safe))
          (table-set! __*core* _id17346_ __tmp17648))))
    (define __core-bind-syntax!__0
      (lambda (_id17353_ _e17354_)
        (let ((_make17356_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id17353_ _e17354_ _make17356_))))
    (define __core-bind-syntax!
      (lambda _g17650_
        (let ((_g17649_ (let () (declare (not safe)) (##length _g17650_))))
          (cond ((let () (declare (not safe)) (##fx= _g17649_ 2))
                 (apply (lambda (_id17353_ _e17354_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id17353_ _e17354_)))
                        _g17650_))
                ((let () (declare (not safe)) (##fx= _g17649_ 3))
                 (apply (lambda (_id17358_ _e17359_ _make17360_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id17358_
                             _e17359_
                             _make17360_)))
                        _g17650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17650_))))))
    (define __core-bind-macro!
      (lambda (_id17342_ _e17343_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17342_ _e17343_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id17339_ _e17340_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id17339_ _e17340_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id17323_ _e17324_ _ctx17325_)
        (let ((__tmp17654 (##structure-ref _ctx17325_ '4 __context::t '#f))
              (__tmp17653 (let () (declare (not safe)) (__AST-e _id17323_)))
              (__tmp17651
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e17324_
                      'gerbil/runtime/eval#__syntax::t))
                   _e17324_
                   (let ((__tmp17652
                          (let () (declare (not safe)) (__AST-e _id17323_))))
                     (declare (not safe))
                     (##structure __syntax::t _e17324_ __tmp17652)))))
          (declare (not safe))
          (table-set! __tmp17654 __tmp17653 __tmp17651))))
    (define __core-bind-user-syntax!__0
      (lambda (_id17330_ _e17331_)
        (let ((_ctx17333_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id17330_ _e17331_ _ctx17333_))))
    (define __core-bind-user-syntax!
      (lambda _g17656_
        (let ((_g17655_ (let () (declare (not safe)) (##length _g17656_))))
          (cond ((let () (declare (not safe)) (##fx= _g17655_ 2))
                 (apply (lambda (_id17330_ _e17331_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id17330_ _e17331_)))
                        _g17656_))
                ((let () (declare (not safe)) (##fx= _g17655_ 3))
                 (apply (lambda (_id17335_ _e17336_ _ctx17337_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id17335_
                             _e17336_
                             _ctx17337_)))
                        _g17656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17656_))))))
    (define make-__runtime-id__%
      (lambda (_id17304_ _ctx17305_)
        (let ((_id17307_ (let () (declare (not safe)) (__AST-e _id17304_))))
          (if (let () (declare (not safe)) (eq? _id17307_ '_))
              '#f
              (if (uninterned-symbol? _id17307_)
                  (gensym _id17307_)
                  (if (let () (declare (not safe)) (symbol? _id17307_))
                      (let ((_$e17309_
                             (##structure-ref _ctx17305_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e17309_))
                            (gensym _id17307_)
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e17309_))
                                (let ((__tmp17657
                                       (##structure-ref
                                        _ctx17305_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol__1 __tmp17657 '"#" _id17307_))
                                _id17307_)))
                      (error '"Illegal runtime identifier" _id17307_)))))))
    (define make-__runtime-id__0
      (lambda (_id17315_)
        (let ((_ctx17317_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id17315_ _ctx17317_))))
    (define make-__runtime-id
      (lambda _g17659_
        (let ((_g17658_ (let () (declare (not safe)) (##length _g17659_))))
          (cond ((let () (declare (not safe)) (##fx= _g17658_ 1))
                 (apply (lambda (_id17315_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id17315_)))
                        _g17659_))
                ((let () (declare (not safe)) (##fx= _g17658_ 2))
                 (apply (lambda (_id17319_ _ctx17320_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id17319_ _ctx17320_)))
                        _g17659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17659_))))))
    (define make-__context-local__%
      (lambda (_super17293_)
        (let ((__tmp17660
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super17293_ __tmp17660))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super17299_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super17299_))))
    (define make-__context-local
      (lambda _g17662_
        (let ((_g17661_ (let () (declare (not safe)) (##length _g17662_))))
          (cond ((let () (declare (not safe)) (##fx= _g17661_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17662_))
                ((let () (declare (not safe)) (##fx= _g17661_ 1))
                 (apply (lambda (_super17301_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super17301_)))
                        _g17662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17662_))))))
    (define make-__context-module__%
      (lambda (_id17273_ _ns17274_ _path17275_ _super17276_)
        (let ((__tmp17663
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns17274_
           _super17276_
           __tmp17663
           _id17273_
           _path17275_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id17281_ _ns17282_ _path17283_)
        (let ((_super17285_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id17281_
           _ns17282_
           _path17283_
           _super17285_))))
    (define make-__context-module
      (lambda _g17665_
        (let ((_g17664_ (let () (declare (not safe)) (##length _g17665_))))
          (cond ((let () (declare (not safe)) (##fx= _g17664_ 3))
                 (apply (lambda (_id17281_ _ns17282_ _path17283_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id17281_
                             _ns17282_
                             _path17283_)))
                        _g17665_))
                ((let () (declare (not safe)) (##fx= _g17664_ 4))
                 (apply (lambda (_id17287_ _ns17288_ _path17289_ _super17290_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id17287_
                             _ns17288_
                             _path17289_
                             _super17290_)))
                        _g17665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17665_))))))
    (define __SRC__%
      (lambda (_e17256_ _src-stx17257_)
        (if (or (let () (declare (not safe)) (pair? _e17256_))
                (let () (declare (not safe)) (symbol? _e17256_)))
            (let ((__tmp17669
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx17257_
                          'gerbil#AST::t))
                       (let ((__tmp17670
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx17257_))))
                         (declare (not safe))
                         (__locat __tmp17670))
                       '#f)))
              (declare (not safe))
              (##make-source _e17256_ __tmp17669))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e17256_ 'gerbil#AST::t))
                (let ((__tmp17668
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e17256_ '1 AST::t '#f)))
                      (__tmp17666
                       (let ((__tmp17667
                              (let ()
                                (declare (not safe))
                                (__AST-source _e17256_))))
                         (declare (not safe))
                         (__locat __tmp17667))))
                  (declare (not safe))
                  (##make-source __tmp17668 __tmp17666))
                (error '"BUG! Cannot sourcify object" _e17256_)))))
    (define __SRC__0
      (lambda (_e17265_)
        (let ((_src-stx17267_ '#f))
          (declare (not safe))
          (__SRC__% _e17265_ _src-stx17267_))))
    (define __SRC
      (lambda _g17672_
        (let ((_g17671_ (let () (declare (not safe)) (##length _g17672_))))
          (cond ((let () (declare (not safe)) (##fx= _g17671_ 1))
                 (apply (lambda (_e17265_)
                          (let () (declare (not safe)) (__SRC__0 _e17265_)))
                        _g17672_))
                ((let () (declare (not safe)) (##fx= _g17671_ 2))
                 (apply (lambda (_e17269_ _src-stx17270_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e17269_ _src-stx17270_)))
                        _g17672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17672_))))))
    (define __locat
      (lambda (_loc17253_)
        (if (let () (declare (not safe)) (##locat? _loc17253_))
            _loc17253_
            '#f)))
    (define __check-values
      (lambda (_obj17248_ _k17249_)
        (let ((_count17251_
               (if (let () (declare (not safe)) (##values? _obj17248_))
                   (let () (declare (not safe)) (##vector-length _obj17248_))
                   '1)))
          (if (fx= _count17251_ _k17249_)
              '#!void
              (error (if (fx< _count17251_ _k17249_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj17248_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj17248_))
                         _obj17248_)
                     _k17249_)))))
    (define __compile
      (lambda (_stx17218_)
        (let* ((_$e17220_ _stx17218_)
               (_$E1722217228_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17220_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17220_))
              (let* ((_$tgt1722317231_
                      (let () (declare (not safe)) (__AST-e _$e17220_)))
                     (_$hd1722417234_
                      (let () (declare (not safe)) (##car _$tgt1722317231_)))
                     (_$tl1722517237_
                      (let () (declare (not safe)) (##cdr _$tgt1722317231_))))
                (let* ((_form17241_ _$hd1722417234_)
                       (_$e17243_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form17241_))))
                  (if _$e17243_
                      ((lambda (_bind17246_)
                         ((##structure-ref _bind17246_ '1 __syntax::t '#f)
                          _stx17218_))
                       _$e17243_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx17218_
                         _form17241_)))))
              (let () (declare (not safe)) (_$E1722217228_))))))
    (define __compile-error__%
      (lambda (_stx17205_ _detail17206_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx17205_
           _detail17206_))))
    (define __compile-error__0
      (lambda (_stx17211_)
        (let ((_detail17213_ '#f))
          (declare (not safe))
          (__compile-error__% _stx17211_ _detail17213_))))
    (define __compile-error
      (lambda _g17674_
        (let ((_g17673_ (let () (declare (not safe)) (##length _g17674_))))
          (cond ((let () (declare (not safe)) (##fx= _g17673_ 1))
                 (apply (lambda (_stx17211_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx17211_)))
                        _g17674_))
                ((let () (declare (not safe)) (##fx= _g17673_ 2))
                 (apply (lambda (_stx17215_ _detail17216_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx17215_ _detail17216_)))
                        _g17674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17674_))))))
    (define __compile-ignore%
      (lambda (_stx17202_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx17202_))))
    (define __compile-begin%
      (lambda (_stx17177_)
        (let* ((_$e17179_ _stx17177_)
               (_$E1718117187_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17179_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17179_))
              (let* ((_$tgt1718217190_
                      (let () (declare (not safe)) (__AST-e _$e17179_)))
                     (_$hd1718317193_
                      (let () (declare (not safe)) (##car _$tgt1718217190_)))
                     (_$tl1718417196_
                      (let () (declare (not safe)) (##cdr _$tgt1718217190_))))
                (let* ((_body17200_ _$tl1718417196_)
                       (__tmp17675
                        (let ((__tmp17676 (map __compile _body17200_)))
                          (declare (not safe))
                          (cons 'begin __tmp17676))))
                  (declare (not safe))
                  (__SRC__% __tmp17675 _stx17177_)))
              (let () (declare (not safe)) (_$E1718117187_))))))
    (define __compile-begin-foreign%
      (lambda (_stx17152_)
        (let* ((_$e17154_ _stx17152_)
               (_$E1715617162_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17154_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17154_))
              (let* ((_$tgt1715717165_
                      (let () (declare (not safe)) (__AST-e _$e17154_)))
                     (_$hd1715817168_
                      (let () (declare (not safe)) (##car _$tgt1715717165_)))
                     (_$tl1715917171_
                      (let () (declare (not safe)) (##cdr _$tgt1715717165_))))
                (let* ((_body17175_ _$tl1715917171_)
                       (__tmp17677
                        (let ((__tmp17678
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body17175_))))
                          (declare (not safe))
                          (cons 'begin __tmp17678))))
                  (declare (not safe))
                  (__SRC__% __tmp17677 _stx17152_)))
              (let () (declare (not safe)) (_$E1715617162_))))))
    (define __compile-import%
      (lambda (_stx17127_)
        (let* ((_$e17129_ _stx17127_)
               (_$E1713117137_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17129_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17129_))
              (let* ((_$tgt1713217140_
                      (let () (declare (not safe)) (__AST-e _$e17129_)))
                     (_$hd1713317143_
                      (let () (declare (not safe)) (##car _$tgt1713217140_)))
                     (_$tl1713417146_
                      (let () (declare (not safe)) (##cdr _$tgt1713217140_))))
                (let* ((_body17150_ _$tl1713417146_)
                       (__tmp17679
                        (let ((__tmp17680
                               (let ((__tmp17681
                                      (let ((__tmp17682
                                             (let ()
                                               (declare (not safe))
                                               (cons _body17150_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17682))))
                                 (declare (not safe))
                                 (cons __tmp17681 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17680))))
                  (declare (not safe))
                  (__SRC__% __tmp17679 _stx17127_)))
              (let () (declare (not safe)) (_$E1713117137_))))))
    (define __compile-begin-annotation%
      (lambda (_stx17074_)
        (let* ((_$e17076_ _stx17074_)
               (_$E1707817090_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e17076_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e17076_))
              (let* ((_$tgt1707917093_
                      (let () (declare (not safe)) (__AST-e _$e17076_)))
                     (_$hd1708017096_
                      (let () (declare (not safe)) (##car _$tgt1707917093_)))
                     (_$tl1708117099_
                      (let () (declare (not safe)) (##cdr _$tgt1707917093_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1708117099_))
                    (let* ((_$tgt1708217103_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1708117099_)))
                           (_$hd1708317106_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1708217103_)))
                           (_$tl1708417109_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1708217103_))))
                      (let ((_ann17113_ _$hd1708317106_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1708417109_))
                            (let* ((_$tgt1708517115_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1708417109_)))
                                   (_$hd1708617118_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1708517115_)))
                                   (_$tl1708717121_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1708517115_))))
                              (let ((_expr17125_ _$hd1708617118_))
                                (if (let ((__tmp17683
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1708717121_))))
                                      (declare (not safe))
                                      (equal? __tmp17683 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr17125_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1707817090_)))))
                            (let () (declare (not safe)) (_$E1707817090_)))))
                    (let () (declare (not safe)) (_$E1707817090_))))
              (let () (declare (not safe)) (_$E1707817090_))))))
    (define __compile-define-values%
      (lambda (_stx16965_)
        (let* ((_$e16967_ _stx16965_)
               (_$E1696916981_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16967_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16967_))
              (let* ((_$tgt1697016984_
                      (let () (declare (not safe)) (__AST-e _$e16967_)))
                     (_$hd1697116987_
                      (let () (declare (not safe)) (##car _$tgt1697016984_)))
                     (_$tl1697216990_
                      (let () (declare (not safe)) (##cdr _$tgt1697016984_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1697216990_))
                    (let* ((_$tgt1697316994_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1697216990_)))
                           (_$hd1697416997_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1697316994_)))
                           (_$tl1697517000_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1697316994_))))
                      (let ((_hd17004_ _$hd1697416997_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1697517000_))
                            (let* ((_$tgt1697617006_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1697517000_)))
                                   (_$hd1697717009_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1697617006_)))
                                   (_$tl1697817012_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1697617006_))))
                              (let ((_expr17016_ _$hd1697717009_))
                                (if (let ((__tmp17716
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1697817012_))))
                                      (declare (not safe))
                                      (equal? __tmp17716 '()))
                                    (let* ((_$e17018_ _hd17004_)
                                           (_$E1702017061_
                                            (lambda ()
                                              (let ((_$E1702117046_
                                                     (lambda ()
                                                       (let* ((_$E1702217033_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e17018_))))
                      (_ids17036_ _hd17004_)
                      (_len17038_ (length _ids17036_))
                      (_tmp17040_
                       (let ((__tmp17684 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp17684))))
                 (let ((__tmp17685
                        (let ((__tmp17686
                               (let ((__tmp17703
                                      (let ((__tmp17704
                                             (let ((__tmp17705
                                                    (let ((__tmp17706
                                                           (let ((__tmp17707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr17016_))))
                     (declare (not safe))
                     (cons __tmp17707 '()))))
              (declare (not safe))
              (cons _tmp17040_ __tmp17706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17705))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17704 _stx16965_)))
                                     (__tmp17687
                                      (let ((__tmp17699
                                             (let ((__tmp17700
                                                    (let ((__tmp17701
                                                           (let ((__tmp17702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len17038_ '()))))
                     (declare (not safe))
                     (cons _tmp17040_ __tmp17702))))
              (declare (not safe))
              (cons '__check-values __tmp17701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17700
                                                _stx16965_)))
                                            (__tmp17688
                                             (let ((__tmp17689
                                                    (let ((__tmp17691
                                                           (lambda (_id17043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k17044_)
                     (if (let () (declare (not safe)) (__AST-e _id17043_))
                         (let ((__tmp17692
                                (let ((__tmp17693
                                       (let ((__tmp17698
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id17043_)))
                                             (__tmp17694
                                              (let ((__tmp17695
                                                     (let ((__tmp17696
                                                            (let ((__tmp17697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k17044_ '()))))
                      (declare (not safe))
                      (cons _tmp17040_ __tmp17697))))
               (declare (not safe))
               (cons '##vector-ref __tmp17696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17695 '()))))
                                         (declare (not safe))
                                         (cons __tmp17698 __tmp17694))))
                                  (declare (not safe))
                                  (cons 'define __tmp17693))))
                           (declare (not safe))
                           (__SRC__% __tmp17692 _stx16965_))
                         '#f)))
                  (__tmp17690 (let () (declare (not safe)) (iota _len17038_))))
              (declare (not safe))
              (filter-map2 __tmp17691 _ids17036_ __tmp17690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17689))))
                                        (declare (not safe))
                                        (cons __tmp17699 __tmp17688))))
                                 (declare (not safe))
                                 (cons __tmp17703 __tmp17687))))
                          (declare (not safe))
                          (cons 'begin __tmp17686))))
                   (declare (not safe))
                   (__SRC__% __tmp17685 _stx16965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e17018_))
                                                    (let* ((_$tgt1702317049_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e17018_)))
                                                           (_$hd1702417052_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1702317049_)))
                                                           (_$tl1702517055_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1702317049_))))
                                                      (let ((_id17059_
                                                             _$hd1702417052_))
                                                        (if (let ((__tmp17713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1702517055_))))
                      (declare (not safe))
                      (equal? __tmp17713 '()))
                    (let ((__tmp17708
                           (let ((__tmp17709
                                  (let ((__tmp17712
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id17059_)))
                                        (__tmp17710
                                         (let ((__tmp17711
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr17016_))))
                                           (declare (not safe))
                                           (cons __tmp17711 '()))))
                                    (declare (not safe))
                                    (cons __tmp17712 __tmp17710))))
                             (declare (not safe))
                             (cons 'define __tmp17709))))
                      (declare (not safe))
                      (__SRC__% __tmp17708 _stx16965_))
                    (let () (declare (not safe)) (_$E1702117046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1702117046_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e17018_))
                                          (let* ((_$tgt1702617064_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e17018_)))
                                                 (_$hd1702717067_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1702617064_)))
                                                 (_$tl1702817070_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1702617064_))))
                                            (if (let ((__tmp17715
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1702717067_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17715 '#f))
                                                (if (let ((__tmp17714
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1702817070_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17714 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr17016_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1702017061_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1702017061_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1702017061_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1696916981_)))))
                            (let () (declare (not safe)) (_$E1696916981_)))))
                    (let () (declare (not safe)) (_$E1696916981_))))
              (let () (declare (not safe)) (_$E1696916981_))))))
    (define __compile-head-id
      (lambda (_e16963_)
        (let ((__tmp17717
               (if (let () (declare (not safe)) (__AST-e _e16963_))
                   _e16963_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp17717))))
    (define __compile-lambda-head
      (lambda (_hd16920_)
        (let _recur16922_ ((_rest16924_ _hd16920_))
          (let* ((_$e16926_ _rest16924_)
                 (_$E1692816946_
                  (lambda ()
                    (let ((_$E1692916943_
                           (lambda ()
                             (let* ((_$E1693016938_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e16926_))))
                                    (_tail16941_ _$e16926_))
                               (declare (not safe))
                               (__compile-head-id _tail16941_)))))
                      (if (let ((__tmp17718
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16926_))))
                            (declare (not safe))
                            (equal? __tmp17718 '()))
                          '()
                          (let () (declare (not safe)) (_$E1692916943_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16926_))
                (let* ((_$tgt1693116949_
                        (let () (declare (not safe)) (__AST-e _$e16926_)))
                       (_$hd1693216952_
                        (let () (declare (not safe)) (##car _$tgt1693116949_)))
                       (_$tl1693316955_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1693116949_))))
                  (let* ((_hd16959_ _$hd1693216952_)
                         (_rest16961_ _$tl1693316955_))
                    (let ((__tmp17720
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16959_)))
                          (__tmp17719
                           (let ()
                             (declare (not safe))
                             (_recur16922_ _rest16961_))))
                      (declare (not safe))
                      (cons __tmp17720 __tmp17719))))
                (let () (declare (not safe)) (_$E1692816946_)))))))
    (define __compile-lambda%
      (lambda (_stx16867_)
        (let* ((_$e16869_ _stx16867_)
               (_$E1687116883_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16869_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16869_))
              (let* ((_$tgt1687216886_
                      (let () (declare (not safe)) (__AST-e _$e16869_)))
                     (_$hd1687316889_
                      (let () (declare (not safe)) (##car _$tgt1687216886_)))
                     (_$tl1687416892_
                      (let () (declare (not safe)) (##cdr _$tgt1687216886_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1687416892_))
                    (let* ((_$tgt1687516896_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1687416892_)))
                           (_$hd1687616899_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1687516896_)))
                           (_$tl1687716902_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1687516896_))))
                      (let ((_hd16906_ _$hd1687616899_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1687716902_))
                            (let* ((_$tgt1687816908_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1687716902_)))
                                   (_$hd1687916911_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1687816908_)))
                                   (_$tl1688016914_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1687816908_))))
                              (let ((_body16918_ _$hd1687916911_))
                                (if (let ((__tmp17726
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1688016914_))))
                                      (declare (not safe))
                                      (equal? __tmp17726 '()))
                                    (let ((__tmp17721
                                           (let ((__tmp17722
                                                  (let ((__tmp17725
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16906_)))
                                                        (__tmp17723
                                                         (let ((__tmp17724
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16918_))))
                   (declare (not safe))
                   (cons __tmp17724 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17725
                                                          __tmp17723))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17722))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17721 _stx16867_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1687116883_)))))
                            (let () (declare (not safe)) (_$E1687116883_)))))
                    (let () (declare (not safe)) (_$E1687116883_))))
              (let () (declare (not safe)) (_$E1687116883_))))))
    (define __compile-case-lambda%
      (lambda (_stx16659_)
        (letrec ((_variadic?16661_
                  (lambda (_hd16832_)
                    (let* ((_$e16834_ _hd16832_)
                           (_$E1683616852_
                            (lambda ()
                              (let ((_$E1683716849_
                                     (lambda ()
                                       (let ((_$E1683816846_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e16834_)))))
                                         '#t))))
                                (if (let ((__tmp17727
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16834_))))
                                      (declare (not safe))
                                      (equal? __tmp17727 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1683716849_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16834_))
                          (let* ((_$tgt1683916855_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16834_)))
                                 (_$hd1684016858_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1683916855_)))
                                 (_$tl1684116861_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1683916855_))))
                            (let ((_rest16865_ _$tl1684116861_))
                              (declare (not safe))
                              (_variadic?16661_ _rest16865_)))
                          (let () (declare (not safe)) (_$E1683616852_))))))
                 (_arity16662_
                  (lambda (_hd16797_)
                    (let _lp16799_ ((_rest16801_ _hd16797_) (_k16802_ '0))
                      (let* ((_$e16804_ _rest16801_)
                             (_$E1680616817_
                              (lambda ()
                                (let ((_$E1680716814_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16804_)))))
                                  _k16802_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16804_))
                            (let* ((_$tgt1680816820_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16804_)))
                                   (_$hd1680916823_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1680816820_)))
                                   (_$tl1681016826_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1680816820_))))
                              (let* ((_rest16830_ _$tl1681016826_)
                                     (__tmp17728
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16802_ '1))))
                                (declare (not safe))
                                (_lp16799_ _rest16830_ __tmp17728)))
                            (let () (declare (not safe)) (_$E1680616817_)))))))
                 (_generate16663_
                  (lambda (_rest16724_ _args16725_ _len16726_)
                    (let* ((_$e16728_ _rest16724_)
                           (_$E1673016741_
                            (lambda ()
                              (let* ((_$E1673116738_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16728_))))
                                     (__tmp17729
                                      (let ((__tmp17730
                                             (let ((__tmp17731
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16725_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17731))))
                                        (declare (not safe))
                                        (cons 'error __tmp17730))))
                                (declare (not safe))
                                (__SRC__% __tmp17729 _stx16659_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16728_))
                          (let* ((_$tgt1673216744_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16728_)))
                                 (_$hd1673316747_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1673216744_)))
                                 (_$tl1673416750_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1673216744_))))
                            (let* ((_clause16754_ _$hd1673316747_)
                                   (_rest16756_ _$tl1673416750_)
                                   (_$e16758_ _clause16754_)
                                   (_$E1676016769_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16758_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16758_))
                                  (let* ((_$tgt1676116772_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16758_)))
                                         (_$hd1676216775_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1676116772_)))
                                         (_$tl1676316778_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1676116772_))))
                                    (let ((_hd16782_ _$hd1676216775_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1676316778_))
                                          (let* ((_$tgt1676416784_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1676316778_)))
                                                 (_$hd1676516787_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1676416784_)))
                                                 (_$tl1676616790_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1676416784_))))
                                            (if (let ((__tmp17746
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1676616790_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17746 '()))
                                                (let ((_clen16794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16662_
                                                          _hd16782_)))
                                                      (_cmp16795_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16661_
                                                              _hd16782_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17732
                                                         (let ((__tmp17733
                                                                (let ((__tmp17743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17744
                                      (let ((__tmp17745
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16794_ '()))))
                                        (declare (not safe))
                                        (cons _len16726_ __tmp17745))))
                                 (declare (not safe))
                                 (cons _cmp16795_ __tmp17744)))
                              (__tmp17734
                               (let ((__tmp17737
                                      (let ((__tmp17738
                                             (let ((__tmp17739
                                                    (let ((__tmp17741
                                                           (let ((__tmp17742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16754_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17742)))
                  (__tmp17740
                   (let () (declare (not safe)) (cons _args16725_ '()))))
              (declare (not safe))
              (cons __tmp17741 __tmp17740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17739))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17738 _stx16659_)))
                                     (__tmp17735
                                      (let ((__tmp17736
                                             (let ()
                                               (declare (not safe))
                                               (_generate16663_
                                                _rest16756_
                                                _args16725_
                                                _len16726_))))
                                        (declare (not safe))
                                        (cons __tmp17736 '()))))
                                 (declare (not safe))
                                 (cons __tmp17737 __tmp17735))))
                          (declare (not safe))
                          (cons __tmp17743 __tmp17734))))
                   (declare (not safe))
                   (cons 'if __tmp17733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17732
                                                     _stx16659_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1676016769_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1676016769_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1676016769_)))))
                          (let () (declare (not safe)) (_$E1673016741_)))))))
          (let* ((_$e16665_ _stx16659_)
                 (_$E1666716699_
                  (lambda ()
                    (let ((_$E1666816681_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16665_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16665_))
                          (let* ((_$tgt1666916684_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16665_)))
                                 (_$hd1667016687_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1666916684_)))
                                 (_$tl1667116690_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1666916684_))))
                            (let ((_clauses16694_ _$tl1667116690_))
                              (let ((_args16696_
                                     (let ((__tmp17747 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17747 _stx16659_)))
                                    (_len16697_
                                     (let ((__tmp17748 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp17748 _stx16659_))))
                                (let ((__tmp17749
                                       (let ((__tmp17750
                                              (let ((__tmp17751
                                                     (let ((__tmp17752
                                                            (let ((__tmp17753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17754
                                  (let ((__tmp17757
                                         (let ((__tmp17758
                                                (let ((__tmp17759
                                                       (let ((__tmp17760
                                                              (let ((__tmp17761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17762
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16696_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17762))))
                        (declare (not safe))
                        (__SRC__% __tmp17761 _stx16659_))))
                 (declare (not safe))
                 (cons __tmp17760 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16697_
                                                        __tmp17759))))
                                           (declare (not safe))
                                           (cons __tmp17758 '())))
                                        (__tmp17755
                                         (let ((__tmp17756
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16663_
                                                   _clauses16694_
                                                   _args16696_
                                                   _len16697_))))
                                           (declare (not safe))
                                           (cons __tmp17756 '()))))
                                    (declare (not safe))
                                    (cons __tmp17757 __tmp17755))))
                             (declare (not safe))
                             (cons 'let __tmp17754))))
                      (declare (not safe))
                      (__SRC__% __tmp17753 _stx16659_))))
               (declare (not safe))
               (cons __tmp17752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16696_
                                                      __tmp17751))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17750))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17749 _stx16659_)))))
                          (let () (declare (not safe)) (_$E1666816681_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16665_))
                (let* ((_$tgt1667216702_
                        (let () (declare (not safe)) (__AST-e _$e16665_)))
                       (_$hd1667316705_
                        (let () (declare (not safe)) (##car _$tgt1667216702_)))
                       (_$tl1667416708_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1667216702_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1667416708_))
                      (let* ((_$tgt1667516712_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1667416708_)))
                             (_$hd1667616715_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1667516712_)))
                             (_$tl1667716718_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1667516712_))))
                        (let ((_clause16722_ _$hd1667616715_))
                          (if (let ((__tmp17764
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1667716718_))))
                                (declare (not safe))
                                (equal? __tmp17764 '()))
                              (let ((__tmp17763
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16722_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17763))
                              (let () (declare (not safe)) (_$E1666716699_)))))
                      (let () (declare (not safe)) (_$E1666716699_))))
                (let () (declare (not safe)) (_$E1666716699_)))))))
    (define __compile-let-form
      (lambda (_stx16428_ _compile-simple16429_ _compile-values16430_)
        (letrec ((_simple-bind?16432_
                  (lambda (_hd16617_)
                    (let* ((_hd1661816628_ _hd16617_)
                           (_else1662116636_ (lambda () '#f)))
                      (let ((_K1662416649_ (lambda (_id16647_) '#t))
                            (_K1662316641_ (lambda () '#t)))
                        (let ((_try-match1662016644_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1661816628_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1662316641_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1662116636_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1661816628_))
                              (let ((_tl1662616654_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1661816628_)))
                                    (_hd1662516652_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1661816628_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1662616654_))
                                    (let ((_id16657_ _hd1662516652_))
                                      (declare (not safe))
                                      (_K1662416649_ _id16657_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1662016644_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1662016644_))))))))
                 (_car-e16433_
                  (lambda (_hd16615_)
                    (if (let () (declare (not safe)) (pair? _hd16615_))
                        (car _hd16615_)
                        _hd16615_))))
          (let* ((_$e16435_ _stx16428_)
                 (_$E1643716580_
                  (lambda ()
                    (let ((_$E1643816460_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16435_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16435_))
                          (let* ((_$tgt1643916463_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16435_)))
                                 (_$hd1644016466_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1643916463_)))
                                 (_$tl1644116469_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1643916463_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1644116469_))
                                (let* ((_$tgt1644216473_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1644116469_)))
                                       (_$hd1644316476_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1644216473_)))
                                       (_$tl1644416479_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1644216473_))))
                                  (let ((_hd16483_ _$hd1644316476_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1644416479_))
                                        (let* ((_$tgt1644516485_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1644416479_)))
                                               (_$hd1644616488_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1644516485_)))
                                               (_$tl1644716491_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1644516485_))))
                                          (let ((_body16495_ _$hd1644616488_))
                                            (if (let ((__tmp17767
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1644716491_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17767 '()))
                                                (let* ((_hd-ids16535_
                                                        (map (lambda (_bind16497_)
                                                               (let* ((_$e16499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind16497_)
                              (_$E1650116510_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16499_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16499_))
                             (let* ((_$tgt1650216513_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16499_)))
                                    (_$hd1650316516_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1650216513_)))
                                    (_$tl1650416519_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1650216513_))))
                               (let ((_ids16523_ _$hd1650316516_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1650416519_))
                                     (let* ((_$tgt1650516525_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1650416519_)))
                                            (_$hd1650616528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1650516525_)))
                                            (_$tl1650716531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1650516525_))))
                                       (if (let ((__tmp17765
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1650716531_))))
                                             (declare (not safe))
                                             (equal? __tmp17765 '()))
                                           _ids16523_
                                           (let ()
                                             (declare (not safe))
                                             (_$E1650116510_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1650116510_)))))
                             (let () (declare (not safe)) (_$E1650116510_)))))
                     _hd16483_))
               (_exprs16575_
                (map (lambda (_bind16537_)
                       (let* ((_$e16539_ _bind16537_)
                              (_$E1654116550_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _$e16539_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e16539_))
                             (let* ((_$tgt1654216553_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e16539_)))
                                    (_$hd1654316556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt1654216553_)))
                                    (_$tl1654416559_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt1654216553_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl1654416559_))
                                   (let* ((_$tgt1654516563_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1654416559_)))
                                          (_$hd1654616566_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt1654516563_)))
                                          (_$tl1654716569_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt1654516563_))))
                                     (let ((_expr16573_ _$hd1654616566_))
                                       (if (let ((__tmp17766
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1654716569_))))
                                             (declare (not safe))
                                             (equal? __tmp17766 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr16573_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E1654116550_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E1654116550_))))
                             (let () (declare (not safe)) (_$E1654116550_)))))
                     _hd16483_))
               (_body16577_
                (let () (declare (not safe)) (__compile _body16495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?16432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids16535_))
              (_compile-simple16429_
               (map _car-e16433_ _hd-ids16535_)
               _exprs16575_
               _body16577_)
              (_compile-values16430_ _hd-ids16535_ _exprs16575_ _body16577_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1643816460_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1643816460_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1643816460_))))
                          (let () (declare (not safe)) (_$E1643816460_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16435_))
                (let* ((_$tgt1644816583_
                        (let () (declare (not safe)) (__AST-e _$e16435_)))
                       (_$hd1644916586_
                        (let () (declare (not safe)) (##car _$tgt1644816583_)))
                       (_$tl1645016589_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1644816583_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1645016589_))
                      (let* ((_$tgt1645116593_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1645016589_)))
                             (_$hd1645216596_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1645116593_)))
                             (_$tl1645316599_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1645116593_))))
                        (if (let ((__tmp17769
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1645216596_))))
                              (declare (not safe))
                              (equal? __tmp17769 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1645316599_))
                                (let* ((_$tgt1645416603_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1645316599_)))
                                       (_$hd1645516606_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1645416603_)))
                                       (_$tl1645616609_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1645416603_))))
                                  (let ((_body16613_ _$hd1645516606_))
                                    (if (let ((__tmp17768
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1645616609_))))
                                          (declare (not safe))
                                          (equal? __tmp17768 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body16613_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1643716580_)))))
                                (let () (declare (not safe)) (_$E1643716580_)))
                            (let () (declare (not safe)) (_$E1643716580_))))
                      (let () (declare (not safe)) (_$E1643716580_))))
                (let () (declare (not safe)) (_$E1643716580_)))))))
    (define __compile-let-values%
      (lambda (_stx16243_)
        (letrec ((_compile-simple16245_
                  (lambda (_hd-ids16424_ _exprs16425_ _body16426_)
                    (let ((__tmp17770
                           (let ((__tmp17771
                                  (let ((__tmp17773
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16424_)
                                              _exprs16425_))
                                        (__tmp17772
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16426_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17773 __tmp17772))))
                             (declare (not safe))
                             (cons 'let __tmp17771))))
                      (declare (not safe))
                      (__SRC__% __tmp17770 _stx16243_))))
                 (_compile-values16246_
                  (lambda (_hd-ids16342_ _exprs16343_ _body16344_)
                    (let _lp16346_ ((_rest16348_ _hd-ids16342_)
                                    (_exprs16349_ _exprs16343_)
                                    (_bind16350_ '())
                                    (_post16351_ '()))
                      (let* ((_rest1635216366_ _rest16348_)
                             (_else1635516374_
                              (lambda ()
                                (let ((__tmp17774
                                       (let ((__tmp17775
                                              (let ((__tmp17778
                                                     (reverse _bind16350_))
                                                    (__tmp17776
                                                     (let ((__tmp17777
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post16247_
                                                               _post16351_
                                                               _body16344_))))
                                                       (declare (not safe))
                                                       (cons __tmp17777 '()))))
                                                (declare (not safe))
                                                (cons __tmp17778 __tmp17776))))
                                         (declare (not safe))
                                         (cons 'let __tmp17775))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17774 _stx16243_)))))
                        (let ((_K1636016407_
                               (lambda (_rest16404_ _id16405_)
                                 (let ((__tmp17784 (cdr _exprs16349_))
                                       (__tmp17779
                                        (let ((__tmp17780
                                               (let ((__tmp17783
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16405_)))
                                                     (__tmp17781
                                                      (let ((__tmp17782
                                                             (car _exprs16349_)))
                                                        (declare (not safe))
                                                        (cons __tmp17782
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17783
                                                       __tmp17781))))
                                          (declare (not safe))
                                          (cons __tmp17780 _bind16350_))))
                                   (declare (not safe))
                                   (_lp16346_
                                    _rest16404_
                                    __tmp17784
                                    __tmp17779
                                    _post16351_))))
                              (_K1635716389_
                               (lambda (_rest16378_ _hd16379_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16379_))
                                     (let ((__tmp17805 (cdr _exprs16349_))
                                           (__tmp17798
                                            (let ((__tmp17799
                                                   (let ((__tmp17804
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16379_)))
                                                         (__tmp17800
                                                          (let ((__tmp17801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17802
                                (let ((__tmp17803 (car _exprs16349_)))
                                  (declare (not safe))
                                  (cons __tmp17803 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17802))))
                    (declare (not safe))
                    (cons __tmp17801 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17804
                                                           __tmp17800))))
                                              (declare (not safe))
                                              (cons __tmp17799 _bind16350_))))
                                       (declare (not safe))
                                       (_lp16346_
                                        _rest16378_
                                        __tmp17805
                                        __tmp17798
                                        _post16351_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16379_))
                                         (let* ((_len16381_ (length _hd16379_))
                                                (_tmp16383_
                                                 (let ((__tmp17785 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17785))))
                                           (let ((__tmp17797
                                                  (cdr _exprs16349_))
                                                 (__tmp17793
                                                  (let ((__tmp17794
                                                         (let ((__tmp17795
                                                                (let ((__tmp17796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16349_)))
                          (declare (not safe))
                          (cons __tmp17796 '()))))
                   (declare (not safe))
                   (cons _tmp16383_ __tmp17795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17794
                                                          _bind16350_)))
                                                 (__tmp17786
                                                  (let ((__tmp17787
                                                         (let ((__tmp17788
                                                                (let ((__tmp17789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17791
                                      (lambda (_id16386_ _k16387_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16386_))
                                            (let ((__tmp17792
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16386_))))
                                              (declare (not safe))
                                              (cons __tmp17792 _k16387_))
                                            '#f)))
                                     (__tmp17790
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16381_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17791
                                  _hd16379_
                                  __tmp17790))))
                          (declare (not safe))
                          (cons _len16381_ __tmp17789))))
                   (declare (not safe))
                   (cons _tmp16383_ __tmp17788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17787
                                                          _post16351_))))
                                             (declare (not safe))
                                             (_lp16346_
                                              _rest16378_
                                              __tmp17797
                                              __tmp17793
                                              __tmp17786)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16243_
                                            _hd16379_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1635216366_))
                              (let ((_tl1636216412_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1635216366_)))
                                    (_hd1636116410_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1635216366_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1636116410_))
                                    (let ((_tl1636416417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1636116410_)))
                                          (_hd1636316415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1636116410_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1636416417_))
                                          (let ((_id16420_ _hd1636316415_)
                                                (_rest16422_ _tl1636216412_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1636016407_
                                               _rest16422_
                                               _id16420_)))
                                          (let ((_hd16397_ _hd1636116410_)
                                                (_rest16399_ _tl1636216412_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1635716389_
                                               _rest16399_
                                               _hd16397_)))))
                                    (let ((_hd16397_ _hd1636116410_)
                                          (_rest16399_ _tl1636216412_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1635716389_
                                         _rest16399_
                                         _hd16397_)))))
                              (let ()
                                (declare (not safe))
                                (_else1635516374_))))))))
                 (_compile-post16247_
                  (lambda (_post16249_ _body16250_)
                    (let _lp16252_ ((_rest16254_ _post16249_)
                                    (_check16255_ '())
                                    (_bind16256_ '()))
                      (let* ((_rest1625716269_ _rest16254_)
                             (_else1625916277_
                              (lambda ()
                                (let ((__tmp17806
                                       (let ((__tmp17807
                                              (let ((__tmp17808
                                                     (let ((__tmp17809
                                                            (let ((__tmp17810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17811
                                  (let ((__tmp17812
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16250_ '()))))
                                    (declare (not safe))
                                    (cons _bind16256_ __tmp17812))))
                             (declare (not safe))
                             (cons 'let __tmp17811))))
                      (declare (not safe))
                      (__SRC__% __tmp17810 _stx16243_))))
               (declare (not safe))
               (cons __tmp17809 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17808
                                                        _check16255_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17807))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17806 _stx16243_))))
                             (_K1626116316_
                              (lambda (_rest16280_
                                       _init16281_
                                       _len16282_
                                       _tmp16283_)
                                (let ((__tmp17820
                                       (let ((__tmp17821
                                              (let ((__tmp17822
                                                     (let ((__tmp17823
                                                            (let ((__tmp17824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16282_ '()))))
                      (declare (not safe))
                      (cons _tmp16283_ __tmp17824))))
               (declare (not safe))
               (cons '__check-values __tmp17823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17822
                                                 _stx16243_))))
                                         (declare (not safe))
                                         (cons __tmp17821 _check16255_)))
                                      (__tmp17813
                                       (let ((__tmp17814
                                              (lambda (_hd16285_ _r16286_)
                                                (let* ((_hd1628716294_
                                                        _hd16285_)
                                                       (_E1628916298_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1628716294_)))
               (_K1629016304_
                (lambda (_k16301_ _id16302_)
                  (let ((__tmp17815
                         (let ((__tmp17816
                                (let ((__tmp17817
                                       (let ((__tmp17818
                                              (let ((__tmp17819
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k16301_ '()))))
                                                (declare (not safe))
                                                (cons _tmp16283_ __tmp17819))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17818))))
                                  (declare (not safe))
                                  (cons __tmp17817 '()))))
                           (declare (not safe))
                           (cons _id16302_ __tmp17816))))
                    (declare (not safe))
                    (cons __tmp17815 _r16286_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1628716294_))
                                                      (let ((_hd1629116307_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1628716294_)))
                    (_tl1629216309_
                     (let () (declare (not safe)) (##cdr _hd1628716294_))))
                (let* ((_id16312_ _hd1629116307_) (_k16314_ _tl1629216309_))
                  (declare (not safe))
                  (_K1629016304_ _k16314_ _id16312_)))
              (let () (declare (not safe)) (_E1628916298_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17814
                                                 _bind16256_
                                                 _init16281_))))
                                  (declare (not safe))
                                  (_lp16252_
                                   _rest16280_
                                   __tmp17820
                                   __tmp17813)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1625716269_))
                            (let ((_hd1626216319_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1625716269_)))
                                  (_tl1626316321_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1625716269_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1626216319_))
                                  (let ((_hd1626416324_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1626216319_)))
                                        (_tl1626516326_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1626216319_))))
                                    (let ((_tmp16329_ _hd1626416324_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1626516326_))
                                          (let ((_hd1626616331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1626516326_)))
                                                (_tl1626716333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1626516326_))))
                                            (let* ((_len16336_ _hd1626616331_)
                                                   (_init16338_ _tl1626716333_)
                                                   (_rest16340_
                                                    _tl1626316321_))
                                              (declare (not safe))
                                              (_K1626116316_
                                               _rest16340_
                                               _init16338_
                                               _len16336_
                                               _tmp16329_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1625916277_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1625916277_))))
                            (let ()
                              (declare (not safe))
                              (_else1625916277_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16243_
             _compile-simple16245_
             _compile-values16246_)))))
    (define __compile-letrec-values%
      (lambda (_stx16043_)
        (letrec ((_compile-simple16045_
                  (lambda (_hd-ids16239_ _exprs16240_ _body16241_)
                    (let ((__tmp17825
                           (let ((__tmp17826
                                  (let ((__tmp17828
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16239_)
                                              _exprs16240_))
                                        (__tmp17827
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16241_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17828 __tmp17827))))
                             (declare (not safe))
                             (cons 'letrec __tmp17826))))
                      (declare (not safe))
                      (__SRC__% __tmp17825 _stx16043_))))
                 (_compile-values16046_
                  (lambda (_hd-ids16153_ _exprs16154_ _body16155_)
                    (let _lp16157_ ((_rest16159_ _hd-ids16153_)
                                    (_exprs16160_ _exprs16154_)
                                    (_pre16161_ '())
                                    (_bind16162_ '())
                                    (_post16163_ '()))
                      (let* ((_rest1616416178_ _rest16159_)
                             (_else1616716186_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner16047_
                                   _pre16161_
                                   _bind16162_
                                   _post16163_
                                   _body16155_)))))
                        (let ((_K1617216222_
                               (lambda (_rest16219_ _id16220_)
                                 (let ((__tmp17834 (cdr _exprs16160_))
                                       (__tmp17829
                                        (let ((__tmp17830
                                               (let ((__tmp17833
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id16220_)))
                                                     (__tmp17831
                                                      (let ((__tmp17832
                                                             (car _exprs16160_)))
                                                        (declare (not safe))
                                                        (cons __tmp17832
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp17833
                                                       __tmp17831))))
                                          (declare (not safe))
                                          (cons __tmp17830 _bind16162_))))
                                   (declare (not safe))
                                   (_lp16157_
                                    _rest16219_
                                    __tmp17834
                                    _pre16161_
                                    __tmp17829
                                    _post16163_))))
                              (_K1616916204_
                               (lambda (_rest16190_ _hd16191_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16191_))
                                     (let ((__tmp17862 (cdr _exprs16160_))
                                           (__tmp17855
                                            (let ((__tmp17856
                                                   (let ((__tmp17861
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd16191_)))
                                                         (__tmp17857
                                                          (let ((__tmp17858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17859
                                (let ((__tmp17860 (car _exprs16160_)))
                                  (declare (not safe))
                                  (cons __tmp17860 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17859))))
                    (declare (not safe))
                    (cons __tmp17858 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17861
                                                           __tmp17857))))
                                              (declare (not safe))
                                              (cons __tmp17856 _bind16162_))))
                                       (declare (not safe))
                                       (_lp16157_
                                        _rest16190_
                                        __tmp17862
                                        _pre16161_
                                        __tmp17855
                                        _post16163_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd16191_))
                                         (let* ((_len16193_ (length _hd16191_))
                                                (_tmp16195_
                                                 (let ((__tmp17835 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17835))))
                                           (let ((__tmp17854
                                                  (cdr _exprs16160_))
                                                 (__tmp17847
                                                  (let ((__tmp17848
                                                         (lambda (_id16198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r16199_)
                   (if (let () (declare (not safe)) (__AST-e _id16198_))
                       (let ((__tmp17849
                              (let ((__tmp17853
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id16198_)))
                                    (__tmp17850
                                     (let ((__tmp17851
                                            (let ((__tmp17852
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17852))))
                                       (declare (not safe))
                                       (cons __tmp17851 '()))))
                                (declare (not safe))
                                (cons __tmp17853 __tmp17850))))
                         (declare (not safe))
                         (cons __tmp17849 _r16199_))
                       _r16199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17848
                                                            _pre16161_
                                                            _hd16191_)))
                                                 (__tmp17843
                                                  (let ((__tmp17844
                                                         (let ((__tmp17845
                                                                (let ((__tmp17846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs16160_)))
                          (declare (not safe))
                          (cons __tmp17846 '()))))
                   (declare (not safe))
                   (cons _tmp16195_ __tmp17845))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17844
                                                          _bind16162_)))
                                                 (__tmp17836
                                                  (let ((__tmp17837
                                                         (let ((__tmp17838
                                                                (let ((__tmp17839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17841
                                      (lambda (_id16201_ _k16202_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id16201_))
                                            (let ((__tmp17842
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id16201_))))
                                              (declare (not safe))
                                              (cons __tmp17842 _k16202_))
                                            '#f)))
                                     (__tmp17840
                                      (let ()
                                        (declare (not safe))
                                        (iota _len16193_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17841
                                  _hd16191_
                                  __tmp17840))))
                          (declare (not safe))
                          (cons _len16193_ __tmp17839))))
                   (declare (not safe))
                   (cons _tmp16195_ __tmp17838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17837
                                                          _post16163_))))
                                             (declare (not safe))
                                             (_lp16157_
                                              _rest16190_
                                              __tmp17854
                                              __tmp17847
                                              __tmp17843
                                              __tmp17836)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx16043_
                                            _hd16191_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1616416178_))
                              (let ((_tl1617416227_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1616416178_)))
                                    (_hd1617316225_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1616416178_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1617316225_))
                                    (let ((_tl1617616232_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1617316225_)))
                                          (_hd1617516230_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1617316225_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1617616232_))
                                          (let ((_id16235_ _hd1617516230_)
                                                (_rest16237_ _tl1617416227_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1617216222_
                                               _rest16237_
                                               _id16235_)))
                                          (let ((_hd16212_ _hd1617316225_)
                                                (_rest16214_ _tl1617416227_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1616916204_
                                               _rest16214_
                                               _hd16212_)))))
                                    (let ((_hd16212_ _hd1617316225_)
                                          (_rest16214_ _tl1617416227_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1616916204_
                                         _rest16214_
                                         _hd16212_)))))
                              (let ()
                                (declare (not safe))
                                (_else1616716186_))))))))
                 (_compile-inner16047_
                  (lambda (_pre16148_ _bind16149_ _post16150_ _body16151_)
                    (if (let () (declare (not safe)) (null? _pre16148_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind16048_
                           _bind16149_
                           _post16150_
                           _body16151_))
                        (let ((__tmp17863
                               (let ((__tmp17864
                                      (let ((__tmp17867 (reverse _pre16148_))
                                            (__tmp17865
                                             (let ((__tmp17866
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind16048_
                                                       _bind16149_
                                                       _post16150_
                                                       _body16151_))))
                                               (declare (not safe))
                                               (cons __tmp17866 '()))))
                                        (declare (not safe))
                                        (cons __tmp17867 __tmp17865))))
                                 (declare (not safe))
                                 (cons 'let __tmp17864))))
                          (declare (not safe))
                          (__SRC__% __tmp17863 _stx16043_)))))
                 (_compile-bind16048_
                  (lambda (_bind16144_ _post16145_ _body16146_)
                    (let ((__tmp17868
                           (let ((__tmp17869
                                  (let ((__tmp17872 (reverse _bind16144_))
                                        (__tmp17870
                                         (let ((__tmp17871
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post16049_
                                                   _post16145_
                                                   _body16146_))))
                                           (declare (not safe))
                                           (cons __tmp17871 '()))))
                                    (declare (not safe))
                                    (cons __tmp17872 __tmp17870))))
                             (declare (not safe))
                             (cons 'letrec __tmp17869))))
                      (declare (not safe))
                      (__SRC__% __tmp17868 _stx16043_))))
                 (_compile-post16049_
                  (lambda (_post16051_ _body16052_)
                    (let _lp16054_ ((_rest16056_ _post16051_)
                                    (_check16057_ '())
                                    (_bind16058_ '()))
                      (let* ((_rest1605916071_ _rest16056_)
                             (_else1606116079_
                              (lambda ()
                                (let ((__tmp17873
                                       (let ((__tmp17874
                                              (let ((__tmp17875
                                                     (let ((__tmp17876
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body16052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17876 _bind16058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17875
                                                        _check16057_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17874))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17873 _stx16043_))))
                             (_K1606316118_
                              (lambda (_rest16082_
                                       _init16083_
                                       _len16084_
                                       _tmp16085_)
                                (let ((__tmp17885
                                       (let ((__tmp17886
                                              (let ((__tmp17887
                                                     (let ((__tmp17888
                                                            (let ((__tmp17889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len16084_ '()))))
                      (declare (not safe))
                      (cons _tmp16085_ __tmp17889))))
               (declare (not safe))
               (cons '__check-values __tmp17888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17887
                                                 _stx16043_))))
                                         (declare (not safe))
                                         (cons __tmp17886 _check16057_)))
                                      (__tmp17877
                                       (let ((__tmp17878
                                              (lambda (_hd16087_ _r16088_)
                                                (let* ((_hd1608916096_
                                                        _hd16087_)
                                                       (_E1609116100_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1608916096_)))
               (_K1609216106_
                (lambda (_k16103_ _id16104_)
                  (let ((__tmp17879
                         (let ((__tmp17880
                                (let ((__tmp17881
                                       (let ((__tmp17882
                                              (let ((__tmp17883
                                                     (let ((__tmp17884
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k16103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp16085_ __tmp17884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17883))))
                                         (declare (not safe))
                                         (cons __tmp17882 '()))))
                                  (declare (not safe))
                                  (cons _id16104_ __tmp17881))))
                           (declare (not safe))
                           (cons 'set! __tmp17880))))
                    (declare (not safe))
                    (cons __tmp17879 _r16088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1608916096_))
                                                      (let ((_hd1609316109_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1608916096_)))
                    (_tl1609416111_
                     (let () (declare (not safe)) (##cdr _hd1608916096_))))
                (let* ((_id16114_ _hd1609316109_) (_k16116_ _tl1609416111_))
                  (declare (not safe))
                  (_K1609216106_ _k16116_ _id16114_)))
              (let () (declare (not safe)) (_E1609116100_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17878
                                                 _bind16058_
                                                 _init16083_))))
                                  (declare (not safe))
                                  (_lp16054_
                                   _rest16082_
                                   __tmp17885
                                   __tmp17877)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1605916071_))
                            (let ((_hd1606416121_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1605916071_)))
                                  (_tl1606516123_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1605916071_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1606416121_))
                                  (let ((_hd1606616126_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1606416121_)))
                                        (_tl1606716128_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1606416121_))))
                                    (let ((_tmp16131_ _hd1606616126_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1606716128_))
                                          (let ((_hd1606816133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1606716128_)))
                                                (_tl1606916135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1606716128_))))
                                            (let* ((_len16138_ _hd1606816133_)
                                                   (_init16140_ _tl1606916135_)
                                                   (_rest16142_
                                                    _tl1606516123_))
                                              (declare (not safe))
                                              (_K1606316118_
                                               _rest16142_
                                               _init16140_
                                               _len16138_
                                               _tmp16131_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1606116079_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1606116079_))))
                            (let ()
                              (declare (not safe))
                              (_else1606116079_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx16043_
             _compile-simple16045_
             _compile-values16046_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15798_)
        (letrec ((_compile-simple15800_
                  (lambda (_hd-ids16039_ _exprs16040_ _body16041_)
                    (let ((__tmp17890
                           (let ((__tmp17891
                                  (let ((__tmp17893
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids16039_)
                                              _exprs16040_))
                                        (__tmp17892
                                         (let ()
                                           (declare (not safe))
                                           (cons _body16041_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17893 __tmp17892))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17891))))
                      (declare (not safe))
                      (__SRC__% __tmp17890 _stx15798_))))
                 (_compile-values15801_
                  (lambda (_hd-ids15950_ _exprs15951_ _body15952_)
                    (let _lp15954_ ((_rest15956_ _hd-ids15950_)
                                    (_exprs15957_ _exprs15951_)
                                    (_bind15958_ '())
                                    (_post15959_ '()))
                      (let* ((_rest1596015974_ _rest15956_)
                             (_else1596315982_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15802_
                                   _bind15958_
                                   _post15959_
                                   _body15952_)))))
                        (let ((_K1596816022_
                               (lambda (_rest16017_ _hd16018_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd16018_))
                                     (let ((_id16020_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd16018_))))
                                       (let ((__tmp17908 (cdr _exprs15957_))
                                             (__tmp17903
                                              (let ((__tmp17904
                                                     (let ((__tmp17905
                                                            (let ((__tmp17906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17907
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17907))))
                      (declare (not safe))
                      (cons __tmp17906 '()))))
               (declare (not safe))
               (cons _id16020_ __tmp17905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17904 _bind15958_)))
                                             (__tmp17899
                                              (let ((__tmp17900
                                                     (let ((__tmp17901
                                                            (let ((__tmp17902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs15957_)))
                      (declare (not safe))
                      (cons __tmp17902 '()))))
               (declare (not safe))
               (cons _id16020_ __tmp17901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17900
                                                      _post15959_))))
                                         (declare (not safe))
                                         (_lp15954_
                                          _rest16017_
                                          __tmp17908
                                          __tmp17903
                                          __tmp17899)))
                                     (let ((__tmp17898 (cdr _exprs15957_))
                                           (__tmp17894
                                            (let ((__tmp17895
                                                   (let ((__tmp17896
                                                          (let ((__tmp17897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs15957_)))
                    (declare (not safe))
                    (cons __tmp17897 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17896))))
                                              (declare (not safe))
                                              (cons __tmp17895 _post15959_))))
                                       (declare (not safe))
                                       (_lp15954_
                                        _rest16017_
                                        __tmp17898
                                        _bind15958_
                                        __tmp17894)))))
                              (_K1596516002_
                               (lambda (_rest15986_ _hd15987_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15987_))
                                     (let ((_id15989_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15987_))))
                                       (let ((__tmp17944 (cdr _exprs15957_))
                                             (__tmp17939
                                              (let ((__tmp17940
                                                     (let ((__tmp17941
                                                            (let ((__tmp17942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17943
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17943))))
                      (declare (not safe))
                      (cons __tmp17942 '()))))
               (declare (not safe))
               (cons _id15989_ __tmp17941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17940 _bind15958_)))
                                             (__tmp17933
                                              (let ((__tmp17934
                                                     (let ((__tmp17935
                                                            (let ((__tmp17936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17937
                                  (let ((__tmp17938 (car _exprs15957_)))
                                    (declare (not safe))
                                    (cons __tmp17938 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17937))))
                      (declare (not safe))
                      (cons __tmp17936 '()))))
               (declare (not safe))
               (cons _id15989_ __tmp17935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17934
                                                      _post15959_))))
                                         (declare (not safe))
                                         (_lp15954_
                                          _rest15986_
                                          __tmp17944
                                          __tmp17939
                                          __tmp17933)))
                                     (if (let ((__tmp17932
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15987_))))
                                           (declare (not safe))
                                           (not __tmp17932))
                                         (let ((__tmp17931 (cdr _exprs15957_))
                                               (__tmp17927
                                                (let ((__tmp17928
                                                       (let ((__tmp17929
                                                              (let ((__tmp17930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs15957_)))
                        (declare (not safe))
                        (cons __tmp17930 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17928
                                                        _post15959_))))
                                           (declare (not safe))
                                           (_lp15954_
                                            _rest15986_
                                            __tmp17931
                                            _bind15958_
                                            __tmp17927))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15987_))
                                             (let* ((_len15991_
                                                     (length _hd15987_))
                                                    (_tmp15993_
                                                     (let ((__tmp17909
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17909))))
                                               (let ((__tmp17926
                                                      (cdr _exprs15957_))
                                                     (__tmp17919
                                                      (let ((__tmp17920
                                                             (lambda (_id15996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15997_)
                       (if (let () (declare (not safe)) (__AST-e _id15996_))
                           (let ((__tmp17921
                                  (let ((__tmp17925
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15996_)))
                                        (__tmp17922
                                         (let ((__tmp17923
                                                (let ((__tmp17924
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17924))))
                                           (declare (not safe))
                                           (cons __tmp17923 '()))))
                                    (declare (not safe))
                                    (cons __tmp17925 __tmp17922))))
                             (declare (not safe))
                             (cons __tmp17921 _r15997_))
                           _r15997_))))
                (declare (not safe))
                (foldl1 __tmp17920 _bind15958_ _hd15987_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17910
                                                      (let ((__tmp17911
                                                             (let ((__tmp17912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17918 (car _exprs15957_))
                                  (__tmp17913
                                   (let ((__tmp17914
                                          (let ((__tmp17916
                                                 (lambda (_id15999_ _k16000_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15999_))
                                                       (let ((__tmp17917
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15999_))))
                 (declare (not safe))
                 (cons __tmp17917 _k16000_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17915
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15991_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17916
                                             _hd15987_
                                             __tmp17915))))
                                     (declare (not safe))
                                     (cons _len15991_ __tmp17914))))
                              (declare (not safe))
                              (cons __tmp17918 __tmp17913))))
                       (declare (not safe))
                       (cons _tmp15993_ __tmp17912))))
                (declare (not safe))
                (cons __tmp17911 _post15959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15954_
                                                  _rest15986_
                                                  __tmp17926
                                                  __tmp17919
                                                  __tmp17910)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15798_
                                                _hd15987_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1596015974_))
                              (let ((_tl1597016027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1596015974_)))
                                    (_hd1596916025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1596015974_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1596916025_))
                                    (let ((_tl1597216032_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1596916025_)))
                                          (_hd1597116030_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1596916025_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1597216032_))
                                          (let ((_hd16035_ _hd1597116030_)
                                                (_rest16037_ _tl1597016027_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1596816022_
                                               _rest16037_
                                               _hd16035_)))
                                          (let ((_hd16010_ _hd1596916025_)
                                                (_rest16012_ _tl1597016027_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1596516002_
                                               _rest16012_
                                               _hd16010_)))))
                                    (let ((_hd16010_ _hd1596916025_)
                                          (_rest16012_ _tl1597016027_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1596516002_
                                         _rest16012_
                                         _hd16010_)))))
                              (let ()
                                (declare (not safe))
                                (_else1596315982_))))))))
                 (_compile-bind15802_
                  (lambda (_bind15946_ _post15947_ _body15948_)
                    (let ((__tmp17945
                           (let ((__tmp17946
                                  (let ((__tmp17949 (reverse _bind15946_))
                                        (__tmp17947
                                         (let ((__tmp17948
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15803_
                                                   _post15947_
                                                   _body15948_))))
                                           (declare (not safe))
                                           (cons __tmp17948 '()))))
                                    (declare (not safe))
                                    (cons __tmp17949 __tmp17947))))
                             (declare (not safe))
                             (cons 'let __tmp17946))))
                      (declare (not safe))
                      (__SRC__% __tmp17945 _stx15798_))))
                 (_compile-post15803_
                  (lambda (_post15805_ _body15806_)
                    (let ((__tmp17950
                           (let ((__tmp17951
                                  (let ((__tmp17952
                                         (let ((__tmp17954
                                                (lambda (_hd15808_ _r15809_)
                                                  (let* ((_hd1581015833_
                                                          _hd15808_)
                                                         (_E1581415837_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1581015833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1582715931_
                                                           (lambda (_expr15929_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15929_ _r15809_))))
                  (_K1582215909_
                   (lambda (_expr15906_ _id15907_)
                     (let ((__tmp17955
                            (let ((__tmp17956
                                   (let ((__tmp17957
                                          (let ((__tmp17958
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15906_ '()))))
                                            (declare (not safe))
                                            (cons _id15907_ __tmp17958))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17957))))
                              (declare (not safe))
                              (__SRC__% __tmp17956 _stx15798_))))
                       (declare (not safe))
                       (cons __tmp17955 _r15809_))))
                  (_K1581515876_
                   (lambda (_init15841_ _len15842_ _expr15843_ _tmp15844_)
                     (let ((__tmp17959
                            (let ((__tmp17960
                                   (let ((__tmp17961
                                          (let ((__tmp17975
                                                 (let ((__tmp17976
                                                        (let ((__tmp17977
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15843_ '()))))
                  (declare (not safe))
                  (cons _tmp15844_ __tmp17977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17976 '())))
                                                (__tmp17962
                                                 (let ((__tmp17971
                                                        (let ((__tmp17972
                                                               (let ((__tmp17973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17974
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15842_ '()))))
                                (declare (not safe))
                                (cons _tmp15844_ __tmp17974))))
                         (declare (not safe))
                         (cons '__check-values __tmp17973))))
                  (declare (not safe))
                  (__SRC__% __tmp17972 _stx15798_)))
               (__tmp17963
                (let ((__tmp17964
                       (map (lambda (_hd15846_)
                              (let* ((_hd1584715854_ _hd15846_)
                                     (_E1584915858_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd1584715854_)))
                                     (_K1585015864_
                                      (lambda (_k15861_ _id15862_)
                                        (let ((__tmp17965
                                               (let ((__tmp17966
                                                      (let ((__tmp17967
                                                             (let ((__tmp17968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17969
                                   (let ((__tmp17970
                                          (let ()
                                            (declare (not safe))
                                            (cons _k15861_ '()))))
                                     (declare (not safe))
                                     (cons _tmp15844_ __tmp17970))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp17969))))
                       (declare (not safe))
                       (cons __tmp17968 '()))))
                (declare (not safe))
                (cons _id15862_ __tmp17967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp17966))))
                                          (declare (not safe))
                                          (__SRC__% __tmp17965 _stx15798_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1584715854_))
                                    (let ((_hd1585115867_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1584715854_)))
                                          (_tl1585215869_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1584715854_))))
                                      (let* ((_id15872_ _hd1585115867_)
                                             (_k15874_ _tl1585215869_))
                                        (declare (not safe))
                                        (_K1585015864_ _k15874_ _id15872_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E1584915858_)))))
                            _init15841_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17964))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17971
                                                         __tmp17963))))
                                            (declare (not safe))
                                            (cons __tmp17975 __tmp17962))))
                                     (declare (not safe))
                                     (cons 'let __tmp17961))))
                              (declare (not safe))
                              (__SRC__% __tmp17960 _stx15798_))))
                       (declare (not safe))
                       (cons __tmp17959 _r15809_)))))
              (if (let () (declare (not safe)) (##pair? _hd1581015833_))
                  (let ((_tl1582915936_
                         (let () (declare (not safe)) (##cdr _hd1581015833_)))
                        (_hd1582815934_
                         (let () (declare (not safe)) (##car _hd1581015833_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1582815934_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1582915936_))
                            (let ((_tl1583115941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1582915936_)))
                                  (_hd1583015939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1582915936_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1583115941_))
                                  (let ((_expr15944_ _hd1583015939_))
                                    (declare (not safe))
                                    (_K1582715931_ _expr15944_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1583115941_))
                                      (let ((_tl1582115895_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1583115941_)))
                                            (_hd1582015893_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1583115941_))))
                                        (let ((_tmp15884_ _hd1582815934_)
                                              (_expr15891_ _hd1583015939_)
                                              (_len15898_ _hd1582015893_)
                                              (_init15900_ _tl1582115895_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1581515876_
                                             _init15900_
                                             _len15898_
                                             _expr15891_
                                             _tmp15884_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1581415837_)))))
                            (let () (declare (not safe)) (_E1581415837_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1582915936_))
                            (let ((_tl1582615921_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1582915936_)))
                                  (_hd1582515919_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1582915936_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1582615921_))
                                  (let ((_id15917_ _hd1582815934_)
                                        (_expr15924_ _hd1582515919_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1582215909_ _expr15924_ _id15917_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1582615921_))
                                      (let ((_tl1582115895_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1582615921_)))
                                            (_hd1582015893_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1582615921_))))
                                        (let ((_tmp15884_ _hd1582815934_)
                                              (_expr15891_ _hd1582515919_)
                                              (_len15898_ _hd1582015893_)
                                              (_init15900_ _tl1582115895_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1581515876_
                                             _init15900_
                                             _len15898_
                                             _expr15891_
                                             _tmp15884_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1581415837_)))))
                            (let () (declare (not safe)) (_E1581415837_)))))
                  (let () (declare (not safe)) (_E1581415837_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17953 (list _body15806_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17954
                                                   __tmp17953
                                                   _post15805_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17952))))
                             (declare (not safe))
                             (cons 'begin __tmp17951))))
                      (declare (not safe))
                      (__SRC__% __tmp17950 _stx15798_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15798_
             _compile-simple15800_
             _compile-values15801_)))))
    (define __compile-call%
      (lambda (_stx15758_)
        (let* ((_$e15760_ _stx15758_)
               (_$E1576215771_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15760_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15760_))
              (let* ((_$tgt1576315774_
                      (let () (declare (not safe)) (__AST-e _$e15760_)))
                     (_$hd1576415777_
                      (let () (declare (not safe)) (##car _$tgt1576315774_)))
                     (_$tl1576515780_
                      (let () (declare (not safe)) (##cdr _$tgt1576315774_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1576515780_))
                    (let* ((_$tgt1576615784_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1576515780_)))
                           (_$hd1576715787_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1576615784_)))
                           (_$tl1576815790_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1576615784_))))
                      (let* ((_rator15794_ _$hd1576715787_)
                             (_rands15796_ _$tl1576815790_)
                             (__tmp17978
                              (let ((__tmp17980
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15794_)))
                                    (__tmp17979 (map __compile _rands15796_)))
                                (declare (not safe))
                                (cons __tmp17980 __tmp17979))))
                        (declare (not safe))
                        (__SRC__% __tmp17978 _stx15758_)))
                    (let () (declare (not safe)) (_$E1576215771_))))
              (let () (declare (not safe)) (_$E1576215771_))))))
    (define __compile-ref%
      (lambda (_stx15720_)
        (let* ((_$e15722_ _stx15720_)
               (_$E1572415733_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15722_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15722_))
              (let* ((_$tgt1572515736_
                      (let () (declare (not safe)) (__AST-e _$e15722_)))
                     (_$hd1572615739_
                      (let () (declare (not safe)) (##car _$tgt1572515736_)))
                     (_$tl1572715742_
                      (let () (declare (not safe)) (##cdr _$tgt1572515736_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1572715742_))
                    (let* ((_$tgt1572815746_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1572715742_)))
                           (_$hd1572915749_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1572815746_)))
                           (_$tl1573015752_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1572815746_))))
                      (let ((_id15756_ _$hd1572915749_))
                        (if (let ((__tmp17981
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1573015752_))))
                              (declare (not safe))
                              (equal? __tmp17981 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15756_ _stx15720_))
                            (let () (declare (not safe)) (_$E1572415733_)))))
                    (let () (declare (not safe)) (_$E1572415733_))))
              (let () (declare (not safe)) (_$E1572415733_))))))
    (define __compile-setq%
      (lambda (_stx15667_)
        (let* ((_$e15669_ _stx15667_)
               (_$E1567115683_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15669_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15669_))
              (let* ((_$tgt1567215686_
                      (let () (declare (not safe)) (__AST-e _$e15669_)))
                     (_$hd1567315689_
                      (let () (declare (not safe)) (##car _$tgt1567215686_)))
                     (_$tl1567415692_
                      (let () (declare (not safe)) (##cdr _$tgt1567215686_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1567415692_))
                    (let* ((_$tgt1567515696_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1567415692_)))
                           (_$hd1567615699_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1567515696_)))
                           (_$tl1567715702_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1567515696_))))
                      (let ((_id15706_ _$hd1567615699_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1567715702_))
                            (let* ((_$tgt1567815708_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1567715702_)))
                                   (_$hd1567915711_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1567815708_)))
                                   (_$tl1568015714_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1567815708_))))
                              (let ((_expr15718_ _$hd1567915711_))
                                (if (let ((__tmp17987
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1568015714_))))
                                      (declare (not safe))
                                      (equal? __tmp17987 '()))
                                    (let ((__tmp17982
                                           (let ((__tmp17983
                                                  (let ((__tmp17986
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15706_
                                                            _stx15667_)))
                                                        (__tmp17984
                                                         (let ((__tmp17985
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15718_))))
                   (declare (not safe))
                   (cons __tmp17985 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17986
                                                          __tmp17984))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17983))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17982 _stx15667_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1567115683_)))))
                            (let () (declare (not safe)) (_$E1567115683_)))))
                    (let () (declare (not safe)) (_$E1567115683_))))
              (let () (declare (not safe)) (_$E1567115683_))))))
    (define __compile-if%
      (lambda (_stx15599_)
        (let* ((_$e15601_ _stx15599_)
               (_$E1560315618_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15601_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15601_))
              (let* ((_$tgt1560415621_
                      (let () (declare (not safe)) (__AST-e _$e15601_)))
                     (_$hd1560515624_
                      (let () (declare (not safe)) (##car _$tgt1560415621_)))
                     (_$tl1560615627_
                      (let () (declare (not safe)) (##cdr _$tgt1560415621_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1560615627_))
                    (let* ((_$tgt1560715631_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1560615627_)))
                           (_$hd1560815634_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1560715631_)))
                           (_$tl1560915637_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1560715631_))))
                      (let ((_p15641_ _$hd1560815634_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1560915637_))
                            (let* ((_$tgt1561015643_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1560915637_)))
                                   (_$hd1561115646_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1561015643_)))
                                   (_$tl1561215649_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1561015643_))))
                              (let ((_t15653_ _$hd1561115646_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1561215649_))
                                    (let* ((_$tgt1561315655_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1561215649_)))
                                           (_$hd1561415658_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1561315655_)))
                                           (_$tl1561515661_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1561315655_))))
                                      (let ((_f15665_ _$hd1561415658_))
                                        (if (let ((__tmp17995
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1561515661_))))
                                              (declare (not safe))
                                              (equal? __tmp17995 '()))
                                            (let ((__tmp17988
                                                   (let ((__tmp17989
                                                          (let ((__tmp17994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15641_)))
                        (__tmp17990
                         (let ((__tmp17993
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15653_)))
                               (__tmp17991
                                (let ((__tmp17992
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15665_))))
                                  (declare (not safe))
                                  (cons __tmp17992 '()))))
                           (declare (not safe))
                           (cons __tmp17993 __tmp17991))))
                    (declare (not safe))
                    (cons __tmp17994 __tmp17990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17989))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17988 _stx15599_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1560315618_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1560315618_)))))
                            (let () (declare (not safe)) (_$E1560315618_)))))
                    (let () (declare (not safe)) (_$E1560315618_))))
              (let () (declare (not safe)) (_$E1560315618_))))))
    (define __compile-quote%
      (lambda (_stx15561_)
        (let* ((_$e15563_ _stx15561_)
               (_$E1556515574_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15563_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15563_))
              (let* ((_$tgt1556615577_
                      (let () (declare (not safe)) (__AST-e _$e15563_)))
                     (_$hd1556715580_
                      (let () (declare (not safe)) (##car _$tgt1556615577_)))
                     (_$tl1556815583_
                      (let () (declare (not safe)) (##cdr _$tgt1556615577_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1556815583_))
                    (let* ((_$tgt1556915587_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1556815583_)))
                           (_$hd1557015590_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1556915587_)))
                           (_$tl1557115593_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1556915587_))))
                      (let ((_e15597_ _$hd1557015590_))
                        (if (let ((__tmp17999
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1557115593_))))
                              (declare (not safe))
                              (equal? __tmp17999 '()))
                            (let ((__tmp17996
                                   (let ((__tmp17997
                                          (let ((__tmp17998
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e15597_))))
                                            (declare (not safe))
                                            (cons __tmp17998 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17997))))
                              (declare (not safe))
                              (__SRC__% __tmp17996 _stx15561_))
                            (let () (declare (not safe)) (_$E1556515574_)))))
                    (let () (declare (not safe)) (_$E1556515574_))))
              (let () (declare (not safe)) (_$E1556515574_))))))
    (define __compile-quote-syntax%
      (lambda (_stx15523_)
        (let* ((_$e15525_ _stx15523_)
               (_$E1552715536_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15525_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15525_))
              (let* ((_$tgt1552815539_
                      (let () (declare (not safe)) (__AST-e _$e15525_)))
                     (_$hd1552915542_
                      (let () (declare (not safe)) (##car _$tgt1552815539_)))
                     (_$tl1553015545_
                      (let () (declare (not safe)) (##cdr _$tgt1552815539_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1553015545_))
                    (let* ((_$tgt1553115549_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1553015545_)))
                           (_$hd1553215552_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1553115549_)))
                           (_$tl1553315555_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1553115549_))))
                      (let ((_e15559_ _$hd1553215552_))
                        (if (let ((__tmp18002
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1553315555_))))
                              (declare (not safe))
                              (equal? __tmp18002 '()))
                            (let ((__tmp18000
                                   (let ((__tmp18001
                                          (let ()
                                            (declare (not safe))
                                            (cons _e15559_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp18001))))
                              (declare (not safe))
                              (__SRC__% __tmp18000 _stx15523_))
                            (let () (declare (not safe)) (_$E1552715536_)))))
                    (let () (declare (not safe)) (_$E1552715536_))))
              (let () (declare (not safe)) (_$E1552715536_))))))
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
