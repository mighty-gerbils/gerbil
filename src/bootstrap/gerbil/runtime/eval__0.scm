(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710617601)
  (begin
    (define __syntax::t
      (let ((__tmp76255 (list))
            (__tmp76253
             (let ((__tmp76254
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76254 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76255
         '(e id)
         __tmp76253
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76064_ (apply make-instance __syntax::t _$args76064_)))
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
    (define __core-form::t
      (let ((__tmp76258 (list __syntax::t))
            (__tmp76256
             (let ((__tmp76257
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76257 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76258
         '()
         __tmp76256
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76061_ (apply make-instance __core-form::t _$args76061_)))
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
      (let ((__tmp76261 (list __core-form::t))
            (__tmp76259
             (let ((__tmp76260
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76260 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76261
         '()
         __tmp76259
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76058_
        (apply make-instance __core-expression::t _$args76058_)))
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
      (let ((__tmp76264 (list __core-form::t))
            (__tmp76262
             (let ((__tmp76263
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76263 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76264
         '()
         __tmp76262
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76055_
        (apply make-instance __core-special-form::t _$args76055_)))
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
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_id76053_)
        (let ((__tmp76265 (let () (declare (not safe)) (__AST-e _id76053_))))
          (declare (not safe))
          (hash-get __core __tmp76265))))
    (define __core-bound-id?__%
      (lambda (_id76037_ _is?76038_)
        (let ((_$e76040_
               (let () (declare (not safe)) (__core-resolve _id76037_))))
          (if _$e76040_ (_is?76038_ _$e76040_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76046_)
        (let ((_is?76048_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76046_ _is?76048_))))
    (define __core-bound-id?
      (lambda _g76267_
        (let ((_g76266_ (let () (declare (not safe)) (##length _g76267_))))
          (cond ((let () (declare (not safe)) (##fx= _g76266_ 1))
                 (apply (lambda (_id76046_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76046_)))
                        _g76267_))
                ((let () (declare (not safe)) (##fx= _g76266_ 2))
                 (apply (lambda (_id76050_ _is?76051_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76050_ _is?76051_)))
                        _g76267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76267_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76020_ _e76021_ _make76022_)
        (let ((__tmp76268
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76021_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76021_
                   (_make76022_ _e76021_ _id76020_))))
          (declare (not safe))
          (hash-put! __core _id76020_ __tmp76268))))
    (define __core-bind-syntax!__0
      (lambda (_id76027_ _e76028_)
        (let ((_make76030_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76027_ _e76028_ _make76030_))))
    (define __core-bind-syntax!
      (lambda _g76270_
        (let ((_g76269_ (let () (declare (not safe)) (##length _g76270_))))
          (cond ((let () (declare (not safe)) (##fx= _g76269_ 2))
                 (apply (lambda (_id76027_ _e76028_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76027_ _e76028_)))
                        _g76270_))
                ((let () (declare (not safe)) (##fx= _g76269_ 3))
                 (apply (lambda (_id76032_ _e76033_ _make76034_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76032_
                             _e76033_
                             _make76034_)))
                        _g76270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76270_))))))
    (define __SRC__%
      (lambda (_e76003_ _src-stx76004_)
        (if (or (let () (declare (not safe)) (pair? _e76003_))
                (let () (declare (not safe)) (symbol? _e76003_)))
            (let ((__tmp76271
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76004_
                          'gerbil#AST::t))
                       (let ((__tmp76272
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76004_))))
                         (declare (not safe))
                         (__locat __tmp76272))
                       '#f)))
              (declare (not safe))
              (##make-source _e76003_ __tmp76271))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76003_ 'gerbil#AST::t))
                (let ((__tmp76275
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76003_ '1 AST::t '#f)))
                      (__tmp76273
                       (let ((__tmp76274
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76003_))))
                         (declare (not safe))
                         (__locat __tmp76274))))
                  (declare (not safe))
                  (##make-source __tmp76275 __tmp76273))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76003_))))))
    (define __SRC__0
      (lambda (_e76012_)
        (let ((_src-stx76014_ '#f))
          (declare (not safe))
          (__SRC__% _e76012_ _src-stx76014_))))
    (define __SRC
      (lambda _g76277_
        (let ((_g76276_ (let () (declare (not safe)) (##length _g76277_))))
          (cond ((let () (declare (not safe)) (##fx= _g76276_ 1))
                 (apply (lambda (_e76012_)
                          (let () (declare (not safe)) (__SRC__0 _e76012_)))
                        _g76277_))
                ((let () (declare (not safe)) (##fx= _g76276_ 2))
                 (apply (lambda (_e76016_ _src-stx76017_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76016_ _src-stx76017_)))
                        _g76277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76277_))))))
    (define __locat
      (lambda (_loc76000_)
        (if (let () (declare (not safe)) (##locat? _loc76000_))
            _loc76000_
            '#f)))
    (define __check-values
      (lambda (_obj75995_ _k75996_)
        (let ((_count75998_
               (if (let () (declare (not safe)) (##values? _obj75995_))
                   (let () (declare (not safe)) (##vector-length _obj75995_))
                   '1)))
          (if (fx= _count75998_ _k75996_)
              '#!void
              (let ((__tmp76279
                     (if (fx< _count75998_ _k75996_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76278
                     (if (let () (declare (not safe)) (##values? _obj75995_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj75995_))
                         _obj75995_)))
                (declare (not safe))
                (error __tmp76279 __tmp76278 _k75996_))))))
    (define __compile
      (lambda (_stx75965_)
        (let* ((_$e75967_ _stx75965_)
               (_$E7596975975_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75967_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75967_))
              (let* ((_$tgt7597075978_
                      (let () (declare (not safe)) (__AST-e _$e75967_)))
                     (_$hd7597175981_
                      (let () (declare (not safe)) (##car _$tgt7597075978_)))
                     (_$tl7597275984_
                      (let () (declare (not safe)) (##cdr _$tgt7597075978_))))
                (let* ((_form75988_ _$hd7597175981_)
                       (_$e75990_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form75988_))))
                  (if _$e75990_
                      ((lambda (_bind75993_)
                         ((##structure-ref _bind75993_ '1 __syntax::t '#f)
                          _stx75965_))
                       _$e75990_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx75965_
                         _form75988_)))))
              (let () (declare (not safe)) (_$E7596975975_))))))
    (define __compile-error__%
      (lambda (_stx75952_ _detail75953_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx75952_
           _detail75953_))))
    (define __compile-error__0
      (lambda (_stx75958_)
        (let ((_detail75960_ '#f))
          (declare (not safe))
          (__compile-error__% _stx75958_ _detail75960_))))
    (define __compile-error
      (lambda _g76281_
        (let ((_g76280_ (let () (declare (not safe)) (##length _g76281_))))
          (cond ((let () (declare (not safe)) (##fx= _g76280_ 1))
                 (apply (lambda (_stx75958_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx75958_)))
                        _g76281_))
                ((let () (declare (not safe)) (##fx= _g76280_ 2))
                 (apply (lambda (_stx75962_ _detail75963_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx75962_ _detail75963_)))
                        _g76281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76281_))))))
    (define __compile-ignore%
      (lambda (_stx75949_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx75949_))))
    (define __compile-begin%
      (lambda (_stx75924_)
        (let* ((_$e75926_ _stx75924_)
               (_$E7592875934_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75926_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75926_))
              (let* ((_$tgt7592975937_
                      (let () (declare (not safe)) (__AST-e _$e75926_)))
                     (_$hd7593075940_
                      (let () (declare (not safe)) (##car _$tgt7592975937_)))
                     (_$tl7593175943_
                      (let () (declare (not safe)) (##cdr _$tgt7592975937_))))
                (let* ((_body75947_ _$tl7593175943_)
                       (__tmp76282
                        (let ((__tmp76283 (map __compile _body75947_)))
                          (declare (not safe))
                          (cons 'begin __tmp76283))))
                  (declare (not safe))
                  (__SRC__% __tmp76282 _stx75924_)))
              (let () (declare (not safe)) (_$E7592875934_))))))
    (define __compile-begin-foreign%
      (lambda (_stx75899_)
        (let* ((_$e75901_ _stx75899_)
               (_$E7590375909_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75901_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75901_))
              (let* ((_$tgt7590475912_
                      (let () (declare (not safe)) (__AST-e _$e75901_)))
                     (_$hd7590575915_
                      (let () (declare (not safe)) (##car _$tgt7590475912_)))
                     (_$tl7590675918_
                      (let () (declare (not safe)) (##cdr _$tgt7590475912_))))
                (let* ((_body75922_ _$tl7590675918_)
                       (__tmp76284
                        (let ((__tmp76285
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body75922_))))
                          (declare (not safe))
                          (cons 'begin __tmp76285))))
                  (declare (not safe))
                  (__SRC__% __tmp76284 _stx75899_)))
              (let () (declare (not safe)) (_$E7590375909_))))))
    (define __compile-import%
      (lambda (_stx75874_)
        (let* ((_$e75876_ _stx75874_)
               (_$E7587875884_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75876_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75876_))
              (let* ((_$tgt7587975887_
                      (let () (declare (not safe)) (__AST-e _$e75876_)))
                     (_$hd7588075890_
                      (let () (declare (not safe)) (##car _$tgt7587975887_)))
                     (_$tl7588175893_
                      (let () (declare (not safe)) (##cdr _$tgt7587975887_))))
                (let* ((_body75897_ _$tl7588175893_)
                       (__tmp76286
                        (let ((__tmp76287
                               (let ((__tmp76288
                                      (let ((__tmp76289
                                             (let ()
                                               (declare (not safe))
                                               (cons _body75897_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76289))))
                                 (declare (not safe))
                                 (cons __tmp76288 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76287))))
                  (declare (not safe))
                  (__SRC__% __tmp76286 _stx75874_)))
              (let () (declare (not safe)) (_$E7587875884_))))))
    (define __compile-begin-annotation%
      (lambda (_stx75821_)
        (let* ((_$e75823_ _stx75821_)
               (_$E7582575837_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75823_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75823_))
              (let* ((_$tgt7582675840_
                      (let () (declare (not safe)) (__AST-e _$e75823_)))
                     (_$hd7582775843_
                      (let () (declare (not safe)) (##car _$tgt7582675840_)))
                     (_$tl7582875846_
                      (let () (declare (not safe)) (##cdr _$tgt7582675840_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7582875846_))
                    (let* ((_$tgt7582975850_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7582875846_)))
                           (_$hd7583075853_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7582975850_)))
                           (_$tl7583175856_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7582975850_))))
                      (let ((_ann75860_ _$hd7583075853_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7583175856_))
                            (let* ((_$tgt7583275862_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7583175856_)))
                                   (_$hd7583375865_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7583275862_)))
                                   (_$tl7583475868_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7583275862_))))
                              (let ((_expr75872_ _$hd7583375865_))
                                (if (let ((__tmp76290
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7583475868_))))
                                      (declare (not safe))
                                      (equal? __tmp76290 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr75872_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7582575837_)))))
                            (let () (declare (not safe)) (_$E7582575837_)))))
                    (let () (declare (not safe)) (_$E7582575837_))))
              (let () (declare (not safe)) (_$E7582575837_))))))
    (define __compile-define-values%
      (lambda (_stx75712_)
        (let* ((_$e75714_ _stx75712_)
               (_$E7571675728_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75714_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75714_))
              (let* ((_$tgt7571775731_
                      (let () (declare (not safe)) (__AST-e _$e75714_)))
                     (_$hd7571875734_
                      (let () (declare (not safe)) (##car _$tgt7571775731_)))
                     (_$tl7571975737_
                      (let () (declare (not safe)) (##cdr _$tgt7571775731_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7571975737_))
                    (let* ((_$tgt7572075741_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7571975737_)))
                           (_$hd7572175744_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7572075741_)))
                           (_$tl7572275747_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7572075741_))))
                      (let ((_hd75751_ _$hd7572175744_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7572275747_))
                            (let* ((_$tgt7572375753_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7572275747_)))
                                   (_$hd7572475756_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7572375753_)))
                                   (_$tl7572575759_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7572375753_))))
                              (let ((_expr75763_ _$hd7572475756_))
                                (if (let ((__tmp76291
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7572575759_))))
                                      (declare (not safe))
                                      (equal? __tmp76291 '()))
                                    (let* ((_$e75765_ _hd75751_)
                                           (_$E7576775808_
                                            (lambda ()
                                              (let ((_$E7576875793_
                                                     (lambda ()
                                                       (let* ((_$E7576975780_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e75765_))))
                      (_ids75783_ _hd75751_)
                      (_len75785_ (length _ids75783_))
                      (_tmp75787_
                       (let ((__tmp76292 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76292))))
                 (let ((__tmp76293
                        (let ((__tmp76294
                               (let ((__tmp76311
                                      (let ((__tmp76312
                                             (let ((__tmp76313
                                                    (let ((__tmp76314
                                                           (let ((__tmp76315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr75763_))))
                     (declare (not safe))
                     (cons __tmp76315 '()))))
              (declare (not safe))
              (cons _tmp75787_ __tmp76314))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76313))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76312 _stx75712_)))
                                     (__tmp76295
                                      (let ((__tmp76307
                                             (let ((__tmp76308
                                                    (let ((__tmp76309
                                                           (let ((__tmp76310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len75785_ '()))))
                     (declare (not safe))
                     (cons _tmp75787_ __tmp76310))))
              (declare (not safe))
              (cons '__check-values __tmp76309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76308
                                                _stx75712_)))
                                            (__tmp76296
                                             (let ((__tmp76297
                                                    (let ((__tmp76299
                                                           (lambda (_id75790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k75791_)
                     (if (let () (declare (not safe)) (__AST-e _id75790_))
                         (let ((__tmp76300
                                (let ((__tmp76301
                                       (let ((__tmp76306
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id75790_)))
                                             (__tmp76302
                                              (let ((__tmp76303
                                                     (let ((__tmp76304
                                                            (let ((__tmp76305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k75791_ '()))))
                      (declare (not safe))
                      (cons _tmp75787_ __tmp76305))))
               (declare (not safe))
               (cons '##vector-ref __tmp76304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76303 '()))))
                                         (declare (not safe))
                                         (cons __tmp76306 __tmp76302))))
                                  (declare (not safe))
                                  (cons 'define __tmp76301))))
                           (declare (not safe))
                           (__SRC__% __tmp76300 _stx75712_))
                         '#f)))
                  (__tmp76298 (iota _len75785_)))
              (declare (not safe))
              (filter-map2 __tmp76299 _ids75783_ __tmp76298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76297))))
                                        (declare (not safe))
                                        (cons __tmp76307 __tmp76296))))
                                 (declare (not safe))
                                 (cons __tmp76311 __tmp76295))))
                          (declare (not safe))
                          (cons 'begin __tmp76294))))
                   (declare (not safe))
                   (__SRC__% __tmp76293 _stx75712_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e75765_))
                                                    (let* ((_$tgt7577075796_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e75765_)))
                                                           (_$hd7577175799_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7577075796_)))
                                                           (_$tl7577275802_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7577075796_))))
                                                      (let ((_id75806_
                                                             _$hd7577175799_))
                                                        (if (let ((__tmp76316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7577275802_))))
                      (declare (not safe))
                      (equal? __tmp76316 '()))
                    (let ((__tmp76317
                           (let ((__tmp76318
                                  (let ((__tmp76321
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75806_)))
                                        (__tmp76319
                                         (let ((__tmp76320
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr75763_))))
                                           (declare (not safe))
                                           (cons __tmp76320 '()))))
                                    (declare (not safe))
                                    (cons __tmp76321 __tmp76319))))
                             (declare (not safe))
                             (cons 'define __tmp76318))))
                      (declare (not safe))
                      (__SRC__% __tmp76317 _stx75712_))
                    (let () (declare (not safe)) (_$E7576875793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7576875793_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e75765_))
                                          (let* ((_$tgt7577375811_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e75765_)))
                                                 (_$hd7577475814_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7577375811_)))
                                                 (_$tl7577575817_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7577375811_))))
                                            (if (let ((__tmp76322
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7577475814_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76322 '#f))
                                                (if (let ((__tmp76323
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7577575817_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76323 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr75763_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7576775808_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7576775808_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7576775808_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7571675728_)))))
                            (let () (declare (not safe)) (_$E7571675728_)))))
                    (let () (declare (not safe)) (_$E7571675728_))))
              (let () (declare (not safe)) (_$E7571675728_))))))
    (define __compile-head-id
      (lambda (_e75710_)
        (let ((__tmp76324
               (if (let () (declare (not safe)) (__AST-e _e75710_))
                   _e75710_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76324))))
    (define __compile-lambda-head
      (lambda (_hd75667_)
        (let _recur75669_ ((_rest75671_ _hd75667_))
          (let* ((_$e75673_ _rest75671_)
                 (_$E7567575693_
                  (lambda ()
                    (let ((_$E7567675690_
                           (lambda ()
                             (let* ((_$E7567775685_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e75673_))))
                                    (_tail75688_ _$e75673_))
                               (declare (not safe))
                               (__compile-head-id _tail75688_)))))
                      (if (let ((__tmp76325
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e75673_))))
                            (declare (not safe))
                            (equal? __tmp76325 '()))
                          '()
                          (let () (declare (not safe)) (_$E7567675690_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75673_))
                (let* ((_$tgt7567875696_
                        (let () (declare (not safe)) (__AST-e _$e75673_)))
                       (_$hd7567975699_
                        (let () (declare (not safe)) (##car _$tgt7567875696_)))
                       (_$tl7568075702_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7567875696_))))
                  (let* ((_hd75706_ _$hd7567975699_)
                         (_rest75708_ _$tl7568075702_))
                    (let ((__tmp76327
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd75706_)))
                          (__tmp76326
                           (let ()
                             (declare (not safe))
                             (_recur75669_ _rest75708_))))
                      (declare (not safe))
                      (cons __tmp76327 __tmp76326))))
                (let () (declare (not safe)) (_$E7567575693_)))))))
    (define __compile-lambda%
      (lambda (_stx75614_)
        (let* ((_$e75616_ _stx75614_)
               (_$E7561875630_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75616_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75616_))
              (let* ((_$tgt7561975633_
                      (let () (declare (not safe)) (__AST-e _$e75616_)))
                     (_$hd7562075636_
                      (let () (declare (not safe)) (##car _$tgt7561975633_)))
                     (_$tl7562175639_
                      (let () (declare (not safe)) (##cdr _$tgt7561975633_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7562175639_))
                    (let* ((_$tgt7562275643_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7562175639_)))
                           (_$hd7562375646_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7562275643_)))
                           (_$tl7562475649_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7562275643_))))
                      (let ((_hd75653_ _$hd7562375646_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7562475649_))
                            (let* ((_$tgt7562575655_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7562475649_)))
                                   (_$hd7562675658_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7562575655_)))
                                   (_$tl7562775661_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7562575655_))))
                              (let ((_body75665_ _$hd7562675658_))
                                (if (let ((__tmp76328
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7562775661_))))
                                      (declare (not safe))
                                      (equal? __tmp76328 '()))
                                    (let ((__tmp76329
                                           (let ((__tmp76330
                                                  (let ((__tmp76333
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd75653_)))
                                                        (__tmp76331
                                                         (let ((__tmp76332
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body75665_))))
                   (declare (not safe))
                   (cons __tmp76332 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76333
                                                          __tmp76331))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76330))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76329 _stx75614_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7561875630_)))))
                            (let () (declare (not safe)) (_$E7561875630_)))))
                    (let () (declare (not safe)) (_$E7561875630_))))
              (let () (declare (not safe)) (_$E7561875630_))))))
    (define __compile-case-lambda%
      (lambda (_stx75406_)
        (letrec ((_variadic?75408_
                  (lambda (_hd75579_)
                    (let* ((_$e75581_ _hd75579_)
                           (_$E7558375599_
                            (lambda ()
                              (let ((_$E7558475596_
                                     (lambda ()
                                       (let ((_$E7558575593_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e75581_)))))
                                         '#t))))
                                (if (let ((__tmp76334
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e75581_))))
                                      (declare (not safe))
                                      (equal? __tmp76334 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7558475596_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75581_))
                          (let* ((_$tgt7558675602_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75581_)))
                                 (_$hd7558775605_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7558675602_)))
                                 (_$tl7558875608_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7558675602_))))
                            (let ((_rest75612_ _$tl7558875608_))
                              (declare (not safe))
                              (_variadic?75408_ _rest75612_)))
                          (let () (declare (not safe)) (_$E7558375599_))))))
                 (_arity75409_
                  (lambda (_hd75544_)
                    (let _lp75546_ ((_rest75548_ _hd75544_) (_k75549_ '0))
                      (let* ((_$e75551_ _rest75548_)
                             (_$E7555375564_
                              (lambda ()
                                (let ((_$E7555475561_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e75551_)))))
                                  _k75549_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e75551_))
                            (let* ((_$tgt7555575567_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e75551_)))
                                   (_$hd7555675570_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7555575567_)))
                                   (_$tl7555775573_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7555575567_))))
                              (let* ((_rest75577_ _$tl7555775573_)
                                     (__tmp76335
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k75549_ '1))))
                                (declare (not safe))
                                (_lp75546_ _rest75577_ __tmp76335)))
                            (let () (declare (not safe)) (_$E7555375564_)))))))
                 (_generate75410_
                  (lambda (_rest75471_ _args75472_ _len75473_)
                    (let* ((_$e75475_ _rest75471_)
                           (_$E7547775488_
                            (lambda ()
                              (let* ((_$E7547875485_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e75475_))))
                                     (__tmp76336
                                      (let ((__tmp76337
                                             (let ((__tmp76338
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args75472_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76338))))
                                        (declare (not safe))
                                        (cons 'error __tmp76337))))
                                (declare (not safe))
                                (__SRC__% __tmp76336 _stx75406_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75475_))
                          (let* ((_$tgt7547975491_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75475_)))
                                 (_$hd7548075494_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7547975491_)))
                                 (_$tl7548175497_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7547975491_))))
                            (let* ((_clause75501_ _$hd7548075494_)
                                   (_rest75503_ _$tl7548175497_)
                                   (_$e75505_ _clause75501_)
                                   (_$E7550775516_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e75505_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e75505_))
                                  (let* ((_$tgt7550875519_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e75505_)))
                                         (_$hd7550975522_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7550875519_)))
                                         (_$tl7551075525_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7550875519_))))
                                    (let ((_hd75529_ _$hd7550975522_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7551075525_))
                                          (let* ((_$tgt7551175531_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7551075525_)))
                                                 (_$hd7551275534_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7551175531_)))
                                                 (_$tl7551375537_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7551175531_))))
                                            (if (let ((__tmp76339
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7551375537_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76339 '()))
                                                (let ((_clen75541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity75409_
                                                          _hd75529_)))
                                                      (_cmp75542_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?75408_
                                                              _hd75529_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76340
                                                         (let ((__tmp76341
                                                                (let ((__tmp76351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76352
                                      (let ((__tmp76353
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen75541_ '()))))
                                        (declare (not safe))
                                        (cons _len75473_ __tmp76353))))
                                 (declare (not safe))
                                 (cons _cmp75542_ __tmp76352)))
                              (__tmp76342
                               (let ((__tmp76345
                                      (let ((__tmp76346
                                             (let ((__tmp76347
                                                    (let ((__tmp76349
                                                           (let ((__tmp76350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause75501_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76350)))
                  (__tmp76348
                   (let () (declare (not safe)) (cons _args75472_ '()))))
              (declare (not safe))
              (cons __tmp76349 __tmp76348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76347))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76346 _stx75406_)))
                                     (__tmp76343
                                      (let ((__tmp76344
                                             (let ()
                                               (declare (not safe))
                                               (_generate75410_
                                                _rest75503_
                                                _args75472_
                                                _len75473_))))
                                        (declare (not safe))
                                        (cons __tmp76344 '()))))
                                 (declare (not safe))
                                 (cons __tmp76345 __tmp76343))))
                          (declare (not safe))
                          (cons __tmp76351 __tmp76342))))
                   (declare (not safe))
                   (cons 'if __tmp76341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76340
                                                     _stx75406_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7550775516_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7550775516_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7550775516_)))))
                          (let () (declare (not safe)) (_$E7547775488_)))))))
          (let* ((_$e75412_ _stx75406_)
                 (_$E7541475446_
                  (lambda ()
                    (let ((_$E7541575428_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75412_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75412_))
                          (let* ((_$tgt7541675431_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75412_)))
                                 (_$hd7541775434_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7541675431_)))
                                 (_$tl7541875437_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7541675431_))))
                            (let ((_clauses75441_ _$tl7541875437_))
                              (let ((_args75443_
                                     (let ((__tmp76354 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76354 _stx75406_)))
                                    (_len75444_
                                     (let ((__tmp76355 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76355 _stx75406_))))
                                (let ((__tmp76356
                                       (let ((__tmp76357
                                              (let ((__tmp76358
                                                     (let ((__tmp76359
                                                            (let ((__tmp76360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76361
                                  (let ((__tmp76364
                                         (let ((__tmp76365
                                                (let ((__tmp76366
                                                       (let ((__tmp76367
                                                              (let ((__tmp76368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76369
                                    (let ()
                                      (declare (not safe))
                                      (cons _args75443_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76369))))
                        (declare (not safe))
                        (__SRC__% __tmp76368 _stx75406_))))
                 (declare (not safe))
                 (cons __tmp76367 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len75444_
                                                        __tmp76366))))
                                           (declare (not safe))
                                           (cons __tmp76365 '())))
                                        (__tmp76362
                                         (let ((__tmp76363
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate75410_
                                                   _clauses75441_
                                                   _args75443_
                                                   _len75444_))))
                                           (declare (not safe))
                                           (cons __tmp76363 '()))))
                                    (declare (not safe))
                                    (cons __tmp76364 __tmp76362))))
                             (declare (not safe))
                             (cons 'let __tmp76361))))
                      (declare (not safe))
                      (__SRC__% __tmp76360 _stx75406_))))
               (declare (not safe))
               (cons __tmp76359 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args75443_
                                                      __tmp76358))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76357))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76356 _stx75406_)))))
                          (let () (declare (not safe)) (_$E7541575428_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75412_))
                (let* ((_$tgt7541975449_
                        (let () (declare (not safe)) (__AST-e _$e75412_)))
                       (_$hd7542075452_
                        (let () (declare (not safe)) (##car _$tgt7541975449_)))
                       (_$tl7542175455_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7541975449_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7542175455_))
                      (let* ((_$tgt7542275459_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7542175455_)))
                             (_$hd7542375462_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7542275459_)))
                             (_$tl7542475465_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7542275459_))))
                        (let ((_clause75469_ _$hd7542375462_))
                          (if (let ((__tmp76370
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7542475465_))))
                                (declare (not safe))
                                (equal? __tmp76370 '()))
                              (let ((__tmp76371
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause75469_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76371))
                              (let () (declare (not safe)) (_$E7541475446_)))))
                      (let () (declare (not safe)) (_$E7541475446_))))
                (let () (declare (not safe)) (_$E7541475446_)))))))
    (define __compile-let-form
      (lambda (_stx75175_ _compile-simple75176_ _compile-values75177_)
        (letrec ((_simple-bind?75179_
                  (lambda (_hd75364_)
                    (let* ((_hd7536575375_ _hd75364_)
                           (_else7536875383_ (lambda () '#f)))
                      (let ((_K7537175396_ (lambda (_id75394_) '#t))
                            (_K7537075388_ (lambda () '#t)))
                        (let ((_try-match7536775391_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7536575375_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7537075388_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7536875383_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7536575375_))
                              (let ((_tl7537375401_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7536575375_)))
                                    (_hd7537275399_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7536575375_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7537375401_))
                                    (let ((_id75404_ _hd7537275399_))
                                      (declare (not safe))
                                      (_K7537175396_ _id75404_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7536775391_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7536775391_))))))))
                 (_car-e75180_
                  (lambda (_hd75362_)
                    (if (let () (declare (not safe)) (pair? _hd75362_))
                        (car _hd75362_)
                        _hd75362_))))
          (let* ((_$e75182_ _stx75175_)
                 (_$E7518475327_
                  (lambda ()
                    (let ((_$E7518575207_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75182_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75182_))
                          (let* ((_$tgt7518675210_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75182_)))
                                 (_$hd7518775213_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7518675210_)))
                                 (_$tl7518875216_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7518675210_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7518875216_))
                                (let* ((_$tgt7518975220_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7518875216_)))
                                       (_$hd7519075223_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7518975220_)))
                                       (_$tl7519175226_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7518975220_))))
                                  (let ((_hd75230_ _$hd7519075223_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7519175226_))
                                        (let* ((_$tgt7519275232_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7519175226_)))
                                               (_$hd7519375235_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7519275232_)))
                                               (_$tl7519475238_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7519275232_))))
                                          (let ((_body75242_ _$hd7519375235_))
                                            (if (let ((__tmp76372
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7519475238_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76372 '()))
                                                (let* ((_hd-ids75282_
                                                        (map (lambda (_bind75244_)
                                                               (let* ((_$e75246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75244_)
                              (_$E7524875257_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75246_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75246_))
                             (let* ((_$tgt7524975260_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75246_)))
                                    (_$hd7525075263_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7524975260_)))
                                    (_$tl7525175266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7524975260_))))
                               (let ((_ids75270_ _$hd7525075263_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7525175266_))
                                     (let* ((_$tgt7525275272_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7525175266_)))
                                            (_$hd7525375275_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7525275272_)))
                                            (_$tl7525475278_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7525275272_))))
                                       (if (let ((__tmp76373
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7525475278_))))
                                             (declare (not safe))
                                             (equal? __tmp76373 '()))
                                           _ids75270_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7524875257_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7524875257_)))))
                             (let () (declare (not safe)) (_$E7524875257_)))))
                     _hd75230_))
               (_exprs75322_
                (map (lambda (_bind75284_)
                       (let* ((_$e75286_ _bind75284_)
                              (_$E7528875297_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75286_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75286_))
                             (let* ((_$tgt7528975300_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75286_)))
                                    (_$hd7529075303_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7528975300_)))
                                    (_$tl7529175306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7528975300_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7529175306_))
                                   (let* ((_$tgt7529275310_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7529175306_)))
                                          (_$hd7529375313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7529275310_)))
                                          (_$tl7529475316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7529275310_))))
                                     (let ((_expr75320_ _$hd7529375313_))
                                       (if (let ((__tmp76374
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7529475316_))))
                                             (declare (not safe))
                                             (equal? __tmp76374 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75320_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7528875297_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7528875297_))))
                             (let () (declare (not safe)) (_$E7528875297_)))))
                     _hd75230_))
               (_body75324_
                (let () (declare (not safe)) (__compile _body75242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75282_))
              (_compile-simple75176_
               (map _car-e75180_ _hd-ids75282_)
               _exprs75322_
               _body75324_)
              (_compile-values75177_ _hd-ids75282_ _exprs75322_ _body75324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7518575207_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7518575207_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7518575207_))))
                          (let () (declare (not safe)) (_$E7518575207_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75182_))
                (let* ((_$tgt7519575330_
                        (let () (declare (not safe)) (__AST-e _$e75182_)))
                       (_$hd7519675333_
                        (let () (declare (not safe)) (##car _$tgt7519575330_)))
                       (_$tl7519775336_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7519575330_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7519775336_))
                      (let* ((_$tgt7519875340_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7519775336_)))
                             (_$hd7519975343_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7519875340_)))
                             (_$tl7520075346_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7519875340_))))
                        (if (let ((__tmp76375
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7519975343_))))
                              (declare (not safe))
                              (equal? __tmp76375 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7520075346_))
                                (let* ((_$tgt7520175350_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7520075346_)))
                                       (_$hd7520275353_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7520175350_)))
                                       (_$tl7520375356_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7520175350_))))
                                  (let ((_body75360_ _$hd7520275353_))
                                    (if (let ((__tmp76376
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7520375356_))))
                                          (declare (not safe))
                                          (equal? __tmp76376 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75360_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7518475327_)))))
                                (let () (declare (not safe)) (_$E7518475327_)))
                            (let () (declare (not safe)) (_$E7518475327_))))
                      (let () (declare (not safe)) (_$E7518475327_))))
                (let () (declare (not safe)) (_$E7518475327_)))))))
    (define __compile-let-values%
      (lambda (_stx74990_)
        (letrec ((_compile-simple74992_
                  (lambda (_hd-ids75171_ _exprs75172_ _body75173_)
                    (let ((__tmp76377
                           (let ((__tmp76378
                                  (let ((__tmp76380
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75171_)
                                              _exprs75172_))
                                        (__tmp76379
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75173_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76380 __tmp76379))))
                             (declare (not safe))
                             (cons 'let __tmp76378))))
                      (declare (not safe))
                      (__SRC__% __tmp76377 _stx74990_))))
                 (_compile-values74993_
                  (lambda (_hd-ids75089_ _exprs75090_ _body75091_)
                    (let _lp75093_ ((_rest75095_ _hd-ids75089_)
                                    (_exprs75096_ _exprs75090_)
                                    (_bind75097_ '())
                                    (_post75098_ '()))
                      (let* ((_rest7509975113_ _rest75095_)
                             (_else7510275121_
                              (lambda ()
                                (let ((__tmp76381
                                       (let ((__tmp76382
                                              (let ((__tmp76385
                                                     (reverse _bind75097_))
                                                    (__tmp76383
                                                     (let ((__tmp76384
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post74994_
                                                               _post75098_
                                                               _body75091_))))
                                                       (declare (not safe))
                                                       (cons __tmp76384 '()))))
                                                (declare (not safe))
                                                (cons __tmp76385 __tmp76383))))
                                         (declare (not safe))
                                         (cons 'let __tmp76382))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76381 _stx74990_)))))
                        (let ((_K7510775154_
                               (lambda (_rest75151_ _id75152_)
                                 (let ((__tmp76391 (cdr _exprs75096_))
                                       (__tmp76386
                                        (let ((__tmp76387
                                               (let ((__tmp76390
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75152_)))
                                                     (__tmp76388
                                                      (let ((__tmp76389
                                                             (car _exprs75096_)))
                                                        (declare (not safe))
                                                        (cons __tmp76389
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76390
                                                       __tmp76388))))
                                          (declare (not safe))
                                          (cons __tmp76387 _bind75097_))))
                                   (declare (not safe))
                                   (_lp75093_
                                    _rest75151_
                                    __tmp76391
                                    __tmp76386
                                    _post75098_))))
                              (_K7510475136_
                               (lambda (_rest75125_ _hd75126_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75126_))
                                     (let ((__tmp76399 (cdr _exprs75096_))
                                           (__tmp76392
                                            (let ((__tmp76393
                                                   (let ((__tmp76398
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75126_)))
                                                         (__tmp76394
                                                          (let ((__tmp76395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76396
                                (let ((__tmp76397 (car _exprs75096_)))
                                  (declare (not safe))
                                  (cons __tmp76397 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76396))))
                    (declare (not safe))
                    (cons __tmp76395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76398
                                                           __tmp76394))))
                                              (declare (not safe))
                                              (cons __tmp76393 _bind75097_))))
                                       (declare (not safe))
                                       (_lp75093_
                                        _rest75125_
                                        __tmp76399
                                        __tmp76392
                                        _post75098_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75126_))
                                         (let* ((_len75128_ (length _hd75126_))
                                                (_tmp75130_
                                                 (let ((__tmp76400 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76400))))
                                           (let ((__tmp76412
                                                  (cdr _exprs75096_))
                                                 (__tmp76408
                                                  (let ((__tmp76409
                                                         (let ((__tmp76410
                                                                (let ((__tmp76411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75096_)))
                          (declare (not safe))
                          (cons __tmp76411 '()))))
                   (declare (not safe))
                   (cons _tmp75130_ __tmp76410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76409
                                                          _bind75097_)))
                                                 (__tmp76401
                                                  (let ((__tmp76402
                                                         (let ((__tmp76403
                                                                (let ((__tmp76404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76406
                                      (lambda (_id75133_ _k75134_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75133_))
                                            (let ((__tmp76407
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75133_))))
                                              (declare (not safe))
                                              (cons __tmp76407 _k75134_))
                                            '#f)))
                                     (__tmp76405 (iota _len75128_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76406
                                  _hd75126_
                                  __tmp76405))))
                          (declare (not safe))
                          (cons _len75128_ __tmp76404))))
                   (declare (not safe))
                   (cons _tmp75130_ __tmp76403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76402
                                                          _post75098_))))
                                             (declare (not safe))
                                             (_lp75093_
                                              _rest75125_
                                              __tmp76412
                                              __tmp76408
                                              __tmp76401)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx74990_
                                            _hd75126_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7509975113_))
                              (let ((_tl7510975159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7509975113_)))
                                    (_hd7510875157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7509975113_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7510875157_))
                                    (let ((_tl7511175164_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7510875157_)))
                                          (_hd7511075162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7510875157_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7511175164_))
                                          (let ((_id75167_ _hd7511075162_)
                                                (_rest75169_ _tl7510975159_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7510775154_
                                               _rest75169_
                                               _id75167_)))
                                          (let ((_hd75144_ _hd7510875157_)
                                                (_rest75146_ _tl7510975159_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7510475136_
                                               _rest75146_
                                               _hd75144_)))))
                                    (let ((_hd75144_ _hd7510875157_)
                                          (_rest75146_ _tl7510975159_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7510475136_
                                         _rest75146_
                                         _hd75144_)))))
                              (let ()
                                (declare (not safe))
                                (_else7510275121_))))))))
                 (_compile-post74994_
                  (lambda (_post74996_ _body74997_)
                    (let _lp74999_ ((_rest75001_ _post74996_)
                                    (_check75002_ '())
                                    (_bind75003_ '()))
                      (let* ((_rest7500475016_ _rest75001_)
                             (_else7500675024_
                              (lambda ()
                                (let ((__tmp76413
                                       (let ((__tmp76414
                                              (let ((__tmp76415
                                                     (let ((__tmp76416
                                                            (let ((__tmp76417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76418
                                  (let ((__tmp76419
                                         (let ()
                                           (declare (not safe))
                                           (cons _body74997_ '()))))
                                    (declare (not safe))
                                    (cons _bind75003_ __tmp76419))))
                             (declare (not safe))
                             (cons 'let __tmp76418))))
                      (declare (not safe))
                      (__SRC__% __tmp76417 _stx74990_))))
               (declare (not safe))
               (cons __tmp76416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76415
                                                        _check75002_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76414))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76413 _stx74990_))))
                             (_K7500875063_
                              (lambda (_rest75027_
                                       _init75028_
                                       _len75029_
                                       _tmp75030_)
                                (let ((__tmp76427
                                       (let ((__tmp76428
                                              (let ((__tmp76429
                                                     (let ((__tmp76430
                                                            (let ((__tmp76431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75029_ '()))))
                      (declare (not safe))
                      (cons _tmp75030_ __tmp76431))))
               (declare (not safe))
               (cons '__check-values __tmp76430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76429
                                                 _stx74990_))))
                                         (declare (not safe))
                                         (cons __tmp76428 _check75002_)))
                                      (__tmp76420
                                       (let ((__tmp76421
                                              (lambda (_hd75032_ _r75033_)
                                                (let* ((_hd7503475041_
                                                        _hd75032_)
                                                       (_E7503675045_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7503475041_))))
               (_K7503775051_
                (lambda (_k75048_ _id75049_)
                  (let ((__tmp76422
                         (let ((__tmp76423
                                (let ((__tmp76424
                                       (let ((__tmp76425
                                              (let ((__tmp76426
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75048_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75030_ __tmp76426))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp76425))))
                                  (declare (not safe))
                                  (cons __tmp76424 '()))))
                           (declare (not safe))
                           (cons _id75049_ __tmp76423))))
                    (declare (not safe))
                    (cons __tmp76422 _r75033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7503475041_))
                                                      (let ((_hd7503875054_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7503475041_)))
                    (_tl7503975056_
                     (let () (declare (not safe)) (##cdr _hd7503475041_))))
                (let* ((_id75059_ _hd7503875054_) (_k75061_ _tl7503975056_))
                  (declare (not safe))
                  (_K7503775051_ _k75061_ _id75059_)))
              (let () (declare (not safe)) (_E7503675045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76421
                                                 _bind75003_
                                                 _init75028_))))
                                  (declare (not safe))
                                  (_lp74999_
                                   _rest75027_
                                   __tmp76427
                                   __tmp76420)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7500475016_))
                            (let ((_hd7500975066_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7500475016_)))
                                  (_tl7501075068_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7500475016_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7500975066_))
                                  (let ((_hd7501175071_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7500975066_)))
                                        (_tl7501275073_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7500975066_))))
                                    (let ((_tmp75076_ _hd7501175071_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7501275073_))
                                          (let ((_hd7501375078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7501275073_)))
                                                (_tl7501475080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7501275073_))))
                                            (let* ((_len75083_ _hd7501375078_)
                                                   (_init75085_ _tl7501475080_)
                                                   (_rest75087_
                                                    _tl7501075068_))
                                              (declare (not safe))
                                              (_K7500875063_
                                               _rest75087_
                                               _init75085_
                                               _len75083_
                                               _tmp75076_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7500675024_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7500675024_))))
                            (let ()
                              (declare (not safe))
                              (_else7500675024_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx74990_
             _compile-simple74992_
             _compile-values74993_)))))
    (define __compile-letrec-values%
      (lambda (_stx74790_)
        (letrec ((_compile-simple74792_
                  (lambda (_hd-ids74986_ _exprs74987_ _body74988_)
                    (let ((__tmp76432
                           (let ((__tmp76433
                                  (let ((__tmp76435
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids74986_)
                                              _exprs74987_))
                                        (__tmp76434
                                         (let ()
                                           (declare (not safe))
                                           (cons _body74988_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76435 __tmp76434))))
                             (declare (not safe))
                             (cons 'letrec __tmp76433))))
                      (declare (not safe))
                      (__SRC__% __tmp76432 _stx74790_))))
                 (_compile-values74793_
                  (lambda (_hd-ids74900_ _exprs74901_ _body74902_)
                    (let _lp74904_ ((_rest74906_ _hd-ids74900_)
                                    (_exprs74907_ _exprs74901_)
                                    (_pre74908_ '())
                                    (_bind74909_ '())
                                    (_post74910_ '()))
                      (let* ((_rest7491174925_ _rest74906_)
                             (_else7491474933_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner74794_
                                   _pre74908_
                                   _bind74909_
                                   _post74910_
                                   _body74902_)))))
                        (let ((_K7491974969_
                               (lambda (_rest74966_ _id74967_)
                                 (let ((__tmp76441 (cdr _exprs74907_))
                                       (__tmp76436
                                        (let ((__tmp76437
                                               (let ((__tmp76440
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id74967_)))
                                                     (__tmp76438
                                                      (let ((__tmp76439
                                                             (car _exprs74907_)))
                                                        (declare (not safe))
                                                        (cons __tmp76439
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76440
                                                       __tmp76438))))
                                          (declare (not safe))
                                          (cons __tmp76437 _bind74909_))))
                                   (declare (not safe))
                                   (_lp74904_
                                    _rest74966_
                                    __tmp76441
                                    _pre74908_
                                    __tmp76436
                                    _post74910_))))
                              (_K7491674951_
                               (lambda (_rest74937_ _hd74938_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74938_))
                                     (let ((__tmp76449 (cdr _exprs74907_))
                                           (__tmp76442
                                            (let ((__tmp76443
                                                   (let ((__tmp76448
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd74938_)))
                                                         (__tmp76444
                                                          (let ((__tmp76445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76446
                                (let ((__tmp76447 (car _exprs74907_)))
                                  (declare (not safe))
                                  (cons __tmp76447 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76446))))
                    (declare (not safe))
                    (cons __tmp76445 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76448
                                                           __tmp76444))))
                                              (declare (not safe))
                                              (cons __tmp76443 _bind74909_))))
                                       (declare (not safe))
                                       (_lp74904_
                                        _rest74937_
                                        __tmp76449
                                        _pre74908_
                                        __tmp76442
                                        _post74910_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd74938_))
                                         (let* ((_len74940_ (length _hd74938_))
                                                (_tmp74942_
                                                 (let ((__tmp76450 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76450))))
                                           (let ((__tmp76469
                                                  (cdr _exprs74907_))
                                                 (__tmp76462
                                                  (let ((__tmp76463
                                                         (lambda (_id74945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r74946_)
                   (if (let () (declare (not safe)) (__AST-e _id74945_))
                       (let ((__tmp76464
                              (let ((__tmp76468
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id74945_)))
                                    (__tmp76465
                                     (let ((__tmp76466
                                            (let ((__tmp76467
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp76467))))
                                       (declare (not safe))
                                       (cons __tmp76466 '()))))
                                (declare (not safe))
                                (cons __tmp76468 __tmp76465))))
                         (declare (not safe))
                         (cons __tmp76464 _r74946_))
                       _r74946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp76463
                                                            _pre74908_
                                                            _hd74938_)))
                                                 (__tmp76458
                                                  (let ((__tmp76459
                                                         (let ((__tmp76460
                                                                (let ((__tmp76461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs74907_)))
                          (declare (not safe))
                          (cons __tmp76461 '()))))
                   (declare (not safe))
                   (cons _tmp74942_ __tmp76460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76459
                                                          _bind74909_)))
                                                 (__tmp76451
                                                  (let ((__tmp76452
                                                         (let ((__tmp76453
                                                                (let ((__tmp76454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76456
                                      (lambda (_id74948_ _k74949_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id74948_))
                                            (let ((__tmp76457
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id74948_))))
                                              (declare (not safe))
                                              (cons __tmp76457 _k74949_))
                                            '#f)))
                                     (__tmp76455 (iota _len74940_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76456
                                  _hd74938_
                                  __tmp76455))))
                          (declare (not safe))
                          (cons _len74940_ __tmp76454))))
                   (declare (not safe))
                   (cons _tmp74942_ __tmp76453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76452
                                                          _post74910_))))
                                             (declare (not safe))
                                             (_lp74904_
                                              _rest74937_
                                              __tmp76469
                                              __tmp76462
                                              __tmp76458
                                              __tmp76451)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx74790_
                                            _hd74938_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7491174925_))
                              (let ((_tl7492174974_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7491174925_)))
                                    (_hd7492074972_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7491174925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7492074972_))
                                    (let ((_tl7492374979_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7492074972_)))
                                          (_hd7492274977_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7492074972_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7492374979_))
                                          (let ((_id74982_ _hd7492274977_)
                                                (_rest74984_ _tl7492174974_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7491974969_
                                               _rest74984_
                                               _id74982_)))
                                          (let ((_hd74959_ _hd7492074972_)
                                                (_rest74961_ _tl7492174974_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7491674951_
                                               _rest74961_
                                               _hd74959_)))))
                                    (let ((_hd74959_ _hd7492074972_)
                                          (_rest74961_ _tl7492174974_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7491674951_
                                         _rest74961_
                                         _hd74959_)))))
                              (let ()
                                (declare (not safe))
                                (_else7491474933_))))))))
                 (_compile-inner74794_
                  (lambda (_pre74895_ _bind74896_ _post74897_ _body74898_)
                    (if (let () (declare (not safe)) (null? _pre74895_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind74795_
                           _bind74896_
                           _post74897_
                           _body74898_))
                        (let ((__tmp76470
                               (let ((__tmp76471
                                      (let ((__tmp76474 (reverse _pre74895_))
                                            (__tmp76472
                                             (let ((__tmp76473
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind74795_
                                                       _bind74896_
                                                       _post74897_
                                                       _body74898_))))
                                               (declare (not safe))
                                               (cons __tmp76473 '()))))
                                        (declare (not safe))
                                        (cons __tmp76474 __tmp76472))))
                                 (declare (not safe))
                                 (cons 'let __tmp76471))))
                          (declare (not safe))
                          (__SRC__% __tmp76470 _stx74790_)))))
                 (_compile-bind74795_
                  (lambda (_bind74891_ _post74892_ _body74893_)
                    (let ((__tmp76475
                           (let ((__tmp76476
                                  (let ((__tmp76479 (reverse _bind74891_))
                                        (__tmp76477
                                         (let ((__tmp76478
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post74796_
                                                   _post74892_
                                                   _body74893_))))
                                           (declare (not safe))
                                           (cons __tmp76478 '()))))
                                    (declare (not safe))
                                    (cons __tmp76479 __tmp76477))))
                             (declare (not safe))
                             (cons 'letrec __tmp76476))))
                      (declare (not safe))
                      (__SRC__% __tmp76475 _stx74790_))))
                 (_compile-post74796_
                  (lambda (_post74798_ _body74799_)
                    (let _lp74801_ ((_rest74803_ _post74798_)
                                    (_check74804_ '())
                                    (_bind74805_ '()))
                      (let* ((_rest7480674818_ _rest74803_)
                             (_else7480874826_
                              (lambda ()
                                (let ((__tmp76480
                                       (let ((__tmp76481
                                              (let ((__tmp76482
                                                     (let ((__tmp76483
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body74799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp76483 _bind74805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76482
                                                        _check74804_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76481))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76480 _stx74790_))))
                             (_K7481074865_
                              (lambda (_rest74829_
                                       _init74830_
                                       _len74831_
                                       _tmp74832_)
                                (let ((__tmp76492
                                       (let ((__tmp76493
                                              (let ((__tmp76494
                                                     (let ((__tmp76495
                                                            (let ((__tmp76496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len74831_ '()))))
                      (declare (not safe))
                      (cons _tmp74832_ __tmp76496))))
               (declare (not safe))
               (cons '__check-values __tmp76495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76494
                                                 _stx74790_))))
                                         (declare (not safe))
                                         (cons __tmp76493 _check74804_)))
                                      (__tmp76484
                                       (let ((__tmp76485
                                              (lambda (_hd74834_ _r74835_)
                                                (let* ((_hd7483674843_
                                                        _hd74834_)
                                                       (_E7483874847_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7483674843_))))
               (_K7483974853_
                (lambda (_k74850_ _id74851_)
                  (let ((__tmp76486
                         (let ((__tmp76487
                                (let ((__tmp76488
                                       (let ((__tmp76489
                                              (let ((__tmp76490
                                                     (let ((__tmp76491
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k74850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp74832_ __tmp76491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp76490))))
                                         (declare (not safe))
                                         (cons __tmp76489 '()))))
                                  (declare (not safe))
                                  (cons _id74851_ __tmp76488))))
                           (declare (not safe))
                           (cons 'set! __tmp76487))))
                    (declare (not safe))
                    (cons __tmp76486 _r74835_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7483674843_))
                                                      (let ((_hd7484074856_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7483674843_)))
                    (_tl7484174858_
                     (let () (declare (not safe)) (##cdr _hd7483674843_))))
                (let* ((_id74861_ _hd7484074856_) (_k74863_ _tl7484174858_))
                  (declare (not safe))
                  (_K7483974853_ _k74863_ _id74861_)))
              (let () (declare (not safe)) (_E7483874847_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76485
                                                 _bind74805_
                                                 _init74830_))))
                                  (declare (not safe))
                                  (_lp74801_
                                   _rest74829_
                                   __tmp76492
                                   __tmp76484)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7480674818_))
                            (let ((_hd7481174868_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7480674818_)))
                                  (_tl7481274870_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7480674818_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7481174868_))
                                  (let ((_hd7481374873_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7481174868_)))
                                        (_tl7481474875_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7481174868_))))
                                    (let ((_tmp74878_ _hd7481374873_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7481474875_))
                                          (let ((_hd7481574880_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7481474875_)))
                                                (_tl7481674882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7481474875_))))
                                            (let* ((_len74885_ _hd7481574880_)
                                                   (_init74887_ _tl7481674882_)
                                                   (_rest74889_
                                                    _tl7481274870_))
                                              (declare (not safe))
                                              (_K7481074865_
                                               _rest74889_
                                               _init74887_
                                               _len74885_
                                               _tmp74878_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7480874826_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7480874826_))))
                            (let ()
                              (declare (not safe))
                              (_else7480874826_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx74790_
             _compile-simple74792_
             _compile-values74793_)))))
    (define __compile-letrec*-values%
      (lambda (_stx74545_)
        (letrec ((_compile-simple74547_
                  (lambda (_hd-ids74786_ _exprs74787_ _body74788_)
                    (let ((__tmp76497
                           (let ((__tmp76498
                                  (let ((__tmp76500
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids74786_)
                                              _exprs74787_))
                                        (__tmp76499
                                         (let ()
                                           (declare (not safe))
                                           (cons _body74788_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76500 __tmp76499))))
                             (declare (not safe))
                             (cons 'letrec* __tmp76498))))
                      (declare (not safe))
                      (__SRC__% __tmp76497 _stx74545_))))
                 (_compile-values74548_
                  (lambda (_hd-ids74697_ _exprs74698_ _body74699_)
                    (let _lp74701_ ((_rest74703_ _hd-ids74697_)
                                    (_exprs74704_ _exprs74698_)
                                    (_bind74705_ '())
                                    (_post74706_ '()))
                      (let* ((_rest7470774721_ _rest74703_)
                             (_else7471074729_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind74549_
                                   _bind74705_
                                   _post74706_
                                   _body74699_)))))
                        (let ((_K7471574769_
                               (lambda (_rest74764_ _hd74765_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74765_))
                                     (let ((_id74767_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd74765_))))
                                       (let ((__tmp76510 (cdr _exprs74704_))
                                             (__tmp76505
                                              (let ((__tmp76506
                                                     (let ((__tmp76507
                                                            (let ((__tmp76508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76509
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp76509))))
                      (declare (not safe))
                      (cons __tmp76508 '()))))
               (declare (not safe))
               (cons _id74767_ __tmp76507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76506 _bind74705_)))
                                             (__tmp76501
                                              (let ((__tmp76502
                                                     (let ((__tmp76503
                                                            (let ((__tmp76504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs74704_)))
                      (declare (not safe))
                      (cons __tmp76504 '()))))
               (declare (not safe))
               (cons _id74767_ __tmp76503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76502
                                                      _post74706_))))
                                         (declare (not safe))
                                         (_lp74701_
                                          _rest74764_
                                          __tmp76510
                                          __tmp76505
                                          __tmp76501)))
                                     (let ((__tmp76515 (cdr _exprs74704_))
                                           (__tmp76511
                                            (let ((__tmp76512
                                                   (let ((__tmp76513
                                                          (let ((__tmp76514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs74704_)))
                    (declare (not safe))
                    (cons __tmp76514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp76513))))
                                              (declare (not safe))
                                              (cons __tmp76512 _post74706_))))
                                       (declare (not safe))
                                       (_lp74701_
                                        _rest74764_
                                        __tmp76515
                                        _bind74705_
                                        __tmp76511)))))
                              (_K7471274749_
                               (lambda (_rest74733_ _hd74734_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74734_))
                                     (let ((_id74736_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd74734_))))
                                       (let ((__tmp76527 (cdr _exprs74704_))
                                             (__tmp76522
                                              (let ((__tmp76523
                                                     (let ((__tmp76524
                                                            (let ((__tmp76525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76526
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp76526))))
                      (declare (not safe))
                      (cons __tmp76525 '()))))
               (declare (not safe))
               (cons _id74736_ __tmp76524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76523 _bind74705_)))
                                             (__tmp76516
                                              (let ((__tmp76517
                                                     (let ((__tmp76518
                                                            (let ((__tmp76519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76520
                                  (let ((__tmp76521 (car _exprs74704_)))
                                    (declare (not safe))
                                    (cons __tmp76521 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp76520))))
                      (declare (not safe))
                      (cons __tmp76519 '()))))
               (declare (not safe))
               (cons _id74736_ __tmp76518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76517
                                                      _post74706_))))
                                         (declare (not safe))
                                         (_lp74701_
                                          _rest74733_
                                          __tmp76527
                                          __tmp76522
                                          __tmp76516)))
                                     (if (let ((__tmp76528
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd74734_))))
                                           (declare (not safe))
                                           (not __tmp76528))
                                         (let ((__tmp76533 (cdr _exprs74704_))
                                               (__tmp76529
                                                (let ((__tmp76530
                                                       (let ((__tmp76531
                                                              (let ((__tmp76532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs74704_)))
                        (declare (not safe))
                        (cons __tmp76532 '()))))
                 (declare (not safe))
                 (cons '#f __tmp76531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp76530
                                                        _post74706_))))
                                           (declare (not safe))
                                           (_lp74701_
                                            _rest74733_
                                            __tmp76533
                                            _bind74705_
                                            __tmp76529))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd74734_))
                                             (let* ((_len74738_
                                                     (length _hd74734_))
                                                    (_tmp74740_
                                                     (let ((__tmp76534
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp76534))))
                                               (let ((__tmp76551
                                                      (cdr _exprs74704_))
                                                     (__tmp76544
                                                      (let ((__tmp76545
                                                             (lambda (_id74743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r74744_)
                       (if (let () (declare (not safe)) (__AST-e _id74743_))
                           (let ((__tmp76546
                                  (let ((__tmp76550
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id74743_)))
                                        (__tmp76547
                                         (let ((__tmp76548
                                                (let ((__tmp76549
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp76549))))
                                           (declare (not safe))
                                           (cons __tmp76548 '()))))
                                    (declare (not safe))
                                    (cons __tmp76550 __tmp76547))))
                             (declare (not safe))
                             (cons __tmp76546 _r74744_))
                           _r74744_))))
                (declare (not safe))
                (foldl1 __tmp76545 _bind74705_ _hd74734_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp76535
                                                      (let ((__tmp76536
                                                             (let ((__tmp76537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp76543 (car _exprs74704_))
                                  (__tmp76538
                                   (let ((__tmp76539
                                          (let ((__tmp76541
                                                 (lambda (_id74746_ _k74747_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id74746_))
                                                       (let ((__tmp76542
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id74746_))))
                 (declare (not safe))
                 (cons __tmp76542 _k74747_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp76540 (iota _len74738_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp76541
                                             _hd74734_
                                             __tmp76540))))
                                     (declare (not safe))
                                     (cons _len74738_ __tmp76539))))
                              (declare (not safe))
                              (cons __tmp76543 __tmp76538))))
                       (declare (not safe))
                       (cons _tmp74740_ __tmp76537))))
                (declare (not safe))
                (cons __tmp76536 _post74706_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp74701_
                                                  _rest74733_
                                                  __tmp76551
                                                  __tmp76544
                                                  __tmp76535)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx74545_
                                                _hd74734_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7470774721_))
                              (let ((_tl7471774774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7470774721_)))
                                    (_hd7471674772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7470774721_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7471674772_))
                                    (let ((_tl7471974779_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7471674772_)))
                                          (_hd7471874777_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7471674772_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7471974779_))
                                          (let ((_hd74782_ _hd7471874777_)
                                                (_rest74784_ _tl7471774774_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7471574769_
                                               _rest74784_
                                               _hd74782_)))
                                          (let ((_hd74757_ _hd7471674772_)
                                                (_rest74759_ _tl7471774774_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7471274749_
                                               _rest74759_
                                               _hd74757_)))))
                                    (let ((_hd74757_ _hd7471674772_)
                                          (_rest74759_ _tl7471774774_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7471274749_
                                         _rest74759_
                                         _hd74757_)))))
                              (let ()
                                (declare (not safe))
                                (_else7471074729_))))))))
                 (_compile-bind74549_
                  (lambda (_bind74693_ _post74694_ _body74695_)
                    (let ((__tmp76552
                           (let ((__tmp76553
                                  (let ((__tmp76556 (reverse _bind74693_))
                                        (__tmp76554
                                         (let ((__tmp76555
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post74550_
                                                   _post74694_
                                                   _body74695_))))
                                           (declare (not safe))
                                           (cons __tmp76555 '()))))
                                    (declare (not safe))
                                    (cons __tmp76556 __tmp76554))))
                             (declare (not safe))
                             (cons 'let __tmp76553))))
                      (declare (not safe))
                      (__SRC__% __tmp76552 _stx74545_))))
                 (_compile-post74550_
                  (lambda (_post74552_ _body74553_)
                    (let ((__tmp76557
                           (let ((__tmp76558
                                  (let ((__tmp76559
                                         (let ((__tmp76561
                                                (lambda (_hd74555_ _r74556_)
                                                  (let* ((_hd7455774580_
                                                          _hd74555_)
                                                         (_E7456174584_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7455774580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7457474678_
                                                           (lambda (_expr74676_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr74676_ _r74556_))))
                  (_K7456974656_
                   (lambda (_expr74653_ _id74654_)
                     (let ((__tmp76562
                            (let ((__tmp76563
                                   (let ((__tmp76564
                                          (let ((__tmp76565
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr74653_ '()))))
                                            (declare (not safe))
                                            (cons _id74654_ __tmp76565))))
                                     (declare (not safe))
                                     (cons 'set! __tmp76564))))
                              (declare (not safe))
                              (__SRC__% __tmp76563 _stx74545_))))
                       (declare (not safe))
                       (cons __tmp76562 _r74556_))))
                  (_K7456274623_
                   (lambda (_init74588_ _len74589_ _expr74590_ _tmp74591_)
                     (let ((__tmp76566
                            (let ((__tmp76567
                                   (let ((__tmp76568
                                          (let ((__tmp76582
                                                 (let ((__tmp76583
                                                        (let ((__tmp76584
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr74590_ '()))))
                  (declare (not safe))
                  (cons _tmp74591_ __tmp76584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp76583 '())))
                                                (__tmp76569
                                                 (let ((__tmp76578
                                                        (let ((__tmp76579
                                                               (let ((__tmp76580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp76581
                                     (let ()
                                       (declare (not safe))
                                       (cons _len74589_ '()))))
                                (declare (not safe))
                                (cons _tmp74591_ __tmp76581))))
                         (declare (not safe))
                         (cons '__check-values __tmp76580))))
                  (declare (not safe))
                  (__SRC__% __tmp76579 _stx74545_)))
               (__tmp76570
                (let ((__tmp76571
                       (map (lambda (_hd74593_)
                              (let* ((_hd7459474601_ _hd74593_)
                                     (_E7459674605_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7459474601_))))
                                     (_K7459774611_
                                      (lambda (_k74608_ _id74609_)
                                        (let ((__tmp76572
                                               (let ((__tmp76573
                                                      (let ((__tmp76574
                                                             (let ((__tmp76575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp76576
                                   (let ((__tmp76577
                                          (let ()
                                            (declare (not safe))
                                            (cons _k74608_ '()))))
                                     (declare (not safe))
                                     (cons _tmp74591_ __tmp76577))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp76576))))
                       (declare (not safe))
                       (cons __tmp76575 '()))))
                (declare (not safe))
                (cons _id74609_ __tmp76574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp76573))))
                                          (declare (not safe))
                                          (__SRC__% __tmp76572 _stx74545_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7459474601_))
                                    (let ((_hd7459874614_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7459474601_)))
                                          (_tl7459974616_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7459474601_))))
                                      (let* ((_id74619_ _hd7459874614_)
                                             (_k74621_ _tl7459974616_))
                                        (declare (not safe))
                                        (_K7459774611_ _k74621_ _id74619_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7459674605_)))))
                            _init74588_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp76571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp76578
                                                         __tmp76570))))
                                            (declare (not safe))
                                            (cons __tmp76582 __tmp76569))))
                                     (declare (not safe))
                                     (cons 'let __tmp76568))))
                              (declare (not safe))
                              (__SRC__% __tmp76567 _stx74545_))))
                       (declare (not safe))
                       (cons __tmp76566 _r74556_)))))
              (if (let () (declare (not safe)) (##pair? _hd7455774580_))
                  (let ((_tl7457674683_
                         (let () (declare (not safe)) (##cdr _hd7455774580_)))
                        (_hd7457574681_
                         (let () (declare (not safe)) (##car _hd7455774580_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7457574681_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7457674683_))
                            (let ((_tl7457874688_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7457674683_)))
                                  (_hd7457774686_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7457674683_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7457874688_))
                                  (let ((_expr74691_ _hd7457774686_))
                                    (declare (not safe))
                                    (_K7457474678_ _expr74691_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7457874688_))
                                      (let ((_tl7456874642_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7457874688_)))
                                            (_hd7456774640_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7457874688_))))
                                        (let ((_tmp74631_ _hd7457574681_)
                                              (_expr74638_ _hd7457774686_)
                                              (_len74645_ _hd7456774640_)
                                              (_init74647_ _tl7456874642_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7456274623_
                                             _init74647_
                                             _len74645_
                                             _expr74638_
                                             _tmp74631_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7456174584_)))))
                            (let () (declare (not safe)) (_E7456174584_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7457674683_))
                            (let ((_tl7457374668_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7457674683_)))
                                  (_hd7457274666_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7457674683_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7457374668_))
                                  (let ((_id74664_ _hd7457574681_)
                                        (_expr74671_ _hd7457274666_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7456974656_ _expr74671_ _id74664_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7457374668_))
                                      (let ((_tl7456874642_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7457374668_)))
                                            (_hd7456774640_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7457374668_))))
                                        (let ((_tmp74631_ _hd7457574681_)
                                              (_expr74638_ _hd7457274666_)
                                              (_len74645_ _hd7456774640_)
                                              (_init74647_ _tl7456874642_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7456274623_
                                             _init74647_
                                             _len74645_
                                             _expr74638_
                                             _tmp74631_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7456174584_)))))
                            (let () (declare (not safe)) (_E7456174584_)))))
                  (let () (declare (not safe)) (_E7456174584_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp76560 (list _body74553_)))
                                           (declare (not safe))
                                           (foldl1 __tmp76561
                                                   __tmp76560
                                                   _post74552_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp76559))))
                             (declare (not safe))
                             (cons 'begin __tmp76558))))
                      (declare (not safe))
                      (__SRC__% __tmp76557 _stx74545_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx74545_
             _compile-simple74547_
             _compile-values74548_)))))
    (define __compile-call%
      (lambda (_stx74505_)
        (let* ((_$e74507_ _stx74505_)
               (_$E7450974518_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74507_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74507_))
              (let* ((_$tgt7451074521_
                      (let () (declare (not safe)) (__AST-e _$e74507_)))
                     (_$hd7451174524_
                      (let () (declare (not safe)) (##car _$tgt7451074521_)))
                     (_$tl7451274527_
                      (let () (declare (not safe)) (##cdr _$tgt7451074521_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7451274527_))
                    (let* ((_$tgt7451374531_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7451274527_)))
                           (_$hd7451474534_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7451374531_)))
                           (_$tl7451574537_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7451374531_))))
                      (let* ((_rator74541_ _$hd7451474534_)
                             (_rands74543_ _$tl7451574537_)
                             (__tmp76585
                              (let ((__tmp76587
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator74541_)))
                                    (__tmp76586 (map __compile _rands74543_)))
                                (declare (not safe))
                                (cons __tmp76587 __tmp76586))))
                        (declare (not safe))
                        (__SRC__% __tmp76585 _stx74505_)))
                    (let () (declare (not safe)) (_$E7450974518_))))
              (let () (declare (not safe)) (_$E7450974518_))))))
    (define __compile-ref%
      (lambda (_stx74467_)
        (let* ((_$e74469_ _stx74467_)
               (_$E7447174480_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74469_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74469_))
              (let* ((_$tgt7447274483_
                      (let () (declare (not safe)) (__AST-e _$e74469_)))
                     (_$hd7447374486_
                      (let () (declare (not safe)) (##car _$tgt7447274483_)))
                     (_$tl7447474489_
                      (let () (declare (not safe)) (##cdr _$tgt7447274483_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7447474489_))
                    (let* ((_$tgt7447574493_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7447474489_)))
                           (_$hd7447674496_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7447574493_)))
                           (_$tl7447774499_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7447574493_))))
                      (let ((_id74503_ _$hd7447674496_))
                        (if (let ((__tmp76588
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7447774499_))))
                              (declare (not safe))
                              (equal? __tmp76588 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id74503_ _stx74467_))
                            (let () (declare (not safe)) (_$E7447174480_)))))
                    (let () (declare (not safe)) (_$E7447174480_))))
              (let () (declare (not safe)) (_$E7447174480_))))))
    (define __compile-setq%
      (lambda (_stx74414_)
        (let* ((_$e74416_ _stx74414_)
               (_$E7441874430_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74416_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74416_))
              (let* ((_$tgt7441974433_
                      (let () (declare (not safe)) (__AST-e _$e74416_)))
                     (_$hd7442074436_
                      (let () (declare (not safe)) (##car _$tgt7441974433_)))
                     (_$tl7442174439_
                      (let () (declare (not safe)) (##cdr _$tgt7441974433_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7442174439_))
                    (let* ((_$tgt7442274443_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7442174439_)))
                           (_$hd7442374446_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7442274443_)))
                           (_$tl7442474449_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7442274443_))))
                      (let ((_id74453_ _$hd7442374446_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7442474449_))
                            (let* ((_$tgt7442574455_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7442474449_)))
                                   (_$hd7442674458_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7442574455_)))
                                   (_$tl7442774461_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7442574455_))))
                              (let ((_expr74465_ _$hd7442674458_))
                                (if (let ((__tmp76589
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7442774461_))))
                                      (declare (not safe))
                                      (equal? __tmp76589 '()))
                                    (let ((__tmp76590
                                           (let ((__tmp76591
                                                  (let ((__tmp76594
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id74453_
                                                            _stx74414_)))
                                                        (__tmp76592
                                                         (let ((__tmp76593
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr74465_))))
                   (declare (not safe))
                   (cons __tmp76593 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76594
                                                          __tmp76592))))
                                             (declare (not safe))
                                             (cons 'set! __tmp76591))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76590 _stx74414_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7441874430_)))))
                            (let () (declare (not safe)) (_$E7441874430_)))))
                    (let () (declare (not safe)) (_$E7441874430_))))
              (let () (declare (not safe)) (_$E7441874430_))))))
    (define __compile-if%
      (lambda (_stx74346_)
        (let* ((_$e74348_ _stx74346_)
               (_$E7435074365_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74348_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74348_))
              (let* ((_$tgt7435174368_
                      (let () (declare (not safe)) (__AST-e _$e74348_)))
                     (_$hd7435274371_
                      (let () (declare (not safe)) (##car _$tgt7435174368_)))
                     (_$tl7435374374_
                      (let () (declare (not safe)) (##cdr _$tgt7435174368_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7435374374_))
                    (let* ((_$tgt7435474378_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7435374374_)))
                           (_$hd7435574381_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7435474378_)))
                           (_$tl7435674384_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7435474378_))))
                      (let ((_p74388_ _$hd7435574381_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7435674384_))
                            (let* ((_$tgt7435774390_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7435674384_)))
                                   (_$hd7435874393_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7435774390_)))
                                   (_$tl7435974396_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7435774390_))))
                              (let ((_t74400_ _$hd7435874393_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7435974396_))
                                    (let* ((_$tgt7436074402_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7435974396_)))
                                           (_$hd7436174405_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7436074402_)))
                                           (_$tl7436274408_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7436074402_))))
                                      (let ((_f74412_ _$hd7436174405_))
                                        (if (let ((__tmp76595
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7436274408_))))
                                              (declare (not safe))
                                              (equal? __tmp76595 '()))
                                            (let ((__tmp76596
                                                   (let ((__tmp76597
                                                          (let ((__tmp76602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74388_)))
                        (__tmp76598
                         (let ((__tmp76601
                                (let ()
                                  (declare (not safe))
                                  (__compile _t74400_)))
                               (__tmp76599
                                (let ((__tmp76600
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f74412_))))
                                  (declare (not safe))
                                  (cons __tmp76600 '()))))
                           (declare (not safe))
                           (cons __tmp76601 __tmp76599))))
                    (declare (not safe))
                    (cons __tmp76602 __tmp76598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp76597))))
                                              (declare (not safe))
                                              (__SRC__% __tmp76596 _stx74346_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7435074365_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7435074365_)))))
                            (let () (declare (not safe)) (_$E7435074365_)))))
                    (let () (declare (not safe)) (_$E7435074365_))))
              (let () (declare (not safe)) (_$E7435074365_))))))
    (define __compile-quote%
      (lambda (_stx74308_)
        (let* ((_$e74310_ _stx74308_)
               (_$E7431274321_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74310_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74310_))
              (let* ((_$tgt7431374324_
                      (let () (declare (not safe)) (__AST-e _$e74310_)))
                     (_$hd7431474327_
                      (let () (declare (not safe)) (##car _$tgt7431374324_)))
                     (_$tl7431574330_
                      (let () (declare (not safe)) (##cdr _$tgt7431374324_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7431574330_))
                    (let* ((_$tgt7431674334_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7431574330_)))
                           (_$hd7431774337_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7431674334_)))
                           (_$tl7431874340_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7431674334_))))
                      (let ((_e74344_ _$hd7431774337_))
                        (if (let ((__tmp76603
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7431874340_))))
                              (declare (not safe))
                              (equal? __tmp76603 '()))
                            (let ((__tmp76604
                                   (let ((__tmp76605
                                          (let ((__tmp76606
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74344_))))
                                            (declare (not safe))
                                            (cons __tmp76606 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp76605))))
                              (declare (not safe))
                              (__SRC__% __tmp76604 _stx74308_))
                            (let () (declare (not safe)) (_$E7431274321_)))))
                    (let () (declare (not safe)) (_$E7431274321_))))
              (let () (declare (not safe)) (_$E7431274321_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74270_)
        (let* ((_$e74272_ _stx74270_)
               (_$E7427474283_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74272_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74272_))
              (let* ((_$tgt7427574286_
                      (let () (declare (not safe)) (__AST-e _$e74272_)))
                     (_$hd7427674289_
                      (let () (declare (not safe)) (##car _$tgt7427574286_)))
                     (_$tl7427774292_
                      (let () (declare (not safe)) (##cdr _$tgt7427574286_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7427774292_))
                    (let* ((_$tgt7427874296_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7427774292_)))
                           (_$hd7427974299_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7427874296_)))
                           (_$tl7428074302_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7427874296_))))
                      (let ((_e74306_ _$hd7427974299_))
                        (if (let ((__tmp76607
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7428074302_))))
                              (declare (not safe))
                              (equal? __tmp76607 '()))
                            (let ((__tmp76608
                                   (let ((__tmp76609
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74306_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp76609))))
                              (declare (not safe))
                              (__SRC__% __tmp76608 _stx74270_))
                            (let () (declare (not safe)) (_$E7427474283_)))))
                    (let () (declare (not safe)) (_$E7427474283_))))
              (let () (declare (not safe)) (_$E7427474283_))))))
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
