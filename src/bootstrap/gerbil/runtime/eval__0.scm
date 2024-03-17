(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710694202)
  (begin
    (define __syntax::t
      (let ((__tmp76309 (list))
            (__tmp76307
             (let ((__tmp76308
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76308 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp76309
         '(e id)
         __tmp76307
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args76118_ (apply make-instance __syntax::t _$args76118_)))
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
      (let ((__tmp76312 (list __syntax::t))
            (__tmp76310
             (let ((__tmp76311
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76311 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp76312
         '()
         __tmp76310
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args76115_ (apply make-instance __core-form::t _$args76115_)))
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
      (let ((__tmp76315 (list __core-form::t))
            (__tmp76313
             (let ((__tmp76314
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76314 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp76315
         '()
         __tmp76313
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args76112_
        (apply make-instance __core-expression::t _$args76112_)))
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
      (let ((__tmp76318 (list __core-form::t))
            (__tmp76316
             (let ((__tmp76317
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp76317 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp76318
         '()
         __tmp76316
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args76109_
        (apply make-instance __core-special-form::t _$args76109_)))
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
      (lambda (_id76107_)
        (let ((__tmp76319 (let () (declare (not safe)) (__AST-e _id76107_))))
          (declare (not safe))
          (hash-get __core __tmp76319))))
    (define __core-bound-id?__%
      (lambda (_id76091_ _is?76092_)
        (let ((_$e76094_
               (let () (declare (not safe)) (__core-resolve _id76091_))))
          (if _$e76094_ (_is?76092_ _$e76094_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id76100_)
        (let ((_is?76102_ true))
          (declare (not safe))
          (__core-bound-id?__% _id76100_ _is?76102_))))
    (define __core-bound-id?
      (lambda _g76321_
        (let ((_g76320_ (let () (declare (not safe)) (##length _g76321_))))
          (cond ((let () (declare (not safe)) (##fx= _g76320_ 1))
                 (apply (lambda (_id76100_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id76100_)))
                        _g76321_))
                ((let () (declare (not safe)) (##fx= _g76320_ 2))
                 (apply (lambda (_id76104_ _is?76105_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id76104_ _is?76105_)))
                        _g76321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g76321_))))))
    (define __core-bind-syntax!__%
      (lambda (_id76074_ _e76075_ _make76076_)
        (let ((__tmp76322
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e76075_
                      'gerbil/runtime/eval#__syntax::t))
                   _e76075_
                   (_make76076_ _e76075_ _id76074_))))
          (declare (not safe))
          (hash-put! __core _id76074_ __tmp76322))))
    (define __core-bind-syntax!__0
      (lambda (_id76081_ _e76082_)
        (let ((_make76084_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id76081_ _e76082_ _make76084_))))
    (define __core-bind-syntax!
      (lambda _g76324_
        (let ((_g76323_ (let () (declare (not safe)) (##length _g76324_))))
          (cond ((let () (declare (not safe)) (##fx= _g76323_ 2))
                 (apply (lambda (_id76081_ _e76082_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id76081_ _e76082_)))
                        _g76324_))
                ((let () (declare (not safe)) (##fx= _g76323_ 3))
                 (apply (lambda (_id76086_ _e76087_ _make76088_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id76086_
                             _e76087_
                             _make76088_)))
                        _g76324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g76324_))))))
    (define __SRC__%
      (lambda (_e76057_ _src-stx76058_)
        (if (or (let () (declare (not safe)) (pair? _e76057_))
                (let () (declare (not safe)) (symbol? _e76057_)))
            (let ((__tmp76325
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx76058_
                          'gerbil#AST::t))
                       (let ((__tmp76326
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx76058_))))
                         (declare (not safe))
                         (__locat __tmp76326))
                       '#f)))
              (declare (not safe))
              (##make-source _e76057_ __tmp76325))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e76057_ 'gerbil#AST::t))
                (let ((__tmp76329
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e76057_ '1 AST::t '#f)))
                      (__tmp76327
                       (let ((__tmp76328
                              (let ()
                                (declare (not safe))
                                (__AST-source _e76057_))))
                         (declare (not safe))
                         (__locat __tmp76328))))
                  (declare (not safe))
                  (##make-source __tmp76329 __tmp76327))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e76057_))))))
    (define __SRC__0
      (lambda (_e76066_)
        (let ((_src-stx76068_ '#f))
          (declare (not safe))
          (__SRC__% _e76066_ _src-stx76068_))))
    (define __SRC
      (lambda _g76331_
        (let ((_g76330_ (let () (declare (not safe)) (##length _g76331_))))
          (cond ((let () (declare (not safe)) (##fx= _g76330_ 1))
                 (apply (lambda (_e76066_)
                          (let () (declare (not safe)) (__SRC__0 _e76066_)))
                        _g76331_))
                ((let () (declare (not safe)) (##fx= _g76330_ 2))
                 (apply (lambda (_e76070_ _src-stx76071_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e76070_ _src-stx76071_)))
                        _g76331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g76331_))))))
    (define __locat
      (lambda (_loc76054_)
        (if (let () (declare (not safe)) (##locat? _loc76054_))
            _loc76054_
            '#f)))
    (define __check-values
      (lambda (_obj76049_ _k76050_)
        (let ((_count76052_
               (if (let () (declare (not safe)) (##values? _obj76049_))
                   (let () (declare (not safe)) (##vector-length _obj76049_))
                   '1)))
          (if (fx= _count76052_ _k76050_)
              '#!void
              (let ((__tmp76333
                     (if (fx< _count76052_ _k76050_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp76332
                     (if (let () (declare (not safe)) (##values? _obj76049_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj76049_))
                         _obj76049_)))
                (declare (not safe))
                (error __tmp76333 __tmp76332 _k76050_))))))
    (define __compile
      (lambda (_stx76019_)
        (let* ((_$e76021_ _stx76019_)
               (_$E7602376029_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76021_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76021_))
              (let* ((_$tgt7602476032_
                      (let () (declare (not safe)) (__AST-e _$e76021_)))
                     (_$hd7602576035_
                      (let () (declare (not safe)) (##car _$tgt7602476032_)))
                     (_$tl7602676038_
                      (let () (declare (not safe)) (##cdr _$tgt7602476032_))))
                (let* ((_form76042_ _$hd7602576035_)
                       (_$e76044_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form76042_))))
                  (if _$e76044_
                      ((lambda (_bind76047_)
                         ((##structure-ref _bind76047_ '1 __syntax::t '#f)
                          _stx76019_))
                       _$e76044_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx76019_
                         _form76042_)))))
              (let () (declare (not safe)) (_$E7602376029_))))))
    (define __compile-error__%
      (lambda (_stx76006_ _detail76007_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx76006_
           _detail76007_))))
    (define __compile-error__0
      (lambda (_stx76012_)
        (let ((_detail76014_ '#f))
          (declare (not safe))
          (__compile-error__% _stx76012_ _detail76014_))))
    (define __compile-error
      (lambda _g76335_
        (let ((_g76334_ (let () (declare (not safe)) (##length _g76335_))))
          (cond ((let () (declare (not safe)) (##fx= _g76334_ 1))
                 (apply (lambda (_stx76012_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx76012_)))
                        _g76335_))
                ((let () (declare (not safe)) (##fx= _g76334_ 2))
                 (apply (lambda (_stx76016_ _detail76017_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx76016_ _detail76017_)))
                        _g76335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g76335_))))))
    (define __compile-ignore%
      (lambda (_stx76003_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx76003_))))
    (define __compile-begin%
      (lambda (_stx75978_)
        (let* ((_$e75980_ _stx75978_)
               (_$E7598275988_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75980_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75980_))
              (let* ((_$tgt7598375991_
                      (let () (declare (not safe)) (__AST-e _$e75980_)))
                     (_$hd7598475994_
                      (let () (declare (not safe)) (##car _$tgt7598375991_)))
                     (_$tl7598575997_
                      (let () (declare (not safe)) (##cdr _$tgt7598375991_))))
                (let* ((_body76001_ _$tl7598575997_)
                       (__tmp76336
                        (let ((__tmp76337 (map __compile _body76001_)))
                          (declare (not safe))
                          (cons 'begin __tmp76337))))
                  (declare (not safe))
                  (__SRC__% __tmp76336 _stx75978_)))
              (let () (declare (not safe)) (_$E7598275988_))))))
    (define __compile-begin-foreign%
      (lambda (_stx75953_)
        (let* ((_$e75955_ _stx75953_)
               (_$E7595775963_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75955_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75955_))
              (let* ((_$tgt7595875966_
                      (let () (declare (not safe)) (__AST-e _$e75955_)))
                     (_$hd7595975969_
                      (let () (declare (not safe)) (##car _$tgt7595875966_)))
                     (_$tl7596075972_
                      (let () (declare (not safe)) (##cdr _$tgt7595875966_))))
                (let* ((_body75976_ _$tl7596075972_)
                       (__tmp76338
                        (let ((__tmp76339
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body75976_))))
                          (declare (not safe))
                          (cons 'begin __tmp76339))))
                  (declare (not safe))
                  (__SRC__% __tmp76338 _stx75953_)))
              (let () (declare (not safe)) (_$E7595775963_))))))
    (define __compile-import%
      (lambda (_stx75928_)
        (let* ((_$e75930_ _stx75928_)
               (_$E7593275938_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75930_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75930_))
              (let* ((_$tgt7593375941_
                      (let () (declare (not safe)) (__AST-e _$e75930_)))
                     (_$hd7593475944_
                      (let () (declare (not safe)) (##car _$tgt7593375941_)))
                     (_$tl7593575947_
                      (let () (declare (not safe)) (##cdr _$tgt7593375941_))))
                (let* ((_body75951_ _$tl7593575947_)
                       (__tmp76340
                        (let ((__tmp76341
                               (let ((__tmp76342
                                      (let ((__tmp76343
                                             (let ()
                                               (declare (not safe))
                                               (cons _body75951_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp76343))))
                                 (declare (not safe))
                                 (cons __tmp76342 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp76341))))
                  (declare (not safe))
                  (__SRC__% __tmp76340 _stx75928_)))
              (let () (declare (not safe)) (_$E7593275938_))))))
    (define __compile-begin-annotation%
      (lambda (_stx75875_)
        (let* ((_$e75877_ _stx75875_)
               (_$E7587975891_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75877_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75877_))
              (let* ((_$tgt7588075894_
                      (let () (declare (not safe)) (__AST-e _$e75877_)))
                     (_$hd7588175897_
                      (let () (declare (not safe)) (##car _$tgt7588075894_)))
                     (_$tl7588275900_
                      (let () (declare (not safe)) (##cdr _$tgt7588075894_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7588275900_))
                    (let* ((_$tgt7588375904_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7588275900_)))
                           (_$hd7588475907_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7588375904_)))
                           (_$tl7588575910_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7588375904_))))
                      (let ((_ann75914_ _$hd7588475907_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7588575910_))
                            (let* ((_$tgt7588675916_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7588575910_)))
                                   (_$hd7588775919_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7588675916_)))
                                   (_$tl7588875922_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7588675916_))))
                              (let ((_expr75926_ _$hd7588775919_))
                                (if (let ((__tmp76344
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7588875922_))))
                                      (declare (not safe))
                                      (equal? __tmp76344 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr75926_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7587975891_)))))
                            (let () (declare (not safe)) (_$E7587975891_)))))
                    (let () (declare (not safe)) (_$E7587975891_))))
              (let () (declare (not safe)) (_$E7587975891_))))))
    (define __compile-define-values%
      (lambda (_stx75766_)
        (let* ((_$e75768_ _stx75766_)
               (_$E7577075782_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75768_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75768_))
              (let* ((_$tgt7577175785_
                      (let () (declare (not safe)) (__AST-e _$e75768_)))
                     (_$hd7577275788_
                      (let () (declare (not safe)) (##car _$tgt7577175785_)))
                     (_$tl7577375791_
                      (let () (declare (not safe)) (##cdr _$tgt7577175785_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7577375791_))
                    (let* ((_$tgt7577475795_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7577375791_)))
                           (_$hd7577575798_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7577475795_)))
                           (_$tl7577675801_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7577475795_))))
                      (let ((_hd75805_ _$hd7577575798_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7577675801_))
                            (let* ((_$tgt7577775807_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7577675801_)))
                                   (_$hd7577875810_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7577775807_)))
                                   (_$tl7577975813_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7577775807_))))
                              (let ((_expr75817_ _$hd7577875810_))
                                (if (let ((__tmp76345
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7577975813_))))
                                      (declare (not safe))
                                      (equal? __tmp76345 '()))
                                    (let* ((_$e75819_ _hd75805_)
                                           (_$E7582175862_
                                            (lambda ()
                                              (let ((_$E7582275847_
                                                     (lambda ()
                                                       (let* ((_$E7582375834_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e75819_))))
                      (_ids75837_ _hd75805_)
                      (_len75839_ (length _ids75837_))
                      (_tmp75841_
                       (let ((__tmp76346 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp76346))))
                 (let ((__tmp76347
                        (let ((__tmp76348
                               (let ((__tmp76365
                                      (let ((__tmp76366
                                             (let ((__tmp76367
                                                    (let ((__tmp76368
                                                           (let ((__tmp76369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr75817_))))
                     (declare (not safe))
                     (cons __tmp76369 '()))))
              (declare (not safe))
              (cons _tmp75841_ __tmp76368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp76367))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76366 _stx75766_)))
                                     (__tmp76349
                                      (let ((__tmp76361
                                             (let ((__tmp76362
                                                    (let ((__tmp76363
                                                           (let ((__tmp76364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len75839_ '()))))
                     (declare (not safe))
                     (cons _tmp75841_ __tmp76364))))
              (declare (not safe))
              (cons '__check-values __tmp76363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp76362
                                                _stx75766_)))
                                            (__tmp76350
                                             (let ((__tmp76351
                                                    (let ((__tmp76353
                                                           (lambda (_id75844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k75845_)
                     (if (let () (declare (not safe)) (__AST-e _id75844_))
                         (let ((__tmp76354
                                (let ((__tmp76355
                                       (let ((__tmp76360
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id75844_)))
                                             (__tmp76356
                                              (let ((__tmp76357
                                                     (let ((__tmp76358
                                                            (let ((__tmp76359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k75845_ '()))))
                      (declare (not safe))
                      (cons _tmp75841_ __tmp76359))))
               (declare (not safe))
               (cons '##vector-ref __tmp76358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76357 '()))))
                                         (declare (not safe))
                                         (cons __tmp76360 __tmp76356))))
                                  (declare (not safe))
                                  (cons 'define __tmp76355))))
                           (declare (not safe))
                           (__SRC__% __tmp76354 _stx75766_))
                         '#f)))
                  (__tmp76352 (iota _len75839_)))
              (declare (not safe))
              (filter-map2 __tmp76353 _ids75837_ __tmp76352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp76351))))
                                        (declare (not safe))
                                        (cons __tmp76361 __tmp76350))))
                                 (declare (not safe))
                                 (cons __tmp76365 __tmp76349))))
                          (declare (not safe))
                          (cons 'begin __tmp76348))))
                   (declare (not safe))
                   (__SRC__% __tmp76347 _stx75766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e75819_))
                                                    (let* ((_$tgt7582475850_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e75819_)))
                                                           (_$hd7582575853_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7582475850_)))
                                                           (_$tl7582675856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7582475850_))))
                                                      (let ((_id75860_
                                                             _$hd7582575853_))
                                                        (if (let ((__tmp76370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7582675856_))))
                      (declare (not safe))
                      (equal? __tmp76370 '()))
                    (let ((__tmp76371
                           (let ((__tmp76372
                                  (let ((__tmp76375
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75860_)))
                                        (__tmp76373
                                         (let ((__tmp76374
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr75817_))))
                                           (declare (not safe))
                                           (cons __tmp76374 '()))))
                                    (declare (not safe))
                                    (cons __tmp76375 __tmp76373))))
                             (declare (not safe))
                             (cons 'define __tmp76372))))
                      (declare (not safe))
                      (__SRC__% __tmp76371 _stx75766_))
                    (let () (declare (not safe)) (_$E7582275847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7582275847_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e75819_))
                                          (let* ((_$tgt7582775865_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e75819_)))
                                                 (_$hd7582875868_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7582775865_)))
                                                 (_$tl7582975871_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7582775865_))))
                                            (if (let ((__tmp76376
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7582875868_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76376 '#f))
                                                (if (let ((__tmp76377
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7582975871_))))
                                                      (declare (not safe))
                                                      (equal? __tmp76377 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr75817_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7582175862_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7582175862_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7582175862_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7577075782_)))))
                            (let () (declare (not safe)) (_$E7577075782_)))))
                    (let () (declare (not safe)) (_$E7577075782_))))
              (let () (declare (not safe)) (_$E7577075782_))))))
    (define __compile-head-id
      (lambda (_e75764_)
        (let ((__tmp76378
               (if (let () (declare (not safe)) (__AST-e _e75764_))
                   _e75764_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp76378))))
    (define __compile-lambda-head
      (lambda (_hd75721_)
        (let _recur75723_ ((_rest75725_ _hd75721_))
          (let* ((_$e75727_ _rest75725_)
                 (_$E7572975747_
                  (lambda ()
                    (let ((_$E7573075744_
                           (lambda ()
                             (let* ((_$E7573175739_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e75727_))))
                                    (_tail75742_ _$e75727_))
                               (declare (not safe))
                               (__compile-head-id _tail75742_)))))
                      (if (let ((__tmp76379
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e75727_))))
                            (declare (not safe))
                            (equal? __tmp76379 '()))
                          '()
                          (let () (declare (not safe)) (_$E7573075744_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75727_))
                (let* ((_$tgt7573275750_
                        (let () (declare (not safe)) (__AST-e _$e75727_)))
                       (_$hd7573375753_
                        (let () (declare (not safe)) (##car _$tgt7573275750_)))
                       (_$tl7573475756_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7573275750_))))
                  (let* ((_hd75760_ _$hd7573375753_)
                         (_rest75762_ _$tl7573475756_))
                    (let ((__tmp76381
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd75760_)))
                          (__tmp76380
                           (let ()
                             (declare (not safe))
                             (_recur75723_ _rest75762_))))
                      (declare (not safe))
                      (cons __tmp76381 __tmp76380))))
                (let () (declare (not safe)) (_$E7572975747_)))))))
    (define __compile-lambda%
      (lambda (_stx75668_)
        (let* ((_$e75670_ _stx75668_)
               (_$E7567275684_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75670_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75670_))
              (let* ((_$tgt7567375687_
                      (let () (declare (not safe)) (__AST-e _$e75670_)))
                     (_$hd7567475690_
                      (let () (declare (not safe)) (##car _$tgt7567375687_)))
                     (_$tl7567575693_
                      (let () (declare (not safe)) (##cdr _$tgt7567375687_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7567575693_))
                    (let* ((_$tgt7567675697_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7567575693_)))
                           (_$hd7567775700_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7567675697_)))
                           (_$tl7567875703_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7567675697_))))
                      (let ((_hd75707_ _$hd7567775700_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7567875703_))
                            (let* ((_$tgt7567975709_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7567875703_)))
                                   (_$hd7568075712_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7567975709_)))
                                   (_$tl7568175715_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7567975709_))))
                              (let ((_body75719_ _$hd7568075712_))
                                (if (let ((__tmp76382
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7568175715_))))
                                      (declare (not safe))
                                      (equal? __tmp76382 '()))
                                    (let ((__tmp76383
                                           (let ((__tmp76384
                                                  (let ((__tmp76387
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd75707_)))
                                                        (__tmp76385
                                                         (let ((__tmp76386
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body75719_))))
                   (declare (not safe))
                   (cons __tmp76386 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76387
                                                          __tmp76385))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp76384))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76383 _stx75668_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7567275684_)))))
                            (let () (declare (not safe)) (_$E7567275684_)))))
                    (let () (declare (not safe)) (_$E7567275684_))))
              (let () (declare (not safe)) (_$E7567275684_))))))
    (define __compile-case-lambda%
      (lambda (_stx75460_)
        (letrec ((_variadic?75462_
                  (lambda (_hd75633_)
                    (let* ((_$e75635_ _hd75633_)
                           (_$E7563775653_
                            (lambda ()
                              (let ((_$E7563875650_
                                     (lambda ()
                                       (let ((_$E7563975647_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e75635_)))))
                                         '#t))))
                                (if (let ((__tmp76388
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e75635_))))
                                      (declare (not safe))
                                      (equal? __tmp76388 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7563875650_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75635_))
                          (let* ((_$tgt7564075656_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75635_)))
                                 (_$hd7564175659_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7564075656_)))
                                 (_$tl7564275662_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7564075656_))))
                            (let ((_rest75666_ _$tl7564275662_))
                              (declare (not safe))
                              (_variadic?75462_ _rest75666_)))
                          (let () (declare (not safe)) (_$E7563775653_))))))
                 (_arity75463_
                  (lambda (_hd75598_)
                    (let _lp75600_ ((_rest75602_ _hd75598_) (_k75603_ '0))
                      (let* ((_$e75605_ _rest75602_)
                             (_$E7560775618_
                              (lambda ()
                                (let ((_$E7560875615_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e75605_)))))
                                  _k75603_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e75605_))
                            (let* ((_$tgt7560975621_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e75605_)))
                                   (_$hd7561075624_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7560975621_)))
                                   (_$tl7561175627_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7560975621_))))
                              (let* ((_rest75631_ _$tl7561175627_)
                                     (__tmp76389
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k75603_ '1))))
                                (declare (not safe))
                                (_lp75600_ _rest75631_ __tmp76389)))
                            (let () (declare (not safe)) (_$E7560775618_)))))))
                 (_generate75464_
                  (lambda (_rest75525_ _args75526_ _len75527_)
                    (let* ((_$e75529_ _rest75525_)
                           (_$E7553175542_
                            (lambda ()
                              (let* ((_$E7553275539_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e75529_))))
                                     (__tmp76390
                                      (let ((__tmp76391
                                             (let ((__tmp76392
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args75526_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp76392))))
                                        (declare (not safe))
                                        (cons 'error __tmp76391))))
                                (declare (not safe))
                                (__SRC__% __tmp76390 _stx75460_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75529_))
                          (let* ((_$tgt7553375545_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75529_)))
                                 (_$hd7553475548_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7553375545_)))
                                 (_$tl7553575551_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7553375545_))))
                            (let* ((_clause75555_ _$hd7553475548_)
                                   (_rest75557_ _$tl7553575551_)
                                   (_$e75559_ _clause75555_)
                                   (_$E7556175570_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e75559_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e75559_))
                                  (let* ((_$tgt7556275573_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e75559_)))
                                         (_$hd7556375576_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7556275573_)))
                                         (_$tl7556475579_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7556275573_))))
                                    (let ((_hd75583_ _$hd7556375576_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7556475579_))
                                          (let* ((_$tgt7556575585_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7556475579_)))
                                                 (_$hd7556675588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7556575585_)))
                                                 (_$tl7556775591_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7556575585_))))
                                            (if (let ((__tmp76393
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7556775591_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76393 '()))
                                                (let ((_clen75595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity75463_
                                                          _hd75583_)))
                                                      (_cmp75596_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?75462_
                                                              _hd75583_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp76394
                                                         (let ((__tmp76395
                                                                (let ((__tmp76405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76406
                                      (let ((__tmp76407
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen75595_ '()))))
                                        (declare (not safe))
                                        (cons _len75527_ __tmp76407))))
                                 (declare (not safe))
                                 (cons _cmp75596_ __tmp76406)))
                              (__tmp76396
                               (let ((__tmp76399
                                      (let ((__tmp76400
                                             (let ((__tmp76401
                                                    (let ((__tmp76403
                                                           (let ((__tmp76404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause75555_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp76404)))
                  (__tmp76402
                   (let () (declare (not safe)) (cons _args75526_ '()))))
              (declare (not safe))
              (cons __tmp76403 __tmp76402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp76401))))
                                        (declare (not safe))
                                        (__SRC__% __tmp76400 _stx75460_)))
                                     (__tmp76397
                                      (let ((__tmp76398
                                             (let ()
                                               (declare (not safe))
                                               (_generate75464_
                                                _rest75557_
                                                _args75526_
                                                _len75527_))))
                                        (declare (not safe))
                                        (cons __tmp76398 '()))))
                                 (declare (not safe))
                                 (cons __tmp76399 __tmp76397))))
                          (declare (not safe))
                          (cons __tmp76405 __tmp76396))))
                   (declare (not safe))
                   (cons 'if __tmp76395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp76394
                                                     _stx75460_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7556175570_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7556175570_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7556175570_)))))
                          (let () (declare (not safe)) (_$E7553175542_)))))))
          (let* ((_$e75466_ _stx75460_)
                 (_$E7546875500_
                  (lambda ()
                    (let ((_$E7546975482_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75466_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75466_))
                          (let* ((_$tgt7547075485_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75466_)))
                                 (_$hd7547175488_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7547075485_)))
                                 (_$tl7547275491_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7547075485_))))
                            (let ((_clauses75495_ _$tl7547275491_))
                              (let ((_args75497_
                                     (let ((__tmp76408 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76408 _stx75460_)))
                                    (_len75498_
                                     (let ((__tmp76409 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp76409 _stx75460_))))
                                (let ((__tmp76410
                                       (let ((__tmp76411
                                              (let ((__tmp76412
                                                     (let ((__tmp76413
                                                            (let ((__tmp76414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76415
                                  (let ((__tmp76418
                                         (let ((__tmp76419
                                                (let ((__tmp76420
                                                       (let ((__tmp76421
                                                              (let ((__tmp76422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76423
                                    (let ()
                                      (declare (not safe))
                                      (cons _args75497_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp76423))))
                        (declare (not safe))
                        (__SRC__% __tmp76422 _stx75460_))))
                 (declare (not safe))
                 (cons __tmp76421 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len75498_
                                                        __tmp76420))))
                                           (declare (not safe))
                                           (cons __tmp76419 '())))
                                        (__tmp76416
                                         (let ((__tmp76417
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate75464_
                                                   _clauses75495_
                                                   _args75497_
                                                   _len75498_))))
                                           (declare (not safe))
                                           (cons __tmp76417 '()))))
                                    (declare (not safe))
                                    (cons __tmp76418 __tmp76416))))
                             (declare (not safe))
                             (cons 'let __tmp76415))))
                      (declare (not safe))
                      (__SRC__% __tmp76414 _stx75460_))))
               (declare (not safe))
               (cons __tmp76413 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args75497_
                                                      __tmp76412))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp76411))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76410 _stx75460_)))))
                          (let () (declare (not safe)) (_$E7546975482_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75466_))
                (let* ((_$tgt7547375503_
                        (let () (declare (not safe)) (__AST-e _$e75466_)))
                       (_$hd7547475506_
                        (let () (declare (not safe)) (##car _$tgt7547375503_)))
                       (_$tl7547575509_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7547375503_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7547575509_))
                      (let* ((_$tgt7547675513_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7547575509_)))
                             (_$hd7547775516_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7547675513_)))
                             (_$tl7547875519_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7547675513_))))
                        (let ((_clause75523_ _$hd7547775516_))
                          (if (let ((__tmp76424
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7547875519_))))
                                (declare (not safe))
                                (equal? __tmp76424 '()))
                              (let ((__tmp76425
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause75523_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp76425))
                              (let () (declare (not safe)) (_$E7546875500_)))))
                      (let () (declare (not safe)) (_$E7546875500_))))
                (let () (declare (not safe)) (_$E7546875500_)))))))
    (define __compile-let-form
      (lambda (_stx75229_ _compile-simple75230_ _compile-values75231_)
        (letrec ((_simple-bind?75233_
                  (lambda (_hd75418_)
                    (let* ((_hd7541975429_ _hd75418_)
                           (_else7542275437_ (lambda () '#f)))
                      (let ((_K7542575450_ (lambda (_id75448_) '#t))
                            (_K7542475442_ (lambda () '#t)))
                        (let ((_try-match7542175445_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7541975429_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7542475442_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7542275437_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7541975429_))
                              (let ((_tl7542775455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7541975429_)))
                                    (_hd7542675453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7541975429_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7542775455_))
                                    (let ((_id75458_ _hd7542675453_))
                                      (declare (not safe))
                                      (_K7542575450_ _id75458_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7542175445_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7542175445_))))))))
                 (_car-e75234_
                  (lambda (_hd75416_)
                    (if (let () (declare (not safe)) (pair? _hd75416_))
                        (car _hd75416_)
                        _hd75416_))))
          (let* ((_$e75236_ _stx75229_)
                 (_$E7523875381_
                  (lambda ()
                    (let ((_$E7523975261_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e75236_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e75236_))
                          (let* ((_$tgt7524075264_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e75236_)))
                                 (_$hd7524175267_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7524075264_)))
                                 (_$tl7524275270_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7524075264_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7524275270_))
                                (let* ((_$tgt7524375274_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7524275270_)))
                                       (_$hd7524475277_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7524375274_)))
                                       (_$tl7524575280_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7524375274_))))
                                  (let ((_hd75284_ _$hd7524475277_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7524575280_))
                                        (let* ((_$tgt7524675286_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7524575280_)))
                                               (_$hd7524775289_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7524675286_)))
                                               (_$tl7524875292_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7524675286_))))
                                          (let ((_body75296_ _$hd7524775289_))
                                            (if (let ((__tmp76426
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7524875292_))))
                                                  (declare (not safe))
                                                  (equal? __tmp76426 '()))
                                                (let* ((_hd-ids75336_
                                                        (map (lambda (_bind75298_)
                                                               (let* ((_$e75300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind75298_)
                              (_$E7530275311_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75300_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75300_))
                             (let* ((_$tgt7530375314_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75300_)))
                                    (_$hd7530475317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7530375314_)))
                                    (_$tl7530575320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7530375314_))))
                               (let ((_ids75324_ _$hd7530475317_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7530575320_))
                                     (let* ((_$tgt7530675326_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7530575320_)))
                                            (_$hd7530775329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7530675326_)))
                                            (_$tl7530875332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7530675326_))))
                                       (if (let ((__tmp76427
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7530875332_))))
                                             (declare (not safe))
                                             (equal? __tmp76427 '()))
                                           _ids75324_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7530275311_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7530275311_)))))
                             (let () (declare (not safe)) (_$E7530275311_)))))
                     _hd75284_))
               (_exprs75376_
                (map (lambda (_bind75338_)
                       (let* ((_$e75340_ _bind75338_)
                              (_$E7534275351_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e75340_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e75340_))
                             (let* ((_$tgt7534375354_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e75340_)))
                                    (_$hd7534475357_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7534375354_)))
                                    (_$tl7534575360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7534375354_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7534575360_))
                                   (let* ((_$tgt7534675364_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7534575360_)))
                                          (_$hd7534775367_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7534675364_)))
                                          (_$tl7534875370_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7534675364_))))
                                     (let ((_expr75374_ _$hd7534775367_))
                                       (if (let ((__tmp76428
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7534875370_))))
                                             (declare (not safe))
                                             (equal? __tmp76428 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr75374_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7534275351_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7534275351_))))
                             (let () (declare (not safe)) (_$E7534275351_)))))
                     _hd75284_))
               (_body75378_
                (let () (declare (not safe)) (__compile _body75296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?75233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids75336_))
              (_compile-simple75230_
               (map _car-e75234_ _hd-ids75336_)
               _exprs75376_
               _body75378_)
              (_compile-values75231_ _hd-ids75336_ _exprs75376_ _body75378_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7523975261_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7523975261_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7523975261_))))
                          (let () (declare (not safe)) (_$E7523975261_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e75236_))
                (let* ((_$tgt7524975384_
                        (let () (declare (not safe)) (__AST-e _$e75236_)))
                       (_$hd7525075387_
                        (let () (declare (not safe)) (##car _$tgt7524975384_)))
                       (_$tl7525175390_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7524975384_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7525175390_))
                      (let* ((_$tgt7525275394_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7525175390_)))
                             (_$hd7525375397_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7525275394_)))
                             (_$tl7525475400_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7525275394_))))
                        (if (let ((__tmp76429
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7525375397_))))
                              (declare (not safe))
                              (equal? __tmp76429 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7525475400_))
                                (let* ((_$tgt7525575404_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7525475400_)))
                                       (_$hd7525675407_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7525575404_)))
                                       (_$tl7525775410_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7525575404_))))
                                  (let ((_body75414_ _$hd7525675407_))
                                    (if (let ((__tmp76430
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7525775410_))))
                                          (declare (not safe))
                                          (equal? __tmp76430 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body75414_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7523875381_)))))
                                (let () (declare (not safe)) (_$E7523875381_)))
                            (let () (declare (not safe)) (_$E7523875381_))))
                      (let () (declare (not safe)) (_$E7523875381_))))
                (let () (declare (not safe)) (_$E7523875381_)))))))
    (define __compile-let-values%
      (lambda (_stx75044_)
        (letrec ((_compile-simple75046_
                  (lambda (_hd-ids75225_ _exprs75226_ _body75227_)
                    (let ((__tmp76431
                           (let ((__tmp76432
                                  (let ((__tmp76434
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75225_)
                                              _exprs75226_))
                                        (__tmp76433
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75227_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76434 __tmp76433))))
                             (declare (not safe))
                             (cons 'let __tmp76432))))
                      (declare (not safe))
                      (__SRC__% __tmp76431 _stx75044_))))
                 (_compile-values75047_
                  (lambda (_hd-ids75143_ _exprs75144_ _body75145_)
                    (let _lp75147_ ((_rest75149_ _hd-ids75143_)
                                    (_exprs75150_ _exprs75144_)
                                    (_bind75151_ '())
                                    (_post75152_ '()))
                      (let* ((_rest7515375167_ _rest75149_)
                             (_else7515675175_
                              (lambda ()
                                (let ((__tmp76435
                                       (let ((__tmp76436
                                              (let ((__tmp76439
                                                     (reverse _bind75151_))
                                                    (__tmp76437
                                                     (let ((__tmp76438
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post75048_
                                                               _post75152_
                                                               _body75145_))))
                                                       (declare (not safe))
                                                       (cons __tmp76438 '()))))
                                                (declare (not safe))
                                                (cons __tmp76439 __tmp76437))))
                                         (declare (not safe))
                                         (cons 'let __tmp76436))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76435 _stx75044_)))))
                        (let ((_K7516175208_
                               (lambda (_rest75205_ _id75206_)
                                 (let ((__tmp76445 (cdr _exprs75150_))
                                       (__tmp76440
                                        (let ((__tmp76441
                                               (let ((__tmp76444
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75206_)))
                                                     (__tmp76442
                                                      (let ((__tmp76443
                                                             (car _exprs75150_)))
                                                        (declare (not safe))
                                                        (cons __tmp76443
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76444
                                                       __tmp76442))))
                                          (declare (not safe))
                                          (cons __tmp76441 _bind75151_))))
                                   (declare (not safe))
                                   (_lp75147_
                                    _rest75205_
                                    __tmp76445
                                    __tmp76440
                                    _post75152_))))
                              (_K7515875190_
                               (lambda (_rest75179_ _hd75180_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75180_))
                                     (let ((__tmp76453 (cdr _exprs75150_))
                                           (__tmp76446
                                            (let ((__tmp76447
                                                   (let ((__tmp76452
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd75180_)))
                                                         (__tmp76448
                                                          (let ((__tmp76449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76450
                                (let ((__tmp76451 (car _exprs75150_)))
                                  (declare (not safe))
                                  (cons __tmp76451 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76450))))
                    (declare (not safe))
                    (cons __tmp76449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76452
                                                           __tmp76448))))
                                              (declare (not safe))
                                              (cons __tmp76447 _bind75151_))))
                                       (declare (not safe))
                                       (_lp75147_
                                        _rest75179_
                                        __tmp76453
                                        __tmp76446
                                        _post75152_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd75180_))
                                         (let* ((_len75182_ (length _hd75180_))
                                                (_tmp75184_
                                                 (let ((__tmp76454 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76454))))
                                           (let ((__tmp76466
                                                  (cdr _exprs75150_))
                                                 (__tmp76462
                                                  (let ((__tmp76463
                                                         (let ((__tmp76464
                                                                (let ((__tmp76465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs75150_)))
                          (declare (not safe))
                          (cons __tmp76465 '()))))
                   (declare (not safe))
                   (cons _tmp75184_ __tmp76464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76463
                                                          _bind75151_)))
                                                 (__tmp76455
                                                  (let ((__tmp76456
                                                         (let ((__tmp76457
                                                                (let ((__tmp76458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76460
                                      (lambda (_id75187_ _k75188_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75187_))
                                            (let ((__tmp76461
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75187_))))
                                              (declare (not safe))
                                              (cons __tmp76461 _k75188_))
                                            '#f)))
                                     (__tmp76459 (iota _len75182_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76460
                                  _hd75180_
                                  __tmp76459))))
                          (declare (not safe))
                          (cons _len75182_ __tmp76458))))
                   (declare (not safe))
                   (cons _tmp75184_ __tmp76457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76456
                                                          _post75152_))))
                                             (declare (not safe))
                                             (_lp75147_
                                              _rest75179_
                                              __tmp76466
                                              __tmp76462
                                              __tmp76455)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75044_
                                            _hd75180_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7515375167_))
                              (let ((_tl7516375213_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7515375167_)))
                                    (_hd7516275211_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7515375167_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7516275211_))
                                    (let ((_tl7516575218_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7516275211_)))
                                          (_hd7516475216_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7516275211_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7516575218_))
                                          (let ((_id75221_ _hd7516475216_)
                                                (_rest75223_ _tl7516375213_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7516175208_
                                               _rest75223_
                                               _id75221_)))
                                          (let ((_hd75198_ _hd7516275211_)
                                                (_rest75200_ _tl7516375213_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7515875190_
                                               _rest75200_
                                               _hd75198_)))))
                                    (let ((_hd75198_ _hd7516275211_)
                                          (_rest75200_ _tl7516375213_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7515875190_
                                         _rest75200_
                                         _hd75198_)))))
                              (let ()
                                (declare (not safe))
                                (_else7515675175_))))))))
                 (_compile-post75048_
                  (lambda (_post75050_ _body75051_)
                    (let _lp75053_ ((_rest75055_ _post75050_)
                                    (_check75056_ '())
                                    (_bind75057_ '()))
                      (let* ((_rest7505875070_ _rest75055_)
                             (_else7506075078_
                              (lambda ()
                                (let ((__tmp76467
                                       (let ((__tmp76468
                                              (let ((__tmp76469
                                                     (let ((__tmp76470
                                                            (let ((__tmp76471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76472
                                  (let ((__tmp76473
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75051_ '()))))
                                    (declare (not safe))
                                    (cons _bind75057_ __tmp76473))))
                             (declare (not safe))
                             (cons 'let __tmp76472))))
                      (declare (not safe))
                      (__SRC__% __tmp76471 _stx75044_))))
               (declare (not safe))
               (cons __tmp76470 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76469
                                                        _check75056_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76468))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76467 _stx75044_))))
                             (_K7506275117_
                              (lambda (_rest75081_
                                       _init75082_
                                       _len75083_
                                       _tmp75084_)
                                (let ((__tmp76481
                                       (let ((__tmp76482
                                              (let ((__tmp76483
                                                     (let ((__tmp76484
                                                            (let ((__tmp76485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len75083_ '()))))
                      (declare (not safe))
                      (cons _tmp75084_ __tmp76485))))
               (declare (not safe))
               (cons '__check-values __tmp76484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76483
                                                 _stx75044_))))
                                         (declare (not safe))
                                         (cons __tmp76482 _check75056_)))
                                      (__tmp76474
                                       (let ((__tmp76475
                                              (lambda (_hd75086_ _r75087_)
                                                (let* ((_hd7508875095_
                                                        _hd75086_)
                                                       (_E7509075099_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7508875095_))))
               (_K7509175105_
                (lambda (_k75102_ _id75103_)
                  (let ((__tmp76476
                         (let ((__tmp76477
                                (let ((__tmp76478
                                       (let ((__tmp76479
                                              (let ((__tmp76480
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k75102_ '()))))
                                                (declare (not safe))
                                                (cons _tmp75084_ __tmp76480))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp76479))))
                                  (declare (not safe))
                                  (cons __tmp76478 '()))))
                           (declare (not safe))
                           (cons _id75103_ __tmp76477))))
                    (declare (not safe))
                    (cons __tmp76476 _r75087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7508875095_))
                                                      (let ((_hd7509275108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7508875095_)))
                    (_tl7509375110_
                     (let () (declare (not safe)) (##cdr _hd7508875095_))))
                (let* ((_id75113_ _hd7509275108_) (_k75115_ _tl7509375110_))
                  (declare (not safe))
                  (_K7509175105_ _k75115_ _id75113_)))
              (let () (declare (not safe)) (_E7509075099_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76475
                                                 _bind75057_
                                                 _init75082_))))
                                  (declare (not safe))
                                  (_lp75053_
                                   _rest75081_
                                   __tmp76481
                                   __tmp76474)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7505875070_))
                            (let ((_hd7506375120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7505875070_)))
                                  (_tl7506475122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7505875070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7506375120_))
                                  (let ((_hd7506575125_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7506375120_)))
                                        (_tl7506675127_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7506375120_))))
                                    (let ((_tmp75130_ _hd7506575125_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7506675127_))
                                          (let ((_hd7506775132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7506675127_)))
                                                (_tl7506875134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7506675127_))))
                                            (let* ((_len75137_ _hd7506775132_)
                                                   (_init75139_ _tl7506875134_)
                                                   (_rest75141_
                                                    _tl7506475122_))
                                              (declare (not safe))
                                              (_K7506275117_
                                               _rest75141_
                                               _init75139_
                                               _len75137_
                                               _tmp75130_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7506075078_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7506075078_))))
                            (let ()
                              (declare (not safe))
                              (_else7506075078_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75044_
             _compile-simple75046_
             _compile-values75047_)))))
    (define __compile-letrec-values%
      (lambda (_stx74844_)
        (letrec ((_compile-simple74846_
                  (lambda (_hd-ids75040_ _exprs75041_ _body75042_)
                    (let ((__tmp76486
                           (let ((__tmp76487
                                  (let ((__tmp76489
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75040_)
                                              _exprs75041_))
                                        (__tmp76488
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75042_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76489 __tmp76488))))
                             (declare (not safe))
                             (cons 'letrec __tmp76487))))
                      (declare (not safe))
                      (__SRC__% __tmp76486 _stx74844_))))
                 (_compile-values74847_
                  (lambda (_hd-ids74954_ _exprs74955_ _body74956_)
                    (let _lp74958_ ((_rest74960_ _hd-ids74954_)
                                    (_exprs74961_ _exprs74955_)
                                    (_pre74962_ '())
                                    (_bind74963_ '())
                                    (_post74964_ '()))
                      (let* ((_rest7496574979_ _rest74960_)
                             (_else7496874987_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner74848_
                                   _pre74962_
                                   _bind74963_
                                   _post74964_
                                   _body74956_)))))
                        (let ((_K7497375023_
                               (lambda (_rest75020_ _id75021_)
                                 (let ((__tmp76495 (cdr _exprs74961_))
                                       (__tmp76490
                                        (let ((__tmp76491
                                               (let ((__tmp76494
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id75021_)))
                                                     (__tmp76492
                                                      (let ((__tmp76493
                                                             (car _exprs74961_)))
                                                        (declare (not safe))
                                                        (cons __tmp76493
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp76494
                                                       __tmp76492))))
                                          (declare (not safe))
                                          (cons __tmp76491 _bind74963_))))
                                   (declare (not safe))
                                   (_lp74958_
                                    _rest75020_
                                    __tmp76495
                                    _pre74962_
                                    __tmp76490
                                    _post74964_))))
                              (_K7497075005_
                               (lambda (_rest74991_ _hd74992_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74992_))
                                     (let ((__tmp76503 (cdr _exprs74961_))
                                           (__tmp76496
                                            (let ((__tmp76497
                                                   (let ((__tmp76502
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd74992_)))
                                                         (__tmp76498
                                                          (let ((__tmp76499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp76500
                                (let ((__tmp76501 (car _exprs74961_)))
                                  (declare (not safe))
                                  (cons __tmp76501 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp76500))))
                    (declare (not safe))
                    (cons __tmp76499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76502
                                                           __tmp76498))))
                                              (declare (not safe))
                                              (cons __tmp76497 _bind74963_))))
                                       (declare (not safe))
                                       (_lp74958_
                                        _rest74991_
                                        __tmp76503
                                        _pre74962_
                                        __tmp76496
                                        _post74964_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd74992_))
                                         (let* ((_len74994_ (length _hd74992_))
                                                (_tmp74996_
                                                 (let ((__tmp76504 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp76504))))
                                           (let ((__tmp76523
                                                  (cdr _exprs74961_))
                                                 (__tmp76516
                                                  (let ((__tmp76517
                                                         (lambda (_id74999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r75000_)
                   (if (let () (declare (not safe)) (__AST-e _id74999_))
                       (let ((__tmp76518
                              (let ((__tmp76522
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id74999_)))
                                    (__tmp76519
                                     (let ((__tmp76520
                                            (let ((__tmp76521
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp76521))))
                                       (declare (not safe))
                                       (cons __tmp76520 '()))))
                                (declare (not safe))
                                (cons __tmp76522 __tmp76519))))
                         (declare (not safe))
                         (cons __tmp76518 _r75000_))
                       _r75000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp76517
                                                            _pre74962_
                                                            _hd74992_)))
                                                 (__tmp76512
                                                  (let ((__tmp76513
                                                         (let ((__tmp76514
                                                                (let ((__tmp76515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs74961_)))
                          (declare (not safe))
                          (cons __tmp76515 '()))))
                   (declare (not safe))
                   (cons _tmp74996_ __tmp76514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76513
                                                          _bind74963_)))
                                                 (__tmp76505
                                                  (let ((__tmp76506
                                                         (let ((__tmp76507
                                                                (let ((__tmp76508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76510
                                      (lambda (_id75002_ _k75003_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id75002_))
                                            (let ((__tmp76511
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id75002_))))
                                              (declare (not safe))
                                              (cons __tmp76511 _k75003_))
                                            '#f)))
                                     (__tmp76509 (iota _len74994_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp76510
                                  _hd74992_
                                  __tmp76509))))
                          (declare (not safe))
                          (cons _len74994_ __tmp76508))))
                   (declare (not safe))
                   (cons _tmp74996_ __tmp76507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76506
                                                          _post74964_))))
                                             (declare (not safe))
                                             (_lp74958_
                                              _rest74991_
                                              __tmp76523
                                              __tmp76516
                                              __tmp76512
                                              __tmp76505)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx74844_
                                            _hd74992_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7496574979_))
                              (let ((_tl7497575028_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7496574979_)))
                                    (_hd7497475026_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7496574979_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7497475026_))
                                    (let ((_tl7497775033_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7497475026_)))
                                          (_hd7497675031_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7497475026_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7497775033_))
                                          (let ((_id75036_ _hd7497675031_)
                                                (_rest75038_ _tl7497575028_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7497375023_
                                               _rest75038_
                                               _id75036_)))
                                          (let ((_hd75013_ _hd7497475026_)
                                                (_rest75015_ _tl7497575028_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7497075005_
                                               _rest75015_
                                               _hd75013_)))))
                                    (let ((_hd75013_ _hd7497475026_)
                                          (_rest75015_ _tl7497575028_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7497075005_
                                         _rest75015_
                                         _hd75013_)))))
                              (let ()
                                (declare (not safe))
                                (_else7496874987_))))))))
                 (_compile-inner74848_
                  (lambda (_pre74949_ _bind74950_ _post74951_ _body74952_)
                    (if (let () (declare (not safe)) (null? _pre74949_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind74849_
                           _bind74950_
                           _post74951_
                           _body74952_))
                        (let ((__tmp76524
                               (let ((__tmp76525
                                      (let ((__tmp76528 (reverse _pre74949_))
                                            (__tmp76526
                                             (let ((__tmp76527
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind74849_
                                                       _bind74950_
                                                       _post74951_
                                                       _body74952_))))
                                               (declare (not safe))
                                               (cons __tmp76527 '()))))
                                        (declare (not safe))
                                        (cons __tmp76528 __tmp76526))))
                                 (declare (not safe))
                                 (cons 'let __tmp76525))))
                          (declare (not safe))
                          (__SRC__% __tmp76524 _stx74844_)))))
                 (_compile-bind74849_
                  (lambda (_bind74945_ _post74946_ _body74947_)
                    (let ((__tmp76529
                           (let ((__tmp76530
                                  (let ((__tmp76533 (reverse _bind74945_))
                                        (__tmp76531
                                         (let ((__tmp76532
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post74850_
                                                   _post74946_
                                                   _body74947_))))
                                           (declare (not safe))
                                           (cons __tmp76532 '()))))
                                    (declare (not safe))
                                    (cons __tmp76533 __tmp76531))))
                             (declare (not safe))
                             (cons 'letrec __tmp76530))))
                      (declare (not safe))
                      (__SRC__% __tmp76529 _stx74844_))))
                 (_compile-post74850_
                  (lambda (_post74852_ _body74853_)
                    (let _lp74855_ ((_rest74857_ _post74852_)
                                    (_check74858_ '())
                                    (_bind74859_ '()))
                      (let* ((_rest7486074872_ _rest74857_)
                             (_else7486274880_
                              (lambda ()
                                (let ((__tmp76534
                                       (let ((__tmp76535
                                              (let ((__tmp76536
                                                     (let ((__tmp76537
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body74853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp76537 _bind74859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp76536
                                                        _check74858_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp76535))))
                                  (declare (not safe))
                                  (__SRC__% __tmp76534 _stx74844_))))
                             (_K7486474919_
                              (lambda (_rest74883_
                                       _init74884_
                                       _len74885_
                                       _tmp74886_)
                                (let ((__tmp76546
                                       (let ((__tmp76547
                                              (let ((__tmp76548
                                                     (let ((__tmp76549
                                                            (let ((__tmp76550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len74885_ '()))))
                      (declare (not safe))
                      (cons _tmp74886_ __tmp76550))))
               (declare (not safe))
               (cons '__check-values __tmp76549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp76548
                                                 _stx74844_))))
                                         (declare (not safe))
                                         (cons __tmp76547 _check74858_)))
                                      (__tmp76538
                                       (let ((__tmp76539
                                              (lambda (_hd74888_ _r74889_)
                                                (let* ((_hd7489074897_
                                                        _hd74888_)
                                                       (_E7489274901_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7489074897_))))
               (_K7489374907_
                (lambda (_k74904_ _id74905_)
                  (let ((__tmp76540
                         (let ((__tmp76541
                                (let ((__tmp76542
                                       (let ((__tmp76543
                                              (let ((__tmp76544
                                                     (let ((__tmp76545
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k74904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp74886_ __tmp76545))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp76544))))
                                         (declare (not safe))
                                         (cons __tmp76543 '()))))
                                  (declare (not safe))
                                  (cons _id74905_ __tmp76542))))
                           (declare (not safe))
                           (cons 'set! __tmp76541))))
                    (declare (not safe))
                    (cons __tmp76540 _r74889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7489074897_))
                                                      (let ((_hd7489474910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7489074897_)))
                    (_tl7489574912_
                     (let () (declare (not safe)) (##cdr _hd7489074897_))))
                (let* ((_id74915_ _hd7489474910_) (_k74917_ _tl7489574912_))
                  (declare (not safe))
                  (_K7489374907_ _k74917_ _id74915_)))
              (let () (declare (not safe)) (_E7489274901_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp76539
                                                 _bind74859_
                                                 _init74884_))))
                                  (declare (not safe))
                                  (_lp74855_
                                   _rest74883_
                                   __tmp76546
                                   __tmp76538)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7486074872_))
                            (let ((_hd7486574922_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7486074872_)))
                                  (_tl7486674924_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7486074872_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7486574922_))
                                  (let ((_hd7486774927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7486574922_)))
                                        (_tl7486874929_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7486574922_))))
                                    (let ((_tmp74932_ _hd7486774927_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7486874929_))
                                          (let ((_hd7486974934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7486874929_)))
                                                (_tl7487074936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7486874929_))))
                                            (let* ((_len74939_ _hd7486974934_)
                                                   (_init74941_ _tl7487074936_)
                                                   (_rest74943_
                                                    _tl7486674924_))
                                              (declare (not safe))
                                              (_K7486474919_
                                               _rest74943_
                                               _init74941_
                                               _len74939_
                                               _tmp74932_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7486274880_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7486274880_))))
                            (let ()
                              (declare (not safe))
                              (_else7486274880_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx74844_
             _compile-simple74846_
             _compile-values74847_)))))
    (define __compile-letrec*-values%
      (lambda (_stx74599_)
        (letrec ((_compile-simple74601_
                  (lambda (_hd-ids74840_ _exprs74841_ _body74842_)
                    (let ((__tmp76551
                           (let ((__tmp76552
                                  (let ((__tmp76554
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids74840_)
                                              _exprs74841_))
                                        (__tmp76553
                                         (let ()
                                           (declare (not safe))
                                           (cons _body74842_ '()))))
                                    (declare (not safe))
                                    (cons __tmp76554 __tmp76553))))
                             (declare (not safe))
                             (cons 'letrec* __tmp76552))))
                      (declare (not safe))
                      (__SRC__% __tmp76551 _stx74599_))))
                 (_compile-values74602_
                  (lambda (_hd-ids74751_ _exprs74752_ _body74753_)
                    (let _lp74755_ ((_rest74757_ _hd-ids74751_)
                                    (_exprs74758_ _exprs74752_)
                                    (_bind74759_ '())
                                    (_post74760_ '()))
                      (let* ((_rest7476174775_ _rest74757_)
                             (_else7476474783_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind74603_
                                   _bind74759_
                                   _post74760_
                                   _body74753_)))))
                        (let ((_K7476974823_
                               (lambda (_rest74818_ _hd74819_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74819_))
                                     (let ((_id74821_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd74819_))))
                                       (let ((__tmp76564 (cdr _exprs74758_))
                                             (__tmp76559
                                              (let ((__tmp76560
                                                     (let ((__tmp76561
                                                            (let ((__tmp76562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76563
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp76563))))
                      (declare (not safe))
                      (cons __tmp76562 '()))))
               (declare (not safe))
               (cons _id74821_ __tmp76561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76560 _bind74759_)))
                                             (__tmp76555
                                              (let ((__tmp76556
                                                     (let ((__tmp76557
                                                            (let ((__tmp76558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs74758_)))
                      (declare (not safe))
                      (cons __tmp76558 '()))))
               (declare (not safe))
               (cons _id74821_ __tmp76557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76556
                                                      _post74760_))))
                                         (declare (not safe))
                                         (_lp74755_
                                          _rest74818_
                                          __tmp76564
                                          __tmp76559
                                          __tmp76555)))
                                     (let ((__tmp76569 (cdr _exprs74758_))
                                           (__tmp76565
                                            (let ((__tmp76566
                                                   (let ((__tmp76567
                                                          (let ((__tmp76568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs74758_)))
                    (declare (not safe))
                    (cons __tmp76568 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp76567))))
                                              (declare (not safe))
                                              (cons __tmp76566 _post74760_))))
                                       (declare (not safe))
                                       (_lp74755_
                                        _rest74818_
                                        __tmp76569
                                        _bind74759_
                                        __tmp76565)))))
                              (_K7476674803_
                               (lambda (_rest74787_ _hd74788_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd74788_))
                                     (let ((_id74790_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd74788_))))
                                       (let ((__tmp76581 (cdr _exprs74758_))
                                             (__tmp76576
                                              (let ((__tmp76577
                                                     (let ((__tmp76578
                                                            (let ((__tmp76579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76580
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp76580))))
                      (declare (not safe))
                      (cons __tmp76579 '()))))
               (declare (not safe))
               (cons _id74790_ __tmp76578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76577 _bind74759_)))
                                             (__tmp76570
                                              (let ((__tmp76571
                                                     (let ((__tmp76572
                                                            (let ((__tmp76573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76574
                                  (let ((__tmp76575 (car _exprs74758_)))
                                    (declare (not safe))
                                    (cons __tmp76575 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp76574))))
                      (declare (not safe))
                      (cons __tmp76573 '()))))
               (declare (not safe))
               (cons _id74790_ __tmp76572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76571
                                                      _post74760_))))
                                         (declare (not safe))
                                         (_lp74755_
                                          _rest74787_
                                          __tmp76581
                                          __tmp76576
                                          __tmp76570)))
                                     (if (let ((__tmp76582
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd74788_))))
                                           (declare (not safe))
                                           (not __tmp76582))
                                         (let ((__tmp76587 (cdr _exprs74758_))
                                               (__tmp76583
                                                (let ((__tmp76584
                                                       (let ((__tmp76585
                                                              (let ((__tmp76586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs74758_)))
                        (declare (not safe))
                        (cons __tmp76586 '()))))
                 (declare (not safe))
                 (cons '#f __tmp76585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp76584
                                                        _post74760_))))
                                           (declare (not safe))
                                           (_lp74755_
                                            _rest74787_
                                            __tmp76587
                                            _bind74759_
                                            __tmp76583))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd74788_))
                                             (let* ((_len74792_
                                                     (length _hd74788_))
                                                    (_tmp74794_
                                                     (let ((__tmp76588
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp76588))))
                                               (let ((__tmp76605
                                                      (cdr _exprs74758_))
                                                     (__tmp76598
                                                      (let ((__tmp76599
                                                             (lambda (_id74797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r74798_)
                       (if (let () (declare (not safe)) (__AST-e _id74797_))
                           (let ((__tmp76600
                                  (let ((__tmp76604
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id74797_)))
                                        (__tmp76601
                                         (let ((__tmp76602
                                                (let ((__tmp76603
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp76603))))
                                           (declare (not safe))
                                           (cons __tmp76602 '()))))
                                    (declare (not safe))
                                    (cons __tmp76604 __tmp76601))))
                             (declare (not safe))
                             (cons __tmp76600 _r74798_))
                           _r74798_))))
                (declare (not safe))
                (foldl1 __tmp76599 _bind74759_ _hd74788_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp76589
                                                      (let ((__tmp76590
                                                             (let ((__tmp76591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp76597 (car _exprs74758_))
                                  (__tmp76592
                                   (let ((__tmp76593
                                          (let ((__tmp76595
                                                 (lambda (_id74800_ _k74801_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id74800_))
                                                       (let ((__tmp76596
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id74800_))))
                 (declare (not safe))
                 (cons __tmp76596 _k74801_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp76594 (iota _len74792_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp76595
                                             _hd74788_
                                             __tmp76594))))
                                     (declare (not safe))
                                     (cons _len74792_ __tmp76593))))
                              (declare (not safe))
                              (cons __tmp76597 __tmp76592))))
                       (declare (not safe))
                       (cons _tmp74794_ __tmp76591))))
                (declare (not safe))
                (cons __tmp76590 _post74760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp74755_
                                                  _rest74787_
                                                  __tmp76605
                                                  __tmp76598
                                                  __tmp76589)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx74599_
                                                _hd74788_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7476174775_))
                              (let ((_tl7477174828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7476174775_)))
                                    (_hd7477074826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7476174775_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7477074826_))
                                    (let ((_tl7477374833_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7477074826_)))
                                          (_hd7477274831_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7477074826_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7477374833_))
                                          (let ((_hd74836_ _hd7477274831_)
                                                (_rest74838_ _tl7477174828_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7476974823_
                                               _rest74838_
                                               _hd74836_)))
                                          (let ((_hd74811_ _hd7477074826_)
                                                (_rest74813_ _tl7477174828_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7476674803_
                                               _rest74813_
                                               _hd74811_)))))
                                    (let ((_hd74811_ _hd7477074826_)
                                          (_rest74813_ _tl7477174828_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7476674803_
                                         _rest74813_
                                         _hd74811_)))))
                              (let ()
                                (declare (not safe))
                                (_else7476474783_))))))))
                 (_compile-bind74603_
                  (lambda (_bind74747_ _post74748_ _body74749_)
                    (let ((__tmp76606
                           (let ((__tmp76607
                                  (let ((__tmp76610 (reverse _bind74747_))
                                        (__tmp76608
                                         (let ((__tmp76609
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post74604_
                                                   _post74748_
                                                   _body74749_))))
                                           (declare (not safe))
                                           (cons __tmp76609 '()))))
                                    (declare (not safe))
                                    (cons __tmp76610 __tmp76608))))
                             (declare (not safe))
                             (cons 'let __tmp76607))))
                      (declare (not safe))
                      (__SRC__% __tmp76606 _stx74599_))))
                 (_compile-post74604_
                  (lambda (_post74606_ _body74607_)
                    (let ((__tmp76611
                           (let ((__tmp76612
                                  (let ((__tmp76613
                                         (let ((__tmp76615
                                                (lambda (_hd74609_ _r74610_)
                                                  (let* ((_hd7461174634_
                                                          _hd74609_)
                                                         (_E7461574638_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7461174634_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7462874732_
                                                           (lambda (_expr74730_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr74730_ _r74610_))))
                  (_K7462374710_
                   (lambda (_expr74707_ _id74708_)
                     (let ((__tmp76616
                            (let ((__tmp76617
                                   (let ((__tmp76618
                                          (let ((__tmp76619
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr74707_ '()))))
                                            (declare (not safe))
                                            (cons _id74708_ __tmp76619))))
                                     (declare (not safe))
                                     (cons 'set! __tmp76618))))
                              (declare (not safe))
                              (__SRC__% __tmp76617 _stx74599_))))
                       (declare (not safe))
                       (cons __tmp76616 _r74610_))))
                  (_K7461674677_
                   (lambda (_init74642_ _len74643_ _expr74644_ _tmp74645_)
                     (let ((__tmp76620
                            (let ((__tmp76621
                                   (let ((__tmp76622
                                          (let ((__tmp76636
                                                 (let ((__tmp76637
                                                        (let ((__tmp76638
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr74644_ '()))))
                  (declare (not safe))
                  (cons _tmp74645_ __tmp76638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp76637 '())))
                                                (__tmp76623
                                                 (let ((__tmp76632
                                                        (let ((__tmp76633
                                                               (let ((__tmp76634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp76635
                                     (let ()
                                       (declare (not safe))
                                       (cons _len74643_ '()))))
                                (declare (not safe))
                                (cons _tmp74645_ __tmp76635))))
                         (declare (not safe))
                         (cons '__check-values __tmp76634))))
                  (declare (not safe))
                  (__SRC__% __tmp76633 _stx74599_)))
               (__tmp76624
                (let ((__tmp76625
                       (map (lambda (_hd74647_)
                              (let* ((_hd7464874655_ _hd74647_)
                                     (_E7465074659_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7464874655_))))
                                     (_K7465174665_
                                      (lambda (_k74662_ _id74663_)
                                        (let ((__tmp76626
                                               (let ((__tmp76627
                                                      (let ((__tmp76628
                                                             (let ((__tmp76629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp76630
                                   (let ((__tmp76631
                                          (let ()
                                            (declare (not safe))
                                            (cons _k74662_ '()))))
                                     (declare (not safe))
                                     (cons _tmp74645_ __tmp76631))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp76630))))
                       (declare (not safe))
                       (cons __tmp76629 '()))))
                (declare (not safe))
                (cons _id74663_ __tmp76628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp76627))))
                                          (declare (not safe))
                                          (__SRC__% __tmp76626 _stx74599_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7464874655_))
                                    (let ((_hd7465274668_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7464874655_)))
                                          (_tl7465374670_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7464874655_))))
                                      (let* ((_id74673_ _hd7465274668_)
                                             (_k74675_ _tl7465374670_))
                                        (declare (not safe))
                                        (_K7465174665_ _k74675_ _id74673_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7465074659_)))))
                            _init74642_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp76625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp76632
                                                         __tmp76624))))
                                            (declare (not safe))
                                            (cons __tmp76636 __tmp76623))))
                                     (declare (not safe))
                                     (cons 'let __tmp76622))))
                              (declare (not safe))
                              (__SRC__% __tmp76621 _stx74599_))))
                       (declare (not safe))
                       (cons __tmp76620 _r74610_)))))
              (if (let () (declare (not safe)) (##pair? _hd7461174634_))
                  (let ((_tl7463074737_
                         (let () (declare (not safe)) (##cdr _hd7461174634_)))
                        (_hd7462974735_
                         (let () (declare (not safe)) (##car _hd7461174634_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7462974735_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7463074737_))
                            (let ((_tl7463274742_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7463074737_)))
                                  (_hd7463174740_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7463074737_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7463274742_))
                                  (let ((_expr74745_ _hd7463174740_))
                                    (declare (not safe))
                                    (_K7462874732_ _expr74745_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7463274742_))
                                      (let ((_tl7462274696_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7463274742_)))
                                            (_hd7462174694_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7463274742_))))
                                        (let ((_tmp74685_ _hd7462974735_)
                                              (_expr74692_ _hd7463174740_)
                                              (_len74699_ _hd7462174694_)
                                              (_init74701_ _tl7462274696_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7461674677_
                                             _init74701_
                                             _len74699_
                                             _expr74692_
                                             _tmp74685_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7461574638_)))))
                            (let () (declare (not safe)) (_E7461574638_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7463074737_))
                            (let ((_tl7462774722_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7463074737_)))
                                  (_hd7462674720_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7463074737_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7462774722_))
                                  (let ((_id74718_ _hd7462974735_)
                                        (_expr74725_ _hd7462674720_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7462374710_ _expr74725_ _id74718_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7462774722_))
                                      (let ((_tl7462274696_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7462774722_)))
                                            (_hd7462174694_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7462774722_))))
                                        (let ((_tmp74685_ _hd7462974735_)
                                              (_expr74692_ _hd7462674720_)
                                              (_len74699_ _hd7462174694_)
                                              (_init74701_ _tl7462274696_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7461674677_
                                             _init74701_
                                             _len74699_
                                             _expr74692_
                                             _tmp74685_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7461574638_)))))
                            (let () (declare (not safe)) (_E7461574638_)))))
                  (let () (declare (not safe)) (_E7461574638_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp76614 (list _body74607_)))
                                           (declare (not safe))
                                           (foldl1 __tmp76615
                                                   __tmp76614
                                                   _post74606_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp76613))))
                             (declare (not safe))
                             (cons 'begin __tmp76612))))
                      (declare (not safe))
                      (__SRC__% __tmp76611 _stx74599_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx74599_
             _compile-simple74601_
             _compile-values74602_)))))
    (define __compile-call%
      (lambda (_stx74559_)
        (let* ((_$e74561_ _stx74559_)
               (_$E7456374572_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74561_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74561_))
              (let* ((_$tgt7456474575_
                      (let () (declare (not safe)) (__AST-e _$e74561_)))
                     (_$hd7456574578_
                      (let () (declare (not safe)) (##car _$tgt7456474575_)))
                     (_$tl7456674581_
                      (let () (declare (not safe)) (##cdr _$tgt7456474575_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7456674581_))
                    (let* ((_$tgt7456774585_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7456674581_)))
                           (_$hd7456874588_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7456774585_)))
                           (_$tl7456974591_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7456774585_))))
                      (let* ((_rator74595_ _$hd7456874588_)
                             (_rands74597_ _$tl7456974591_)
                             (__tmp76639
                              (let ((__tmp76641
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator74595_)))
                                    (__tmp76640 (map __compile _rands74597_)))
                                (declare (not safe))
                                (cons __tmp76641 __tmp76640))))
                        (declare (not safe))
                        (__SRC__% __tmp76639 _stx74559_)))
                    (let () (declare (not safe)) (_$E7456374572_))))
              (let () (declare (not safe)) (_$E7456374572_))))))
    (define __compile-ref%
      (lambda (_stx74521_)
        (let* ((_$e74523_ _stx74521_)
               (_$E7452574534_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74523_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74523_))
              (let* ((_$tgt7452674537_
                      (let () (declare (not safe)) (__AST-e _$e74523_)))
                     (_$hd7452774540_
                      (let () (declare (not safe)) (##car _$tgt7452674537_)))
                     (_$tl7452874543_
                      (let () (declare (not safe)) (##cdr _$tgt7452674537_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7452874543_))
                    (let* ((_$tgt7452974547_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7452874543_)))
                           (_$hd7453074550_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7452974547_)))
                           (_$tl7453174553_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7452974547_))))
                      (let ((_id74557_ _$hd7453074550_))
                        (if (let ((__tmp76642
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7453174553_))))
                              (declare (not safe))
                              (equal? __tmp76642 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id74557_ _stx74521_))
                            (let () (declare (not safe)) (_$E7452574534_)))))
                    (let () (declare (not safe)) (_$E7452574534_))))
              (let () (declare (not safe)) (_$E7452574534_))))))
    (define __compile-setq%
      (lambda (_stx74468_)
        (let* ((_$e74470_ _stx74468_)
               (_$E7447274484_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74470_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74470_))
              (let* ((_$tgt7447374487_
                      (let () (declare (not safe)) (__AST-e _$e74470_)))
                     (_$hd7447474490_
                      (let () (declare (not safe)) (##car _$tgt7447374487_)))
                     (_$tl7447574493_
                      (let () (declare (not safe)) (##cdr _$tgt7447374487_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7447574493_))
                    (let* ((_$tgt7447674497_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7447574493_)))
                           (_$hd7447774500_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7447674497_)))
                           (_$tl7447874503_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7447674497_))))
                      (let ((_id74507_ _$hd7447774500_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7447874503_))
                            (let* ((_$tgt7447974509_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7447874503_)))
                                   (_$hd7448074512_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7447974509_)))
                                   (_$tl7448174515_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7447974509_))))
                              (let ((_expr74519_ _$hd7448074512_))
                                (if (let ((__tmp76643
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7448174515_))))
                                      (declare (not safe))
                                      (equal? __tmp76643 '()))
                                    (let ((__tmp76644
                                           (let ((__tmp76645
                                                  (let ((__tmp76648
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id74507_
                                                            _stx74468_)))
                                                        (__tmp76646
                                                         (let ((__tmp76647
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr74519_))))
                   (declare (not safe))
                   (cons __tmp76647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76648
                                                          __tmp76646))))
                                             (declare (not safe))
                                             (cons 'set! __tmp76645))))
                                      (declare (not safe))
                                      (__SRC__% __tmp76644 _stx74468_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7447274484_)))))
                            (let () (declare (not safe)) (_$E7447274484_)))))
                    (let () (declare (not safe)) (_$E7447274484_))))
              (let () (declare (not safe)) (_$E7447274484_))))))
    (define __compile-if%
      (lambda (_stx74400_)
        (let* ((_$e74402_ _stx74400_)
               (_$E7440474419_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74402_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74402_))
              (let* ((_$tgt7440574422_
                      (let () (declare (not safe)) (__AST-e _$e74402_)))
                     (_$hd7440674425_
                      (let () (declare (not safe)) (##car _$tgt7440574422_)))
                     (_$tl7440774428_
                      (let () (declare (not safe)) (##cdr _$tgt7440574422_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7440774428_))
                    (let* ((_$tgt7440874432_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7440774428_)))
                           (_$hd7440974435_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7440874432_)))
                           (_$tl7441074438_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7440874432_))))
                      (let ((_p74442_ _$hd7440974435_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7441074438_))
                            (let* ((_$tgt7441174444_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7441074438_)))
                                   (_$hd7441274447_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7441174444_)))
                                   (_$tl7441374450_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7441174444_))))
                              (let ((_t74454_ _$hd7441274447_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7441374450_))
                                    (let* ((_$tgt7441474456_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7441374450_)))
                                           (_$hd7441574459_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7441474456_)))
                                           (_$tl7441674462_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7441474456_))))
                                      (let ((_f74466_ _$hd7441574459_))
                                        (if (let ((__tmp76649
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7441674462_))))
                                              (declare (not safe))
                                              (equal? __tmp76649 '()))
                                            (let ((__tmp76650
                                                   (let ((__tmp76651
                                                          (let ((__tmp76656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p74442_)))
                        (__tmp76652
                         (let ((__tmp76655
                                (let ()
                                  (declare (not safe))
                                  (__compile _t74454_)))
                               (__tmp76653
                                (let ((__tmp76654
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f74466_))))
                                  (declare (not safe))
                                  (cons __tmp76654 '()))))
                           (declare (not safe))
                           (cons __tmp76655 __tmp76653))))
                    (declare (not safe))
                    (cons __tmp76656 __tmp76652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp76651))))
                                              (declare (not safe))
                                              (__SRC__% __tmp76650 _stx74400_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7440474419_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7440474419_)))))
                            (let () (declare (not safe)) (_$E7440474419_)))))
                    (let () (declare (not safe)) (_$E7440474419_))))
              (let () (declare (not safe)) (_$E7440474419_))))))
    (define __compile-quote%
      (lambda (_stx74362_)
        (let* ((_$e74364_ _stx74362_)
               (_$E7436674375_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74364_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74364_))
              (let* ((_$tgt7436774378_
                      (let () (declare (not safe)) (__AST-e _$e74364_)))
                     (_$hd7436874381_
                      (let () (declare (not safe)) (##car _$tgt7436774378_)))
                     (_$tl7436974384_
                      (let () (declare (not safe)) (##cdr _$tgt7436774378_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7436974384_))
                    (let* ((_$tgt7437074388_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7436974384_)))
                           (_$hd7437174391_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7437074388_)))
                           (_$tl7437274394_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7437074388_))))
                      (let ((_e74398_ _$hd7437174391_))
                        (if (let ((__tmp76657
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7437274394_))))
                              (declare (not safe))
                              (equal? __tmp76657 '()))
                            (let ((__tmp76658
                                   (let ((__tmp76659
                                          (let ((__tmp76660
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e74398_))))
                                            (declare (not safe))
                                            (cons __tmp76660 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp76659))))
                              (declare (not safe))
                              (__SRC__% __tmp76658 _stx74362_))
                            (let () (declare (not safe)) (_$E7436674375_)))))
                    (let () (declare (not safe)) (_$E7436674375_))))
              (let () (declare (not safe)) (_$E7436674375_))))))
    (define __compile-quote-syntax%
      (lambda (_stx74324_)
        (let* ((_$e74326_ _stx74324_)
               (_$E7432874337_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e74326_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e74326_))
              (let* ((_$tgt7432974340_
                      (let () (declare (not safe)) (__AST-e _$e74326_)))
                     (_$hd7433074343_
                      (let () (declare (not safe)) (##car _$tgt7432974340_)))
                     (_$tl7433174346_
                      (let () (declare (not safe)) (##cdr _$tgt7432974340_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7433174346_))
                    (let* ((_$tgt7433274350_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7433174346_)))
                           (_$hd7433374353_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7433274350_)))
                           (_$tl7433474356_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7433274350_))))
                      (let ((_e74360_ _$hd7433374353_))
                        (if (let ((__tmp76661
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7433474356_))))
                              (declare (not safe))
                              (equal? __tmp76661 '()))
                            (let ((__tmp76662
                                   (let ((__tmp76663
                                          (let ()
                                            (declare (not safe))
                                            (cons _e74360_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp76663))))
                              (declare (not safe))
                              (__SRC__% __tmp76662 _stx74324_))
                            (let () (declare (not safe)) (_$E7432874337_)))))
                    (let () (declare (not safe)) (_$E7432874337_))))
              (let () (declare (not safe)) (_$E7432874337_))))))
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
