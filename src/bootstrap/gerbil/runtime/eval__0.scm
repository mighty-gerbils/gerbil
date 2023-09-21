(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1695292370)
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
      (lambda _$args16821_
        (apply make-struct-instance __context::t _$args16821_)))
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
      (lambda _$args16818_
        (apply make-struct-instance __runtime::t _$args16818_)))
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
      (lambda _$args16815_
        (apply make-struct-instance __syntax::t _$args16815_)))
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
      (lambda _$args16812_
        (apply make-struct-instance __macro::t _$args16812_)))
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
      (lambda _$args16809_
        (apply make-struct-instance __special-form::t _$args16809_)))
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
      (lambda _$args16806_
        (apply make-struct-instance __core-form::t _$args16806_)))
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
      (lambda _$args16803_
        (apply make-struct-instance __core-expression::t _$args16803_)))
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
      (lambda _$args16800_
        (apply make-struct-instance __core-special-form::t _$args16800_)))
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
      (lambda _$args16797_
        (apply make-struct-instance __struct-info::t _$args16797_)))
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
      (lambda _$args16794_
        (apply make-struct-instance __feature::t _$args16794_)))
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
      (lambda _$args16791_
        (apply make-struct-instance __module::t _$args16791_)))
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
      (let ((__tmp17007
             (let ()
               (declare (not safe))
               (##structure __context::t 'root '#f '#f __*core*)))
            (__tmp17006 (let () (declare (not safe)) (make-table 'test: eq?))))
        (declare (not safe))
        (##structure __context::t 'top '#f __tmp17007 __tmp17006)))
    (define __current-expander
      (let () (declare (not safe)) (make-parameter '#f)))
    (define __current-compiler
      (let () (declare (not safe)) (make-parameter '#f)))
    (define __current-path (let () (declare (not safe)) (make-parameter '())))
    (define __core-resolve__%
      (lambda (_id16766_ _ctx16767_)
        (if _ctx16767_
            (let ((_id16769_
                   (let () (declare (not safe)) (__AST-e _id16766_))))
              (let _lp16771_ ((_ctx16773_ _ctx16767_))
                (let ((_$e16775_
                       (let ((__tmp17008
                              (##structure-ref
                               _ctx16773_
                               '4
                               __context::t
                               '#f)))
                         (declare (not safe))
                         (table-ref __tmp17008 _id16769_ '#f))))
                  (if _$e16775_
                      (values _$e16775_)
                      (let ((_$e16778_
                             (##structure-ref _ctx16773_ '3 __context::t '#f)))
                        (if _$e16778_
                            (let () (declare (not safe)) (_lp16771_ _$e16778_))
                            '#f))))))
            '#f)))
    (define __core-resolve__0
      (lambda (_id16784_)
        (let ((_ctx16786_ (__current-context)))
          (declare (not safe))
          (__core-resolve__% _id16784_ _ctx16786_))))
    (define __core-resolve
      (lambda _g17010_
        (let ((_g17009_ (let () (declare (not safe)) (##length _g17010_))))
          (cond ((let () (declare (not safe)) (##fx= _g17009_ 1))
                 (apply (lambda (_id16784_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__0 _id16784_)))
                        _g17010_))
                ((let () (declare (not safe)) (##fx= _g17009_ 2))
                 (apply (lambda (_id16788_ _ctx16789_)
                          (let ()
                            (declare (not safe))
                            (__core-resolve__% _id16788_ _ctx16789_)))
                        _g17010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-resolve
                  _g17010_))))))
    (define __core-bound-id?__%
      (lambda (_id16749_ _is?16750_)
        (let ((_$e16752_
               (let () (declare (not safe)) (__core-resolve__0 _id16749_))))
          (if _$e16752_ (_is?16750_ _$e16752_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id16758_)
        (let ((_is?16760_ true))
          (declare (not safe))
          (__core-bound-id?__% _id16758_ _is?16760_))))
    (define __core-bound-id?
      (lambda _g17012_
        (let ((_g17011_ (let () (declare (not safe)) (##length _g17012_))))
          (cond ((let () (declare (not safe)) (##fx= _g17011_ 1))
                 (apply (lambda (_id16758_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id16758_)))
                        _g17012_))
                ((let () (declare (not safe)) (##fx= _g17011_ 2))
                 (apply (lambda (_id16762_ _is?16763_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id16762_ _is?16763_)))
                        _g17012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g17012_))))))
    (define __core-bind-runtime!__%
      (lambda (_id16732_ _eid16733_ _ctx16734_)
        (if _eid16733_
            (let ((__tmp17015 (##structure-ref _ctx16734_ '4 __context::t '#f))
                  (__tmp17014
                   (let () (declare (not safe)) (__AST-e _id16732_)))
                  (__tmp17013
                   (let ()
                     (declare (not safe))
                     (##structure __runtime::t _eid16733_))))
              (declare (not safe))
              (table-set! __tmp17015 __tmp17014 __tmp17013))
            '#!void)))
    (define __core-bind-runtime!__0
      (lambda (_id16739_ _eid16740_)
        (let ((_ctx16742_ (__current-context)))
          (declare (not safe))
          (__core-bind-runtime!__% _id16739_ _eid16740_ _ctx16742_))))
    (define __core-bind-runtime!
      (lambda _g17017_
        (let ((_g17016_ (let () (declare (not safe)) (##length _g17017_))))
          (cond ((let () (declare (not safe)) (##fx= _g17016_ 2))
                 (apply (lambda (_id16739_ _eid16740_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__0 _id16739_ _eid16740_)))
                        _g17017_))
                ((let () (declare (not safe)) (##fx= _g17016_ 3))
                 (apply (lambda (_id16744_ _eid16745_ _ctx16746_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-runtime!__%
                             _id16744_
                             _eid16745_
                             _ctx16746_)))
                        _g17017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-runtime!
                  _g17017_))))))
    (define __core-bind-syntax!__%
      (lambda (_id16715_ _e16716_ _make16717_)
        (let ((__tmp17018
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e16716_
                      'gerbil/runtime/eval#__syntax::t))
                   _e16716_
                   (_make16717_ _e16716_ _id16715_))))
          (declare (not safe))
          (table-set! __*core* _id16715_ __tmp17018))))
    (define __core-bind-syntax!__0
      (lambda (_id16722_ _e16723_)
        (let ((_make16725_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id16722_ _e16723_ _make16725_))))
    (define __core-bind-syntax!
      (lambda _g17020_
        (let ((_g17019_ (let () (declare (not safe)) (##length _g17020_))))
          (cond ((let () (declare (not safe)) (##fx= _g17019_ 2))
                 (apply (lambda (_id16722_ _e16723_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id16722_ _e16723_)))
                        _g17020_))
                ((let () (declare (not safe)) (##fx= _g17019_ 3))
                 (apply (lambda (_id16727_ _e16728_ _make16729_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id16727_
                             _e16728_
                             _make16729_)))
                        _g17020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g17020_))))))
    (define __core-bind-macro!
      (lambda (_id16711_ _e16712_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id16711_ _e16712_ make-__macro))))
    (define __core-bind-special-form!
      (lambda (_id16708_ _e16709_)
        (let ()
          (declare (not safe))
          (__core-bind-syntax!__% _id16708_ _e16709_ make-__special-form))))
    (define __core-bind-user-syntax!__%
      (lambda (_id16692_ _e16693_ _ctx16694_)
        (let ((__tmp17024 (##structure-ref _ctx16694_ '4 __context::t '#f))
              (__tmp17023 (let () (declare (not safe)) (__AST-e _id16692_)))
              (__tmp17021
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e16693_
                      'gerbil/runtime/eval#__syntax::t))
                   _e16693_
                   (let ((__tmp17022
                          (let () (declare (not safe)) (__AST-e _id16692_))))
                     (declare (not safe))
                     (##structure __syntax::t _e16693_ __tmp17022)))))
          (declare (not safe))
          (table-set! __tmp17024 __tmp17023 __tmp17021))))
    (define __core-bind-user-syntax!__0
      (lambda (_id16699_ _e16700_)
        (let ((_ctx16702_ (__current-context)))
          (declare (not safe))
          (__core-bind-user-syntax!__% _id16699_ _e16700_ _ctx16702_))))
    (define __core-bind-user-syntax!
      (lambda _g17026_
        (let ((_g17025_ (let () (declare (not safe)) (##length _g17026_))))
          (cond ((let () (declare (not safe)) (##fx= _g17025_ 2))
                 (apply (lambda (_id16699_ _e16700_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__0 _id16699_ _e16700_)))
                        _g17026_))
                ((let () (declare (not safe)) (##fx= _g17025_ 3))
                 (apply (lambda (_id16704_ _e16705_ _ctx16706_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-user-syntax!__%
                             _id16704_
                             _e16705_
                             _ctx16706_)))
                        _g17026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-user-syntax!
                  _g17026_))))))
    (define make-__runtime-id__%
      (lambda (_id16673_ _ctx16674_)
        (let ((_id16676_ (let () (declare (not safe)) (__AST-e _id16673_))))
          (if (let () (declare (not safe)) (eq? _id16676_ '_))
              '#f
              (if (let () (declare (not safe)) (uninterned-symbol? _id16676_))
                  (let () (declare (not safe)) (gensym _id16676_))
                  (if (let () (declare (not safe)) (symbol? _id16676_))
                      (let ((_$e16678_
                             (##structure-ref _ctx16674_ '1 __context::t '#f)))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'local _$e16678_))
                            (let () (declare (not safe)) (gensym _id16676_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'module _$e16678_))
                                (let ((__tmp17027
                                       (##structure-ref
                                        _ctx16674_
                                        '2
                                        __context::t
                                        '#f)))
                                  (declare (not safe))
                                  (make-symbol __tmp17027 '"#" _id16676_))
                                _id16676_)))
                      (let ()
                        (declare (not safe))
                        (error '"Illegal runtime identifier" _id16676_))))))))
    (define make-__runtime-id__0
      (lambda (_id16684_)
        (let ((_ctx16686_ (__current-context)))
          (declare (not safe))
          (make-__runtime-id__% _id16684_ _ctx16686_))))
    (define make-__runtime-id
      (lambda _g17029_
        (let ((_g17028_ (let () (declare (not safe)) (##length _g17029_))))
          (cond ((let () (declare (not safe)) (##fx= _g17028_ 1))
                 (apply (lambda (_id16684_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__0 _id16684_)))
                        _g17029_))
                ((let () (declare (not safe)) (##fx= _g17028_ 2))
                 (apply (lambda (_id16688_ _ctx16689_)
                          (let ()
                            (declare (not safe))
                            (make-__runtime-id__% _id16688_ _ctx16689_)))
                        _g17029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__runtime-id
                  _g17029_))))))
    (define make-__context-local__%
      (lambda (_super16662_)
        (let ((__tmp17030
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure __context::t 'local '#f _super16662_ __tmp17030))))
    (define make-__context-local__0
      (lambda ()
        (let ((_super16668_ (__current-context)))
          (declare (not safe))
          (make-__context-local__% _super16668_))))
    (define make-__context-local
      (lambda _g17032_
        (let ((_g17031_ (let () (declare (not safe)) (##length _g17032_))))
          (cond ((let () (declare (not safe)) (##fx= _g17031_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-__context-local__0)))
                        _g17032_))
                ((let () (declare (not safe)) (##fx= _g17031_ 1))
                 (apply (lambda (_super16670_)
                          (let ()
                            (declare (not safe))
                            (make-__context-local__% _super16670_)))
                        _g17032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-local
                  _g17032_))))))
    (define make-__context-module__%
      (lambda (_id16642_ _ns16643_ _path16644_ _super16645_)
        (let ((__tmp17033
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (##structure
           __module::t
           'module
           _ns16643_
           _super16645_
           __tmp17033
           _id16642_
           _path16644_
           '#f
           '#f))))
    (define make-__context-module__0
      (lambda (_id16650_ _ns16651_ _path16652_)
        (let ((_super16654_ (__current-context)))
          (declare (not safe))
          (make-__context-module__%
           _id16650_
           _ns16651_
           _path16652_
           _super16654_))))
    (define make-__context-module
      (lambda _g17035_
        (let ((_g17034_ (let () (declare (not safe)) (##length _g17035_))))
          (cond ((let () (declare (not safe)) (##fx= _g17034_ 3))
                 (apply (lambda (_id16650_ _ns16651_ _path16652_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__0
                             _id16650_
                             _ns16651_
                             _path16652_)))
                        _g17035_))
                ((let () (declare (not safe)) (##fx= _g17034_ 4))
                 (apply (lambda (_id16656_ _ns16657_ _path16658_ _super16659_)
                          (let ()
                            (declare (not safe))
                            (make-__context-module__%
                             _id16656_
                             _ns16657_
                             _path16658_
                             _super16659_)))
                        _g17035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-__context-module
                  _g17035_))))))
    (define __SRC__%
      (lambda (_e16625_ _src-stx16626_)
        (if (or (let () (declare (not safe)) (pair? _e16625_))
                (let () (declare (not safe)) (symbol? _e16625_)))
            (let ((__tmp17039
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx16626_
                          'gerbil#AST::t))
                       (let ((__tmp17040
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx16626_))))
                         (declare (not safe))
                         (__locat __tmp17040))
                       '#f)))
              (declare (not safe))
              (##make-source _e16625_ __tmp17039))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e16625_ 'gerbil#AST::t))
                (let ((__tmp17038
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e16625_ '1 AST::t '#f)))
                      (__tmp17036
                       (let ((__tmp17037
                              (let ()
                                (declare (not safe))
                                (__AST-source _e16625_))))
                         (declare (not safe))
                         (__locat __tmp17037))))
                  (declare (not safe))
                  (##make-source __tmp17038 __tmp17036))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e16625_))))))
    (define __SRC__0
      (lambda (_e16634_)
        (let ((_src-stx16636_ '#f))
          (declare (not safe))
          (__SRC__% _e16634_ _src-stx16636_))))
    (define __SRC
      (lambda _g17042_
        (let ((_g17041_ (let () (declare (not safe)) (##length _g17042_))))
          (cond ((let () (declare (not safe)) (##fx= _g17041_ 1))
                 (apply (lambda (_e16634_)
                          (let () (declare (not safe)) (__SRC__0 _e16634_)))
                        _g17042_))
                ((let () (declare (not safe)) (##fx= _g17041_ 2))
                 (apply (lambda (_e16638_ _src-stx16639_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e16638_ _src-stx16639_)))
                        _g17042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g17042_))))))
    (define __locat
      (lambda (_loc16622_)
        (if (let () (declare (not safe)) (##locat? _loc16622_))
            _loc16622_
            '#f)))
    (define __check-values
      (lambda (_obj16617_ _k16618_)
        (let ((_count16620_
               (if (let () (declare (not safe)) (##values? _obj16617_))
                   (let () (declare (not safe)) (##vector-length _obj16617_))
                   '1)))
          (if (fx= _count16620_ _k16618_)
              '#!void
              (let ((__tmp17044
                     (if (fx< _count16620_ _k16618_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp17043
                     (if (let () (declare (not safe)) (##values? _obj16617_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj16617_))
                         _obj16617_)))
                (declare (not safe))
                (error __tmp17044 __tmp17043 _k16618_))))))
    (define __compile
      (lambda (_stx16587_)
        (let* ((_$e16589_ _stx16587_)
               (_$E1659116597_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16589_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16589_))
              (let* ((_$tgt1659216600_
                      (let () (declare (not safe)) (__AST-e _$e16589_)))
                     (_$hd1659316603_
                      (let () (declare (not safe)) (##car _$tgt1659216600_)))
                     (_$tl1659416606_
                      (let () (declare (not safe)) (##cdr _$tgt1659216600_))))
                (let* ((_form16610_ _$hd1659316603_)
                       (_$e16612_
                        (let ()
                          (declare (not safe))
                          (__core-resolve__0 _form16610_))))
                  (if _$e16612_
                      ((lambda (_bind16615_)
                         ((##structure-ref _bind16615_ '1 __syntax::t '#f)
                          _stx16587_))
                       _$e16612_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _stx16587_
                         _form16610_)))))
              (let () (declare (not safe)) (_$E1659116597_))))))
    (define __compile-error__%
      (lambda (_stx16574_ _detail16575_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx16574_
           _detail16575_))))
    (define __compile-error__0
      (lambda (_stx16580_)
        (let ((_detail16582_ '#f))
          (declare (not safe))
          (__compile-error__% _stx16580_ _detail16582_))))
    (define __compile-error
      (lambda _g17046_
        (let ((_g17045_ (let () (declare (not safe)) (##length _g17046_))))
          (cond ((let () (declare (not safe)) (##fx= _g17045_ 1))
                 (apply (lambda (_stx16580_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx16580_)))
                        _g17046_))
                ((let () (declare (not safe)) (##fx= _g17045_ 2))
                 (apply (lambda (_stx16584_ _detail16585_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx16584_ _detail16585_)))
                        _g17046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g17046_))))))
    (define __compile-ignore%
      (lambda (_stx16571_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx16571_))))
    (define __compile-begin%
      (lambda (_stx16546_)
        (let* ((_$e16548_ _stx16546_)
               (_$E1655016556_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16548_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16548_))
              (let* ((_$tgt1655116559_
                      (let () (declare (not safe)) (__AST-e _$e16548_)))
                     (_$hd1655216562_
                      (let () (declare (not safe)) (##car _$tgt1655116559_)))
                     (_$tl1655316565_
                      (let () (declare (not safe)) (##cdr _$tgt1655116559_))))
                (let* ((_body16569_ _$tl1655316565_)
                       (__tmp17047
                        (let ((__tmp17048
                               (let ()
                                 (declare (not safe))
                                 (map __compile _body16569_))))
                          (declare (not safe))
                          (cons 'begin __tmp17048))))
                  (declare (not safe))
                  (__SRC__% __tmp17047 _stx16546_)))
              (let () (declare (not safe)) (_$E1655016556_))))))
    (define __compile-begin-foreign%
      (lambda (_stx16521_)
        (let* ((_$e16523_ _stx16521_)
               (_$E1652516531_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16523_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16523_))
              (let* ((_$tgt1652616534_
                      (let () (declare (not safe)) (__AST-e _$e16523_)))
                     (_$hd1652716537_
                      (let () (declare (not safe)) (##car _$tgt1652616534_)))
                     (_$tl1652816540_
                      (let () (declare (not safe)) (##cdr _$tgt1652616534_))))
                (let* ((_body16544_ _$tl1652816540_)
                       (__tmp17049
                        (let ((__tmp17050
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body16544_))))
                          (declare (not safe))
                          (cons 'begin __tmp17050))))
                  (declare (not safe))
                  (__SRC__% __tmp17049 _stx16521_)))
              (let () (declare (not safe)) (_$E1652516531_))))))
    (define __compile-import%
      (lambda (_stx16496_)
        (let* ((_$e16498_ _stx16496_)
               (_$E1650016506_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16498_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16498_))
              (let* ((_$tgt1650116509_
                      (let () (declare (not safe)) (__AST-e _$e16498_)))
                     (_$hd1650216512_
                      (let () (declare (not safe)) (##car _$tgt1650116509_)))
                     (_$tl1650316515_
                      (let () (declare (not safe)) (##cdr _$tgt1650116509_))))
                (let* ((_body16519_ _$tl1650316515_)
                       (__tmp17051
                        (let ((__tmp17052
                               (let ((__tmp17053
                                      (let ((__tmp17054
                                             (let ()
                                               (declare (not safe))
                                               (cons _body16519_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp17054))))
                                 (declare (not safe))
                                 (cons __tmp17053 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp17052))))
                  (declare (not safe))
                  (__SRC__% __tmp17051 _stx16496_)))
              (let () (declare (not safe)) (_$E1650016506_))))))
    (define __compile-begin-annotation%
      (lambda (_stx16443_)
        (let* ((_$e16445_ _stx16443_)
               (_$E1644716459_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16445_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16445_))
              (let* ((_$tgt1644816462_
                      (let () (declare (not safe)) (__AST-e _$e16445_)))
                     (_$hd1644916465_
                      (let () (declare (not safe)) (##car _$tgt1644816462_)))
                     (_$tl1645016468_
                      (let () (declare (not safe)) (##cdr _$tgt1644816462_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1645016468_))
                    (let* ((_$tgt1645116472_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1645016468_)))
                           (_$hd1645216475_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1645116472_)))
                           (_$tl1645316478_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1645116472_))))
                      (let ((_ann16482_ _$hd1645216475_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1645316478_))
                            (let* ((_$tgt1645416484_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1645316478_)))
                                   (_$hd1645516487_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1645416484_)))
                                   (_$tl1645616490_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1645416484_))))
                              (let ((_expr16494_ _$hd1645516487_))
                                (if (let ((__tmp17055
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1645616490_))))
                                      (declare (not safe))
                                      (equal? __tmp17055 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr16494_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1644716459_)))))
                            (let () (declare (not safe)) (_$E1644716459_)))))
                    (let () (declare (not safe)) (_$E1644716459_))))
              (let () (declare (not safe)) (_$E1644716459_))))))
    (define __compile-define-values%
      (lambda (_stx16334_)
        (let* ((_$e16336_ _stx16334_)
               (_$E1633816350_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16336_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16336_))
              (let* ((_$tgt1633916353_
                      (let () (declare (not safe)) (__AST-e _$e16336_)))
                     (_$hd1634016356_
                      (let () (declare (not safe)) (##car _$tgt1633916353_)))
                     (_$tl1634116359_
                      (let () (declare (not safe)) (##cdr _$tgt1633916353_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1634116359_))
                    (let* ((_$tgt1634216363_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1634116359_)))
                           (_$hd1634316366_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1634216363_)))
                           (_$tl1634416369_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1634216363_))))
                      (let ((_hd16373_ _$hd1634316366_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1634416369_))
                            (let* ((_$tgt1634516375_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1634416369_)))
                                   (_$hd1634616378_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1634516375_)))
                                   (_$tl1634716381_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1634516375_))))
                              (let ((_expr16385_ _$hd1634616378_))
                                (if (let ((__tmp17088
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1634716381_))))
                                      (declare (not safe))
                                      (equal? __tmp17088 '()))
                                    (let* ((_$e16387_ _hd16373_)
                                           (_$E1638916430_
                                            (lambda ()
                                              (let ((_$E1639016415_
                                                     (lambda ()
                                                       (let* ((_$E1639116402_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _$e16387_))))
                      (_ids16405_ _hd16373_)
                      (_len16407_ (length _ids16405_))
                      (_tmp16409_
                       (let ((__tmp17056
                              (let () (declare (not safe)) (gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp17056))))
                 (let ((__tmp17057
                        (let ((__tmp17058
                               (let ((__tmp17075
                                      (let ((__tmp17076
                                             (let ((__tmp17077
                                                    (let ((__tmp17078
                                                           (let ((__tmp17079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr16385_))))
                     (declare (not safe))
                     (cons __tmp17079 '()))))
              (declare (not safe))
              (cons _tmp16409_ __tmp17078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp17077))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17076 _stx16334_)))
                                     (__tmp17059
                                      (let ((__tmp17071
                                             (let ((__tmp17072
                                                    (let ((__tmp17073
                                                           (let ((__tmp17074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len16407_ '()))))
                     (declare (not safe))
                     (cons _tmp16409_ __tmp17074))))
              (declare (not safe))
              (cons '__check-values __tmp17073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp17072
                                                _stx16334_)))
                                            (__tmp17060
                                             (let ((__tmp17061
                                                    (let ((__tmp17063
                                                           (lambda (_id16412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k16413_)
                     (if (let () (declare (not safe)) (__AST-e _id16412_))
                         (let ((__tmp17064
                                (let ((__tmp17065
                                       (let ((__tmp17070
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id16412_)))
                                             (__tmp17066
                                              (let ((__tmp17067
                                                     (let ((__tmp17068
                                                            (let ((__tmp17069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k16413_ '()))))
                      (declare (not safe))
                      (cons _tmp16409_ __tmp17069))))
               (declare (not safe))
               (cons '##vector-ref __tmp17068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17067 '()))))
                                         (declare (not safe))
                                         (cons __tmp17070 __tmp17066))))
                                  (declare (not safe))
                                  (cons 'define __tmp17065))))
                           (declare (not safe))
                           (__SRC__% __tmp17064 _stx16334_))
                         '#f)))
                  (__tmp17062 (let () (declare (not safe)) (iota _len16407_))))
              (declare (not safe))
              (filter-map2 __tmp17063 _ids16405_ __tmp17062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp17061))))
                                        (declare (not safe))
                                        (cons __tmp17071 __tmp17060))))
                                 (declare (not safe))
                                 (cons __tmp17075 __tmp17059))))
                          (declare (not safe))
                          (cons 'begin __tmp17058))))
                   (declare (not safe))
                   (__SRC__% __tmp17057 _stx16334_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e16387_))
                                                    (let* ((_$tgt1639216418_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e16387_)))
                                                           (_$hd1639316421_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt1639216418_)))
                                                           (_$tl1639416424_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt1639216418_))))
                                                      (let ((_id16428_
                                                             _$hd1639316421_))
                                                        (if (let ((__tmp17085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl1639416424_))))
                      (declare (not safe))
                      (equal? __tmp17085 '()))
                    (let ((__tmp17080
                           (let ((__tmp17081
                                  (let ((__tmp17084
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id16428_)))
                                        (__tmp17082
                                         (let ((__tmp17083
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr16385_))))
                                           (declare (not safe))
                                           (cons __tmp17083 '()))))
                                    (declare (not safe))
                                    (cons __tmp17084 __tmp17082))))
                             (declare (not safe))
                             (cons 'define __tmp17081))))
                      (declare (not safe))
                      (__SRC__% __tmp17080 _stx16334_))
                    (let () (declare (not safe)) (_$E1639016415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1639016415_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e16387_))
                                          (let* ((_$tgt1639516433_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e16387_)))
                                                 (_$hd1639616436_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1639516433_)))
                                                 (_$tl1639716439_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1639516433_))))
                                            (if (let ((__tmp17087
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd1639616436_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17087 '#f))
                                                (if (let ((__tmp17086
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl1639716439_))))
                                                      (declare (not safe))
                                                      (equal? __tmp17086 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr16385_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E1638916430_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1638916430_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1638916430_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1633816350_)))))
                            (let () (declare (not safe)) (_$E1633816350_)))))
                    (let () (declare (not safe)) (_$E1633816350_))))
              (let () (declare (not safe)) (_$E1633816350_))))))
    (define __compile-head-id
      (lambda (_e16332_)
        (let ((__tmp17089
               (if (let () (declare (not safe)) (__AST-e _e16332_))
                   _e16332_
                   (let () (declare (not safe)) (gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp17089))))
    (define __compile-lambda-head
      (lambda (_hd16289_)
        (let _recur16291_ ((_rest16293_ _hd16289_))
          (let* ((_$e16295_ _rest16293_)
                 (_$E1629716315_
                  (lambda ()
                    (let ((_$E1629816312_
                           (lambda ()
                             (let* ((_$E1629916307_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _$e16295_))))
                                    (_tail16310_ _$e16295_))
                               (declare (not safe))
                               (__compile-head-id _tail16310_)))))
                      (if (let ((__tmp17090
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e16295_))))
                            (declare (not safe))
                            (equal? __tmp17090 '()))
                          '()
                          (let () (declare (not safe)) (_$E1629816312_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16295_))
                (let* ((_$tgt1630016318_
                        (let () (declare (not safe)) (__AST-e _$e16295_)))
                       (_$hd1630116321_
                        (let () (declare (not safe)) (##car _$tgt1630016318_)))
                       (_$tl1630216324_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1630016318_))))
                  (let* ((_hd16328_ _$hd1630116321_)
                         (_rest16330_ _$tl1630216324_))
                    (let ((__tmp17092
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd16328_)))
                          (__tmp17091
                           (let ()
                             (declare (not safe))
                             (_recur16291_ _rest16330_))))
                      (declare (not safe))
                      (cons __tmp17092 __tmp17091))))
                (let () (declare (not safe)) (_$E1629716315_)))))))
    (define __compile-lambda%
      (lambda (_stx16236_)
        (let* ((_$e16238_ _stx16236_)
               (_$E1624016252_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e16238_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e16238_))
              (let* ((_$tgt1624116255_
                      (let () (declare (not safe)) (__AST-e _$e16238_)))
                     (_$hd1624216258_
                      (let () (declare (not safe)) (##car _$tgt1624116255_)))
                     (_$tl1624316261_
                      (let () (declare (not safe)) (##cdr _$tgt1624116255_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1624316261_))
                    (let* ((_$tgt1624416265_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1624316261_)))
                           (_$hd1624516268_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1624416265_)))
                           (_$tl1624616271_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1624416265_))))
                      (let ((_hd16275_ _$hd1624516268_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1624616271_))
                            (let* ((_$tgt1624716277_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1624616271_)))
                                   (_$hd1624816280_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1624716277_)))
                                   (_$tl1624916283_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1624716277_))))
                              (let ((_body16287_ _$hd1624816280_))
                                (if (let ((__tmp17098
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1624916283_))))
                                      (declare (not safe))
                                      (equal? __tmp17098 '()))
                                    (let ((__tmp17093
                                           (let ((__tmp17094
                                                  (let ((__tmp17097
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd16275_)))
                                                        (__tmp17095
                                                         (let ((__tmp17096
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body16287_))))
                   (declare (not safe))
                   (cons __tmp17096 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17097
                                                          __tmp17095))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp17094))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17093 _stx16236_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1624016252_)))))
                            (let () (declare (not safe)) (_$E1624016252_)))))
                    (let () (declare (not safe)) (_$E1624016252_))))
              (let () (declare (not safe)) (_$E1624016252_))))))
    (define __compile-case-lambda%
      (lambda (_stx16028_)
        (letrec ((_variadic?16030_
                  (lambda (_hd16201_)
                    (let* ((_$e16203_ _hd16201_)
                           (_$E1620516221_
                            (lambda ()
                              (let ((_$E1620616218_
                                     (lambda ()
                                       (let ((_$E1620716215_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _$e16203_)))))
                                         '#t))))
                                (if (let ((__tmp17099
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e16203_))))
                                      (declare (not safe))
                                      (equal? __tmp17099 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E1620616218_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16203_))
                          (let* ((_$tgt1620816224_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16203_)))
                                 (_$hd1620916227_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1620816224_)))
                                 (_$tl1621016230_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1620816224_))))
                            (let ((_rest16234_ _$tl1621016230_))
                              (declare (not safe))
                              (_variadic?16030_ _rest16234_)))
                          (let () (declare (not safe)) (_$E1620516221_))))))
                 (_arity16031_
                  (lambda (_hd16166_)
                    (let _lp16168_ ((_rest16170_ _hd16166_) (_k16171_ '0))
                      (let* ((_$e16173_ _rest16170_)
                             (_$E1617516186_
                              (lambda ()
                                (let ((_$E1617616183_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _$e16173_)))))
                                  _k16171_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e16173_))
                            (let* ((_$tgt1617716189_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e16173_)))
                                   (_$hd1617816192_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1617716189_)))
                                   (_$tl1617916195_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1617716189_))))
                              (let* ((_rest16199_ _$tl1617916195_)
                                     (__tmp17100
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k16171_ '1))))
                                (declare (not safe))
                                (_lp16168_ _rest16199_ __tmp17100)))
                            (let () (declare (not safe)) (_$E1617516186_)))))))
                 (_generate16032_
                  (lambda (_rest16093_ _args16094_ _len16095_)
                    (let* ((_$e16097_ _rest16093_)
                           (_$E1609916110_
                            (lambda ()
                              (let* ((_$E1610016107_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _$e16097_))))
                                     (__tmp17101
                                      (let ((__tmp17102
                                             (let ((__tmp17103
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args16094_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp17103))))
                                        (declare (not safe))
                                        (cons 'error __tmp17102))))
                                (declare (not safe))
                                (__SRC__% __tmp17101 _stx16028_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16097_))
                          (let* ((_$tgt1610116113_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16097_)))
                                 (_$hd1610216116_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1610116113_)))
                                 (_$tl1610316119_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1610116113_))))
                            (let* ((_clause16123_ _$hd1610216116_)
                                   (_rest16125_ _$tl1610316119_)
                                   (_$e16127_ _clause16123_)
                                   (_$E1612916138_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _$e16127_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e16127_))
                                  (let* ((_$tgt1613016141_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e16127_)))
                                         (_$hd1613116144_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt1613016141_)))
                                         (_$tl1613216147_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt1613016141_))))
                                    (let ((_hd16151_ _$hd1613116144_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl1613216147_))
                                          (let* ((_$tgt1613316153_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl1613216147_)))
                                                 (_$hd1613416156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt1613316153_)))
                                                 (_$tl1613516159_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt1613316153_))))
                                            (if (let ((__tmp17118
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1613516159_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17118 '()))
                                                (let ((_clen16163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity16031_
                                                          _hd16151_)))
                                                      (_cmp16164_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?16030_
                                                              _hd16151_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp17104
                                                         (let ((__tmp17105
                                                                (let ((__tmp17115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17116
                                      (let ((__tmp17117
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen16163_ '()))))
                                        (declare (not safe))
                                        (cons _len16095_ __tmp17117))))
                                 (declare (not safe))
                                 (cons _cmp16164_ __tmp17116)))
                              (__tmp17106
                               (let ((__tmp17109
                                      (let ((__tmp17110
                                             (let ((__tmp17111
                                                    (let ((__tmp17113
                                                           (let ((__tmp17114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause16123_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp17114)))
                  (__tmp17112
                   (let () (declare (not safe)) (cons _args16094_ '()))))
              (declare (not safe))
              (cons __tmp17113 __tmp17112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp17111))))
                                        (declare (not safe))
                                        (__SRC__% __tmp17110 _stx16028_)))
                                     (__tmp17107
                                      (let ((__tmp17108
                                             (let ()
                                               (declare (not safe))
                                               (_generate16032_
                                                _rest16125_
                                                _args16094_
                                                _len16095_))))
                                        (declare (not safe))
                                        (cons __tmp17108 '()))))
                                 (declare (not safe))
                                 (cons __tmp17109 __tmp17107))))
                          (declare (not safe))
                          (cons __tmp17115 __tmp17106))))
                   (declare (not safe))
                   (cons 'if __tmp17105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp17104
                                                     _stx16028_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1612916138_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E1612916138_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E1612916138_)))))
                          (let () (declare (not safe)) (_$E1609916110_)))))))
          (let* ((_$e16034_ _stx16028_)
                 (_$E1603616068_
                  (lambda ()
                    (let ((_$E1603716050_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e16034_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e16034_))
                          (let* ((_$tgt1603816053_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e16034_)))
                                 (_$hd1603916056_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1603816053_)))
                                 (_$tl1604016059_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1603816053_))))
                            (let ((_clauses16063_ _$tl1604016059_))
                              (let ((_args16065_
                                     (let ((__tmp17119
                                            (let ()
                                              (declare (not safe))
                                              (gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp17119 _stx16028_)))
                                    (_len16066_
                                     (let ((__tmp17120
                                            (let ()
                                              (declare (not safe))
                                              (gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp17120 _stx16028_))))
                                (let ((__tmp17121
                                       (let ((__tmp17122
                                              (let ((__tmp17123
                                                     (let ((__tmp17124
                                                            (let ((__tmp17125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17126
                                  (let ((__tmp17129
                                         (let ((__tmp17130
                                                (let ((__tmp17131
                                                       (let ((__tmp17132
                                                              (let ((__tmp17133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp17134
                                    (let ()
                                      (declare (not safe))
                                      (cons _args16065_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp17134))))
                        (declare (not safe))
                        (__SRC__% __tmp17133 _stx16028_))))
                 (declare (not safe))
                 (cons __tmp17132 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len16066_
                                                        __tmp17131))))
                                           (declare (not safe))
                                           (cons __tmp17130 '())))
                                        (__tmp17127
                                         (let ((__tmp17128
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate16032_
                                                   _clauses16063_
                                                   _args16065_
                                                   _len16066_))))
                                           (declare (not safe))
                                           (cons __tmp17128 '()))))
                                    (declare (not safe))
                                    (cons __tmp17129 __tmp17127))))
                             (declare (not safe))
                             (cons 'let __tmp17126))))
                      (declare (not safe))
                      (__SRC__% __tmp17125 _stx16028_))))
               (declare (not safe))
               (cons __tmp17124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args16065_
                                                      __tmp17123))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp17122))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17121 _stx16028_)))))
                          (let () (declare (not safe)) (_$E1603716050_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e16034_))
                (let* ((_$tgt1604116071_
                        (let () (declare (not safe)) (__AST-e _$e16034_)))
                       (_$hd1604216074_
                        (let () (declare (not safe)) (##car _$tgt1604116071_)))
                       (_$tl1604316077_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1604116071_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1604316077_))
                      (let* ((_$tgt1604416081_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1604316077_)))
                             (_$hd1604516084_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1604416081_)))
                             (_$tl1604616087_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1604416081_))))
                        (let ((_clause16091_ _$hd1604516084_))
                          (if (let ((__tmp17136
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl1604616087_))))
                                (declare (not safe))
                                (equal? __tmp17136 '()))
                              (let ((__tmp17135
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause16091_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp17135))
                              (let () (declare (not safe)) (_$E1603616068_)))))
                      (let () (declare (not safe)) (_$E1603616068_))))
                (let () (declare (not safe)) (_$E1603616068_)))))))
    (define __compile-let-form
      (lambda (_stx15797_ _compile-simple15798_ _compile-values15799_)
        (letrec ((_simple-bind?15801_
                  (lambda (_hd15986_)
                    (let* ((_hd1598715997_ _hd15986_)
                           (_else1599016005_ (lambda () '#f)))
                      (let ((_K1599316018_ (lambda (_id16016_) '#t))
                            (_K1599216010_ (lambda () '#t)))
                        (let ((_try-match1598916013_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd1598715997_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K1599216010_))
                                     (let ()
                                       (declare (not safe))
                                       (_else1599016005_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd1598715997_))
                              (let ((_tl1599516023_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd1598715997_)))
                                    (_hd1599416021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd1598715997_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl1599516023_))
                                    (let ((_id16026_ _hd1599416021_))
                                      (declare (not safe))
                                      (_K1599316018_ _id16026_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match1598916013_))))
                              (let ()
                                (declare (not safe))
                                (_try-match1598916013_))))))))
                 (_car-e15802_
                  (lambda (_hd15984_)
                    (if (let () (declare (not safe)) (pair? _hd15984_))
                        (let () (declare (not safe)) (car _hd15984_))
                        _hd15984_))))
          (let* ((_$e15804_ _stx15797_)
                 (_$E1580615949_
                  (lambda ()
                    (let ((_$E1580715829_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _$e15804_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e15804_))
                          (let* ((_$tgt1580815832_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e15804_)))
                                 (_$hd1580915835_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt1580815832_)))
                                 (_$tl1581015838_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt1580815832_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1581015838_))
                                (let* ((_$tgt1581115842_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1581015838_)))
                                       (_$hd1581215845_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1581115842_)))
                                       (_$tl1581315848_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1581115842_))))
                                  (let ((_hd15852_ _$hd1581215845_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl1581315848_))
                                        (let* ((_$tgt1581415854_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl1581315848_)))
                                               (_$hd1581515857_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt1581415854_)))
                                               (_$tl1581615860_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt1581415854_))))
                                          (let ((_body15864_ _$hd1581515857_))
                                            (if (let ((__tmp17141
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl1581615860_))))
                                                  (declare (not safe))
                                                  (equal? __tmp17141 '()))
                                                (let* ((_hd-ids15904_
                                                        (let ((__tmp17137
                                                               (lambda (_bind15866_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_$e15868_ _bind15866_)
                                (_$E1587015879_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _$e15868_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _$e15868_))
                               (let* ((_$tgt1587115882_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _$e15868_)))
                                      (_$hd1587215885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _$tgt1587115882_)))
                                      (_$tl1587315888_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _$tgt1587115882_))))
                                 (let ((_ids15892_ _$hd1587215885_))
                                   (if (let ()
                                         (declare (not safe))
                                         (__AST-pair? _$tl1587315888_))
                                       (let* ((_$tgt1587415894_
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1587315888_)))
                                              (_$hd1587515897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _$tgt1587415894_)))
                                              (_$tl1587615900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _$tgt1587415894_))))
                                         (if (let ((__tmp17138
                                                    (let ()
                                                      (declare (not safe))
                                                      (__AST-e _$tl1587615900_))))
                                               (declare (not safe))
                                               (equal? __tmp17138 '()))
                                             _ids15892_
                                             (let ()
                                               (declare (not safe))
                                               (_$E1587015879_))))
                                       (let ()
                                         (declare (not safe))
                                         (_$E1587015879_)))))
                               (let ()
                                 (declare (not safe))
                                 (_$E1587015879_)))))))
                  (declare (not safe))
                  (map __tmp17137 _hd15852_)))
               (_exprs15944_
                (let ((__tmp17139
                       (lambda (_bind15906_)
                         (let* ((_$e15908_ _bind15906_)
                                (_$E1591015919_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (__raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _$e15908_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _$e15908_))
                               (let* ((_$tgt1591115922_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _$e15908_)))
                                      (_$hd1591215925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _$tgt1591115922_)))
                                      (_$tl1591315928_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _$tgt1591115922_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl1591315928_))
                                     (let* ((_$tgt1591415932_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl1591315928_)))
                                            (_$hd1591515935_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt1591415932_)))
                                            (_$tl1591615938_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt1591415932_))))
                                       (let ((_expr15942_ _$hd1591515935_))
                                         (if (let ((__tmp17140
                                                    (let ()
                                                      (declare (not safe))
                                                      (__AST-e _$tl1591615938_))))
                                               (declare (not safe))
                                               (equal? __tmp17140 '()))
                                             (let ()
                                               (declare (not safe))
                                               (__compile _expr15942_))
                                             (let ()
                                               (declare (not safe))
                                               (_$E1591015919_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E1591015919_))))
                               (let ()
                                 (declare (not safe))
                                 (_$E1591015919_)))))))
                  (declare (not safe))
                  (map __tmp17139 _hd15852_)))
               (_body15946_
                (let () (declare (not safe)) (__compile _body15864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?15801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids15904_))
              (_compile-simple15798_
               (let () (declare (not safe)) (map _car-e15802_ _hd-ids15904_))
               _exprs15944_
               _body15946_)
              (_compile-values15799_ _hd-ids15904_ _exprs15944_ _body15946_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E1580715829_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1580715829_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E1580715829_))))
                          (let () (declare (not safe)) (_$E1580715829_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e15804_))
                (let* ((_$tgt1581715952_
                        (let () (declare (not safe)) (__AST-e _$e15804_)))
                       (_$hd1581815955_
                        (let () (declare (not safe)) (##car _$tgt1581715952_)))
                       (_$tl1581915958_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt1581715952_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl1581915958_))
                      (let* ((_$tgt1582015962_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl1581915958_)))
                             (_$hd1582115965_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt1582015962_)))
                             (_$tl1582215968_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt1582015962_))))
                        (if (let ((__tmp17143
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd1582115965_))))
                              (declare (not safe))
                              (equal? __tmp17143 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl1582215968_))
                                (let* ((_$tgt1582315972_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl1582215968_)))
                                       (_$hd1582415975_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt1582315972_)))
                                       (_$tl1582515978_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt1582315972_))))
                                  (let ((_body15982_ _$hd1582415975_))
                                    (if (let ((__tmp17142
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl1582515978_))))
                                          (declare (not safe))
                                          (equal? __tmp17142 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body15982_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E1580615949_)))))
                                (let () (declare (not safe)) (_$E1580615949_)))
                            (let () (declare (not safe)) (_$E1580615949_))))
                      (let () (declare (not safe)) (_$E1580615949_))))
                (let () (declare (not safe)) (_$E1580615949_)))))))
    (define __compile-let-values%
      (lambda (_stx15612_)
        (letrec ((_compile-simple15614_
                  (lambda (_hd-ids15793_ _exprs15794_ _body15795_)
                    (let ((__tmp17144
                           (let ((__tmp17145
                                  (let ((__tmp17147
                                         (let ((__tmp17148
                                                (let ()
                                                  (declare (not safe))
                                                  (map __compile-head-id
                                                       _hd-ids15793_))))
                                           (declare (not safe))
                                           (map list __tmp17148 _exprs15794_)))
                                        (__tmp17146
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15795_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17147 __tmp17146))))
                             (declare (not safe))
                             (cons 'let __tmp17145))))
                      (declare (not safe))
                      (__SRC__% __tmp17144 _stx15612_))))
                 (_compile-values15615_
                  (lambda (_hd-ids15711_ _exprs15712_ _body15713_)
                    (let _lp15715_ ((_rest15717_ _hd-ids15711_)
                                    (_exprs15718_ _exprs15712_)
                                    (_bind15719_ '())
                                    (_post15720_ '()))
                      (let* ((_rest1572115735_ _rest15717_)
                             (_else1572415743_
                              (lambda ()
                                (let ((__tmp17149
                                       (let ((__tmp17150
                                              (let ((__tmp17153
                                                     (let ()
                                                       (declare (not safe))
                                                       (reverse _bind15719_)))
                                                    (__tmp17151
                                                     (let ((__tmp17152
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post15616_
                                                               _post15720_
                                                               _body15713_))))
                                                       (declare (not safe))
                                                       (cons __tmp17152 '()))))
                                                (declare (not safe))
                                                (cons __tmp17153 __tmp17151))))
                                         (declare (not safe))
                                         (cons 'let __tmp17150))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17149 _stx15612_)))))
                        (let ((_K1572915776_
                               (lambda (_rest15773_ _id15774_)
                                 (let ((__tmp17159
                                        (let ()
                                          (declare (not safe))
                                          (cdr _exprs15718_)))
                                       (__tmp17154
                                        (let ((__tmp17155
                                               (let ((__tmp17158
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id15774_)))
                                                     (__tmp17156
                                                      (let ((__tmp17157
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (car _exprs15718_))))
                (declare (not safe))
                (cons __tmp17157 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17158
                                                       __tmp17156))))
                                          (declare (not safe))
                                          (cons __tmp17155 _bind15719_))))
                                   (declare (not safe))
                                   (_lp15715_
                                    _rest15773_
                                    __tmp17159
                                    __tmp17154
                                    _post15720_))))
                              (_K1572615758_
                               (lambda (_rest15747_ _hd15748_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15748_))
                                     (let ((__tmp17180
                                            (let ()
                                              (declare (not safe))
                                              (cdr _exprs15718_)))
                                           (__tmp17173
                                            (let ((__tmp17174
                                                   (let ((__tmp17179
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd15748_)))
                                                         (__tmp17175
                                                          (let ((__tmp17176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17177
                                (let ((__tmp17178
                                       (let ()
                                         (declare (not safe))
                                         (car _exprs15718_))))
                                  (declare (not safe))
                                  (cons __tmp17178 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17177))))
                    (declare (not safe))
                    (cons __tmp17176 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17179
                                                           __tmp17175))))
                                              (declare (not safe))
                                              (cons __tmp17174 _bind15719_))))
                                       (declare (not safe))
                                       (_lp15715_
                                        _rest15747_
                                        __tmp17180
                                        __tmp17173
                                        _post15720_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd15748_))
                                         (let* ((_len15750_ (length _hd15748_))
                                                (_tmp15752_
                                                 (let ((__tmp17160
                                                        (let ()
                                                          (declare (not safe))
                                                          (gensym))))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17160))))
                                           (let ((__tmp17172
                                                  (let ()
                                                    (declare (not safe))
                                                    (cdr _exprs15718_)))
                                                 (__tmp17168
                                                  (let ((__tmp17169
                                                         (let ((__tmp17170
                                                                (let ((__tmp17171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (car _exprs15718_))))
                          (declare (not safe))
                          (cons __tmp17171 '()))))
                   (declare (not safe))
                   (cons _tmp15752_ __tmp17170))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17169
                                                          _bind15719_)))
                                                 (__tmp17161
                                                  (let ((__tmp17162
                                                         (let ((__tmp17163
                                                                (let ((__tmp17164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17166
                                      (lambda (_id15755_ _k15756_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id15755_))
                                            (let ((__tmp17167
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id15755_))))
                                              (declare (not safe))
                                              (cons __tmp17167 _k15756_))
                                            '#f)))
                                     (__tmp17165
                                      (let ()
                                        (declare (not safe))
                                        (iota _len15750_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17166
                                  _hd15748_
                                  __tmp17165))))
                          (declare (not safe))
                          (cons _len15750_ __tmp17164))))
                   (declare (not safe))
                   (cons _tmp15752_ __tmp17163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17162
                                                          _post15720_))))
                                             (declare (not safe))
                                             (_lp15715_
                                              _rest15747_
                                              __tmp17172
                                              __tmp17168
                                              __tmp17161)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15612_
                                            _hd15748_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1572115735_))
                              (let ((_tl1573115781_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1572115735_)))
                                    (_hd1573015779_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1572115735_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1573015779_))
                                    (let ((_tl1573315786_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1573015779_)))
                                          (_hd1573215784_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1573015779_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1573315786_))
                                          (let ((_id15789_ _hd1573215784_)
                                                (_rest15791_ _tl1573115781_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1572915776_
                                               _rest15791_
                                               _id15789_)))
                                          (let ((_hd15766_ _hd1573015779_)
                                                (_rest15768_ _tl1573115781_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1572615758_
                                               _rest15768_
                                               _hd15766_)))))
                                    (let ((_hd15766_ _hd1573015779_)
                                          (_rest15768_ _tl1573115781_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1572615758_
                                         _rest15768_
                                         _hd15766_)))))
                              (let ()
                                (declare (not safe))
                                (_else1572415743_))))))))
                 (_compile-post15616_
                  (lambda (_post15618_ _body15619_)
                    (let _lp15621_ ((_rest15623_ _post15618_)
                                    (_check15624_ '())
                                    (_bind15625_ '()))
                      (let* ((_rest1562615638_ _rest15623_)
                             (_else1562815646_
                              (lambda ()
                                (let ((__tmp17181
                                       (let ((__tmp17182
                                              (let ((__tmp17183
                                                     (let ((__tmp17184
                                                            (let ((__tmp17185
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17186
                                  (let ((__tmp17187
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15619_ '()))))
                                    (declare (not safe))
                                    (cons _bind15625_ __tmp17187))))
                             (declare (not safe))
                             (cons 'let __tmp17186))))
                      (declare (not safe))
                      (__SRC__% __tmp17185 _stx15612_))))
               (declare (not safe))
               (cons __tmp17184 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17183
                                                        _check15624_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17182))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17181 _stx15612_))))
                             (_K1563015685_
                              (lambda (_rest15649_
                                       _init15650_
                                       _len15651_
                                       _tmp15652_)
                                (let ((__tmp17195
                                       (let ((__tmp17196
                                              (let ((__tmp17197
                                                     (let ((__tmp17198
                                                            (let ((__tmp17199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15651_ '()))))
                      (declare (not safe))
                      (cons _tmp15652_ __tmp17199))))
               (declare (not safe))
               (cons '__check-values __tmp17198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17197
                                                 _stx15612_))))
                                         (declare (not safe))
                                         (cons __tmp17196 _check15624_)))
                                      (__tmp17188
                                       (let ((__tmp17189
                                              (lambda (_hd15654_ _r15655_)
                                                (let* ((_hd1565615663_
                                                        _hd15654_)
                                                       (_E1565815667_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1565615663_))))
               (_K1565915673_
                (lambda (_k15670_ _id15671_)
                  (let ((__tmp17190
                         (let ((__tmp17191
                                (let ((__tmp17192
                                       (let ((__tmp17193
                                              (let ((__tmp17194
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k15670_ '()))))
                                                (declare (not safe))
                                                (cons _tmp15652_ __tmp17194))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp17193))))
                                  (declare (not safe))
                                  (cons __tmp17192 '()))))
                           (declare (not safe))
                           (cons _id15671_ __tmp17191))))
                    (declare (not safe))
                    (cons __tmp17190 _r15655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1565615663_))
                                                      (let ((_hd1566015676_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1565615663_)))
                    (_tl1566115678_
                     (let () (declare (not safe)) (##cdr _hd1565615663_))))
                (let* ((_id15681_ _hd1566015676_) (_k15683_ _tl1566115678_))
                  (declare (not safe))
                  (_K1565915673_ _k15683_ _id15681_)))
              (let () (declare (not safe)) (_E1565815667_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17189
                                                 _bind15625_
                                                 _init15650_))))
                                  (declare (not safe))
                                  (_lp15621_
                                   _rest15649_
                                   __tmp17195
                                   __tmp17188)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1562615638_))
                            (let ((_hd1563115688_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1562615638_)))
                                  (_tl1563215690_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1562615638_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1563115688_))
                                  (let ((_hd1563315693_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1563115688_)))
                                        (_tl1563415695_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1563115688_))))
                                    (let ((_tmp15698_ _hd1563315693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1563415695_))
                                          (let ((_hd1563515700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1563415695_)))
                                                (_tl1563615702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1563415695_))))
                                            (let* ((_len15705_ _hd1563515700_)
                                                   (_init15707_ _tl1563615702_)
                                                   (_rest15709_
                                                    _tl1563215690_))
                                              (declare (not safe))
                                              (_K1563015685_
                                               _rest15709_
                                               _init15707_
                                               _len15705_
                                               _tmp15698_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1562815646_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1562815646_))))
                            (let ()
                              (declare (not safe))
                              (_else1562815646_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15612_
             _compile-simple15614_
             _compile-values15615_)))))
    (define __compile-letrec-values%
      (lambda (_stx15412_)
        (letrec ((_compile-simple15414_
                  (lambda (_hd-ids15608_ _exprs15609_ _body15610_)
                    (let ((__tmp17200
                           (let ((__tmp17201
                                  (let ((__tmp17203
                                         (let ((__tmp17204
                                                (let ()
                                                  (declare (not safe))
                                                  (map __compile-head-id
                                                       _hd-ids15608_))))
                                           (declare (not safe))
                                           (map list __tmp17204 _exprs15609_)))
                                        (__tmp17202
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15610_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17203 __tmp17202))))
                             (declare (not safe))
                             (cons 'letrec __tmp17201))))
                      (declare (not safe))
                      (__SRC__% __tmp17200 _stx15412_))))
                 (_compile-values15415_
                  (lambda (_hd-ids15522_ _exprs15523_ _body15524_)
                    (let _lp15526_ ((_rest15528_ _hd-ids15522_)
                                    (_exprs15529_ _exprs15523_)
                                    (_pre15530_ '())
                                    (_bind15531_ '())
                                    (_post15532_ '()))
                      (let* ((_rest1553315547_ _rest15528_)
                             (_else1553615555_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner15416_
                                   _pre15530_
                                   _bind15531_
                                   _post15532_
                                   _body15524_)))))
                        (let ((_K1554115591_
                               (lambda (_rest15588_ _id15589_)
                                 (let ((__tmp17210
                                        (let ()
                                          (declare (not safe))
                                          (cdr _exprs15529_)))
                                       (__tmp17205
                                        (let ((__tmp17206
                                               (let ((__tmp17209
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id15589_)))
                                                     (__tmp17207
                                                      (let ((__tmp17208
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (car _exprs15529_))))
                (declare (not safe))
                (cons __tmp17208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp17209
                                                       __tmp17207))))
                                          (declare (not safe))
                                          (cons __tmp17206 _bind15531_))))
                                   (declare (not safe))
                                   (_lp15526_
                                    _rest15588_
                                    __tmp17210
                                    _pre15530_
                                    __tmp17205
                                    _post15532_))))
                              (_K1553815573_
                               (lambda (_rest15559_ _hd15560_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15560_))
                                     (let ((__tmp17238
                                            (let ()
                                              (declare (not safe))
                                              (cdr _exprs15529_)))
                                           (__tmp17231
                                            (let ((__tmp17232
                                                   (let ((__tmp17237
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd15560_)))
                                                         (__tmp17233
                                                          (let ((__tmp17234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp17235
                                (let ((__tmp17236
                                       (let ()
                                         (declare (not safe))
                                         (car _exprs15529_))))
                                  (declare (not safe))
                                  (cons __tmp17236 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp17235))))
                    (declare (not safe))
                    (cons __tmp17234 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp17237
                                                           __tmp17233))))
                                              (declare (not safe))
                                              (cons __tmp17232 _bind15531_))))
                                       (declare (not safe))
                                       (_lp15526_
                                        _rest15559_
                                        __tmp17238
                                        _pre15530_
                                        __tmp17231
                                        _post15532_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd15560_))
                                         (let* ((_len15562_ (length _hd15560_))
                                                (_tmp15564_
                                                 (let ((__tmp17211
                                                        (let ()
                                                          (declare (not safe))
                                                          (gensym))))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp17211))))
                                           (let ((__tmp17230
                                                  (let ()
                                                    (declare (not safe))
                                                    (cdr _exprs15529_)))
                                                 (__tmp17223
                                                  (let ((__tmp17224
                                                         (lambda (_id15567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r15568_)
                   (if (let () (declare (not safe)) (__AST-e _id15567_))
                       (let ((__tmp17225
                              (let ((__tmp17229
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id15567_)))
                                    (__tmp17226
                                     (let ((__tmp17227
                                            (let ((__tmp17228
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp17228))))
                                       (declare (not safe))
                                       (cons __tmp17227 '()))))
                                (declare (not safe))
                                (cons __tmp17229 __tmp17226))))
                         (declare (not safe))
                         (cons __tmp17225 _r15568_))
                       _r15568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp17224
                                                            _pre15530_
                                                            _hd15560_)))
                                                 (__tmp17219
                                                  (let ((__tmp17220
                                                         (let ((__tmp17221
                                                                (let ((__tmp17222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (car _exprs15529_))))
                          (declare (not safe))
                          (cons __tmp17222 '()))))
                   (declare (not safe))
                   (cons _tmp15564_ __tmp17221))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17220
                                                          _bind15531_)))
                                                 (__tmp17212
                                                  (let ((__tmp17213
                                                         (let ((__tmp17214
                                                                (let ((__tmp17215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp17217
                                      (lambda (_id15570_ _k15571_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id15570_))
                                            (let ((__tmp17218
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id15570_))))
                                              (declare (not safe))
                                              (cons __tmp17218 _k15571_))
                                            '#f)))
                                     (__tmp17216
                                      (let ()
                                        (declare (not safe))
                                        (iota _len15562_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp17217
                                  _hd15560_
                                  __tmp17216))))
                          (declare (not safe))
                          (cons _len15562_ __tmp17215))))
                   (declare (not safe))
                   (cons _tmp15564_ __tmp17214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17213
                                                          _post15532_))))
                                             (declare (not safe))
                                             (_lp15526_
                                              _rest15559_
                                              __tmp17230
                                              __tmp17223
                                              __tmp17219
                                              __tmp17212)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx15412_
                                            _hd15560_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1553315547_))
                              (let ((_tl1554315596_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1553315547_)))
                                    (_hd1554215594_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1553315547_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1554215594_))
                                    (let ((_tl1554515601_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1554215594_)))
                                          (_hd1554415599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1554215594_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1554515601_))
                                          (let ((_id15604_ _hd1554415599_)
                                                (_rest15606_ _tl1554315596_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1554115591_
                                               _rest15606_
                                               _id15604_)))
                                          (let ((_hd15581_ _hd1554215594_)
                                                (_rest15583_ _tl1554315596_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1553815573_
                                               _rest15583_
                                               _hd15581_)))))
                                    (let ((_hd15581_ _hd1554215594_)
                                          (_rest15583_ _tl1554315596_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1553815573_
                                         _rest15583_
                                         _hd15581_)))))
                              (let ()
                                (declare (not safe))
                                (_else1553615555_))))))))
                 (_compile-inner15416_
                  (lambda (_pre15517_ _bind15518_ _post15519_ _body15520_)
                    (if (let () (declare (not safe)) (null? _pre15517_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind15417_
                           _bind15518_
                           _post15519_
                           _body15520_))
                        (let ((__tmp17239
                               (let ((__tmp17240
                                      (let ((__tmp17243
                                             (let ()
                                               (declare (not safe))
                                               (reverse _pre15517_)))
                                            (__tmp17241
                                             (let ((__tmp17242
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind15417_
                                                       _bind15518_
                                                       _post15519_
                                                       _body15520_))))
                                               (declare (not safe))
                                               (cons __tmp17242 '()))))
                                        (declare (not safe))
                                        (cons __tmp17243 __tmp17241))))
                                 (declare (not safe))
                                 (cons 'let __tmp17240))))
                          (declare (not safe))
                          (__SRC__% __tmp17239 _stx15412_)))))
                 (_compile-bind15417_
                  (lambda (_bind15513_ _post15514_ _body15515_)
                    (let ((__tmp17244
                           (let ((__tmp17245
                                  (let ((__tmp17248
                                         (let ()
                                           (declare (not safe))
                                           (reverse _bind15513_)))
                                        (__tmp17246
                                         (let ((__tmp17247
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15418_
                                                   _post15514_
                                                   _body15515_))))
                                           (declare (not safe))
                                           (cons __tmp17247 '()))))
                                    (declare (not safe))
                                    (cons __tmp17248 __tmp17246))))
                             (declare (not safe))
                             (cons 'letrec __tmp17245))))
                      (declare (not safe))
                      (__SRC__% __tmp17244 _stx15412_))))
                 (_compile-post15418_
                  (lambda (_post15420_ _body15421_)
                    (let _lp15423_ ((_rest15425_ _post15420_)
                                    (_check15426_ '())
                                    (_bind15427_ '()))
                      (let* ((_rest1542815440_ _rest15425_)
                             (_else1543015448_
                              (lambda ()
                                (let ((__tmp17249
                                       (let ((__tmp17250
                                              (let ((__tmp17251
                                                     (let ((__tmp17252
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body15421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp17252 _bind15427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp17251
                                                        _check15426_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp17250))))
                                  (declare (not safe))
                                  (__SRC__% __tmp17249 _stx15412_))))
                             (_K1543215487_
                              (lambda (_rest15451_
                                       _init15452_
                                       _len15453_
                                       _tmp15454_)
                                (let ((__tmp17261
                                       (let ((__tmp17262
                                              (let ((__tmp17263
                                                     (let ((__tmp17264
                                                            (let ((__tmp17265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len15453_ '()))))
                      (declare (not safe))
                      (cons _tmp15454_ __tmp17265))))
               (declare (not safe))
               (cons '__check-values __tmp17264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp17263
                                                 _stx15412_))))
                                         (declare (not safe))
                                         (cons __tmp17262 _check15426_)))
                                      (__tmp17253
                                       (let ((__tmp17254
                                              (lambda (_hd15456_ _r15457_)
                                                (let* ((_hd1545815465_
                                                        _hd15456_)
                                                       (_E1546015469_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd1545815465_))))
               (_K1546115475_
                (lambda (_k15472_ _id15473_)
                  (let ((__tmp17255
                         (let ((__tmp17256
                                (let ((__tmp17257
                                       (let ((__tmp17258
                                              (let ((__tmp17259
                                                     (let ((__tmp17260
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k15472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp15454_ __tmp17260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp17259))))
                                         (declare (not safe))
                                         (cons __tmp17258 '()))))
                                  (declare (not safe))
                                  (cons _id15473_ __tmp17257))))
                           (declare (not safe))
                           (cons 'set! __tmp17256))))
                    (declare (not safe))
                    (cons __tmp17255 _r15457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd1545815465_))
                                                      (let ((_hd1546215478_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd1545815465_)))
                    (_tl1546315480_
                     (let () (declare (not safe)) (##cdr _hd1545815465_))))
                (let* ((_id15483_ _hd1546215478_) (_k15485_ _tl1546315480_))
                  (declare (not safe))
                  (_K1546115475_ _k15485_ _id15483_)))
              (let () (declare (not safe)) (_E1546015469_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp17254
                                                 _bind15427_
                                                 _init15452_))))
                                  (declare (not safe))
                                  (_lp15423_
                                   _rest15451_
                                   __tmp17261
                                   __tmp17253)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1542815440_))
                            (let ((_hd1543315490_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1542815440_)))
                                  (_tl1543415492_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1542815440_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd1543315490_))
                                  (let ((_hd1543515495_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd1543315490_)))
                                        (_tl1543615497_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd1543315490_))))
                                    (let ((_tmp15500_ _hd1543515495_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl1543615497_))
                                          (let ((_hd1543715502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl1543615497_)))
                                                (_tl1543815504_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl1543615497_))))
                                            (let* ((_len15507_ _hd1543715502_)
                                                   (_init15509_ _tl1543815504_)
                                                   (_rest15511_
                                                    _tl1543415492_))
                                              (declare (not safe))
                                              (_K1543215487_
                                               _rest15511_
                                               _init15509_
                                               _len15507_
                                               _tmp15500_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else1543015448_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else1543015448_))))
                            (let ()
                              (declare (not safe))
                              (_else1543015448_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15412_
             _compile-simple15414_
             _compile-values15415_)))))
    (define __compile-letrec*-values%
      (lambda (_stx15167_)
        (letrec ((_compile-simple15169_
                  (lambda (_hd-ids15408_ _exprs15409_ _body15410_)
                    (let ((__tmp17266
                           (let ((__tmp17267
                                  (let ((__tmp17269
                                         (let ((__tmp17270
                                                (let ()
                                                  (declare (not safe))
                                                  (map __compile-head-id
                                                       _hd-ids15408_))))
                                           (declare (not safe))
                                           (map list __tmp17270 _exprs15409_)))
                                        (__tmp17268
                                         (let ()
                                           (declare (not safe))
                                           (cons _body15410_ '()))))
                                    (declare (not safe))
                                    (cons __tmp17269 __tmp17268))))
                             (declare (not safe))
                             (cons 'letrec* __tmp17267))))
                      (declare (not safe))
                      (__SRC__% __tmp17266 _stx15167_))))
                 (_compile-values15170_
                  (lambda (_hd-ids15319_ _exprs15320_ _body15321_)
                    (let _lp15323_ ((_rest15325_ _hd-ids15319_)
                                    (_exprs15326_ _exprs15320_)
                                    (_bind15327_ '())
                                    (_post15328_ '()))
                      (let* ((_rest1532915343_ _rest15325_)
                             (_else1533215351_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind15171_
                                   _bind15327_
                                   _post15328_
                                   _body15321_)))))
                        (let ((_K1533715391_
                               (lambda (_rest15386_ _hd15387_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15387_))
                                     (let ((_id15389_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15387_))))
                                       (let ((__tmp17285
                                              (let ()
                                                (declare (not safe))
                                                (cdr _exprs15326_)))
                                             (__tmp17280
                                              (let ((__tmp17281
                                                     (let ((__tmp17282
                                                            (let ((__tmp17283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17284
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17284))))
                      (declare (not safe))
                      (cons __tmp17283 '()))))
               (declare (not safe))
               (cons _id15389_ __tmp17282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17281 _bind15327_)))
                                             (__tmp17276
                                              (let ((__tmp17277
                                                     (let ((__tmp17278
                                                            (let ((__tmp17279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (car _exprs15326_))))
                      (declare (not safe))
                      (cons __tmp17279 '()))))
               (declare (not safe))
               (cons _id15389_ __tmp17278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17277
                                                      _post15328_))))
                                         (declare (not safe))
                                         (_lp15323_
                                          _rest15386_
                                          __tmp17285
                                          __tmp17280
                                          __tmp17276)))
                                     (let ((__tmp17275
                                            (let ()
                                              (declare (not safe))
                                              (cdr _exprs15326_)))
                                           (__tmp17271
                                            (let ((__tmp17272
                                                   (let ((__tmp17273
                                                          (let ((__tmp17274
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (car _exprs15326_))))
                    (declare (not safe))
                    (cons __tmp17274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp17273))))
                                              (declare (not safe))
                                              (cons __tmp17272 _post15328_))))
                                       (declare (not safe))
                                       (_lp15323_
                                        _rest15386_
                                        __tmp17275
                                        _bind15327_
                                        __tmp17271)))))
                              (_K1533415371_
                               (lambda (_rest15355_ _hd15356_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd15356_))
                                     (let ((_id15358_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd15356_))))
                                       (let ((__tmp17321
                                              (let ()
                                                (declare (not safe))
                                                (cdr _exprs15326_)))
                                             (__tmp17316
                                              (let ((__tmp17317
                                                     (let ((__tmp17318
                                                            (let ((__tmp17319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17320
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp17320))))
                      (declare (not safe))
                      (cons __tmp17319 '()))))
               (declare (not safe))
               (cons _id15358_ __tmp17318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17317 _bind15327_)))
                                             (__tmp17310
                                              (let ((__tmp17311
                                                     (let ((__tmp17312
                                                            (let ((__tmp17313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp17314
                                  (let ((__tmp17315
                                         (let ()
                                           (declare (not safe))
                                           (car _exprs15326_))))
                                    (declare (not safe))
                                    (cons __tmp17315 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp17314))))
                      (declare (not safe))
                      (cons __tmp17313 '()))))
               (declare (not safe))
               (cons _id15358_ __tmp17312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp17311
                                                      _post15328_))))
                                         (declare (not safe))
                                         (_lp15323_
                                          _rest15355_
                                          __tmp17321
                                          __tmp17316
                                          __tmp17310)))
                                     (if (let ((__tmp17309
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd15356_))))
                                           (declare (not safe))
                                           (not __tmp17309))
                                         (let ((__tmp17308
                                                (let ()
                                                  (declare (not safe))
                                                  (cdr _exprs15326_)))
                                               (__tmp17304
                                                (let ((__tmp17305
                                                       (let ((__tmp17306
                                                              (let ((__tmp17307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (car _exprs15326_))))
                        (declare (not safe))
                        (cons __tmp17307 '()))))
                 (declare (not safe))
                 (cons '#f __tmp17306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp17305
                                                        _post15328_))))
                                           (declare (not safe))
                                           (_lp15323_
                                            _rest15355_
                                            __tmp17308
                                            _bind15327_
                                            __tmp17304))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd15356_))
                                             (let* ((_len15360_
                                                     (length _hd15356_))
                                                    (_tmp15362_
                                                     (let ((__tmp17286
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gensym))))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp17286))))
                                               (let ((__tmp17303
                                                      (let ()
                                                        (declare (not safe))
                                                        (cdr _exprs15326_)))
                                                     (__tmp17296
                                                      (let ((__tmp17297
                                                             (lambda (_id15365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r15366_)
                       (if (let () (declare (not safe)) (__AST-e _id15365_))
                           (let ((__tmp17298
                                  (let ((__tmp17302
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id15365_)))
                                        (__tmp17299
                                         (let ((__tmp17300
                                                (let ((__tmp17301
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp17301))))
                                           (declare (not safe))
                                           (cons __tmp17300 '()))))
                                    (declare (not safe))
                                    (cons __tmp17302 __tmp17299))))
                             (declare (not safe))
                             (cons __tmp17298 _r15366_))
                           _r15366_))))
                (declare (not safe))
                (foldl1 __tmp17297 _bind15327_ _hd15356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp17287
                                                      (let ((__tmp17288
                                                             (let ((__tmp17289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp17295
                                   (let ()
                                     (declare (not safe))
                                     (car _exprs15326_)))
                                  (__tmp17290
                                   (let ((__tmp17291
                                          (let ((__tmp17293
                                                 (lambda (_id15368_ _k15369_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id15368_))
                                                       (let ((__tmp17294
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id15368_))))
                 (declare (not safe))
                 (cons __tmp17294 _k15369_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp17292
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len15360_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp17293
                                             _hd15356_
                                             __tmp17292))))
                                     (declare (not safe))
                                     (cons _len15360_ __tmp17291))))
                              (declare (not safe))
                              (cons __tmp17295 __tmp17290))))
                       (declare (not safe))
                       (cons _tmp15362_ __tmp17289))))
                (declare (not safe))
                (cons __tmp17288 _post15328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp15323_
                                                  _rest15355_
                                                  __tmp17303
                                                  __tmp17296
                                                  __tmp17287)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx15167_
                                                _hd15356_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1532915343_))
                              (let ((_tl1533915396_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1532915343_)))
                                    (_hd1533815394_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1532915343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd1533815394_))
                                    (let ((_tl1534115401_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd1533815394_)))
                                          (_hd1534015399_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd1533815394_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl1534115401_))
                                          (let ((_hd15404_ _hd1534015399_)
                                                (_rest15406_ _tl1533915396_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1533715391_
                                               _rest15406_
                                               _hd15404_)))
                                          (let ((_hd15379_ _hd1533815394_)
                                                (_rest15381_ _tl1533915396_))
                                            (let ()
                                              (declare (not safe))
                                              (_K1533415371_
                                               _rest15381_
                                               _hd15379_)))))
                                    (let ((_hd15379_ _hd1533815394_)
                                          (_rest15381_ _tl1533915396_))
                                      (let ()
                                        (declare (not safe))
                                        (_K1533415371_
                                         _rest15381_
                                         _hd15379_)))))
                              (let ()
                                (declare (not safe))
                                (_else1533215351_))))))))
                 (_compile-bind15171_
                  (lambda (_bind15315_ _post15316_ _body15317_)
                    (let ((__tmp17322
                           (let ((__tmp17323
                                  (let ((__tmp17326
                                         (let ()
                                           (declare (not safe))
                                           (reverse _bind15315_)))
                                        (__tmp17324
                                         (let ((__tmp17325
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post15172_
                                                   _post15316_
                                                   _body15317_))))
                                           (declare (not safe))
                                           (cons __tmp17325 '()))))
                                    (declare (not safe))
                                    (cons __tmp17326 __tmp17324))))
                             (declare (not safe))
                             (cons 'let __tmp17323))))
                      (declare (not safe))
                      (__SRC__% __tmp17322 _stx15167_))))
                 (_compile-post15172_
                  (lambda (_post15174_ _body15175_)
                    (let ((__tmp17327
                           (let ((__tmp17328
                                  (let ((__tmp17329
                                         (let ((__tmp17331
                                                (lambda (_hd15177_ _r15178_)
                                                  (let* ((_hd1517915202_
                                                          _hd15177_)
                                                         (_E1518315206_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd1517915202_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1519615300_
                                                           (lambda (_expr15298_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr15298_ _r15178_))))
                  (_K1519115278_
                   (lambda (_expr15275_ _id15276_)
                     (let ((__tmp17332
                            (let ((__tmp17333
                                   (let ((__tmp17334
                                          (let ((__tmp17335
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr15275_ '()))))
                                            (declare (not safe))
                                            (cons _id15276_ __tmp17335))))
                                     (declare (not safe))
                                     (cons 'set! __tmp17334))))
                              (declare (not safe))
                              (__SRC__% __tmp17333 _stx15167_))))
                       (declare (not safe))
                       (cons __tmp17332 _r15178_))))
                  (_K1518415245_
                   (lambda (_init15210_ _len15211_ _expr15212_ _tmp15213_)
                     (let ((__tmp17336
                            (let ((__tmp17337
                                   (let ((__tmp17338
                                          (let ((__tmp17353
                                                 (let ((__tmp17354
                                                        (let ((__tmp17355
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr15212_ '()))))
                  (declare (not safe))
                  (cons _tmp15213_ __tmp17355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17354 '())))
                                                (__tmp17339
                                                 (let ((__tmp17349
                                                        (let ((__tmp17350
                                                               (let ((__tmp17351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17352
                                     (let ()
                                       (declare (not safe))
                                       (cons _len15211_ '()))))
                                (declare (not safe))
                                (cons _tmp15213_ __tmp17352))))
                         (declare (not safe))
                         (cons '__check-values __tmp17351))))
                  (declare (not safe))
                  (__SRC__% __tmp17350 _stx15167_)))
               (__tmp17340
                (let ((__tmp17341
                       (let ((__tmp17342
                              (lambda (_hd15215_)
                                (let* ((_hd1521615223_ _hd15215_)
                                       (_E1521815227_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _hd1521615223_))))
                                       (_K1521915233_
                                        (lambda (_k15230_ _id15231_)
                                          (let ((__tmp17343
                                                 (let ((__tmp17344
                                                        (let ((__tmp17345
                                                               (let ((__tmp17346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp17347
                                     (let ((__tmp17348
                                            (let ()
                                              (declare (not safe))
                                              (cons _k15230_ '()))))
                                       (declare (not safe))
                                       (cons _tmp15213_ __tmp17348))))
                                (declare (not safe))
                                (cons '##vector-ref __tmp17347))))
                         (declare (not safe))
                         (cons __tmp17346 '()))))
                  (declare (not safe))
                  (cons _id15231_ __tmp17345))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp17344))))
                                            (declare (not safe))
                                            (__SRC__%
                                             __tmp17343
                                             _stx15167_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _hd1521615223_))
                                      (let ((_hd1522015236_
                                             (let ()
                                               (declare (not safe))
                                               (##car _hd1521615223_)))
                                            (_tl1522115238_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _hd1521615223_))))
                                        (let* ((_id15241_ _hd1522015236_)
                                               (_k15243_ _tl1522115238_))
                                          (declare (not safe))
                                          (_K1521915233_ _k15243_ _id15241_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E1521815227_)))))))
                         (declare (not safe))
                         (map __tmp17342 _init15210_))))
                  (declare (not safe))
                  (foldr1 cons '() __tmp17341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp17349
                                                         __tmp17340))))
                                            (declare (not safe))
                                            (cons __tmp17353 __tmp17339))))
                                     (declare (not safe))
                                     (cons 'let __tmp17338))))
                              (declare (not safe))
                              (__SRC__% __tmp17337 _stx15167_))))
                       (declare (not safe))
                       (cons __tmp17336 _r15178_)))))
              (if (let () (declare (not safe)) (##pair? _hd1517915202_))
                  (let ((_tl1519815305_
                         (let () (declare (not safe)) (##cdr _hd1517915202_)))
                        (_hd1519715303_
                         (let () (declare (not safe)) (##car _hd1517915202_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd1519715303_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1519815305_))
                            (let ((_tl1520015310_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1519815305_)))
                                  (_hd1519915308_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1519815305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1520015310_))
                                  (let ((_expr15313_ _hd1519915308_))
                                    (declare (not safe))
                                    (_K1519615300_ _expr15313_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1520015310_))
                                      (let ((_tl1519015264_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1520015310_)))
                                            (_hd1518915262_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1520015310_))))
                                        (let ((_tmp15253_ _hd1519715303_)
                                              (_expr15260_ _hd1519915308_)
                                              (_len15267_ _hd1518915262_)
                                              (_init15269_ _tl1519015264_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1518415245_
                                             _init15269_
                                             _len15267_
                                             _expr15260_
                                             _tmp15253_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1518315206_)))))
                            (let () (declare (not safe)) (_E1518315206_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl1519815305_))
                            (let ((_tl1519515290_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl1519815305_)))
                                  (_hd1519415288_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl1519815305_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl1519515290_))
                                  (let ((_id15286_ _hd1519715303_)
                                        (_expr15293_ _hd1519415288_))
                                    (let ()
                                      (declare (not safe))
                                      (_K1519115278_ _expr15293_ _id15286_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl1519515290_))
                                      (let ((_tl1519015264_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl1519515290_)))
                                            (_hd1518915262_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl1519515290_))))
                                        (let ((_tmp15253_ _hd1519715303_)
                                              (_expr15260_ _hd1519415288_)
                                              (_len15267_ _hd1518915262_)
                                              (_init15269_ _tl1519015264_))
                                          (let ()
                                            (declare (not safe))
                                            (_K1518415245_
                                             _init15269_
                                             _len15267_
                                             _expr15260_
                                             _tmp15253_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E1518315206_)))))
                            (let () (declare (not safe)) (_E1518315206_)))))
                  (let () (declare (not safe)) (_E1518315206_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp17330 (list _body15175_)))
                                           (declare (not safe))
                                           (foldl1 __tmp17331
                                                   __tmp17330
                                                   _post15174_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp17329))))
                             (declare (not safe))
                             (cons 'begin __tmp17328))))
                      (declare (not safe))
                      (__SRC__% __tmp17327 _stx15167_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx15167_
             _compile-simple15169_
             _compile-values15170_)))))
    (define __compile-call%
      (lambda (_stx15127_)
        (let* ((_$e15129_ _stx15127_)
               (_$E1513115140_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15129_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15129_))
              (let* ((_$tgt1513215143_
                      (let () (declare (not safe)) (__AST-e _$e15129_)))
                     (_$hd1513315146_
                      (let () (declare (not safe)) (##car _$tgt1513215143_)))
                     (_$tl1513415149_
                      (let () (declare (not safe)) (##cdr _$tgt1513215143_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1513415149_))
                    (let* ((_$tgt1513515153_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1513415149_)))
                           (_$hd1513615156_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1513515153_)))
                           (_$tl1513715159_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1513515153_))))
                      (let* ((_rator15163_ _$hd1513615156_)
                             (_rands15165_ _$tl1513715159_)
                             (__tmp17356
                              (let ((__tmp17358
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator15163_)))
                                    (__tmp17357
                                     (let ()
                                       (declare (not safe))
                                       (map __compile _rands15165_))))
                                (declare (not safe))
                                (cons __tmp17358 __tmp17357))))
                        (declare (not safe))
                        (__SRC__% __tmp17356 _stx15127_)))
                    (let () (declare (not safe)) (_$E1513115140_))))
              (let () (declare (not safe)) (_$E1513115140_))))))
    (define __compile-ref%
      (lambda (_stx15089_)
        (let* ((_$e15091_ _stx15089_)
               (_$E1509315102_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15091_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15091_))
              (let* ((_$tgt1509415105_
                      (let () (declare (not safe)) (__AST-e _$e15091_)))
                     (_$hd1509515108_
                      (let () (declare (not safe)) (##car _$tgt1509415105_)))
                     (_$tl1509615111_
                      (let () (declare (not safe)) (##cdr _$tgt1509415105_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1509615111_))
                    (let* ((_$tgt1509715115_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1509615111_)))
                           (_$hd1509815118_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1509715115_)))
                           (_$tl1509915121_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1509715115_))))
                      (let ((_id15125_ _$hd1509815118_))
                        (if (let ((__tmp17359
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1509915121_))))
                              (declare (not safe))
                              (equal? __tmp17359 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id15125_ _stx15089_))
                            (let () (declare (not safe)) (_$E1509315102_)))))
                    (let () (declare (not safe)) (_$E1509315102_))))
              (let () (declare (not safe)) (_$E1509315102_))))))
    (define __compile-setq%
      (lambda (_stx15036_)
        (let* ((_$e15038_ _stx15036_)
               (_$E1504015052_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e15038_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e15038_))
              (let* ((_$tgt1504115055_
                      (let () (declare (not safe)) (__AST-e _$e15038_)))
                     (_$hd1504215058_
                      (let () (declare (not safe)) (##car _$tgt1504115055_)))
                     (_$tl1504315061_
                      (let () (declare (not safe)) (##cdr _$tgt1504115055_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1504315061_))
                    (let* ((_$tgt1504415065_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1504315061_)))
                           (_$hd1504515068_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1504415065_)))
                           (_$tl1504615071_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1504415065_))))
                      (let ((_id15075_ _$hd1504515068_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1504615071_))
                            (let* ((_$tgt1504715077_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1504615071_)))
                                   (_$hd1504815080_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1504715077_)))
                                   (_$tl1504915083_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1504715077_))))
                              (let ((_expr15087_ _$hd1504815080_))
                                (if (let ((__tmp17365
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl1504915083_))))
                                      (declare (not safe))
                                      (equal? __tmp17365 '()))
                                    (let ((__tmp17360
                                           (let ((__tmp17361
                                                  (let ((__tmp17364
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id15075_
                                                            _stx15036_)))
                                                        (__tmp17362
                                                         (let ((__tmp17363
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr15087_))))
                   (declare (not safe))
                   (cons __tmp17363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp17364
                                                          __tmp17362))))
                                             (declare (not safe))
                                             (cons 'set! __tmp17361))))
                                      (declare (not safe))
                                      (__SRC__% __tmp17360 _stx15036_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1504015052_)))))
                            (let () (declare (not safe)) (_$E1504015052_)))))
                    (let () (declare (not safe)) (_$E1504015052_))))
              (let () (declare (not safe)) (_$E1504015052_))))))
    (define __compile-if%
      (lambda (_stx14968_)
        (let* ((_$e14970_ _stx14968_)
               (_$E1497214987_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e14970_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14970_))
              (let* ((_$tgt1497314990_
                      (let () (declare (not safe)) (__AST-e _$e14970_)))
                     (_$hd1497414993_
                      (let () (declare (not safe)) (##car _$tgt1497314990_)))
                     (_$tl1497514996_
                      (let () (declare (not safe)) (##cdr _$tgt1497314990_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1497514996_))
                    (let* ((_$tgt1497615000_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1497514996_)))
                           (_$hd1497715003_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1497615000_)))
                           (_$tl1497815006_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1497615000_))))
                      (let ((_p15010_ _$hd1497715003_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl1497815006_))
                            (let* ((_$tgt1497915012_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl1497815006_)))
                                   (_$hd1498015015_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt1497915012_)))
                                   (_$tl1498115018_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt1497915012_))))
                              (let ((_t15022_ _$hd1498015015_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl1498115018_))
                                    (let* ((_$tgt1498215024_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl1498115018_)))
                                           (_$hd1498315027_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt1498215024_)))
                                           (_$tl1498415030_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt1498215024_))))
                                      (let ((_f15034_ _$hd1498315027_))
                                        (if (let ((__tmp17373
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl1498415030_))))
                                              (declare (not safe))
                                              (equal? __tmp17373 '()))
                                            (let ((__tmp17366
                                                   (let ((__tmp17367
                                                          (let ((__tmp17372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p15010_)))
                        (__tmp17368
                         (let ((__tmp17371
                                (let ()
                                  (declare (not safe))
                                  (__compile _t15022_)))
                               (__tmp17369
                                (let ((__tmp17370
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f15034_))))
                                  (declare (not safe))
                                  (cons __tmp17370 '()))))
                           (declare (not safe))
                           (cons __tmp17371 __tmp17369))))
                    (declare (not safe))
                    (cons __tmp17372 __tmp17368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp17367))))
                                              (declare (not safe))
                                              (__SRC__% __tmp17366 _stx14968_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E1497214987_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E1497214987_)))))
                            (let () (declare (not safe)) (_$E1497214987_)))))
                    (let () (declare (not safe)) (_$E1497214987_))))
              (let () (declare (not safe)) (_$E1497214987_))))))
    (define __compile-quote%
      (lambda (_stx14930_)
        (let* ((_$e14932_ _stx14930_)
               (_$E1493414943_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e14932_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14932_))
              (let* ((_$tgt1493514946_
                      (let () (declare (not safe)) (__AST-e _$e14932_)))
                     (_$hd1493614949_
                      (let () (declare (not safe)) (##car _$tgt1493514946_)))
                     (_$tl1493714952_
                      (let () (declare (not safe)) (##cdr _$tgt1493514946_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1493714952_))
                    (let* ((_$tgt1493814956_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1493714952_)))
                           (_$hd1493914959_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1493814956_)))
                           (_$tl1494014962_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1493814956_))))
                      (let ((_e14966_ _$hd1493914959_))
                        (if (let ((__tmp17377
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1494014962_))))
                              (declare (not safe))
                              (equal? __tmp17377 '()))
                            (let ((__tmp17374
                                   (let ((__tmp17375
                                          (let ((__tmp17376
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e14966_))))
                                            (declare (not safe))
                                            (cons __tmp17376 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17375))))
                              (declare (not safe))
                              (__SRC__% __tmp17374 _stx14930_))
                            (let () (declare (not safe)) (_$E1493414943_)))))
                    (let () (declare (not safe)) (_$E1493414943_))))
              (let () (declare (not safe)) (_$E1493414943_))))))
    (define __compile-quote-syntax%
      (lambda (_stx14892_)
        (let* ((_$e14894_ _stx14892_)
               (_$E1489614905_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error '#f '"Bad syntax" _$e14894_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e14894_))
              (let* ((_$tgt1489714908_
                      (let () (declare (not safe)) (__AST-e _$e14894_)))
                     (_$hd1489814911_
                      (let () (declare (not safe)) (##car _$tgt1489714908_)))
                     (_$tl1489914914_
                      (let () (declare (not safe)) (##cdr _$tgt1489714908_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl1489914914_))
                    (let* ((_$tgt1490014918_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl1489914914_)))
                           (_$hd1490114921_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt1490014918_)))
                           (_$tl1490214924_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt1490014918_))))
                      (let ((_e14928_ _$hd1490114921_))
                        (if (let ((__tmp17380
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl1490214924_))))
                              (declare (not safe))
                              (equal? __tmp17380 '()))
                            (let ((__tmp17378
                                   (let ((__tmp17379
                                          (let ()
                                            (declare (not safe))
                                            (cons _e14928_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp17379))))
                              (declare (not safe))
                              (__SRC__% __tmp17378 _stx14892_))
                            (let () (declare (not safe)) (_$E1489614905_)))))
                    (let () (declare (not safe)) (_$E1489614905_))))
              (let () (declare (not safe)) (_$E1489614905_))))))
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
