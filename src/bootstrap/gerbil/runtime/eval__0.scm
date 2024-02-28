(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709111635)
  (begin
    (define __syntax::t
      (let ((__tmp77428 (list))
            (__tmp77426
             (let ((__tmp77427
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77427 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77428
         '(e id)
         __tmp77426
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77237_ (apply make-instance __syntax::t _$args77237_)))
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
      (let ((__tmp77431 (list __syntax::t))
            (__tmp77429
             (let ((__tmp77430
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77430 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77431
         '()
         __tmp77429
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77234_ (apply make-instance __core-form::t _$args77234_)))
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
      (let ((__tmp77434 (list __core-form::t))
            (__tmp77432
             (let ((__tmp77433
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77433 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77434
         '()
         __tmp77432
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77231_
        (apply make-instance __core-expression::t _$args77231_)))
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
      (let ((__tmp77437 (list __core-form::t))
            (__tmp77435
             (let ((__tmp77436
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77436 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77437
         '()
         __tmp77435
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77228_
        (apply make-instance __core-special-form::t _$args77228_)))
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
      (lambda (_id77226_)
        (let ((__tmp77438 (let () (declare (not safe)) (__AST-e _id77226_))))
          (declare (not safe))
          (hash-get __core __tmp77438))))
    (define __core-bound-id?__%
      (lambda (_id77210_ _is?77211_)
        (let ((_$e77213_
               (let () (declare (not safe)) (__core-resolve _id77210_))))
          (if _$e77213_ (_is?77211_ _$e77213_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77219_)
        (let ((_is?77221_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77219_ _is?77221_))))
    (define __core-bound-id?
      (lambda _g77440_
        (let ((_g77439_ (let () (declare (not safe)) (##length _g77440_))))
          (cond ((let () (declare (not safe)) (##fx= _g77439_ 1))
                 (apply (lambda (_id77219_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77219_)))
                        _g77440_))
                ((let () (declare (not safe)) (##fx= _g77439_ 2))
                 (apply (lambda (_id77223_ _is?77224_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77223_ _is?77224_)))
                        _g77440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77440_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77193_ _e77194_ _make77195_)
        (let ((__tmp77441
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77194_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77194_
                   (_make77195_ _e77194_ _id77193_))))
          (declare (not safe))
          (hash-put! __core _id77193_ __tmp77441))))
    (define __core-bind-syntax!__0
      (lambda (_id77200_ _e77201_)
        (let ((_make77203_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77200_ _e77201_ _make77203_))))
    (define __core-bind-syntax!
      (lambda _g77443_
        (let ((_g77442_ (let () (declare (not safe)) (##length _g77443_))))
          (cond ((let () (declare (not safe)) (##fx= _g77442_ 2))
                 (apply (lambda (_id77200_ _e77201_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77200_ _e77201_)))
                        _g77443_))
                ((let () (declare (not safe)) (##fx= _g77442_ 3))
                 (apply (lambda (_id77205_ _e77206_ _make77207_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77205_
                             _e77206_
                             _make77207_)))
                        _g77443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77443_))))))
    (define __SRC__%
      (lambda (_e77176_ _src-stx77177_)
        (if (or (let () (declare (not safe)) (pair? _e77176_))
                (let () (declare (not safe)) (symbol? _e77176_)))
            (let ((__tmp77447
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77177_
                          'gerbil#AST::t))
                       (let ((__tmp77448
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77177_))))
                         (declare (not safe))
                         (__locat __tmp77448))
                       '#f)))
              (declare (not safe))
              (##make-source _e77176_ __tmp77447))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77176_ 'gerbil#AST::t))
                (let ((__tmp77446
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77176_ '1 AST::t '#f)))
                      (__tmp77444
                       (let ((__tmp77445
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77176_))))
                         (declare (not safe))
                         (__locat __tmp77445))))
                  (declare (not safe))
                  (##make-source __tmp77446 __tmp77444))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77176_))))))
    (define __SRC__0
      (lambda (_e77185_)
        (let ((_src-stx77187_ '#f))
          (declare (not safe))
          (__SRC__% _e77185_ _src-stx77187_))))
    (define __SRC
      (lambda _g77450_
        (let ((_g77449_ (let () (declare (not safe)) (##length _g77450_))))
          (cond ((let () (declare (not safe)) (##fx= _g77449_ 1))
                 (apply (lambda (_e77185_)
                          (let () (declare (not safe)) (__SRC__0 _e77185_)))
                        _g77450_))
                ((let () (declare (not safe)) (##fx= _g77449_ 2))
                 (apply (lambda (_e77189_ _src-stx77190_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77189_ _src-stx77190_)))
                        _g77450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77450_))))))
    (define __locat
      (lambda (_loc77173_)
        (if (let () (declare (not safe)) (##locat? _loc77173_))
            _loc77173_
            '#f)))
    (define __check-values
      (lambda (_obj77168_ _k77169_)
        (let ((_count77171_
               (if (let () (declare (not safe)) (##values? _obj77168_))
                   (let () (declare (not safe)) (##vector-length _obj77168_))
                   '1)))
          (if (fx= _count77171_ _k77169_)
              '#!void
              (let ((__tmp77452
                     (if (fx< _count77171_ _k77169_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77451
                     (if (let () (declare (not safe)) (##values? _obj77168_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77168_))
                         _obj77168_)))
                (declare (not safe))
                (error __tmp77452 __tmp77451 _k77169_))))))
    (define __compile
      (lambda (_stx77138_)
        (let* ((_$e77140_ _stx77138_)
               (_$E7714277148_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77140_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77140_))
              (let* ((_$tgt7714377151_
                      (let () (declare (not safe)) (__AST-e _$e77140_)))
                     (_$hd7714477154_
                      (let () (declare (not safe)) (##car _$tgt7714377151_)))
                     (_$tl7714577157_
                      (let () (declare (not safe)) (##cdr _$tgt7714377151_))))
                (let* ((_form77161_ _$hd7714477154_)
                       (_$e77163_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77161_))))
                  (if _$e77163_
                      ((lambda (_bind77166_)
                         ((##structure-ref _bind77166_ '1 __syntax::t '#f)
                          _stx77138_))
                       _$e77163_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77138_
                         _form77161_)))))
              (let () (declare (not safe)) (_$E7714277148_))))))
    (define __compile-error__%
      (lambda (_stx77125_ _detail77126_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77125_
           _detail77126_))))
    (define __compile-error__0
      (lambda (_stx77131_)
        (let ((_detail77133_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77131_ _detail77133_))))
    (define __compile-error
      (lambda _g77454_
        (let ((_g77453_ (let () (declare (not safe)) (##length _g77454_))))
          (cond ((let () (declare (not safe)) (##fx= _g77453_ 1))
                 (apply (lambda (_stx77131_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77131_)))
                        _g77454_))
                ((let () (declare (not safe)) (##fx= _g77453_ 2))
                 (apply (lambda (_stx77135_ _detail77136_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77135_ _detail77136_)))
                        _g77454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77454_))))))
    (define __compile-ignore%
      (lambda (_stx77122_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77122_))))
    (define __compile-begin%
      (lambda (_stx77097_)
        (let* ((_$e77099_ _stx77097_)
               (_$E7710177107_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77099_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77099_))
              (let* ((_$tgt7710277110_
                      (let () (declare (not safe)) (__AST-e _$e77099_)))
                     (_$hd7710377113_
                      (let () (declare (not safe)) (##car _$tgt7710277110_)))
                     (_$tl7710477116_
                      (let () (declare (not safe)) (##cdr _$tgt7710277110_))))
                (let* ((_body77120_ _$tl7710477116_)
                       (__tmp77455
                        (let ((__tmp77456 (map __compile _body77120_)))
                          (declare (not safe))
                          (cons 'begin __tmp77456))))
                  (declare (not safe))
                  (__SRC__% __tmp77455 _stx77097_)))
              (let () (declare (not safe)) (_$E7710177107_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77072_)
        (let* ((_$e77074_ _stx77072_)
               (_$E7707677082_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77074_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77074_))
              (let* ((_$tgt7707777085_
                      (let () (declare (not safe)) (__AST-e _$e77074_)))
                     (_$hd7707877088_
                      (let () (declare (not safe)) (##car _$tgt7707777085_)))
                     (_$tl7707977091_
                      (let () (declare (not safe)) (##cdr _$tgt7707777085_))))
                (let* ((_body77095_ _$tl7707977091_)
                       (__tmp77457
                        (let ((__tmp77458
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77095_))))
                          (declare (not safe))
                          (cons 'begin __tmp77458))))
                  (declare (not safe))
                  (__SRC__% __tmp77457 _stx77072_)))
              (let () (declare (not safe)) (_$E7707677082_))))))
    (define __compile-import%
      (lambda (_stx77047_)
        (let* ((_$e77049_ _stx77047_)
               (_$E7705177057_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77049_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77049_))
              (let* ((_$tgt7705277060_
                      (let () (declare (not safe)) (__AST-e _$e77049_)))
                     (_$hd7705377063_
                      (let () (declare (not safe)) (##car _$tgt7705277060_)))
                     (_$tl7705477066_
                      (let () (declare (not safe)) (##cdr _$tgt7705277060_))))
                (let* ((_body77070_ _$tl7705477066_)
                       (__tmp77459
                        (let ((__tmp77460
                               (let ((__tmp77461
                                      (let ((__tmp77462
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77070_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77462))))
                                 (declare (not safe))
                                 (cons __tmp77461 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77460))))
                  (declare (not safe))
                  (__SRC__% __tmp77459 _stx77047_)))
              (let () (declare (not safe)) (_$E7705177057_))))))
    (define __compile-begin-annotation%
      (lambda (_stx76994_)
        (let* ((_$e76996_ _stx76994_)
               (_$E7699877010_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76996_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76996_))
              (let* ((_$tgt7699977013_
                      (let () (declare (not safe)) (__AST-e _$e76996_)))
                     (_$hd7700077016_
                      (let () (declare (not safe)) (##car _$tgt7699977013_)))
                     (_$tl7700177019_
                      (let () (declare (not safe)) (##cdr _$tgt7699977013_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7700177019_))
                    (let* ((_$tgt7700277023_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7700177019_)))
                           (_$hd7700377026_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7700277023_)))
                           (_$tl7700477029_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7700277023_))))
                      (let ((_ann77033_ _$hd7700377026_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7700477029_))
                            (let* ((_$tgt7700577035_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7700477029_)))
                                   (_$hd7700677038_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7700577035_)))
                                   (_$tl7700777041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7700577035_))))
                              (let ((_expr77045_ _$hd7700677038_))
                                (if (let ((__tmp77463
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7700777041_))))
                                      (declare (not safe))
                                      (equal? __tmp77463 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77045_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7699877010_)))))
                            (let () (declare (not safe)) (_$E7699877010_)))))
                    (let () (declare (not safe)) (_$E7699877010_))))
              (let () (declare (not safe)) (_$E7699877010_))))))
    (define __compile-define-values%
      (lambda (_stx76885_)
        (let* ((_$e76887_ _stx76885_)
               (_$E7688976901_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76887_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76887_))
              (let* ((_$tgt7689076904_
                      (let () (declare (not safe)) (__AST-e _$e76887_)))
                     (_$hd7689176907_
                      (let () (declare (not safe)) (##car _$tgt7689076904_)))
                     (_$tl7689276910_
                      (let () (declare (not safe)) (##cdr _$tgt7689076904_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7689276910_))
                    (let* ((_$tgt7689376914_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7689276910_)))
                           (_$hd7689476917_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7689376914_)))
                           (_$tl7689576920_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7689376914_))))
                      (let ((_hd76924_ _$hd7689476917_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7689576920_))
                            (let* ((_$tgt7689676926_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7689576920_)))
                                   (_$hd7689776929_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7689676926_)))
                                   (_$tl7689876932_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7689676926_))))
                              (let ((_expr76936_ _$hd7689776929_))
                                (if (let ((__tmp77496
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7689876932_))))
                                      (declare (not safe))
                                      (equal? __tmp77496 '()))
                                    (let* ((_$e76938_ _hd76924_)
                                           (_$E7694076981_
                                            (lambda ()
                                              (let ((_$E7694176966_
                                                     (lambda ()
                                                       (let* ((_$E7694276953_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76938_))))
                      (_ids76956_ _hd76924_)
                      (_len76958_ (length _ids76956_))
                      (_tmp76960_
                       (let ((__tmp77464 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77464))))
                 (let ((__tmp77465
                        (let ((__tmp77466
                               (let ((__tmp77483
                                      (let ((__tmp77484
                                             (let ((__tmp77485
                                                    (let ((__tmp77486
                                                           (let ((__tmp77487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76936_))))
                     (declare (not safe))
                     (cons __tmp77487 '()))))
              (declare (not safe))
              (cons _tmp76960_ __tmp77486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77485))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77484 _stx76885_)))
                                     (__tmp77467
                                      (let ((__tmp77479
                                             (let ((__tmp77480
                                                    (let ((__tmp77481
                                                           (let ((__tmp77482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76958_ '()))))
                     (declare (not safe))
                     (cons _tmp76960_ __tmp77482))))
              (declare (not safe))
              (cons '__check-values __tmp77481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77480
                                                _stx76885_)))
                                            (__tmp77468
                                             (let ((__tmp77469
                                                    (let ((__tmp77471
                                                           (lambda (_id76963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76964_)
                     (if (let () (declare (not safe)) (__AST-e _id76963_))
                         (let ((__tmp77472
                                (let ((__tmp77473
                                       (let ((__tmp77478
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76963_)))
                                             (__tmp77474
                                              (let ((__tmp77475
                                                     (let ((__tmp77476
                                                            (let ((__tmp77477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76964_ '()))))
                      (declare (not safe))
                      (cons _tmp76960_ __tmp77477))))
               (declare (not safe))
               (cons '##vector-ref __tmp77476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77475 '()))))
                                         (declare (not safe))
                                         (cons __tmp77478 __tmp77474))))
                                  (declare (not safe))
                                  (cons 'define __tmp77473))))
                           (declare (not safe))
                           (__SRC__% __tmp77472 _stx76885_))
                         '#f)))
                  (__tmp77470
                   (let () (declare (not safe)) (iota__0 _len76958_))))
              (declare (not safe))
              (filter-map2 __tmp77471 _ids76956_ __tmp77470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77469))))
                                        (declare (not safe))
                                        (cons __tmp77479 __tmp77468))))
                                 (declare (not safe))
                                 (cons __tmp77483 __tmp77467))))
                          (declare (not safe))
                          (cons 'begin __tmp77466))))
                   (declare (not safe))
                   (__SRC__% __tmp77465 _stx76885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76938_))
                                                    (let* ((_$tgt7694376969_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76938_)))
                                                           (_$hd7694476972_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7694376969_)))
                                                           (_$tl7694576975_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7694376969_))))
                                                      (let ((_id76979_
                                                             _$hd7694476972_))
                                                        (if (let ((__tmp77493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7694576975_))))
                      (declare (not safe))
                      (equal? __tmp77493 '()))
                    (let ((__tmp77488
                           (let ((__tmp77489
                                  (let ((__tmp77492
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76979_)))
                                        (__tmp77490
                                         (let ((__tmp77491
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76936_))))
                                           (declare (not safe))
                                           (cons __tmp77491 '()))))
                                    (declare (not safe))
                                    (cons __tmp77492 __tmp77490))))
                             (declare (not safe))
                             (cons 'define __tmp77489))))
                      (declare (not safe))
                      (__SRC__% __tmp77488 _stx76885_))
                    (let () (declare (not safe)) (_$E7694176966_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7694176966_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76938_))
                                          (let* ((_$tgt7694676984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76938_)))
                                                 (_$hd7694776987_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7694676984_)))
                                                 (_$tl7694876990_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7694676984_))))
                                            (if (let ((__tmp77495
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7694776987_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77495 '#f))
                                                (if (let ((__tmp77494
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7694876990_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77494 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76936_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7694076981_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7694076981_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7694076981_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7688976901_)))))
                            (let () (declare (not safe)) (_$E7688976901_)))))
                    (let () (declare (not safe)) (_$E7688976901_))))
              (let () (declare (not safe)) (_$E7688976901_))))))
    (define __compile-head-id
      (lambda (_e76883_)
        (let ((__tmp77497
               (if (let () (declare (not safe)) (__AST-e _e76883_))
                   _e76883_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77497))))
    (define __compile-lambda-head
      (lambda (_hd76840_)
        (let _recur76842_ ((_rest76844_ _hd76840_))
          (let* ((_$e76846_ _rest76844_)
                 (_$E7684876866_
                  (lambda ()
                    (let ((_$E7684976863_
                           (lambda ()
                             (let* ((_$E7685076858_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76846_))))
                                    (_tail76861_ _$e76846_))
                               (declare (not safe))
                               (__compile-head-id _tail76861_)))))
                      (if (let ((__tmp77498
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76846_))))
                            (declare (not safe))
                            (equal? __tmp77498 '()))
                          '()
                          (let () (declare (not safe)) (_$E7684976863_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76846_))
                (let* ((_$tgt7685176869_
                        (let () (declare (not safe)) (__AST-e _$e76846_)))
                       (_$hd7685276872_
                        (let () (declare (not safe)) (##car _$tgt7685176869_)))
                       (_$tl7685376875_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7685176869_))))
                  (let* ((_hd76879_ _$hd7685276872_)
                         (_rest76881_ _$tl7685376875_))
                    (let ((__tmp77500
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76879_)))
                          (__tmp77499
                           (let ()
                             (declare (not safe))
                             (_recur76842_ _rest76881_))))
                      (declare (not safe))
                      (cons __tmp77500 __tmp77499))))
                (let () (declare (not safe)) (_$E7684876866_)))))))
    (define __compile-lambda%
      (lambda (_stx76787_)
        (let* ((_$e76789_ _stx76787_)
               (_$E7679176803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76789_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76789_))
              (let* ((_$tgt7679276806_
                      (let () (declare (not safe)) (__AST-e _$e76789_)))
                     (_$hd7679376809_
                      (let () (declare (not safe)) (##car _$tgt7679276806_)))
                     (_$tl7679476812_
                      (let () (declare (not safe)) (##cdr _$tgt7679276806_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7679476812_))
                    (let* ((_$tgt7679576816_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7679476812_)))
                           (_$hd7679676819_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7679576816_)))
                           (_$tl7679776822_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7679576816_))))
                      (let ((_hd76826_ _$hd7679676819_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7679776822_))
                            (let* ((_$tgt7679876828_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7679776822_)))
                                   (_$hd7679976831_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7679876828_)))
                                   (_$tl7680076834_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7679876828_))))
                              (let ((_body76838_ _$hd7679976831_))
                                (if (let ((__tmp77506
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7680076834_))))
                                      (declare (not safe))
                                      (equal? __tmp77506 '()))
                                    (let ((__tmp77501
                                           (let ((__tmp77502
                                                  (let ((__tmp77505
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76826_)))
                                                        (__tmp77503
                                                         (let ((__tmp77504
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76838_))))
                   (declare (not safe))
                   (cons __tmp77504 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77505
                                                          __tmp77503))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77502))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77501 _stx76787_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7679176803_)))))
                            (let () (declare (not safe)) (_$E7679176803_)))))
                    (let () (declare (not safe)) (_$E7679176803_))))
              (let () (declare (not safe)) (_$E7679176803_))))))
    (define __compile-case-lambda%
      (lambda (_stx76579_)
        (letrec ((_variadic?76581_
                  (lambda (_hd76752_)
                    (let* ((_$e76754_ _hd76752_)
                           (_$E7675676772_
                            (lambda ()
                              (let ((_$E7675776769_
                                     (lambda ()
                                       (let ((_$E7675876766_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76754_)))))
                                         '#t))))
                                (if (let ((__tmp77507
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76754_))))
                                      (declare (not safe))
                                      (equal? __tmp77507 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7675776769_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76754_))
                          (let* ((_$tgt7675976775_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76754_)))
                                 (_$hd7676076778_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7675976775_)))
                                 (_$tl7676176781_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7675976775_))))
                            (let ((_rest76785_ _$tl7676176781_))
                              (declare (not safe))
                              (_variadic?76581_ _rest76785_)))
                          (let () (declare (not safe)) (_$E7675676772_))))))
                 (_arity76582_
                  (lambda (_hd76717_)
                    (let _lp76719_ ((_rest76721_ _hd76717_) (_k76722_ '0))
                      (let* ((_$e76724_ _rest76721_)
                             (_$E7672676737_
                              (lambda ()
                                (let ((_$E7672776734_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76724_)))))
                                  _k76722_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76724_))
                            (let* ((_$tgt7672876740_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76724_)))
                                   (_$hd7672976743_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7672876740_)))
                                   (_$tl7673076746_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7672876740_))))
                              (let* ((_rest76750_ _$tl7673076746_)
                                     (__tmp77508
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76722_ '1))))
                                (declare (not safe))
                                (_lp76719_ _rest76750_ __tmp77508)))
                            (let () (declare (not safe)) (_$E7672676737_)))))))
                 (_generate76583_
                  (lambda (_rest76644_ _args76645_ _len76646_)
                    (let* ((_$e76648_ _rest76644_)
                           (_$E7665076661_
                            (lambda ()
                              (let* ((_$E7665176658_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e76648_))))
                                     (__tmp77509
                                      (let ((__tmp77510
                                             (let ((__tmp77511
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args76645_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77511))))
                                        (declare (not safe))
                                        (cons 'error __tmp77510))))
                                (declare (not safe))
                                (__SRC__% __tmp77509 _stx76579_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76648_))
                          (let* ((_$tgt7665276664_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76648_)))
                                 (_$hd7665376667_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7665276664_)))
                                 (_$tl7665476670_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7665276664_))))
                            (let* ((_clause76674_ _$hd7665376667_)
                                   (_rest76676_ _$tl7665476670_)
                                   (_$e76678_ _clause76674_)
                                   (_$E7668076689_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76678_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76678_))
                                  (let* ((_$tgt7668176692_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76678_)))
                                         (_$hd7668276695_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7668176692_)))
                                         (_$tl7668376698_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7668176692_))))
                                    (let ((_hd76702_ _$hd7668276695_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7668376698_))
                                          (let* ((_$tgt7668476704_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7668376698_)))
                                                 (_$hd7668576707_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7668476704_)))
                                                 (_$tl7668676710_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7668476704_))))
                                            (if (let ((__tmp77526
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7668676710_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77526 '()))
                                                (let ((_clen76714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76582_
                                                          _hd76702_)))
                                                      (_cmp76715_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76581_
                                                              _hd76702_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77512
                                                         (let ((__tmp77513
                                                                (let ((__tmp77523
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77524
                                      (let ((__tmp77525
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76714_ '()))))
                                        (declare (not safe))
                                        (cons _len76646_ __tmp77525))))
                                 (declare (not safe))
                                 (cons _cmp76715_ __tmp77524)))
                              (__tmp77514
                               (let ((__tmp77517
                                      (let ((__tmp77518
                                             (let ((__tmp77519
                                                    (let ((__tmp77521
                                                           (let ((__tmp77522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76674_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77522)))
                  (__tmp77520
                   (let () (declare (not safe)) (cons _args76645_ '()))))
              (declare (not safe))
              (cons __tmp77521 __tmp77520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77519))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77518 _stx76579_)))
                                     (__tmp77515
                                      (let ((__tmp77516
                                             (let ()
                                               (declare (not safe))
                                               (_generate76583_
                                                _rest76676_
                                                _args76645_
                                                _len76646_))))
                                        (declare (not safe))
                                        (cons __tmp77516 '()))))
                                 (declare (not safe))
                                 (cons __tmp77517 __tmp77515))))
                          (declare (not safe))
                          (cons __tmp77523 __tmp77514))))
                   (declare (not safe))
                   (cons 'if __tmp77513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77512
                                                     _stx76579_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7668076689_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7668076689_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7668076689_)))))
                          (let () (declare (not safe)) (_$E7665076661_)))))))
          (let* ((_$e76585_ _stx76579_)
                 (_$E7658776619_
                  (lambda ()
                    (let ((_$E7658876601_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76585_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76585_))
                          (let* ((_$tgt7658976604_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76585_)))
                                 (_$hd7659076607_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7658976604_)))
                                 (_$tl7659176610_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7658976604_))))
                            (let ((_clauses76614_ _$tl7659176610_))
                              (let ((_args76616_
                                     (let ((__tmp77527 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77527 _stx76579_)))
                                    (_len76617_
                                     (let ((__tmp77528 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77528 _stx76579_))))
                                (let ((__tmp77529
                                       (let ((__tmp77530
                                              (let ((__tmp77531
                                                     (let ((__tmp77532
                                                            (let ((__tmp77533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77534
                                  (let ((__tmp77537
                                         (let ((__tmp77538
                                                (let ((__tmp77539
                                                       (let ((__tmp77540
                                                              (let ((__tmp77541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77542
                                    (let ()
                                      (declare (not safe))
                                      (cons _args76616_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77542))))
                        (declare (not safe))
                        (__SRC__% __tmp77541 _stx76579_))))
                 (declare (not safe))
                 (cons __tmp77540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len76617_
                                                        __tmp77539))))
                                           (declare (not safe))
                                           (cons __tmp77538 '())))
                                        (__tmp77535
                                         (let ((__tmp77536
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76583_
                                                   _clauses76614_
                                                   _args76616_
                                                   _len76617_))))
                                           (declare (not safe))
                                           (cons __tmp77536 '()))))
                                    (declare (not safe))
                                    (cons __tmp77537 __tmp77535))))
                             (declare (not safe))
                             (cons 'let __tmp77534))))
                      (declare (not safe))
                      (__SRC__% __tmp77533 _stx76579_))))
               (declare (not safe))
               (cons __tmp77532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args76616_
                                                      __tmp77531))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77530))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77529 _stx76579_)))))
                          (let () (declare (not safe)) (_$E7658876601_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76585_))
                (let* ((_$tgt7659276622_
                        (let () (declare (not safe)) (__AST-e _$e76585_)))
                       (_$hd7659376625_
                        (let () (declare (not safe)) (##car _$tgt7659276622_)))
                       (_$tl7659476628_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7659276622_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7659476628_))
                      (let* ((_$tgt7659576632_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7659476628_)))
                             (_$hd7659676635_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7659576632_)))
                             (_$tl7659776638_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7659576632_))))
                        (let ((_clause76642_ _$hd7659676635_))
                          (if (let ((__tmp77544
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7659776638_))))
                                (declare (not safe))
                                (equal? __tmp77544 '()))
                              (let ((__tmp77543
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause76642_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77543))
                              (let () (declare (not safe)) (_$E7658776619_)))))
                      (let () (declare (not safe)) (_$E7658776619_))))
                (let () (declare (not safe)) (_$E7658776619_)))))))
    (define __compile-let-form
      (lambda (_stx76348_ _compile-simple76349_ _compile-values76350_)
        (letrec ((_simple-bind?76352_
                  (lambda (_hd76537_)
                    (let* ((_hd7653876548_ _hd76537_)
                           (_else7654176556_ (lambda () '#f)))
                      (let ((_K7654476569_ (lambda (_id76567_) '#t))
                            (_K7654376561_ (lambda () '#t)))
                        (let ((_try-match7654076564_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7653876548_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7654376561_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7654176556_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7653876548_))
                              (let ((_tl7654676574_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7653876548_)))
                                    (_hd7654576572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7653876548_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7654676574_))
                                    (let ((_id76577_ _hd7654576572_))
                                      (declare (not safe))
                                      (_K7654476569_ _id76577_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7654076564_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7654076564_))))))))
                 (_car-e76353_
                  (lambda (_hd76535_)
                    (if (let () (declare (not safe)) (pair? _hd76535_))
                        (car _hd76535_)
                        _hd76535_))))
          (let* ((_$e76355_ _stx76348_)
                 (_$E7635776500_
                  (lambda ()
                    (let ((_$E7635876380_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76355_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76355_))
                          (let* ((_$tgt7635976383_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76355_)))
                                 (_$hd7636076386_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7635976383_)))
                                 (_$tl7636176389_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7635976383_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7636176389_))
                                (let* ((_$tgt7636276393_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7636176389_)))
                                       (_$hd7636376396_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7636276393_)))
                                       (_$tl7636476399_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7636276393_))))
                                  (let ((_hd76403_ _$hd7636376396_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7636476399_))
                                        (let* ((_$tgt7636576405_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7636476399_)))
                                               (_$hd7636676408_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7636576405_)))
                                               (_$tl7636776411_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7636576405_))))
                                          (let ((_body76415_ _$hd7636676408_))
                                            (if (let ((__tmp77547
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7636776411_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77547 '()))
                                                (let* ((_hd-ids76455_
                                                        (map (lambda (_bind76417_)
                                                               (let* ((_$e76419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76417_)
                              (_$E7642176430_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76419_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76419_))
                             (let* ((_$tgt7642276433_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76419_)))
                                    (_$hd7642376436_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7642276433_)))
                                    (_$tl7642476439_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7642276433_))))
                               (let ((_ids76443_ _$hd7642376436_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7642476439_))
                                     (let* ((_$tgt7642576445_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7642476439_)))
                                            (_$hd7642676448_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7642576445_)))
                                            (_$tl7642776451_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7642576445_))))
                                       (if (let ((__tmp77545
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7642776451_))))
                                             (declare (not safe))
                                             (equal? __tmp77545 '()))
                                           _ids76443_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7642176430_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7642176430_)))))
                             (let () (declare (not safe)) (_$E7642176430_)))))
                     _hd76403_))
               (_exprs76495_
                (map (lambda (_bind76457_)
                       (let* ((_$e76459_ _bind76457_)
                              (_$E7646176470_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76459_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76459_))
                             (let* ((_$tgt7646276473_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76459_)))
                                    (_$hd7646376476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7646276473_)))
                                    (_$tl7646476479_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7646276473_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7646476479_))
                                   (let* ((_$tgt7646576483_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7646476479_)))
                                          (_$hd7646676486_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7646576483_)))
                                          (_$tl7646776489_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7646576483_))))
                                     (let ((_expr76493_ _$hd7646676486_))
                                       (if (let ((__tmp77546
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7646776489_))))
                                             (declare (not safe))
                                             (equal? __tmp77546 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76493_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7646176470_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7646176470_))))
                             (let () (declare (not safe)) (_$E7646176470_)))))
                     _hd76403_))
               (_body76497_
                (let () (declare (not safe)) (__compile _body76415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76455_))
              (_compile-simple76349_
               (map _car-e76353_ _hd-ids76455_)
               _exprs76495_
               _body76497_)
              (_compile-values76350_ _hd-ids76455_ _exprs76495_ _body76497_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7635876380_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7635876380_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7635876380_))))
                          (let () (declare (not safe)) (_$E7635876380_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76355_))
                (let* ((_$tgt7636876503_
                        (let () (declare (not safe)) (__AST-e _$e76355_)))
                       (_$hd7636976506_
                        (let () (declare (not safe)) (##car _$tgt7636876503_)))
                       (_$tl7637076509_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7636876503_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7637076509_))
                      (let* ((_$tgt7637176513_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7637076509_)))
                             (_$hd7637276516_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7637176513_)))
                             (_$tl7637376519_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7637176513_))))
                        (if (let ((__tmp77549
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7637276516_))))
                              (declare (not safe))
                              (equal? __tmp77549 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7637376519_))
                                (let* ((_$tgt7637476523_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7637376519_)))
                                       (_$hd7637576526_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7637476523_)))
                                       (_$tl7637676529_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7637476523_))))
                                  (let ((_body76533_ _$hd7637576526_))
                                    (if (let ((__tmp77548
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7637676529_))))
                                          (declare (not safe))
                                          (equal? __tmp77548 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76533_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7635776500_)))))
                                (let () (declare (not safe)) (_$E7635776500_)))
                            (let () (declare (not safe)) (_$E7635776500_))))
                      (let () (declare (not safe)) (_$E7635776500_))))
                (let () (declare (not safe)) (_$E7635776500_)))))))
    (define __compile-let-values%
      (lambda (_stx76163_)
        (letrec ((_compile-simple76165_
                  (lambda (_hd-ids76344_ _exprs76345_ _body76346_)
                    (let ((__tmp77550
                           (let ((__tmp77551
                                  (let ((__tmp77553
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76344_)
                                              _exprs76345_))
                                        (__tmp77552
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76346_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77553 __tmp77552))))
                             (declare (not safe))
                             (cons 'let __tmp77551))))
                      (declare (not safe))
                      (__SRC__% __tmp77550 _stx76163_))))
                 (_compile-values76166_
                  (lambda (_hd-ids76262_ _exprs76263_ _body76264_)
                    (let _lp76266_ ((_rest76268_ _hd-ids76262_)
                                    (_exprs76269_ _exprs76263_)
                                    (_bind76270_ '())
                                    (_post76271_ '()))
                      (let* ((_rest7627276286_ _rest76268_)
                             (_else7627576294_
                              (lambda ()
                                (let ((__tmp77554
                                       (let ((__tmp77555
                                              (let ((__tmp77558
                                                     (reverse _bind76270_))
                                                    (__tmp77556
                                                     (let ((__tmp77557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76167_
                                                               _post76271_
                                                               _body76264_))))
                                                       (declare (not safe))
                                                       (cons __tmp77557 '()))))
                                                (declare (not safe))
                                                (cons __tmp77558 __tmp77556))))
                                         (declare (not safe))
                                         (cons 'let __tmp77555))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77554 _stx76163_)))))
                        (let ((_K7628076327_
                               (lambda (_rest76324_ _id76325_)
                                 (let ((__tmp77564 (cdr _exprs76269_))
                                       (__tmp77559
                                        (let ((__tmp77560
                                               (let ((__tmp77563
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76325_)))
                                                     (__tmp77561
                                                      (let ((__tmp77562
                                                             (car _exprs76269_)))
                                                        (declare (not safe))
                                                        (cons __tmp77562
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77563
                                                       __tmp77561))))
                                          (declare (not safe))
                                          (cons __tmp77560 _bind76270_))))
                                   (declare (not safe))
                                   (_lp76266_
                                    _rest76324_
                                    __tmp77564
                                    __tmp77559
                                    _post76271_))))
                              (_K7627776309_
                               (lambda (_rest76298_ _hd76299_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76299_))
                                     (let ((__tmp77585 (cdr _exprs76269_))
                                           (__tmp77578
                                            (let ((__tmp77579
                                                   (let ((__tmp77584
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76299_)))
                                                         (__tmp77580
                                                          (let ((__tmp77581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77582
                                (let ((__tmp77583 (car _exprs76269_)))
                                  (declare (not safe))
                                  (cons __tmp77583 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77582))))
                    (declare (not safe))
                    (cons __tmp77581 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77584
                                                           __tmp77580))))
                                              (declare (not safe))
                                              (cons __tmp77579 _bind76270_))))
                                       (declare (not safe))
                                       (_lp76266_
                                        _rest76298_
                                        __tmp77585
                                        __tmp77578
                                        _post76271_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76299_))
                                         (let* ((_len76301_ (length _hd76299_))
                                                (_tmp76303_
                                                 (let ((__tmp77565 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77565))))
                                           (let ((__tmp77577
                                                  (cdr _exprs76269_))
                                                 (__tmp77573
                                                  (let ((__tmp77574
                                                         (let ((__tmp77575
                                                                (let ((__tmp77576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76269_)))
                          (declare (not safe))
                          (cons __tmp77576 '()))))
                   (declare (not safe))
                   (cons _tmp76303_ __tmp77575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77574
                                                          _bind76270_)))
                                                 (__tmp77566
                                                  (let ((__tmp77567
                                                         (let ((__tmp77568
                                                                (let ((__tmp77569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77571
                                      (lambda (_id76306_ _k76307_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76306_))
                                            (let ((__tmp77572
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76306_))))
                                              (declare (not safe))
                                              (cons __tmp77572 _k76307_))
                                            '#f)))
                                     (__tmp77570
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76301_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77571
                                  _hd76299_
                                  __tmp77570))))
                          (declare (not safe))
                          (cons _len76301_ __tmp77569))))
                   (declare (not safe))
                   (cons _tmp76303_ __tmp77568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77567
                                                          _post76271_))))
                                             (declare (not safe))
                                             (_lp76266_
                                              _rest76298_
                                              __tmp77577
                                              __tmp77573
                                              __tmp77566)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76163_
                                            _hd76299_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7627276286_))
                              (let ((_tl7628276332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7627276286_)))
                                    (_hd7628176330_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7627276286_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7628176330_))
                                    (let ((_tl7628476337_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7628176330_)))
                                          (_hd7628376335_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7628176330_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7628476337_))
                                          (let ((_id76340_ _hd7628376335_)
                                                (_rest76342_ _tl7628276332_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7628076327_
                                               _rest76342_
                                               _id76340_)))
                                          (let ((_hd76317_ _hd7628176330_)
                                                (_rest76319_ _tl7628276332_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7627776309_
                                               _rest76319_
                                               _hd76317_)))))
                                    (let ((_hd76317_ _hd7628176330_)
                                          (_rest76319_ _tl7628276332_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7627776309_
                                         _rest76319_
                                         _hd76317_)))))
                              (let ()
                                (declare (not safe))
                                (_else7627576294_))))))))
                 (_compile-post76167_
                  (lambda (_post76169_ _body76170_)
                    (let _lp76172_ ((_rest76174_ _post76169_)
                                    (_check76175_ '())
                                    (_bind76176_ '()))
                      (let* ((_rest7617776189_ _rest76174_)
                             (_else7617976197_
                              (lambda ()
                                (let ((__tmp77586
                                       (let ((__tmp77587
                                              (let ((__tmp77588
                                                     (let ((__tmp77589
                                                            (let ((__tmp77590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77591
                                  (let ((__tmp77592
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76170_ '()))))
                                    (declare (not safe))
                                    (cons _bind76176_ __tmp77592))))
                             (declare (not safe))
                             (cons 'let __tmp77591))))
                      (declare (not safe))
                      (__SRC__% __tmp77590 _stx76163_))))
               (declare (not safe))
               (cons __tmp77589 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77588
                                                        _check76175_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77587))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77586 _stx76163_))))
                             (_K7618176236_
                              (lambda (_rest76200_
                                       _init76201_
                                       _len76202_
                                       _tmp76203_)
                                (let ((__tmp77600
                                       (let ((__tmp77601
                                              (let ((__tmp77602
                                                     (let ((__tmp77603
                                                            (let ((__tmp77604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76202_ '()))))
                      (declare (not safe))
                      (cons _tmp76203_ __tmp77604))))
               (declare (not safe))
               (cons '__check-values __tmp77603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77602
                                                 _stx76163_))))
                                         (declare (not safe))
                                         (cons __tmp77601 _check76175_)))
                                      (__tmp77593
                                       (let ((__tmp77594
                                              (lambda (_hd76205_ _r76206_)
                                                (let* ((_hd7620776214_
                                                        _hd76205_)
                                                       (_E7620976218_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7620776214_))))
               (_K7621076224_
                (lambda (_k76221_ _id76222_)
                  (let ((__tmp77595
                         (let ((__tmp77596
                                (let ((__tmp77597
                                       (let ((__tmp77598
                                              (let ((__tmp77599
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76221_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76203_ __tmp77599))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp77598))))
                                  (declare (not safe))
                                  (cons __tmp77597 '()))))
                           (declare (not safe))
                           (cons _id76222_ __tmp77596))))
                    (declare (not safe))
                    (cons __tmp77595 _r76206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7620776214_))
                                                      (let ((_hd7621176227_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7620776214_)))
                    (_tl7621276229_
                     (let () (declare (not safe)) (##cdr _hd7620776214_))))
                (let* ((_id76232_ _hd7621176227_) (_k76234_ _tl7621276229_))
                  (declare (not safe))
                  (_K7621076224_ _k76234_ _id76232_)))
              (let () (declare (not safe)) (_E7620976218_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77594
                                                 _bind76176_
                                                 _init76201_))))
                                  (declare (not safe))
                                  (_lp76172_
                                   _rest76200_
                                   __tmp77600
                                   __tmp77593)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7617776189_))
                            (let ((_hd7618276239_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7617776189_)))
                                  (_tl7618376241_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7617776189_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7618276239_))
                                  (let ((_hd7618476244_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7618276239_)))
                                        (_tl7618576246_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7618276239_))))
                                    (let ((_tmp76249_ _hd7618476244_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7618576246_))
                                          (let ((_hd7618676251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7618576246_)))
                                                (_tl7618776253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7618576246_))))
                                            (let* ((_len76256_ _hd7618676251_)
                                                   (_init76258_ _tl7618776253_)
                                                   (_rest76260_
                                                    _tl7618376241_))
                                              (declare (not safe))
                                              (_K7618176236_
                                               _rest76260_
                                               _init76258_
                                               _len76256_
                                               _tmp76249_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7617976197_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7617976197_))))
                            (let ()
                              (declare (not safe))
                              (_else7617976197_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76163_
             _compile-simple76165_
             _compile-values76166_)))))
    (define __compile-letrec-values%
      (lambda (_stx75963_)
        (letrec ((_compile-simple75965_
                  (lambda (_hd-ids76159_ _exprs76160_ _body76161_)
                    (let ((__tmp77605
                           (let ((__tmp77606
                                  (let ((__tmp77608
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76159_)
                                              _exprs76160_))
                                        (__tmp77607
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76161_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77608 __tmp77607))))
                             (declare (not safe))
                             (cons 'letrec __tmp77606))))
                      (declare (not safe))
                      (__SRC__% __tmp77605 _stx75963_))))
                 (_compile-values75966_
                  (lambda (_hd-ids76073_ _exprs76074_ _body76075_)
                    (let _lp76077_ ((_rest76079_ _hd-ids76073_)
                                    (_exprs76080_ _exprs76074_)
                                    (_pre76081_ '())
                                    (_bind76082_ '())
                                    (_post76083_ '()))
                      (let* ((_rest7608476098_ _rest76079_)
                             (_else7608776106_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75967_
                                   _pre76081_
                                   _bind76082_
                                   _post76083_
                                   _body76075_)))))
                        (let ((_K7609276142_
                               (lambda (_rest76139_ _id76140_)
                                 (let ((__tmp77614 (cdr _exprs76080_))
                                       (__tmp77609
                                        (let ((__tmp77610
                                               (let ((__tmp77613
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76140_)))
                                                     (__tmp77611
                                                      (let ((__tmp77612
                                                             (car _exprs76080_)))
                                                        (declare (not safe))
                                                        (cons __tmp77612
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77613
                                                       __tmp77611))))
                                          (declare (not safe))
                                          (cons __tmp77610 _bind76082_))))
                                   (declare (not safe))
                                   (_lp76077_
                                    _rest76139_
                                    __tmp77614
                                    _pre76081_
                                    __tmp77609
                                    _post76083_))))
                              (_K7608976124_
                               (lambda (_rest76110_ _hd76111_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76111_))
                                     (let ((__tmp77642 (cdr _exprs76080_))
                                           (__tmp77635
                                            (let ((__tmp77636
                                                   (let ((__tmp77641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76111_)))
                                                         (__tmp77637
                                                          (let ((__tmp77638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77639
                                (let ((__tmp77640 (car _exprs76080_)))
                                  (declare (not safe))
                                  (cons __tmp77640 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77639))))
                    (declare (not safe))
                    (cons __tmp77638 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77641
                                                           __tmp77637))))
                                              (declare (not safe))
                                              (cons __tmp77636 _bind76082_))))
                                       (declare (not safe))
                                       (_lp76077_
                                        _rest76110_
                                        __tmp77642
                                        _pre76081_
                                        __tmp77635
                                        _post76083_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76111_))
                                         (let* ((_len76113_ (length _hd76111_))
                                                (_tmp76115_
                                                 (let ((__tmp77615 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77615))))
                                           (let ((__tmp77634
                                                  (cdr _exprs76080_))
                                                 (__tmp77627
                                                  (let ((__tmp77628
                                                         (lambda (_id76118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76119_)
                   (if (let () (declare (not safe)) (__AST-e _id76118_))
                       (let ((__tmp77629
                              (let ((__tmp77633
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76118_)))
                                    (__tmp77630
                                     (let ((__tmp77631
                                            (let ((__tmp77632
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp77632))))
                                       (declare (not safe))
                                       (cons __tmp77631 '()))))
                                (declare (not safe))
                                (cons __tmp77633 __tmp77630))))
                         (declare (not safe))
                         (cons __tmp77629 _r76119_))
                       _r76119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp77628
                                                            _pre76081_
                                                            _hd76111_)))
                                                 (__tmp77623
                                                  (let ((__tmp77624
                                                         (let ((__tmp77625
                                                                (let ((__tmp77626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76080_)))
                          (declare (not safe))
                          (cons __tmp77626 '()))))
                   (declare (not safe))
                   (cons _tmp76115_ __tmp77625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77624
                                                          _bind76082_)))
                                                 (__tmp77616
                                                  (let ((__tmp77617
                                                         (let ((__tmp77618
                                                                (let ((__tmp77619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77621
                                      (lambda (_id76121_ _k76122_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76121_))
                                            (let ((__tmp77622
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76121_))))
                                              (declare (not safe))
                                              (cons __tmp77622 _k76122_))
                                            '#f)))
                                     (__tmp77620
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76113_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77621
                                  _hd76111_
                                  __tmp77620))))
                          (declare (not safe))
                          (cons _len76113_ __tmp77619))))
                   (declare (not safe))
                   (cons _tmp76115_ __tmp77618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77617
                                                          _post76083_))))
                                             (declare (not safe))
                                             (_lp76077_
                                              _rest76110_
                                              __tmp77634
                                              __tmp77627
                                              __tmp77623
                                              __tmp77616)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75963_
                                            _hd76111_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7608476098_))
                              (let ((_tl7609476147_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7608476098_)))
                                    (_hd7609376145_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7608476098_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7609376145_))
                                    (let ((_tl7609676152_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7609376145_)))
                                          (_hd7609576150_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7609376145_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7609676152_))
                                          (let ((_id76155_ _hd7609576150_)
                                                (_rest76157_ _tl7609476147_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7609276142_
                                               _rest76157_
                                               _id76155_)))
                                          (let ((_hd76132_ _hd7609376145_)
                                                (_rest76134_ _tl7609476147_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7608976124_
                                               _rest76134_
                                               _hd76132_)))))
                                    (let ((_hd76132_ _hd7609376145_)
                                          (_rest76134_ _tl7609476147_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7608976124_
                                         _rest76134_
                                         _hd76132_)))))
                              (let ()
                                (declare (not safe))
                                (_else7608776106_))))))))
                 (_compile-inner75967_
                  (lambda (_pre76068_ _bind76069_ _post76070_ _body76071_)
                    (if (let () (declare (not safe)) (null? _pre76068_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75968_
                           _bind76069_
                           _post76070_
                           _body76071_))
                        (let ((__tmp77643
                               (let ((__tmp77644
                                      (let ((__tmp77647 (reverse _pre76068_))
                                            (__tmp77645
                                             (let ((__tmp77646
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75968_
                                                       _bind76069_
                                                       _post76070_
                                                       _body76071_))))
                                               (declare (not safe))
                                               (cons __tmp77646 '()))))
                                        (declare (not safe))
                                        (cons __tmp77647 __tmp77645))))
                                 (declare (not safe))
                                 (cons 'let __tmp77644))))
                          (declare (not safe))
                          (__SRC__% __tmp77643 _stx75963_)))))
                 (_compile-bind75968_
                  (lambda (_bind76064_ _post76065_ _body76066_)
                    (let ((__tmp77648
                           (let ((__tmp77649
                                  (let ((__tmp77652 (reverse _bind76064_))
                                        (__tmp77650
                                         (let ((__tmp77651
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75969_
                                                   _post76065_
                                                   _body76066_))))
                                           (declare (not safe))
                                           (cons __tmp77651 '()))))
                                    (declare (not safe))
                                    (cons __tmp77652 __tmp77650))))
                             (declare (not safe))
                             (cons 'letrec __tmp77649))))
                      (declare (not safe))
                      (__SRC__% __tmp77648 _stx75963_))))
                 (_compile-post75969_
                  (lambda (_post75971_ _body75972_)
                    (let _lp75974_ ((_rest75976_ _post75971_)
                                    (_check75977_ '())
                                    (_bind75978_ '()))
                      (let* ((_rest7597975991_ _rest75976_)
                             (_else7598175999_
                              (lambda ()
                                (let ((__tmp77653
                                       (let ((__tmp77654
                                              (let ((__tmp77655
                                                     (let ((__tmp77656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77656 _bind75978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77655
                                                        _check75977_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77654))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77653 _stx75963_))))
                             (_K7598376038_
                              (lambda (_rest76002_
                                       _init76003_
                                       _len76004_
                                       _tmp76005_)
                                (let ((__tmp77665
                                       (let ((__tmp77666
                                              (let ((__tmp77667
                                                     (let ((__tmp77668
                                                            (let ((__tmp77669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76004_ '()))))
                      (declare (not safe))
                      (cons _tmp76005_ __tmp77669))))
               (declare (not safe))
               (cons '__check-values __tmp77668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77667
                                                 _stx75963_))))
                                         (declare (not safe))
                                         (cons __tmp77666 _check75977_)))
                                      (__tmp77657
                                       (let ((__tmp77658
                                              (lambda (_hd76007_ _r76008_)
                                                (let* ((_hd7600976016_
                                                        _hd76007_)
                                                       (_E7601176020_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7600976016_))))
               (_K7601276026_
                (lambda (_k76023_ _id76024_)
                  (let ((__tmp77659
                         (let ((__tmp77660
                                (let ((__tmp77661
                                       (let ((__tmp77662
                                              (let ((__tmp77663
                                                     (let ((__tmp77664
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76005_ __tmp77664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77663))))
                                         (declare (not safe))
                                         (cons __tmp77662 '()))))
                                  (declare (not safe))
                                  (cons _id76024_ __tmp77661))))
                           (declare (not safe))
                           (cons 'set! __tmp77660))))
                    (declare (not safe))
                    (cons __tmp77659 _r76008_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7600976016_))
                                                      (let ((_hd7601376029_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7600976016_)))
                    (_tl7601476031_
                     (let () (declare (not safe)) (##cdr _hd7600976016_))))
                (let* ((_id76034_ _hd7601376029_) (_k76036_ _tl7601476031_))
                  (declare (not safe))
                  (_K7601276026_ _k76036_ _id76034_)))
              (let () (declare (not safe)) (_E7601176020_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77658
                                                 _bind75978_
                                                 _init76003_))))
                                  (declare (not safe))
                                  (_lp75974_
                                   _rest76002_
                                   __tmp77665
                                   __tmp77657)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7597975991_))
                            (let ((_hd7598476041_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7597975991_)))
                                  (_tl7598576043_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7597975991_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7598476041_))
                                  (let ((_hd7598676046_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7598476041_)))
                                        (_tl7598776048_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7598476041_))))
                                    (let ((_tmp76051_ _hd7598676046_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7598776048_))
                                          (let ((_hd7598876053_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7598776048_)))
                                                (_tl7598976055_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7598776048_))))
                                            (let* ((_len76058_ _hd7598876053_)
                                                   (_init76060_ _tl7598976055_)
                                                   (_rest76062_
                                                    _tl7598576043_))
                                              (declare (not safe))
                                              (_K7598376038_
                                               _rest76062_
                                               _init76060_
                                               _len76058_
                                               _tmp76051_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7598175999_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7598175999_))))
                            (let ()
                              (declare (not safe))
                              (_else7598175999_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75963_
             _compile-simple75965_
             _compile-values75966_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75718_)
        (letrec ((_compile-simple75720_
                  (lambda (_hd-ids75959_ _exprs75960_ _body75961_)
                    (let ((__tmp77670
                           (let ((__tmp77671
                                  (let ((__tmp77673
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75959_)
                                              _exprs75960_))
                                        (__tmp77672
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75961_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77673 __tmp77672))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77671))))
                      (declare (not safe))
                      (__SRC__% __tmp77670 _stx75718_))))
                 (_compile-values75721_
                  (lambda (_hd-ids75870_ _exprs75871_ _body75872_)
                    (let _lp75874_ ((_rest75876_ _hd-ids75870_)
                                    (_exprs75877_ _exprs75871_)
                                    (_bind75878_ '())
                                    (_post75879_ '()))
                      (let* ((_rest7588075894_ _rest75876_)
                             (_else7588375902_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75722_
                                   _bind75878_
                                   _post75879_
                                   _body75872_)))))
                        (let ((_K7588875942_
                               (lambda (_rest75937_ _hd75938_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75938_))
                                     (let ((_id75940_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75938_))))
                                       (let ((__tmp77688 (cdr _exprs75877_))
                                             (__tmp77683
                                              (let ((__tmp77684
                                                     (let ((__tmp77685
                                                            (let ((__tmp77686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77687
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77687))))
                      (declare (not safe))
                      (cons __tmp77686 '()))))
               (declare (not safe))
               (cons _id75940_ __tmp77685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77684 _bind75878_)))
                                             (__tmp77679
                                              (let ((__tmp77680
                                                     (let ((__tmp77681
                                                            (let ((__tmp77682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75877_)))
                      (declare (not safe))
                      (cons __tmp77682 '()))))
               (declare (not safe))
               (cons _id75940_ __tmp77681))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77680
                                                      _post75879_))))
                                         (declare (not safe))
                                         (_lp75874_
                                          _rest75937_
                                          __tmp77688
                                          __tmp77683
                                          __tmp77679)))
                                     (let ((__tmp77678 (cdr _exprs75877_))
                                           (__tmp77674
                                            (let ((__tmp77675
                                                   (let ((__tmp77676
                                                          (let ((__tmp77677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75877_)))
                    (declare (not safe))
                    (cons __tmp77677 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77676))))
                                              (declare (not safe))
                                              (cons __tmp77675 _post75879_))))
                                       (declare (not safe))
                                       (_lp75874_
                                        _rest75937_
                                        __tmp77678
                                        _bind75878_
                                        __tmp77674)))))
                              (_K7588575922_
                               (lambda (_rest75906_ _hd75907_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75907_))
                                     (let ((_id75909_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75907_))))
                                       (let ((__tmp77724 (cdr _exprs75877_))
                                             (__tmp77719
                                              (let ((__tmp77720
                                                     (let ((__tmp77721
                                                            (let ((__tmp77722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77723
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77723))))
                      (declare (not safe))
                      (cons __tmp77722 '()))))
               (declare (not safe))
               (cons _id75909_ __tmp77721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77720 _bind75878_)))
                                             (__tmp77713
                                              (let ((__tmp77714
                                                     (let ((__tmp77715
                                                            (let ((__tmp77716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77717
                                  (let ((__tmp77718 (car _exprs75877_)))
                                    (declare (not safe))
                                    (cons __tmp77718 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77717))))
                      (declare (not safe))
                      (cons __tmp77716 '()))))
               (declare (not safe))
               (cons _id75909_ __tmp77715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77714
                                                      _post75879_))))
                                         (declare (not safe))
                                         (_lp75874_
                                          _rest75906_
                                          __tmp77724
                                          __tmp77719
                                          __tmp77713)))
                                     (if (let ((__tmp77712
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75907_))))
                                           (declare (not safe))
                                           (not __tmp77712))
                                         (let ((__tmp77711 (cdr _exprs75877_))
                                               (__tmp77707
                                                (let ((__tmp77708
                                                       (let ((__tmp77709
                                                              (let ((__tmp77710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75877_)))
                        (declare (not safe))
                        (cons __tmp77710 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77708
                                                        _post75879_))))
                                           (declare (not safe))
                                           (_lp75874_
                                            _rest75906_
                                            __tmp77711
                                            _bind75878_
                                            __tmp77707))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75907_))
                                             (let* ((_len75911_
                                                     (length _hd75907_))
                                                    (_tmp75913_
                                                     (let ((__tmp77689
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77689))))
                                               (let ((__tmp77706
                                                      (cdr _exprs75877_))
                                                     (__tmp77699
                                                      (let ((__tmp77700
                                                             (lambda (_id75916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75917_)
                       (if (let () (declare (not safe)) (__AST-e _id75916_))
                           (let ((__tmp77701
                                  (let ((__tmp77705
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75916_)))
                                        (__tmp77702
                                         (let ((__tmp77703
                                                (let ((__tmp77704
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77704))))
                                           (declare (not safe))
                                           (cons __tmp77703 '()))))
                                    (declare (not safe))
                                    (cons __tmp77705 __tmp77702))))
                             (declare (not safe))
                             (cons __tmp77701 _r75917_))
                           _r75917_))))
                (declare (not safe))
                (foldl1 __tmp77700 _bind75878_ _hd75907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77690
                                                      (let ((__tmp77691
                                                             (let ((__tmp77692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77698 (car _exprs75877_))
                                  (__tmp77693
                                   (let ((__tmp77694
                                          (let ((__tmp77696
                                                 (lambda (_id75919_ _k75920_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75919_))
                                                       (let ((__tmp77697
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75919_))))
                 (declare (not safe))
                 (cons __tmp77697 _k75920_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77695
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len75911_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77696
                                             _hd75907_
                                             __tmp77695))))
                                     (declare (not safe))
                                     (cons _len75911_ __tmp77694))))
                              (declare (not safe))
                              (cons __tmp77698 __tmp77693))))
                       (declare (not safe))
                       (cons _tmp75913_ __tmp77692))))
                (declare (not safe))
                (cons __tmp77691 _post75879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75874_
                                                  _rest75906_
                                                  __tmp77706
                                                  __tmp77699
                                                  __tmp77690)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75718_
                                                _hd75907_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7588075894_))
                              (let ((_tl7589075947_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7588075894_)))
                                    (_hd7588975945_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7588075894_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7588975945_))
                                    (let ((_tl7589275952_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7588975945_)))
                                          (_hd7589175950_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7588975945_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7589275952_))
                                          (let ((_hd75955_ _hd7589175950_)
                                                (_rest75957_ _tl7589075947_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7588875942_
                                               _rest75957_
                                               _hd75955_)))
                                          (let ((_hd75930_ _hd7588975945_)
                                                (_rest75932_ _tl7589075947_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7588575922_
                                               _rest75932_
                                               _hd75930_)))))
                                    (let ((_hd75930_ _hd7588975945_)
                                          (_rest75932_ _tl7589075947_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7588575922_
                                         _rest75932_
                                         _hd75930_)))))
                              (let ()
                                (declare (not safe))
                                (_else7588375902_))))))))
                 (_compile-bind75722_
                  (lambda (_bind75866_ _post75867_ _body75868_)
                    (let ((__tmp77725
                           (let ((__tmp77726
                                  (let ((__tmp77729 (reverse _bind75866_))
                                        (__tmp77727
                                         (let ((__tmp77728
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75723_
                                                   _post75867_
                                                   _body75868_))))
                                           (declare (not safe))
                                           (cons __tmp77728 '()))))
                                    (declare (not safe))
                                    (cons __tmp77729 __tmp77727))))
                             (declare (not safe))
                             (cons 'let __tmp77726))))
                      (declare (not safe))
                      (__SRC__% __tmp77725 _stx75718_))))
                 (_compile-post75723_
                  (lambda (_post75725_ _body75726_)
                    (let ((__tmp77730
                           (let ((__tmp77731
                                  (let ((__tmp77732
                                         (let ((__tmp77734
                                                (lambda (_hd75728_ _r75729_)
                                                  (let* ((_hd7573075753_
                                                          _hd75728_)
                                                         (_E7573475757_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7573075753_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7574775851_
                                                           (lambda (_expr75849_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75849_ _r75729_))))
                  (_K7574275829_
                   (lambda (_expr75826_ _id75827_)
                     (let ((__tmp77735
                            (let ((__tmp77736
                                   (let ((__tmp77737
                                          (let ((__tmp77738
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75826_ '()))))
                                            (declare (not safe))
                                            (cons _id75827_ __tmp77738))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77737))))
                              (declare (not safe))
                              (__SRC__% __tmp77736 _stx75718_))))
                       (declare (not safe))
                       (cons __tmp77735 _r75729_))))
                  (_K7573575796_
                   (lambda (_init75761_ _len75762_ _expr75763_ _tmp75764_)
                     (let ((__tmp77739
                            (let ((__tmp77740
                                   (let ((__tmp77741
                                          (let ((__tmp77755
                                                 (let ((__tmp77756
                                                        (let ((__tmp77757
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75763_ '()))))
                  (declare (not safe))
                  (cons _tmp75764_ __tmp77757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77756 '())))
                                                (__tmp77742
                                                 (let ((__tmp77751
                                                        (let ((__tmp77752
                                                               (let ((__tmp77753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77754
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75762_ '()))))
                                (declare (not safe))
                                (cons _tmp75764_ __tmp77754))))
                         (declare (not safe))
                         (cons '__check-values __tmp77753))))
                  (declare (not safe))
                  (__SRC__% __tmp77752 _stx75718_)))
               (__tmp77743
                (let ((__tmp77744
                       (map (lambda (_hd75766_)
                              (let* ((_hd7576775774_ _hd75766_)
                                     (_E7576975778_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7576775774_))))
                                     (_K7577075784_
                                      (lambda (_k75781_ _id75782_)
                                        (let ((__tmp77745
                                               (let ((__tmp77746
                                                      (let ((__tmp77747
                                                             (let ((__tmp77748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77749
                                   (let ((__tmp77750
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75781_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75764_ __tmp77750))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77749))))
                       (declare (not safe))
                       (cons __tmp77748 '()))))
                (declare (not safe))
                (cons _id75782_ __tmp77747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77746))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77745 _stx75718_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7576775774_))
                                    (let ((_hd7577175787_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7576775774_)))
                                          (_tl7577275789_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7576775774_))))
                                      (let* ((_id75792_ _hd7577175787_)
                                             (_k75794_ _tl7577275789_))
                                        (declare (not safe))
                                        (_K7577075784_ _k75794_ _id75792_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7576975778_)))))
                            _init75761_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77751
                                                         __tmp77743))))
                                            (declare (not safe))
                                            (cons __tmp77755 __tmp77742))))
                                     (declare (not safe))
                                     (cons 'let __tmp77741))))
                              (declare (not safe))
                              (__SRC__% __tmp77740 _stx75718_))))
                       (declare (not safe))
                       (cons __tmp77739 _r75729_)))))
              (if (let () (declare (not safe)) (##pair? _hd7573075753_))
                  (let ((_tl7574975856_
                         (let () (declare (not safe)) (##cdr _hd7573075753_)))
                        (_hd7574875854_
                         (let () (declare (not safe)) (##car _hd7573075753_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7574875854_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7574975856_))
                            (let ((_tl7575175861_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7574975856_)))
                                  (_hd7575075859_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7574975856_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7575175861_))
                                  (let ((_expr75864_ _hd7575075859_))
                                    (declare (not safe))
                                    (_K7574775851_ _expr75864_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7575175861_))
                                      (let ((_tl7574175815_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7575175861_)))
                                            (_hd7574075813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7575175861_))))
                                        (let ((_tmp75804_ _hd7574875854_)
                                              (_expr75811_ _hd7575075859_)
                                              (_len75818_ _hd7574075813_)
                                              (_init75820_ _tl7574175815_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7573575796_
                                             _init75820_
                                             _len75818_
                                             _expr75811_
                                             _tmp75804_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7573475757_)))))
                            (let () (declare (not safe)) (_E7573475757_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7574975856_))
                            (let ((_tl7574675841_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7574975856_)))
                                  (_hd7574575839_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7574975856_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7574675841_))
                                  (let ((_id75837_ _hd7574875854_)
                                        (_expr75844_ _hd7574575839_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7574275829_ _expr75844_ _id75837_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7574675841_))
                                      (let ((_tl7574175815_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7574675841_)))
                                            (_hd7574075813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7574675841_))))
                                        (let ((_tmp75804_ _hd7574875854_)
                                              (_expr75811_ _hd7574575839_)
                                              (_len75818_ _hd7574075813_)
                                              (_init75820_ _tl7574175815_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7573575796_
                                             _init75820_
                                             _len75818_
                                             _expr75811_
                                             _tmp75804_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7573475757_)))))
                            (let () (declare (not safe)) (_E7573475757_)))))
                  (let () (declare (not safe)) (_E7573475757_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77733 (list _body75726_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77734
                                                   __tmp77733
                                                   _post75725_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77732))))
                             (declare (not safe))
                             (cons 'begin __tmp77731))))
                      (declare (not safe))
                      (__SRC__% __tmp77730 _stx75718_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75718_
             _compile-simple75720_
             _compile-values75721_)))))
    (define __compile-call%
      (lambda (_stx75678_)
        (let* ((_$e75680_ _stx75678_)
               (_$E7568275691_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75680_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75680_))
              (let* ((_$tgt7568375694_
                      (let () (declare (not safe)) (__AST-e _$e75680_)))
                     (_$hd7568475697_
                      (let () (declare (not safe)) (##car _$tgt7568375694_)))
                     (_$tl7568575700_
                      (let () (declare (not safe)) (##cdr _$tgt7568375694_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7568575700_))
                    (let* ((_$tgt7568675704_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7568575700_)))
                           (_$hd7568775707_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7568675704_)))
                           (_$tl7568875710_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7568675704_))))
                      (let* ((_rator75714_ _$hd7568775707_)
                             (_rands75716_ _$tl7568875710_)
                             (__tmp77758
                              (let ((__tmp77760
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75714_)))
                                    (__tmp77759 (map __compile _rands75716_)))
                                (declare (not safe))
                                (cons __tmp77760 __tmp77759))))
                        (declare (not safe))
                        (__SRC__% __tmp77758 _stx75678_)))
                    (let () (declare (not safe)) (_$E7568275691_))))
              (let () (declare (not safe)) (_$E7568275691_))))))
    (define __compile-ref%
      (lambda (_stx75640_)
        (let* ((_$e75642_ _stx75640_)
               (_$E7564475653_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75642_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75642_))
              (let* ((_$tgt7564575656_
                      (let () (declare (not safe)) (__AST-e _$e75642_)))
                     (_$hd7564675659_
                      (let () (declare (not safe)) (##car _$tgt7564575656_)))
                     (_$tl7564775662_
                      (let () (declare (not safe)) (##cdr _$tgt7564575656_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7564775662_))
                    (let* ((_$tgt7564875666_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7564775662_)))
                           (_$hd7564975669_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7564875666_)))
                           (_$tl7565075672_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7564875666_))))
                      (let ((_id75676_ _$hd7564975669_))
                        (if (let ((__tmp77761
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7565075672_))))
                              (declare (not safe))
                              (equal? __tmp77761 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75676_ _stx75640_))
                            (let () (declare (not safe)) (_$E7564475653_)))))
                    (let () (declare (not safe)) (_$E7564475653_))))
              (let () (declare (not safe)) (_$E7564475653_))))))
    (define __compile-setq%
      (lambda (_stx75587_)
        (let* ((_$e75589_ _stx75587_)
               (_$E7559175603_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75589_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75589_))
              (let* ((_$tgt7559275606_
                      (let () (declare (not safe)) (__AST-e _$e75589_)))
                     (_$hd7559375609_
                      (let () (declare (not safe)) (##car _$tgt7559275606_)))
                     (_$tl7559475612_
                      (let () (declare (not safe)) (##cdr _$tgt7559275606_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7559475612_))
                    (let* ((_$tgt7559575616_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7559475612_)))
                           (_$hd7559675619_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7559575616_)))
                           (_$tl7559775622_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7559575616_))))
                      (let ((_id75626_ _$hd7559675619_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7559775622_))
                            (let* ((_$tgt7559875628_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7559775622_)))
                                   (_$hd7559975631_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7559875628_)))
                                   (_$tl7560075634_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7559875628_))))
                              (let ((_expr75638_ _$hd7559975631_))
                                (if (let ((__tmp77767
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7560075634_))))
                                      (declare (not safe))
                                      (equal? __tmp77767 '()))
                                    (let ((__tmp77762
                                           (let ((__tmp77763
                                                  (let ((__tmp77766
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id75626_
                                                            _stx75587_)))
                                                        (__tmp77764
                                                         (let ((__tmp77765
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr75638_))))
                   (declare (not safe))
                   (cons __tmp77765 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77766
                                                          __tmp77764))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77763))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77762 _stx75587_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7559175603_)))))
                            (let () (declare (not safe)) (_$E7559175603_)))))
                    (let () (declare (not safe)) (_$E7559175603_))))
              (let () (declare (not safe)) (_$E7559175603_))))))
    (define __compile-if%
      (lambda (_stx75519_)
        (let* ((_$e75521_ _stx75519_)
               (_$E7552375538_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75521_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75521_))
              (let* ((_$tgt7552475541_
                      (let () (declare (not safe)) (__AST-e _$e75521_)))
                     (_$hd7552575544_
                      (let () (declare (not safe)) (##car _$tgt7552475541_)))
                     (_$tl7552675547_
                      (let () (declare (not safe)) (##cdr _$tgt7552475541_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7552675547_))
                    (let* ((_$tgt7552775551_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7552675547_)))
                           (_$hd7552875554_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7552775551_)))
                           (_$tl7552975557_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7552775551_))))
                      (let ((_p75561_ _$hd7552875554_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7552975557_))
                            (let* ((_$tgt7553075563_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7552975557_)))
                                   (_$hd7553175566_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7553075563_)))
                                   (_$tl7553275569_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7553075563_))))
                              (let ((_t75573_ _$hd7553175566_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7553275569_))
                                    (let* ((_$tgt7553375575_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7553275569_)))
                                           (_$hd7553475578_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7553375575_)))
                                           (_$tl7553575581_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7553375575_))))
                                      (let ((_f75585_ _$hd7553475578_))
                                        (if (let ((__tmp77775
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7553575581_))))
                                              (declare (not safe))
                                              (equal? __tmp77775 '()))
                                            (let ((__tmp77768
                                                   (let ((__tmp77769
                                                          (let ((__tmp77774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75561_)))
                        (__tmp77770
                         (let ((__tmp77773
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75573_)))
                               (__tmp77771
                                (let ((__tmp77772
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75585_))))
                                  (declare (not safe))
                                  (cons __tmp77772 '()))))
                           (declare (not safe))
                           (cons __tmp77773 __tmp77771))))
                    (declare (not safe))
                    (cons __tmp77774 __tmp77770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77769))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77768 _stx75519_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7552375538_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7552375538_)))))
                            (let () (declare (not safe)) (_$E7552375538_)))))
                    (let () (declare (not safe)) (_$E7552375538_))))
              (let () (declare (not safe)) (_$E7552375538_))))))
    (define __compile-quote%
      (lambda (_stx75481_)
        (let* ((_$e75483_ _stx75481_)
               (_$E7548575494_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75483_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75483_))
              (let* ((_$tgt7548675497_
                      (let () (declare (not safe)) (__AST-e _$e75483_)))
                     (_$hd7548775500_
                      (let () (declare (not safe)) (##car _$tgt7548675497_)))
                     (_$tl7548875503_
                      (let () (declare (not safe)) (##cdr _$tgt7548675497_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7548875503_))
                    (let* ((_$tgt7548975507_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7548875503_)))
                           (_$hd7549075510_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7548975507_)))
                           (_$tl7549175513_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7548975507_))))
                      (let ((_e75517_ _$hd7549075510_))
                        (if (let ((__tmp77779
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7549175513_))))
                              (declare (not safe))
                              (equal? __tmp77779 '()))
                            (let ((__tmp77776
                                   (let ((__tmp77777
                                          (let ((__tmp77778
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75517_))))
                                            (declare (not safe))
                                            (cons __tmp77778 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77777))))
                              (declare (not safe))
                              (__SRC__% __tmp77776 _stx75481_))
                            (let () (declare (not safe)) (_$E7548575494_)))))
                    (let () (declare (not safe)) (_$E7548575494_))))
              (let () (declare (not safe)) (_$E7548575494_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75443_)
        (let* ((_$e75445_ _stx75443_)
               (_$E7544775456_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75445_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75445_))
              (let* ((_$tgt7544875459_
                      (let () (declare (not safe)) (__AST-e _$e75445_)))
                     (_$hd7544975462_
                      (let () (declare (not safe)) (##car _$tgt7544875459_)))
                     (_$tl7545075465_
                      (let () (declare (not safe)) (##cdr _$tgt7544875459_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7545075465_))
                    (let* ((_$tgt7545175469_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7545075465_)))
                           (_$hd7545275472_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7545175469_)))
                           (_$tl7545375475_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7545175469_))))
                      (let ((_e75479_ _$hd7545275472_))
                        (if (let ((__tmp77782
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7545375475_))))
                              (declare (not safe))
                              (equal? __tmp77782 '()))
                            (let ((__tmp77780
                                   (let ((__tmp77781
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75479_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77781))))
                              (declare (not safe))
                              (__SRC__% __tmp77780 _stx75443_))
                            (let () (declare (not safe)) (_$E7544775456_)))))
                    (let () (declare (not safe)) (_$E7544775456_))))
              (let () (declare (not safe)) (_$E7544775456_))))))
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
