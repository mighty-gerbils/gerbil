(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1708280332)
  (begin
    (define __syntax::t
      (let ((__tmp125419 (list))
            (__tmp125417
             (let ((__tmp125418
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125418 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp125419
         '(e id)
         __tmp125417
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args121161_ (apply make-instance __syntax::t _$args121161_)))
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
      (let ((__tmp125422 (list __syntax::t))
            (__tmp125420
             (let ((__tmp125421
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125421 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp125422
         '()
         __tmp125420
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args121158_
        (apply make-instance __core-form::t _$args121158_)))
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
      (let ((__tmp125425 (list __core-form::t))
            (__tmp125423
             (let ((__tmp125424
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125424 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp125425
         '()
         __tmp125423
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args121155_
        (apply make-instance __core-expression::t _$args121155_)))
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
      (let ((__tmp125428 (list __core-form::t))
            (__tmp125426
             (let ((__tmp125427
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp125427 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp125428
         '()
         __tmp125426
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args121152_
        (apply make-instance __core-special-form::t _$args121152_)))
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
      (lambda (_id121150_)
        (let ((__tmp125429 (let () (declare (not safe)) (__AST-e _id121150_))))
          (declare (not safe))
          (hash-get __core __tmp125429))))
    (define __core-bound-id?__%
      (lambda (_id121134_ _is?121135_)
        (let ((_$e121137_
               (let () (declare (not safe)) (__core-resolve _id121134_))))
          (if _$e121137_ (_is?121135_ _$e121137_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id121143_)
        (let ((_is?121145_ true))
          (declare (not safe))
          (__core-bound-id?__% _id121143_ _is?121145_))))
    (define __core-bound-id?
      (lambda _g125431_
        (let ((_g125430_ (let () (declare (not safe)) (##length _g125431_))))
          (cond ((let () (declare (not safe)) (##fx= _g125430_ 1))
                 (apply (lambda (_id121143_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id121143_)))
                        _g125431_))
                ((let () (declare (not safe)) (##fx= _g125430_ 2))
                 (apply (lambda (_id121147_ _is?121148_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id121147_ _is?121148_)))
                        _g125431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g125431_))))))
    (define __core-bind-syntax!__%
      (lambda (_id121117_ _e121118_ _make121119_)
        (let ((__tmp125432
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e121118_
                      'gerbil/runtime/eval#__syntax::t))
                   _e121118_
                   (_make121119_ _e121118_ _id121117_))))
          (declare (not safe))
          (hash-put! __core _id121117_ __tmp125432))))
    (define __core-bind-syntax!__0
      (lambda (_id121124_ _e121125_)
        (let ((_make121127_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id121124_ _e121125_ _make121127_))))
    (define __core-bind-syntax!
      (lambda _g125434_
        (let ((_g125433_ (let () (declare (not safe)) (##length _g125434_))))
          (cond ((let () (declare (not safe)) (##fx= _g125433_ 2))
                 (apply (lambda (_id121124_ _e121125_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id121124_ _e121125_)))
                        _g125434_))
                ((let () (declare (not safe)) (##fx= _g125433_ 3))
                 (apply (lambda (_id121129_ _e121130_ _make121131_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id121129_
                             _e121130_
                             _make121131_)))
                        _g125434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g125434_))))))
    (define __SRC__%
      (lambda (_e121100_ _src-stx121101_)
        (if (or (let () (declare (not safe)) (pair? _e121100_))
                (let () (declare (not safe)) (symbol? _e121100_)))
            (let ((__tmp125438
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx121101_
                          'gerbil#AST::t))
                       (let ((__tmp125439
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx121101_))))
                         (declare (not safe))
                         (__locat __tmp125439))
                       '#f)))
              (declare (not safe))
              (##make-source _e121100_ __tmp125438))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e121100_ 'gerbil#AST::t))
                (let ((__tmp125437
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e121100_ '1 AST::t '#f)))
                      (__tmp125435
                       (let ((__tmp125436
                              (let ()
                                (declare (not safe))
                                (__AST-source _e121100_))))
                         (declare (not safe))
                         (__locat __tmp125436))))
                  (declare (not safe))
                  (##make-source __tmp125437 __tmp125435))
                (error '"BUG! Cannot sourcify object" _e121100_)))))
    (define __SRC__0
      (lambda (_e121109_)
        (let ((_src-stx121111_ '#f))
          (declare (not safe))
          (__SRC__% _e121109_ _src-stx121111_))))
    (define __SRC
      (lambda _g125441_
        (let ((_g125440_ (let () (declare (not safe)) (##length _g125441_))))
          (cond ((let () (declare (not safe)) (##fx= _g125440_ 1))
                 (apply (lambda (_e121109_)
                          (let () (declare (not safe)) (__SRC__0 _e121109_)))
                        _g125441_))
                ((let () (declare (not safe)) (##fx= _g125440_ 2))
                 (apply (lambda (_e121113_ _src-stx121114_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e121113_ _src-stx121114_)))
                        _g125441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g125441_))))))
    (define __locat
      (lambda (_loc121097_)
        (if (let () (declare (not safe)) (##locat? _loc121097_))
            _loc121097_
            '#f)))
    (define __check-values
      (lambda (_obj121092_ _k121093_)
        (let ((_count121095_
               (if (let () (declare (not safe)) (##values? _obj121092_))
                   (let () (declare (not safe)) (##vector-length _obj121092_))
                   '1)))
          (if (fx= _count121095_ _k121093_)
              '#!void
              (error (if (fx< _count121095_ _k121093_)
                         '"Too few values for context"
                         '"Too many values for context")
                     (if (let () (declare (not safe)) (##values? _obj121092_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj121092_))
                         _obj121092_)
                     _k121093_)))))
    (define __compile
      (lambda (_stx121062_)
        (let* ((_$e121064_ _stx121062_)
               (_$E121066121072_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121064_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121064_))
              (let* ((_$tgt121067121075_
                      (let () (declare (not safe)) (__AST-e _$e121064_)))
                     (_$hd121068121078_
                      (let () (declare (not safe)) (##car _$tgt121067121075_)))
                     (_$tl121069121081_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121067121075_))))
                (let* ((_form121085_ _$hd121068121078_)
                       (_$e121087_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form121085_))))
                  (if _$e121087_
                      ((lambda (_bind121090_)
                         ((##structure-ref _bind121090_ '1 __syntax::t '#f)
                          _stx121062_))
                       _$e121087_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx121062_
                         _form121085_)))))
              (let () (declare (not safe)) (_$E121066121072_))))))
    (define __compile-error__%
      (lambda (_stx121049_ _detail121050_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx121049_
           _detail121050_))))
    (define __compile-error__0
      (lambda (_stx121055_)
        (let ((_detail121057_ '#f))
          (declare (not safe))
          (__compile-error__% _stx121055_ _detail121057_))))
    (define __compile-error
      (lambda _g125443_
        (let ((_g125442_ (let () (declare (not safe)) (##length _g125443_))))
          (cond ((let () (declare (not safe)) (##fx= _g125442_ 1))
                 (apply (lambda (_stx121055_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx121055_)))
                        _g125443_))
                ((let () (declare (not safe)) (##fx= _g125442_ 2))
                 (apply (lambda (_stx121059_ _detail121060_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx121059_ _detail121060_)))
                        _g125443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g125443_))))))
    (define __compile-ignore%
      (lambda (_stx121046_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx121046_))))
    (define __compile-begin%
      (lambda (_stx121021_)
        (let* ((_$e121023_ _stx121021_)
               (_$E121025121031_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e121023_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e121023_))
              (let* ((_$tgt121026121034_
                      (let () (declare (not safe)) (__AST-e _$e121023_)))
                     (_$hd121027121037_
                      (let () (declare (not safe)) (##car _$tgt121026121034_)))
                     (_$tl121028121040_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121026121034_))))
                (let* ((_body121044_ _$tl121028121040_)
                       (__tmp125444
                        (let ((__tmp125445 (map __compile _body121044_)))
                          (declare (not safe))
                          (cons 'begin __tmp125445))))
                  (declare (not safe))
                  (__SRC__% __tmp125444 _stx121021_)))
              (let () (declare (not safe)) (_$E121025121031_))))))
    (define __compile-begin-foreign%
      (lambda (_stx120996_)
        (let* ((_$e120998_ _stx120996_)
               (_$E121000121006_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120998_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120998_))
              (let* ((_$tgt121001121009_
                      (let () (declare (not safe)) (__AST-e _$e120998_)))
                     (_$hd121002121012_
                      (let () (declare (not safe)) (##car _$tgt121001121009_)))
                     (_$tl121003121015_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt121001121009_))))
                (let* ((_body121019_ _$tl121003121015_)
                       (__tmp125446
                        (let ((__tmp125447
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body121019_))))
                          (declare (not safe))
                          (cons 'begin __tmp125447))))
                  (declare (not safe))
                  (__SRC__% __tmp125446 _stx120996_)))
              (let () (declare (not safe)) (_$E121000121006_))))))
    (define __compile-import%
      (lambda (_stx120971_)
        (let* ((_$e120973_ _stx120971_)
               (_$E120975120981_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120973_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120973_))
              (let* ((_$tgt120976120984_
                      (let () (declare (not safe)) (__AST-e _$e120973_)))
                     (_$hd120977120987_
                      (let () (declare (not safe)) (##car _$tgt120976120984_)))
                     (_$tl120978120990_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120976120984_))))
                (let* ((_body120994_ _$tl120978120990_)
                       (__tmp125448
                        (let ((__tmp125449
                               (let ((__tmp125450
                                      (let ((__tmp125451
                                             (let ()
                                               (declare (not safe))
                                               (cons _body120994_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp125451))))
                                 (declare (not safe))
                                 (cons __tmp125450 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp125449))))
                  (declare (not safe))
                  (__SRC__% __tmp125448 _stx120971_)))
              (let () (declare (not safe)) (_$E120975120981_))))))
    (define __compile-begin-annotation%
      (lambda (_stx120918_)
        (let* ((_$e120920_ _stx120918_)
               (_$E120922120934_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120920_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120920_))
              (let* ((_$tgt120923120937_
                      (let () (declare (not safe)) (__AST-e _$e120920_)))
                     (_$hd120924120940_
                      (let () (declare (not safe)) (##car _$tgt120923120937_)))
                     (_$tl120925120943_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120923120937_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120925120943_))
                    (let* ((_$tgt120926120947_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120925120943_)))
                           (_$hd120927120950_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120926120947_)))
                           (_$tl120928120953_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120926120947_))))
                      (let ((_ann120957_ _$hd120927120950_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120928120953_))
                            (let* ((_$tgt120929120959_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120928120953_)))
                                   (_$hd120930120962_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120929120959_)))
                                   (_$tl120931120965_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120929120959_))))
                              (let ((_expr120969_ _$hd120930120962_))
                                (if (let ((__tmp125452
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120931120965_))))
                                      (declare (not safe))
                                      (equal? __tmp125452 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr120969_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120922120934_)))))
                            (let () (declare (not safe)) (_$E120922120934_)))))
                    (let () (declare (not safe)) (_$E120922120934_))))
              (let () (declare (not safe)) (_$E120922120934_))))))
    (define __compile-define-values%
      (lambda (_stx120809_)
        (let* ((_$e120811_ _stx120809_)
               (_$E120813120825_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120811_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120811_))
              (let* ((_$tgt120814120828_
                      (let () (declare (not safe)) (__AST-e _$e120811_)))
                     (_$hd120815120831_
                      (let () (declare (not safe)) (##car _$tgt120814120828_)))
                     (_$tl120816120834_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120814120828_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120816120834_))
                    (let* ((_$tgt120817120838_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120816120834_)))
                           (_$hd120818120841_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120817120838_)))
                           (_$tl120819120844_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120817120838_))))
                      (let ((_hd120848_ _$hd120818120841_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120819120844_))
                            (let* ((_$tgt120820120850_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120819120844_)))
                                   (_$hd120821120853_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120820120850_)))
                                   (_$tl120822120856_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120820120850_))))
                              (let ((_expr120860_ _$hd120821120853_))
                                (if (let ((__tmp125485
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120822120856_))))
                                      (declare (not safe))
                                      (equal? __tmp125485 '()))
                                    (let* ((_$e120862_ _hd120848_)
                                           (_$E120864120905_
                                            (lambda ()
                                              (let ((_$E120865120890_
                                                     (lambda ()
                                                       (let* ((_$E120866120877_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e120862_))))
                      (_ids120880_ _hd120848_)
                      (_len120882_ (length _ids120880_))
                      (_tmp120884_
                       (let ((__tmp125453 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp125453))))
                 (let ((__tmp125454
                        (let ((__tmp125455
                               (let ((__tmp125472
                                      (let ((__tmp125473
                                             (let ((__tmp125474
                                                    (let ((__tmp125475
                                                           (let ((__tmp125476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr120860_))))
                     (declare (not safe))
                     (cons __tmp125476 '()))))
              (declare (not safe))
              (cons _tmp120884_ __tmp125475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp125474))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125473 _stx120809_)))
                                     (__tmp125456
                                      (let ((__tmp125468
                                             (let ((__tmp125469
                                                    (let ((__tmp125470
                                                           (let ((__tmp125471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _len120882_ '()))))
                     (declare (not safe))
                     (cons _tmp120884_ __tmp125471))))
              (declare (not safe))
              (cons '__check-values __tmp125470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp125469
                                                _stx120809_)))
                                            (__tmp125457
                                             (let ((__tmp125458
                                                    (let ((__tmp125460
                                                           (lambda (_id120887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k120888_)
                     (if (let () (declare (not safe)) (__AST-e _id120887_))
                         (let ((__tmp125461
                                (let ((__tmp125462
                                       (let ((__tmp125467
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id120887_)))
                                             (__tmp125463
                                              (let ((__tmp125464
                                                     (let ((__tmp125465
                                                            (let ((__tmp125466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k120888_ '()))))
                      (declare (not safe))
                      (cons _tmp120884_ __tmp125466))))
               (declare (not safe))
               (cons '##vector-ref __tmp125465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125464 '()))))
                                         (declare (not safe))
                                         (cons __tmp125467 __tmp125463))))
                                  (declare (not safe))
                                  (cons 'define __tmp125462))))
                           (declare (not safe))
                           (__SRC__% __tmp125461 _stx120809_))
                         '#f)))
                  (__tmp125459
                   (let () (declare (not safe)) (iota _len120882_))))
              (declare (not safe))
              (filter-map2 __tmp125460 _ids120880_ __tmp125459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp125458))))
                                        (declare (not safe))
                                        (cons __tmp125468 __tmp125457))))
                                 (declare (not safe))
                                 (cons __tmp125472 __tmp125456))))
                          (declare (not safe))
                          (cons 'begin __tmp125455))))
                   (declare (not safe))
                   (__SRC__% __tmp125454 _stx120809_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e120862_))
                                                    (let* ((_$tgt120867120893_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e120862_)))
                                                           (_$hd120868120896_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt120867120893_)))
                                                           (_$tl120869120899_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt120867120893_))))
                                                      (let ((_id120903_
                                                             _$hd120868120896_))
                                                        (if (let ((__tmp125482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl120869120899_))))
                      (declare (not safe))
                      (equal? __tmp125482 '()))
                    (let ((__tmp125477
                           (let ((__tmp125478
                                  (let ((__tmp125481
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id120903_)))
                                        (__tmp125479
                                         (let ((__tmp125480
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr120860_))))
                                           (declare (not safe))
                                           (cons __tmp125480 '()))))
                                    (declare (not safe))
                                    (cons __tmp125481 __tmp125479))))
                             (declare (not safe))
                             (cons 'define __tmp125478))))
                      (declare (not safe))
                      (__SRC__% __tmp125477 _stx120809_))
                    (let () (declare (not safe)) (_$E120865120890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E120865120890_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e120862_))
                                          (let* ((_$tgt120870120908_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e120862_)))
                                                 (_$hd120871120911_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt120870120908_)))
                                                 (_$tl120872120914_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt120870120908_))))
                                            (if (let ((__tmp125484
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd120871120911_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125484 '#f))
                                                (if (let ((__tmp125483
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl120872120914_))))
                                                      (declare (not safe))
                                                      (equal? __tmp125483 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr120860_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E120864120905_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120864120905_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E120864120905_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120813120825_)))))
                            (let () (declare (not safe)) (_$E120813120825_)))))
                    (let () (declare (not safe)) (_$E120813120825_))))
              (let () (declare (not safe)) (_$E120813120825_))))))
    (define __compile-head-id
      (lambda (_e120807_)
        (let ((__tmp125486
               (if (let () (declare (not safe)) (__AST-e _e120807_))
                   _e120807_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp125486))))
    (define __compile-lambda-head
      (lambda (_hd120764_)
        (let _recur120766_ ((_rest120768_ _hd120764_))
          (let* ((_$e120770_ _rest120768_)
                 (_$E120772120790_
                  (lambda ()
                    (let ((_$E120773120787_
                           (lambda ()
                             (let* ((_$E120774120782_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e120770_))))
                                    (_tail120785_ _$e120770_))
                               (declare (not safe))
                               (__compile-head-id _tail120785_)))))
                      (if (let ((__tmp125487
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e120770_))))
                            (declare (not safe))
                            (equal? __tmp125487 '()))
                          '()
                          (let () (declare (not safe)) (_$E120773120787_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120770_))
                (let* ((_$tgt120775120793_
                        (let () (declare (not safe)) (__AST-e _$e120770_)))
                       (_$hd120776120796_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120775120793_)))
                       (_$tl120777120799_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120775120793_))))
                  (let* ((_hd120803_ _$hd120776120796_)
                         (_rest120805_ _$tl120777120799_))
                    (let ((__tmp125489
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd120803_)))
                          (__tmp125488
                           (let ()
                             (declare (not safe))
                             (_recur120766_ _rest120805_))))
                      (declare (not safe))
                      (cons __tmp125489 __tmp125488))))
                (let () (declare (not safe)) (_$E120772120790_)))))))
    (define __compile-lambda%
      (lambda (_stx120711_)
        (let* ((_$e120713_ _stx120711_)
               (_$E120715120727_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e120713_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e120713_))
              (let* ((_$tgt120716120730_
                      (let () (declare (not safe)) (__AST-e _$e120713_)))
                     (_$hd120717120733_
                      (let () (declare (not safe)) (##car _$tgt120716120730_)))
                     (_$tl120718120736_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt120716120730_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl120718120736_))
                    (let* ((_$tgt120719120740_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl120718120736_)))
                           (_$hd120720120743_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt120719120740_)))
                           (_$tl120721120746_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt120719120740_))))
                      (let ((_hd120750_ _$hd120720120743_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl120721120746_))
                            (let* ((_$tgt120722120752_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl120721120746_)))
                                   (_$hd120723120755_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120722120752_)))
                                   (_$tl120724120758_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120722120752_))))
                              (let ((_body120762_ _$hd120723120755_))
                                (if (let ((__tmp125495
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120724120758_))))
                                      (declare (not safe))
                                      (equal? __tmp125495 '()))
                                    (let ((__tmp125490
                                           (let ((__tmp125491
                                                  (let ((__tmp125494
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd120750_)))
                                                        (__tmp125492
                                                         (let ((__tmp125493
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body120762_))))
                   (declare (not safe))
                   (cons __tmp125493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125494
                                                          __tmp125492))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp125491))))
                                      (declare (not safe))
                                      (__SRC__% __tmp125490 _stx120711_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E120715120727_)))))
                            (let () (declare (not safe)) (_$E120715120727_)))))
                    (let () (declare (not safe)) (_$E120715120727_))))
              (let () (declare (not safe)) (_$E120715120727_))))))
    (define __compile-case-lambda%
      (lambda (_stx120503_)
        (letrec ((_variadic?120505_
                  (lambda (_hd120676_)
                    (let* ((_$e120678_ _hd120676_)
                           (_$E120680120696_
                            (lambda ()
                              (let ((_$E120681120693_
                                     (lambda ()
                                       (let ((_$E120682120690_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e120678_)))))
                                         '#t))))
                                (if (let ((__tmp125496
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e120678_))))
                                      (declare (not safe))
                                      (equal? __tmp125496 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E120681120693_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120678_))
                          (let* ((_$tgt120683120699_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120678_)))
                                 (_$hd120684120702_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120683120699_)))
                                 (_$tl120685120705_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120683120699_))))
                            (let ((_rest120709_ _$tl120685120705_))
                              (declare (not safe))
                              (_variadic?120505_ _rest120709_)))
                          (let () (declare (not safe)) (_$E120680120696_))))))
                 (_arity120506_
                  (lambda (_hd120641_)
                    (let _lp120643_ ((_rest120645_ _hd120641_) (_k120646_ '0))
                      (let* ((_$e120648_ _rest120645_)
                             (_$E120650120661_
                              (lambda ()
                                (let ((_$E120651120658_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e120648_)))))
                                  _k120646_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e120648_))
                            (let* ((_$tgt120652120664_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e120648_)))
                                   (_$hd120653120667_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt120652120664_)))
                                   (_$tl120654120670_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt120652120664_))))
                              (let* ((_rest120674_ _$tl120654120670_)
                                     (__tmp125497
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k120646_ '1))))
                                (declare (not safe))
                                (_lp120643_ _rest120674_ __tmp125497)))
                            (let ()
                              (declare (not safe))
                              (_$E120650120661_)))))))
                 (_generate120507_
                  (lambda (_rest120568_ _args120569_ _len120570_)
                    (let* ((_$e120572_ _rest120568_)
                           (_$E120574120585_
                            (lambda ()
                              (let* ((_$E120575120582_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e120572_))))
                                     (__tmp125498
                                      (let ((__tmp125499
                                             (let ((__tmp125500
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args120569_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp125500))))
                                        (declare (not safe))
                                        (cons 'error __tmp125499))))
                                (declare (not safe))
                                (__SRC__% __tmp125498 _stx120503_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120572_))
                          (let* ((_$tgt120576120588_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120572_)))
                                 (_$hd120577120591_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120576120588_)))
                                 (_$tl120578120594_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120576120588_))))
                            (let* ((_clause120598_ _$hd120577120591_)
                                   (_rest120600_ _$tl120578120594_)
                                   (_$e120602_ _clause120598_)
                                   (_$E120604120613_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e120602_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e120602_))
                                  (let* ((_$tgt120605120616_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e120602_)))
                                         (_$hd120606120619_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt120605120616_)))
                                         (_$tl120607120622_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt120605120616_))))
                                    (let ((_hd120626_ _$hd120606120619_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl120607120622_))
                                          (let* ((_$tgt120608120628_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120607120622_)))
                                                 (_$hd120609120631_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt120608120628_)))
                                                 (_$tl120610120634_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt120608120628_))))
                                            (if (let ((__tmp125515
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl120610120634_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125515 '()))
                                                (let ((_clen120638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity120506_
                                                          _hd120626_)))
                                                      (_cmp120639_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?120505_
                                                              _hd120626_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp125501
                                                         (let ((__tmp125502
                                                                (let ((__tmp125512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125513
                                      (let ((__tmp125514
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen120638_ '()))))
                                        (declare (not safe))
                                        (cons _len120570_ __tmp125514))))
                                 (declare (not safe))
                                 (cons _cmp120639_ __tmp125513)))
                              (__tmp125503
                               (let ((__tmp125506
                                      (let ((__tmp125507
                                             (let ((__tmp125508
                                                    (let ((__tmp125510
                                                           (let ((__tmp125511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause120598_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp125511)))
                  (__tmp125509
                   (let () (declare (not safe)) (cons _args120569_ '()))))
              (declare (not safe))
              (cons __tmp125510 __tmp125509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp125508))))
                                        (declare (not safe))
                                        (__SRC__% __tmp125507 _stx120503_)))
                                     (__tmp125504
                                      (let ((__tmp125505
                                             (let ()
                                               (declare (not safe))
                                               (_generate120507_
                                                _rest120600_
                                                _args120569_
                                                _len120570_))))
                                        (declare (not safe))
                                        (cons __tmp125505 '()))))
                                 (declare (not safe))
                                 (cons __tmp125506 __tmp125504))))
                          (declare (not safe))
                          (cons __tmp125512 __tmp125503))))
                   (declare (not safe))
                   (cons 'if __tmp125502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp125501
                                                     _stx120503_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120604120613_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E120604120613_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E120604120613_)))))
                          (let () (declare (not safe)) (_$E120574120585_)))))))
          (let* ((_$e120509_ _stx120503_)
                 (_$E120511120543_
                  (lambda ()
                    (let ((_$E120512120525_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e120509_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120509_))
                          (let* ((_$tgt120513120528_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120509_)))
                                 (_$hd120514120531_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120513120528_)))
                                 (_$tl120515120534_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120513120528_))))
                            (let ((_clauses120538_ _$tl120515120534_))
                              (let ((_args120540_
                                     (let ((__tmp125516 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125516 _stx120503_)))
                                    (_len120541_
                                     (let ((__tmp125517 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp125517 _stx120503_))))
                                (let ((__tmp125518
                                       (let ((__tmp125519
                                              (let ((__tmp125520
                                                     (let ((__tmp125521
                                                            (let ((__tmp125522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125523
                                  (let ((__tmp125526
                                         (let ((__tmp125527
                                                (let ((__tmp125528
                                                       (let ((__tmp125529
                                                              (let ((__tmp125530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp125531
                                    (let ()
                                      (declare (not safe))
                                      (cons _args120540_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp125531))))
                        (declare (not safe))
                        (__SRC__% __tmp125530 _stx120503_))))
                 (declare (not safe))
                 (cons __tmp125529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len120541_
                                                        __tmp125528))))
                                           (declare (not safe))
                                           (cons __tmp125527 '())))
                                        (__tmp125524
                                         (let ((__tmp125525
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate120507_
                                                   _clauses120538_
                                                   _args120540_
                                                   _len120541_))))
                                           (declare (not safe))
                                           (cons __tmp125525 '()))))
                                    (declare (not safe))
                                    (cons __tmp125526 __tmp125524))))
                             (declare (not safe))
                             (cons 'let __tmp125523))))
                      (declare (not safe))
                      (__SRC__% __tmp125522 _stx120503_))))
               (declare (not safe))
               (cons __tmp125521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args120540_
                                                      __tmp125520))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp125519))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125518 _stx120503_)))))
                          (let () (declare (not safe)) (_$E120512120525_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120509_))
                (let* ((_$tgt120516120546_
                        (let () (declare (not safe)) (__AST-e _$e120509_)))
                       (_$hd120517120549_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120516120546_)))
                       (_$tl120518120552_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120516120546_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl120518120552_))
                      (let* ((_$tgt120519120556_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl120518120552_)))
                             (_$hd120520120559_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt120519120556_)))
                             (_$tl120521120562_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt120519120556_))))
                        (let ((_clause120566_ _$hd120520120559_))
                          (if (let ((__tmp125533
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl120521120562_))))
                                (declare (not safe))
                                (equal? __tmp125533 '()))
                              (let ((__tmp125532
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause120566_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp125532))
                              (let ()
                                (declare (not safe))
                                (_$E120511120543_)))))
                      (let () (declare (not safe)) (_$E120511120543_))))
                (let () (declare (not safe)) (_$E120511120543_)))))))
    (define __compile-let-form
      (lambda (_stx120272_ _compile-simple120273_ _compile-values120274_)
        (letrec ((_simple-bind?120276_
                  (lambda (_hd120461_)
                    (let* ((_hd120462120472_ _hd120461_)
                           (_else120465120480_ (lambda () '#f)))
                      (let ((_K120468120493_ (lambda (_id120491_) '#t))
                            (_K120467120485_ (lambda () '#t)))
                        (let ((_try-match120464120488_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd120462120472_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K120467120485_))
                                     (let ()
                                       (declare (not safe))
                                       (_else120465120480_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd120462120472_))
                              (let ((_tl120470120498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd120462120472_)))
                                    (_hd120469120496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd120462120472_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl120470120498_))
                                    (let ((_id120501_ _hd120469120496_))
                                      (declare (not safe))
                                      (_K120468120493_ _id120501_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match120464120488_))))
                              (let ()
                                (declare (not safe))
                                (_try-match120464120488_))))))))
                 (_car-e120277_
                  (lambda (_hd120459_)
                    (if (let () (declare (not safe)) (pair? _hd120459_))
                        (car _hd120459_)
                        _hd120459_))))
          (let* ((_$e120279_ _stx120272_)
                 (_$E120281120424_
                  (lambda ()
                    (let ((_$E120282120304_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e120279_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _$e120279_))
                          (let* ((_$tgt120283120307_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e120279_)))
                                 (_$hd120284120310_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt120283120307_)))
                                 (_$tl120285120313_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt120283120307_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120285120313_))
                                (let* ((_$tgt120286120317_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120285120313_)))
                                       (_$hd120287120320_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120286120317_)))
                                       (_$tl120288120323_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120286120317_))))
                                  (let ((_hd120327_ _$hd120287120320_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl120288120323_))
                                        (let* ((_$tgt120289120329_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl120288120323_)))
                                               (_$hd120290120332_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt120289120329_)))
                                               (_$tl120291120335_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt120289120329_))))
                                          (let ((_body120339_
                                                 _$hd120290120332_))
                                            (if (let ((__tmp125536
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl120291120335_))))
                                                  (declare (not safe))
                                                  (equal? __tmp125536 '()))
                                                (let* ((_hd-ids120379_
                                                        (map (lambda (_bind120341_)
                                                               (let* ((_$e120343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind120341_)
                              (_$E120345120354_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120343_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120343_))
                             (let* ((_$tgt120346120357_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120343_)))
                                    (_$hd120347120360_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120346120357_)))
                                    (_$tl120348120363_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120346120357_))))
                               (let ((_ids120367_ _$hd120347120360_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl120348120363_))
                                     (let* ((_$tgt120349120369_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl120348120363_)))
                                            (_$hd120350120372_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt120349120369_)))
                                            (_$tl120351120375_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt120349120369_))))
                                       (if (let ((__tmp125534
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120351120375_))))
                                             (declare (not safe))
                                             (equal? __tmp125534 '()))
                                           _ids120367_
                                           (let ()
                                             (declare (not safe))
                                             (_$E120345120354_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E120345120354_)))))
                             (let ()
                               (declare (not safe))
                               (_$E120345120354_)))))
                     _hd120327_))
               (_exprs120419_
                (map (lambda (_bind120381_)
                       (let* ((_$e120383_ _bind120381_)
                              (_$E120385120394_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e120383_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e120383_))
                             (let* ((_$tgt120386120397_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e120383_)))
                                    (_$hd120387120400_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt120386120397_)))
                                    (_$tl120388120403_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt120386120397_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl120388120403_))
                                   (let* ((_$tgt120389120407_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl120388120403_)))
                                          (_$hd120390120410_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt120389120407_)))
                                          (_$tl120391120413_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt120389120407_))))
                                     (let ((_expr120417_ _$hd120390120410_))
                                       (if (let ((__tmp125535
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl120391120413_))))
                                             (declare (not safe))
                                             (equal? __tmp125535 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr120417_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E120385120394_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E120385120394_))))
                             (let ()
                               (declare (not safe))
                               (_$E120385120394_)))))
                     _hd120327_))
               (_body120421_
                (let () (declare (not safe)) (__compile _body120339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?120276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids120379_))
              (_compile-simple120273_
               (map _car-e120277_ _hd-ids120379_)
               _exprs120419_
               _body120421_)
              (_compile-values120274_
               _hd-ids120379_
               _exprs120419_
               _body120421_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E120282120304_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120282120304_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120282120304_))))
                          (let () (declare (not safe)) (_$E120282120304_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e120279_))
                (let* ((_$tgt120292120427_
                        (let () (declare (not safe)) (__AST-e _$e120279_)))
                       (_$hd120293120430_
                        (let ()
                          (declare (not safe))
                          (##car _$tgt120292120427_)))
                       (_$tl120294120433_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt120292120427_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl120294120433_))
                      (let* ((_$tgt120295120437_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl120294120433_)))
                             (_$hd120296120440_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt120295120437_)))
                             (_$tl120297120443_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt120295120437_))))
                        (if (let ((__tmp125538
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd120296120440_))))
                              (declare (not safe))
                              (equal? __tmp125538 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl120297120443_))
                                (let* ((_$tgt120298120447_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl120297120443_)))
                                       (_$hd120299120450_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt120298120447_)))
                                       (_$tl120300120453_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt120298120447_))))
                                  (let ((_body120457_ _$hd120299120450_))
                                    (if (let ((__tmp125537
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl120300120453_))))
                                          (declare (not safe))
                                          (equal? __tmp125537 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body120457_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E120281120424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E120281120424_)))
                            (let () (declare (not safe)) (_$E120281120424_))))
                      (let () (declare (not safe)) (_$E120281120424_))))
                (let () (declare (not safe)) (_$E120281120424_)))))))
    (define __compile-let-values%
      (lambda (_stx120087_)
        (letrec ((_compile-simple120089_
                  (lambda (_hd-ids120268_ _exprs120269_ _body120270_)
                    (let ((__tmp125539
                           (let ((__tmp125540
                                  (let ((__tmp125542
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120268_)
                                              _exprs120269_))
                                        (__tmp125541
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120270_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125542 __tmp125541))))
                             (declare (not safe))
                             (cons 'let __tmp125540))))
                      (declare (not safe))
                      (__SRC__% __tmp125539 _stx120087_))))
                 (_compile-values120090_
                  (lambda (_hd-ids120186_ _exprs120187_ _body120188_)
                    (let _lp120190_ ((_rest120192_ _hd-ids120186_)
                                     (_exprs120193_ _exprs120187_)
                                     (_bind120194_ '())
                                     (_post120195_ '()))
                      (let* ((_rest120196120210_ _rest120192_)
                             (_else120199120218_
                              (lambda ()
                                (let ((__tmp125543
                                       (let ((__tmp125544
                                              (let ((__tmp125547
                                                     (reverse _bind120194_))
                                                    (__tmp125545
                                                     (let ((__tmp125546
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post120091_
                                                               _post120195_
                                                               _body120188_))))
                                                       (declare (not safe))
                                                       (cons __tmp125546
                                                             '()))))
                                                (declare (not safe))
                                                (cons __tmp125547
                                                      __tmp125545))))
                                         (declare (not safe))
                                         (cons 'let __tmp125544))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125543 _stx120087_)))))
                        (let ((_K120204120251_
                               (lambda (_rest120248_ _id120249_)
                                 (let ((__tmp125553 (cdr _exprs120193_))
                                       (__tmp125548
                                        (let ((__tmp125549
                                               (let ((__tmp125552
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120249_)))
                                                     (__tmp125550
                                                      (let ((__tmp125551
                                                             (car _exprs120193_)))
                                                        (declare (not safe))
                                                        (cons __tmp125551
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp125552
                                                       __tmp125550))))
                                          (declare (not safe))
                                          (cons __tmp125549 _bind120194_))))
                                   (declare (not safe))
                                   (_lp120190_
                                    _rest120248_
                                    __tmp125553
                                    __tmp125548
                                    _post120195_))))
                              (_K120201120233_
                               (lambda (_rest120222_ _hd120223_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120223_))
                                     (let ((__tmp125574 (cdr _exprs120193_))
                                           (__tmp125567
                                            (let ((__tmp125568
                                                   (let ((__tmp125573
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120223_)))
                                                         (__tmp125569
                                                          (let ((__tmp125570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125571
                                (let ((__tmp125572 (car _exprs120193_)))
                                  (declare (not safe))
                                  (cons __tmp125572 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp125571))))
                    (declare (not safe))
                    (cons __tmp125570 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125573
                                                           __tmp125569))))
                                              (declare (not safe))
                                              (cons __tmp125568
                                                    _bind120194_))))
                                       (declare (not safe))
                                       (_lp120190_
                                        _rest120222_
                                        __tmp125574
                                        __tmp125567
                                        _post120195_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120223_))
                                         (let* ((_len120225_
                                                 (length _hd120223_))
                                                (_tmp120227_
                                                 (let ((__tmp125554 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp125554))))
                                           (let ((__tmp125566
                                                  (cdr _exprs120193_))
                                                 (__tmp125562
                                                  (let ((__tmp125563
                                                         (let ((__tmp125564
                                                                (let ((__tmp125565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs120193_)))
                          (declare (not safe))
                          (cons __tmp125565 '()))))
                   (declare (not safe))
                   (cons _tmp120227_ __tmp125564))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125563
                                                          _bind120194_)))
                                                 (__tmp125555
                                                  (let ((__tmp125556
                                                         (let ((__tmp125557
                                                                (let ((__tmp125558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125560
                                      (lambda (_id120230_ _k120231_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120230_))
                                            (let ((__tmp125561
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120230_))))
                                              (declare (not safe))
                                              (cons __tmp125561 _k120231_))
                                            '#f)))
                                     (__tmp125559
                                      (let ()
                                        (declare (not safe))
                                        (iota _len120225_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp125560
                                  _hd120223_
                                  __tmp125559))))
                          (declare (not safe))
                          (cons _len120225_ __tmp125558))))
                   (declare (not safe))
                   (cons _tmp120227_ __tmp125557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125556
                                                          _post120195_))))
                                             (declare (not safe))
                                             (_lp120190_
                                              _rest120222_
                                              __tmp125566
                                              __tmp125562
                                              __tmp125555)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx120087_
                                            _hd120223_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120196120210_))
                              (let ((_tl120206120256_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120196120210_)))
                                    (_hd120205120254_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120196120210_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120205120254_))
                                    (let ((_tl120208120261_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120205120254_)))
                                          (_hd120207120259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120205120254_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120208120261_))
                                          (let ((_id120264_ _hd120207120259_)
                                                (_rest120266_
                                                 _tl120206120256_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120204120251_
                                               _rest120266_
                                               _id120264_)))
                                          (let ((_hd120241_ _hd120205120254_)
                                                (_rest120243_
                                                 _tl120206120256_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120201120233_
                                               _rest120243_
                                               _hd120241_)))))
                                    (let ((_hd120241_ _hd120205120254_)
                                          (_rest120243_ _tl120206120256_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120201120233_
                                         _rest120243_
                                         _hd120241_)))))
                              (let ()
                                (declare (not safe))
                                (_else120199120218_))))))))
                 (_compile-post120091_
                  (lambda (_post120093_ _body120094_)
                    (let _lp120096_ ((_rest120098_ _post120093_)
                                     (_check120099_ '())
                                     (_bind120100_ '()))
                      (let* ((_rest120101120113_ _rest120098_)
                             (_else120103120121_
                              (lambda ()
                                (let ((__tmp125575
                                       (let ((__tmp125576
                                              (let ((__tmp125577
                                                     (let ((__tmp125578
                                                            (let ((__tmp125579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125580
                                  (let ((__tmp125581
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120094_ '()))))
                                    (declare (not safe))
                                    (cons _bind120100_ __tmp125581))))
                             (declare (not safe))
                             (cons 'let __tmp125580))))
                      (declare (not safe))
                      (__SRC__% __tmp125579 _stx120087_))))
               (declare (not safe))
               (cons __tmp125578 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp125577
                                                        _check120099_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp125576))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125575 _stx120087_))))
                             (_K120105120160_
                              (lambda (_rest120124_
                                       _init120125_
                                       _len120126_
                                       _tmp120127_)
                                (let ((__tmp125589
                                       (let ((__tmp125590
                                              (let ((__tmp125591
                                                     (let ((__tmp125592
                                                            (let ((__tmp125593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len120126_ '()))))
                      (declare (not safe))
                      (cons _tmp120127_ __tmp125593))))
               (declare (not safe))
               (cons '__check-values __tmp125592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp125591
                                                 _stx120087_))))
                                         (declare (not safe))
                                         (cons __tmp125590 _check120099_)))
                                      (__tmp125582
                                       (let ((__tmp125583
                                              (lambda (_hd120129_ _r120130_)
                                                (let* ((_hd120131120138_
                                                        _hd120129_)
                                                       (_E120133120142_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd120131120138_)))
               (_K120134120148_
                (lambda (_k120145_ _id120146_)
                  (let ((__tmp125584
                         (let ((__tmp125585
                                (let ((__tmp125586
                                       (let ((__tmp125587
                                              (let ((__tmp125588
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k120145_ '()))))
                                                (declare (not safe))
                                                (cons _tmp120127_
                                                      __tmp125588))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp125587))))
                                  (declare (not safe))
                                  (cons __tmp125586 '()))))
                           (declare (not safe))
                           (cons _id120146_ __tmp125585))))
                    (declare (not safe))
                    (cons __tmp125584 _r120130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd120131120138_))
                                                      (let ((_hd120135120151_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd120131120138_)))
                    (_tl120136120153_
                     (let () (declare (not safe)) (##cdr _hd120131120138_))))
                (let* ((_id120156_ _hd120135120151_)
                       (_k120158_ _tl120136120153_))
                  (declare (not safe))
                  (_K120134120148_ _k120158_ _id120156_)))
              (let () (declare (not safe)) (_E120133120142_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp125583
                                                 _bind120100_
                                                 _init120125_))))
                                  (declare (not safe))
                                  (_lp120096_
                                   _rest120124_
                                   __tmp125589
                                   __tmp125582)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest120101120113_))
                            (let ((_hd120106120163_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest120101120113_)))
                                  (_tl120107120165_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest120101120113_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd120106120163_))
                                  (let ((_hd120108120168_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd120106120163_)))
                                        (_tl120109120170_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd120106120163_))))
                                    (let ((_tmp120173_ _hd120108120168_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl120109120170_))
                                          (let ((_hd120110120175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl120109120170_)))
                                                (_tl120111120177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl120109120170_))))
                                            (let* ((_len120180_
                                                    _hd120110120175_)
                                                   (_init120182_
                                                    _tl120111120177_)
                                                   (_rest120184_
                                                    _tl120107120165_))
                                              (declare (not safe))
                                              (_K120105120160_
                                               _rest120184_
                                               _init120182_
                                               _len120180_
                                               _tmp120173_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else120103120121_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else120103120121_))))
                            (let ()
                              (declare (not safe))
                              (_else120103120121_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx120087_
             _compile-simple120089_
             _compile-values120090_)))))
    (define __compile-letrec-values%
      (lambda (_stx119887_)
        (letrec ((_compile-simple119889_
                  (lambda (_hd-ids120083_ _exprs120084_ _body120085_)
                    (let ((__tmp125594
                           (let ((__tmp125595
                                  (let ((__tmp125597
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids120083_)
                                              _exprs120084_))
                                        (__tmp125596
                                         (let ()
                                           (declare (not safe))
                                           (cons _body120085_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125597 __tmp125596))))
                             (declare (not safe))
                             (cons 'letrec __tmp125595))))
                      (declare (not safe))
                      (__SRC__% __tmp125594 _stx119887_))))
                 (_compile-values119890_
                  (lambda (_hd-ids119997_ _exprs119998_ _body119999_)
                    (let _lp120001_ ((_rest120003_ _hd-ids119997_)
                                     (_exprs120004_ _exprs119998_)
                                     (_pre120005_ '())
                                     (_bind120006_ '())
                                     (_post120007_ '()))
                      (let* ((_rest120008120022_ _rest120003_)
                             (_else120011120030_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner119891_
                                   _pre120005_
                                   _bind120006_
                                   _post120007_
                                   _body119999_)))))
                        (let ((_K120016120066_
                               (lambda (_rest120063_ _id120064_)
                                 (let ((__tmp125603 (cdr _exprs120004_))
                                       (__tmp125598
                                        (let ((__tmp125599
                                               (let ((__tmp125602
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id120064_)))
                                                     (__tmp125600
                                                      (let ((__tmp125601
                                                             (car _exprs120004_)))
                                                        (declare (not safe))
                                                        (cons __tmp125601
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp125602
                                                       __tmp125600))))
                                          (declare (not safe))
                                          (cons __tmp125599 _bind120006_))))
                                   (declare (not safe))
                                   (_lp120001_
                                    _rest120063_
                                    __tmp125603
                                    _pre120005_
                                    __tmp125598
                                    _post120007_))))
                              (_K120013120048_
                               (lambda (_rest120034_ _hd120035_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd120035_))
                                     (let ((__tmp125631 (cdr _exprs120004_))
                                           (__tmp125624
                                            (let ((__tmp125625
                                                   (let ((__tmp125630
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd120035_)))
                                                         (__tmp125626
                                                          (let ((__tmp125627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp125628
                                (let ((__tmp125629 (car _exprs120004_)))
                                  (declare (not safe))
                                  (cons __tmp125629 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp125628))))
                    (declare (not safe))
                    (cons __tmp125627 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp125630
                                                           __tmp125626))))
                                              (declare (not safe))
                                              (cons __tmp125625
                                                    _bind120006_))))
                                       (declare (not safe))
                                       (_lp120001_
                                        _rest120034_
                                        __tmp125631
                                        _pre120005_
                                        __tmp125624
                                        _post120007_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd120035_))
                                         (let* ((_len120037_
                                                 (length _hd120035_))
                                                (_tmp120039_
                                                 (let ((__tmp125604 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp125604))))
                                           (let ((__tmp125623
                                                  (cdr _exprs120004_))
                                                 (__tmp125616
                                                  (let ((__tmp125617
                                                         (lambda (_id120042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r120043_)
                   (if (let () (declare (not safe)) (__AST-e _id120042_))
                       (let ((__tmp125618
                              (let ((__tmp125622
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id120042_)))
                                    (__tmp125619
                                     (let ((__tmp125620
                                            (let ((__tmp125621
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp125621))))
                                       (declare (not safe))
                                       (cons __tmp125620 '()))))
                                (declare (not safe))
                                (cons __tmp125622 __tmp125619))))
                         (declare (not safe))
                         (cons __tmp125618 _r120043_))
                       _r120043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp125617
                                                            _pre120005_
                                                            _hd120035_)))
                                                 (__tmp125612
                                                  (let ((__tmp125613
                                                         (let ((__tmp125614
                                                                (let ((__tmp125615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs120004_)))
                          (declare (not safe))
                          (cons __tmp125615 '()))))
                   (declare (not safe))
                   (cons _tmp120039_ __tmp125614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125613
                                                          _bind120006_)))
                                                 (__tmp125605
                                                  (let ((__tmp125606
                                                         (let ((__tmp125607
                                                                (let ((__tmp125608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp125610
                                      (lambda (_id120045_ _k120046_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id120045_))
                                            (let ((__tmp125611
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id120045_))))
                                              (declare (not safe))
                                              (cons __tmp125611 _k120046_))
                                            '#f)))
                                     (__tmp125609
                                      (let ()
                                        (declare (not safe))
                                        (iota _len120037_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp125610
                                  _hd120035_
                                  __tmp125609))))
                          (declare (not safe))
                          (cons _len120037_ __tmp125608))))
                   (declare (not safe))
                   (cons _tmp120039_ __tmp125607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125606
                                                          _post120007_))))
                                             (declare (not safe))
                                             (_lp120001_
                                              _rest120034_
                                              __tmp125623
                                              __tmp125616
                                              __tmp125612
                                              __tmp125605)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx119887_
                                            _hd120035_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest120008120022_))
                              (let ((_tl120018120071_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest120008120022_)))
                                    (_hd120017120069_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest120008120022_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd120017120069_))
                                    (let ((_tl120020120076_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd120017120069_)))
                                          (_hd120019120074_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd120017120069_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl120020120076_))
                                          (let ((_id120079_ _hd120019120074_)
                                                (_rest120081_
                                                 _tl120018120071_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120016120066_
                                               _rest120081_
                                               _id120079_)))
                                          (let ((_hd120056_ _hd120017120069_)
                                                (_rest120058_
                                                 _tl120018120071_))
                                            (let ()
                                              (declare (not safe))
                                              (_K120013120048_
                                               _rest120058_
                                               _hd120056_)))))
                                    (let ((_hd120056_ _hd120017120069_)
                                          (_rest120058_ _tl120018120071_))
                                      (let ()
                                        (declare (not safe))
                                        (_K120013120048_
                                         _rest120058_
                                         _hd120056_)))))
                              (let ()
                                (declare (not safe))
                                (_else120011120030_))))))))
                 (_compile-inner119891_
                  (lambda (_pre119992_ _bind119993_ _post119994_ _body119995_)
                    (if (let () (declare (not safe)) (null? _pre119992_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind119892_
                           _bind119993_
                           _post119994_
                           _body119995_))
                        (let ((__tmp125632
                               (let ((__tmp125633
                                      (let ((__tmp125636 (reverse _pre119992_))
                                            (__tmp125634
                                             (let ((__tmp125635
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind119892_
                                                       _bind119993_
                                                       _post119994_
                                                       _body119995_))))
                                               (declare (not safe))
                                               (cons __tmp125635 '()))))
                                        (declare (not safe))
                                        (cons __tmp125636 __tmp125634))))
                                 (declare (not safe))
                                 (cons 'let __tmp125633))))
                          (declare (not safe))
                          (__SRC__% __tmp125632 _stx119887_)))))
                 (_compile-bind119892_
                  (lambda (_bind119988_ _post119989_ _body119990_)
                    (let ((__tmp125637
                           (let ((__tmp125638
                                  (let ((__tmp125641 (reverse _bind119988_))
                                        (__tmp125639
                                         (let ((__tmp125640
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post119893_
                                                   _post119989_
                                                   _body119990_))))
                                           (declare (not safe))
                                           (cons __tmp125640 '()))))
                                    (declare (not safe))
                                    (cons __tmp125641 __tmp125639))))
                             (declare (not safe))
                             (cons 'letrec __tmp125638))))
                      (declare (not safe))
                      (__SRC__% __tmp125637 _stx119887_))))
                 (_compile-post119893_
                  (lambda (_post119895_ _body119896_)
                    (let _lp119898_ ((_rest119900_ _post119895_)
                                     (_check119901_ '())
                                     (_bind119902_ '()))
                      (let* ((_rest119903119915_ _rest119900_)
                             (_else119905119923_
                              (lambda ()
                                (let ((__tmp125642
                                       (let ((__tmp125643
                                              (let ((__tmp125644
                                                     (let ((__tmp125645
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body119896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp125645 _bind119902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp125644
                                                        _check119901_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp125643))))
                                  (declare (not safe))
                                  (__SRC__% __tmp125642 _stx119887_))))
                             (_K119907119962_
                              (lambda (_rest119926_
                                       _init119927_
                                       _len119928_
                                       _tmp119929_)
                                (let ((__tmp125654
                                       (let ((__tmp125655
                                              (let ((__tmp125656
                                                     (let ((__tmp125657
                                                            (let ((__tmp125658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len119928_ '()))))
                      (declare (not safe))
                      (cons _tmp119929_ __tmp125658))))
               (declare (not safe))
               (cons '__check-values __tmp125657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp125656
                                                 _stx119887_))))
                                         (declare (not safe))
                                         (cons __tmp125655 _check119901_)))
                                      (__tmp125646
                                       (let ((__tmp125647
                                              (lambda (_hd119931_ _r119932_)
                                                (let* ((_hd119933119940_
                                                        _hd119931_)
                                                       (_E119935119944_
                                                        (lambda ()
                                                          (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd119933119940_)))
               (_K119936119950_
                (lambda (_k119947_ _id119948_)
                  (let ((__tmp125648
                         (let ((__tmp125649
                                (let ((__tmp125650
                                       (let ((__tmp125651
                                              (let ((__tmp125652
                                                     (let ((__tmp125653
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k119947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp119929_ __tmp125653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp125652))))
                                         (declare (not safe))
                                         (cons __tmp125651 '()))))
                                  (declare (not safe))
                                  (cons _id119948_ __tmp125650))))
                           (declare (not safe))
                           (cons 'set! __tmp125649))))
                    (declare (not safe))
                    (cons __tmp125648 _r119932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd119933119940_))
                                                      (let ((_hd119937119953_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd119933119940_)))
                    (_tl119938119955_
                     (let () (declare (not safe)) (##cdr _hd119933119940_))))
                (let* ((_id119958_ _hd119937119953_)
                       (_k119960_ _tl119938119955_))
                  (declare (not safe))
                  (_K119936119950_ _k119960_ _id119958_)))
              (let () (declare (not safe)) (_E119935119944_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp125647
                                                 _bind119902_
                                                 _init119927_))))
                                  (declare (not safe))
                                  (_lp119898_
                                   _rest119926_
                                   __tmp125654
                                   __tmp125646)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest119903119915_))
                            (let ((_hd119908119965_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest119903119915_)))
                                  (_tl119909119967_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest119903119915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd119908119965_))
                                  (let ((_hd119910119970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd119908119965_)))
                                        (_tl119911119972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd119908119965_))))
                                    (let ((_tmp119975_ _hd119910119970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl119911119972_))
                                          (let ((_hd119912119977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl119911119972_)))
                                                (_tl119913119979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl119911119972_))))
                                            (let* ((_len119982_
                                                    _hd119912119977_)
                                                   (_init119984_
                                                    _tl119913119979_)
                                                   (_rest119986_
                                                    _tl119909119967_))
                                              (declare (not safe))
                                              (_K119907119962_
                                               _rest119986_
                                               _init119984_
                                               _len119982_
                                               _tmp119975_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else119905119923_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else119905119923_))))
                            (let ()
                              (declare (not safe))
                              (_else119905119923_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx119887_
             _compile-simple119889_
             _compile-values119890_)))))
    (define __compile-letrec*-values%
      (lambda (_stx119642_)
        (letrec ((_compile-simple119644_
                  (lambda (_hd-ids119883_ _exprs119884_ _body119885_)
                    (let ((__tmp125659
                           (let ((__tmp125660
                                  (let ((__tmp125662
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids119883_)
                                              _exprs119884_))
                                        (__tmp125661
                                         (let ()
                                           (declare (not safe))
                                           (cons _body119885_ '()))))
                                    (declare (not safe))
                                    (cons __tmp125662 __tmp125661))))
                             (declare (not safe))
                             (cons 'letrec* __tmp125660))))
                      (declare (not safe))
                      (__SRC__% __tmp125659 _stx119642_))))
                 (_compile-values119645_
                  (lambda (_hd-ids119794_ _exprs119795_ _body119796_)
                    (let _lp119798_ ((_rest119800_ _hd-ids119794_)
                                     (_exprs119801_ _exprs119795_)
                                     (_bind119802_ '())
                                     (_post119803_ '()))
                      (let* ((_rest119804119818_ _rest119800_)
                             (_else119807119826_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind119646_
                                   _bind119802_
                                   _post119803_
                                   _body119796_)))))
                        (let ((_K119812119866_
                               (lambda (_rest119861_ _hd119862_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd119862_))
                                     (let ((_id119864_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd119862_))))
                                       (let ((__tmp125677 (cdr _exprs119801_))
                                             (__tmp125672
                                              (let ((__tmp125673
                                                     (let ((__tmp125674
                                                            (let ((__tmp125675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125676
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp125676))))
                      (declare (not safe))
                      (cons __tmp125675 '()))))
               (declare (not safe))
               (cons _id119864_ __tmp125674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125673
                                                      _bind119802_)))
                                             (__tmp125668
                                              (let ((__tmp125669
                                                     (let ((__tmp125670
                                                            (let ((__tmp125671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs119801_)))
                      (declare (not safe))
                      (cons __tmp125671 '()))))
               (declare (not safe))
               (cons _id119864_ __tmp125670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125669
                                                      _post119803_))))
                                         (declare (not safe))
                                         (_lp119798_
                                          _rest119861_
                                          __tmp125677
                                          __tmp125672
                                          __tmp125668)))
                                     (let ((__tmp125667 (cdr _exprs119801_))
                                           (__tmp125663
                                            (let ((__tmp125664
                                                   (let ((__tmp125665
                                                          (let ((__tmp125666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs119801_)))
                    (declare (not safe))
                    (cons __tmp125666 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp125665))))
                                              (declare (not safe))
                                              (cons __tmp125664
                                                    _post119803_))))
                                       (declare (not safe))
                                       (_lp119798_
                                        _rest119861_
                                        __tmp125667
                                        _bind119802_
                                        __tmp125663)))))
                              (_K119809119846_
                               (lambda (_rest119830_ _hd119831_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd119831_))
                                     (let ((_id119833_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd119831_))))
                                       (let ((__tmp125713 (cdr _exprs119801_))
                                             (__tmp125708
                                              (let ((__tmp125709
                                                     (let ((__tmp125710
                                                            (let ((__tmp125711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125712
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp125712))))
                      (declare (not safe))
                      (cons __tmp125711 '()))))
               (declare (not safe))
               (cons _id119833_ __tmp125710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125709
                                                      _bind119802_)))
                                             (__tmp125702
                                              (let ((__tmp125703
                                                     (let ((__tmp125704
                                                            (let ((__tmp125705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp125706
                                  (let ((__tmp125707 (car _exprs119801_)))
                                    (declare (not safe))
                                    (cons __tmp125707 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp125706))))
                      (declare (not safe))
                      (cons __tmp125705 '()))))
               (declare (not safe))
               (cons _id119833_ __tmp125704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp125703
                                                      _post119803_))))
                                         (declare (not safe))
                                         (_lp119798_
                                          _rest119830_
                                          __tmp125713
                                          __tmp125708
                                          __tmp125702)))
                                     (if (let ((__tmp125701
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd119831_))))
                                           (declare (not safe))
                                           (not __tmp125701))
                                         (let ((__tmp125700
                                                (cdr _exprs119801_))
                                               (__tmp125696
                                                (let ((__tmp125697
                                                       (let ((__tmp125698
                                                              (let ((__tmp125699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs119801_)))
                        (declare (not safe))
                        (cons __tmp125699 '()))))
                 (declare (not safe))
                 (cons '#f __tmp125698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp125697
                                                        _post119803_))))
                                           (declare (not safe))
                                           (_lp119798_
                                            _rest119830_
                                            __tmp125700
                                            _bind119802_
                                            __tmp125696))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd119831_))
                                             (let* ((_len119835_
                                                     (length _hd119831_))
                                                    (_tmp119837_
                                                     (let ((__tmp125678
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0
                                                        __tmp125678))))
                                               (let ((__tmp125695
                                                      (cdr _exprs119801_))
                                                     (__tmp125688
                                                      (let ((__tmp125689
                                                             (lambda (_id119840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r119841_)
                       (if (let () (declare (not safe)) (__AST-e _id119840_))
                           (let ((__tmp125690
                                  (let ((__tmp125694
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id119840_)))
                                        (__tmp125691
                                         (let ((__tmp125692
                                                (let ((__tmp125693
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp125693))))
                                           (declare (not safe))
                                           (cons __tmp125692 '()))))
                                    (declare (not safe))
                                    (cons __tmp125694 __tmp125691))))
                             (declare (not safe))
                             (cons __tmp125690 _r119841_))
                           _r119841_))))
                (declare (not safe))
                (foldl1 __tmp125689 _bind119802_ _hd119831_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp125679
                                                      (let ((__tmp125680
                                                             (let ((__tmp125681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125687 (car _exprs119801_))
                                  (__tmp125682
                                   (let ((__tmp125683
                                          (let ((__tmp125685
                                                 (lambda (_id119843_ _k119844_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id119843_))
                                                       (let ((__tmp125686
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id119843_))))
                 (declare (not safe))
                 (cons __tmp125686 _k119844_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp125684
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota _len119835_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp125685
                                             _hd119831_
                                             __tmp125684))))
                                     (declare (not safe))
                                     (cons _len119835_ __tmp125683))))
                              (declare (not safe))
                              (cons __tmp125687 __tmp125682))))
                       (declare (not safe))
                       (cons _tmp119837_ __tmp125681))))
                (declare (not safe))
                (cons __tmp125680 _post119803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp119798_
                                                  _rest119830_
                                                  __tmp125695
                                                  __tmp125688
                                                  __tmp125679)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx119642_
                                                _hd119831_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119804119818_))
                              (let ((_tl119814119871_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119804119818_)))
                                    (_hd119813119869_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119804119818_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd119813119869_))
                                    (let ((_tl119816119876_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd119813119869_)))
                                          (_hd119815119874_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd119813119869_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl119816119876_))
                                          (let ((_hd119879_ _hd119815119874_)
                                                (_rest119881_
                                                 _tl119814119871_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119812119866_
                                               _rest119881_
                                               _hd119879_)))
                                          (let ((_hd119854_ _hd119813119869_)
                                                (_rest119856_
                                                 _tl119814119871_))
                                            (let ()
                                              (declare (not safe))
                                              (_K119809119846_
                                               _rest119856_
                                               _hd119854_)))))
                                    (let ((_hd119854_ _hd119813119869_)
                                          (_rest119856_ _tl119814119871_))
                                      (let ()
                                        (declare (not safe))
                                        (_K119809119846_
                                         _rest119856_
                                         _hd119854_)))))
                              (let ()
                                (declare (not safe))
                                (_else119807119826_))))))))
                 (_compile-bind119646_
                  (lambda (_bind119790_ _post119791_ _body119792_)
                    (let ((__tmp125714
                           (let ((__tmp125715
                                  (let ((__tmp125718 (reverse _bind119790_))
                                        (__tmp125716
                                         (let ((__tmp125717
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post119647_
                                                   _post119791_
                                                   _body119792_))))
                                           (declare (not safe))
                                           (cons __tmp125717 '()))))
                                    (declare (not safe))
                                    (cons __tmp125718 __tmp125716))))
                             (declare (not safe))
                             (cons 'let __tmp125715))))
                      (declare (not safe))
                      (__SRC__% __tmp125714 _stx119642_))))
                 (_compile-post119647_
                  (lambda (_post119649_ _body119650_)
                    (let ((__tmp125719
                           (let ((__tmp125720
                                  (let ((__tmp125721
                                         (let ((__tmp125723
                                                (lambda (_hd119652_ _r119653_)
                                                  (let* ((_hd119654119677_
                                                          _hd119652_)
                                                         (_E119658119681_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd119654119677_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K119671119775_
                                                           (lambda (_expr119773_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr119773_ _r119653_))))
                  (_K119666119753_
                   (lambda (_expr119750_ _id119751_)
                     (let ((__tmp125724
                            (let ((__tmp125725
                                   (let ((__tmp125726
                                          (let ((__tmp125727
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr119750_ '()))))
                                            (declare (not safe))
                                            (cons _id119751_ __tmp125727))))
                                     (declare (not safe))
                                     (cons 'set! __tmp125726))))
                              (declare (not safe))
                              (__SRC__% __tmp125725 _stx119642_))))
                       (declare (not safe))
                       (cons __tmp125724 _r119653_))))
                  (_K119659119720_
                   (lambda (_init119685_ _len119686_ _expr119687_ _tmp119688_)
                     (let ((__tmp125728
                            (let ((__tmp125729
                                   (let ((__tmp125730
                                          (let ((__tmp125744
                                                 (let ((__tmp125745
                                                        (let ((__tmp125746
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr119687_ '()))))
                  (declare (not safe))
                  (cons _tmp119688_ __tmp125746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125745 '())))
                                                (__tmp125731
                                                 (let ((__tmp125740
                                                        (let ((__tmp125741
                                                               (let ((__tmp125742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp125743
                                     (let ()
                                       (declare (not safe))
                                       (cons _len119686_ '()))))
                                (declare (not safe))
                                (cons _tmp119688_ __tmp125743))))
                         (declare (not safe))
                         (cons '__check-values __tmp125742))))
                  (declare (not safe))
                  (__SRC__% __tmp125741 _stx119642_)))
               (__tmp125732
                (let ((__tmp125733
                       (map (lambda (_hd119690_)
                              (let* ((_hd119691119698_ _hd119690_)
                                     (_E119693119702_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd119691119698_)))
                                     (_K119694119708_
                                      (lambda (_k119705_ _id119706_)
                                        (let ((__tmp125734
                                               (let ((__tmp125735
                                                      (let ((__tmp125736
                                                             (let ((__tmp125737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp125738
                                   (let ((__tmp125739
                                          (let ()
                                            (declare (not safe))
                                            (cons _k119705_ '()))))
                                     (declare (not safe))
                                     (cons _tmp119688_ __tmp125739))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp125738))))
                       (declare (not safe))
                       (cons __tmp125737 '()))))
                (declare (not safe))
                (cons _id119706_ __tmp125736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp125735))))
                                          (declare (not safe))
                                          (__SRC__%
                                           __tmp125734
                                           _stx119642_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd119691119698_))
                                    (let ((_hd119695119711_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd119691119698_)))
                                          (_tl119696119713_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd119691119698_))))
                                      (let* ((_id119716_ _hd119695119711_)
                                             (_k119718_ _tl119696119713_))
                                        (declare (not safe))
                                        (_K119694119708_
                                         _k119718_
                                         _id119716_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E119693119702_)))))
                            _init119685_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp125733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp125740
                                                         __tmp125732))))
                                            (declare (not safe))
                                            (cons __tmp125744 __tmp125731))))
                                     (declare (not safe))
                                     (cons 'let __tmp125730))))
                              (declare (not safe))
                              (__SRC__% __tmp125729 _stx119642_))))
                       (declare (not safe))
                       (cons __tmp125728 _r119653_)))))
              (if (let () (declare (not safe)) (##pair? _hd119654119677_))
                  (let ((_tl119673119780_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd119654119677_)))
                        (_hd119672119778_
                         (let ()
                           (declare (not safe))
                           (##car _hd119654119677_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd119672119778_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl119673119780_))
                            (let ((_tl119675119785_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl119673119780_)))
                                  (_hd119674119783_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl119673119780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl119675119785_))
                                  (let ((_expr119788_ _hd119674119783_))
                                    (declare (not safe))
                                    (_K119671119775_ _expr119788_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl119675119785_))
                                      (let ((_tl119665119739_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl119675119785_)))
                                            (_hd119664119737_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl119675119785_))))
                                        (let ((_tmp119728_ _hd119672119778_)
                                              (_expr119735_ _hd119674119783_)
                                              (_len119742_ _hd119664119737_)
                                              (_init119744_ _tl119665119739_))
                                          (let ()
                                            (declare (not safe))
                                            (_K119659119720_
                                             _init119744_
                                             _len119742_
                                             _expr119735_
                                             _tmp119728_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E119658119681_)))))
                            (let () (declare (not safe)) (_E119658119681_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl119673119780_))
                            (let ((_tl119670119765_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl119673119780_)))
                                  (_hd119669119763_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl119673119780_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl119670119765_))
                                  (let ((_id119761_ _hd119672119778_)
                                        (_expr119768_ _hd119669119763_))
                                    (let ()
                                      (declare (not safe))
                                      (_K119666119753_
                                       _expr119768_
                                       _id119761_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl119670119765_))
                                      (let ((_tl119665119739_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl119670119765_)))
                                            (_hd119664119737_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl119670119765_))))
                                        (let ((_tmp119728_ _hd119672119778_)
                                              (_expr119735_ _hd119669119763_)
                                              (_len119742_ _hd119664119737_)
                                              (_init119744_ _tl119665119739_))
                                          (let ()
                                            (declare (not safe))
                                            (_K119659119720_
                                             _init119744_
                                             _len119742_
                                             _expr119735_
                                             _tmp119728_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E119658119681_)))))
                            (let () (declare (not safe)) (_E119658119681_)))))
                  (let () (declare (not safe)) (_E119658119681_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp125722
                                                (list _body119650_)))
                                           (declare (not safe))
                                           (foldl1 __tmp125723
                                                   __tmp125722
                                                   _post119649_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp125721))))
                             (declare (not safe))
                             (cons 'begin __tmp125720))))
                      (declare (not safe))
                      (__SRC__% __tmp125719 _stx119642_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx119642_
             _compile-simple119644_
             _compile-values119645_)))))
    (define __compile-call%
      (lambda (_stx119602_)
        (let* ((_$e119604_ _stx119602_)
               (_$E119606119615_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119604_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119604_))
              (let* ((_$tgt119607119618_
                      (let () (declare (not safe)) (__AST-e _$e119604_)))
                     (_$hd119608119621_
                      (let () (declare (not safe)) (##car _$tgt119607119618_)))
                     (_$tl119609119624_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119607119618_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119609119624_))
                    (let* ((_$tgt119610119628_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119609119624_)))
                           (_$hd119611119631_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119610119628_)))
                           (_$tl119612119634_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119610119628_))))
                      (let* ((_rator119638_ _$hd119611119631_)
                             (_rands119640_ _$tl119612119634_)
                             (__tmp125747
                              (let ((__tmp125749
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator119638_)))
                                    (__tmp125748
                                     (map __compile _rands119640_)))
                                (declare (not safe))
                                (cons __tmp125749 __tmp125748))))
                        (declare (not safe))
                        (__SRC__% __tmp125747 _stx119602_)))
                    (let () (declare (not safe)) (_$E119606119615_))))
              (let () (declare (not safe)) (_$E119606119615_))))))
    (define __compile-ref%
      (lambda (_stx119564_)
        (let* ((_$e119566_ _stx119564_)
               (_$E119568119577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119566_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119566_))
              (let* ((_$tgt119569119580_
                      (let () (declare (not safe)) (__AST-e _$e119566_)))
                     (_$hd119570119583_
                      (let () (declare (not safe)) (##car _$tgt119569119580_)))
                     (_$tl119571119586_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119569119580_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119571119586_))
                    (let* ((_$tgt119572119590_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119571119586_)))
                           (_$hd119573119593_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119572119590_)))
                           (_$tl119574119596_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119572119590_))))
                      (let ((_id119600_ _$hd119573119593_))
                        (if (let ((__tmp125750
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119574119596_))))
                              (declare (not safe))
                              (equal? __tmp125750 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id119600_ _stx119564_))
                            (let () (declare (not safe)) (_$E119568119577_)))))
                    (let () (declare (not safe)) (_$E119568119577_))))
              (let () (declare (not safe)) (_$E119568119577_))))))
    (define __compile-setq%
      (lambda (_stx119511_)
        (let* ((_$e119513_ _stx119511_)
               (_$E119515119527_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119513_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119513_))
              (let* ((_$tgt119516119530_
                      (let () (declare (not safe)) (__AST-e _$e119513_)))
                     (_$hd119517119533_
                      (let () (declare (not safe)) (##car _$tgt119516119530_)))
                     (_$tl119518119536_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119516119530_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119518119536_))
                    (let* ((_$tgt119519119540_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119518119536_)))
                           (_$hd119520119543_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119519119540_)))
                           (_$tl119521119546_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119519119540_))))
                      (let ((_id119550_ _$hd119520119543_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl119521119546_))
                            (let* ((_$tgt119522119552_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl119521119546_)))
                                   (_$hd119523119555_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt119522119552_)))
                                   (_$tl119524119558_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt119522119552_))))
                              (let ((_expr119562_ _$hd119523119555_))
                                (if (let ((__tmp125756
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl119524119558_))))
                                      (declare (not safe))
                                      (equal? __tmp125756 '()))
                                    (let ((__tmp125751
                                           (let ((__tmp125752
                                                  (let ((__tmp125755
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id119550_
                                                            _stx119511_)))
                                                        (__tmp125753
                                                         (let ((__tmp125754
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr119562_))))
                   (declare (not safe))
                   (cons __tmp125754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp125755
                                                          __tmp125753))))
                                             (declare (not safe))
                                             (cons 'set! __tmp125752))))
                                      (declare (not safe))
                                      (__SRC__% __tmp125751 _stx119511_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E119515119527_)))))
                            (let () (declare (not safe)) (_$E119515119527_)))))
                    (let () (declare (not safe)) (_$E119515119527_))))
              (let () (declare (not safe)) (_$E119515119527_))))))
    (define __compile-if%
      (lambda (_stx119443_)
        (let* ((_$e119445_ _stx119443_)
               (_$E119447119462_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119445_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119445_))
              (let* ((_$tgt119448119465_
                      (let () (declare (not safe)) (__AST-e _$e119445_)))
                     (_$hd119449119468_
                      (let () (declare (not safe)) (##car _$tgt119448119465_)))
                     (_$tl119450119471_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119448119465_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119450119471_))
                    (let* ((_$tgt119451119475_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119450119471_)))
                           (_$hd119452119478_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119451119475_)))
                           (_$tl119453119481_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119451119475_))))
                      (let ((_p119485_ _$hd119452119478_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl119453119481_))
                            (let* ((_$tgt119454119487_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl119453119481_)))
                                   (_$hd119455119490_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt119454119487_)))
                                   (_$tl119456119493_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt119454119487_))))
                              (let ((_t119497_ _$hd119455119490_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl119456119493_))
                                    (let* ((_$tgt119457119499_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl119456119493_)))
                                           (_$hd119458119502_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt119457119499_)))
                                           (_$tl119459119505_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt119457119499_))))
                                      (let ((_f119509_ _$hd119458119502_))
                                        (if (let ((__tmp125764
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl119459119505_))))
                                              (declare (not safe))
                                              (equal? __tmp125764 '()))
                                            (let ((__tmp125757
                                                   (let ((__tmp125758
                                                          (let ((__tmp125763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p119485_)))
                        (__tmp125759
                         (let ((__tmp125762
                                (let ()
                                  (declare (not safe))
                                  (__compile _t119497_)))
                               (__tmp125760
                                (let ((__tmp125761
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f119509_))))
                                  (declare (not safe))
                                  (cons __tmp125761 '()))))
                           (declare (not safe))
                           (cons __tmp125762 __tmp125760))))
                    (declare (not safe))
                    (cons __tmp125763 __tmp125759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp125758))))
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp125757
                                               _stx119443_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E119447119462_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E119447119462_)))))
                            (let () (declare (not safe)) (_$E119447119462_)))))
                    (let () (declare (not safe)) (_$E119447119462_))))
              (let () (declare (not safe)) (_$E119447119462_))))))
    (define __compile-quote%
      (lambda (_stx119405_)
        (let* ((_$e119407_ _stx119405_)
               (_$E119409119418_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119407_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119407_))
              (let* ((_$tgt119410119421_
                      (let () (declare (not safe)) (__AST-e _$e119407_)))
                     (_$hd119411119424_
                      (let () (declare (not safe)) (##car _$tgt119410119421_)))
                     (_$tl119412119427_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119410119421_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119412119427_))
                    (let* ((_$tgt119413119431_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119412119427_)))
                           (_$hd119414119434_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119413119431_)))
                           (_$tl119415119437_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119413119431_))))
                      (let ((_e119441_ _$hd119414119434_))
                        (if (let ((__tmp125768
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119415119437_))))
                              (declare (not safe))
                              (equal? __tmp125768 '()))
                            (let ((__tmp125765
                                   (let ((__tmp125766
                                          (let ((__tmp125767
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e119441_))))
                                            (declare (not safe))
                                            (cons __tmp125767 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp125766))))
                              (declare (not safe))
                              (__SRC__% __tmp125765 _stx119405_))
                            (let () (declare (not safe)) (_$E119409119418_)))))
                    (let () (declare (not safe)) (_$E119409119418_))))
              (let () (declare (not safe)) (_$E119409119418_))))))
    (define __compile-quote-syntax%
      (lambda (_stx119367_)
        (let* ((_$e119369_ _stx119367_)
               (_$E119371119380_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e119369_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e119369_))
              (let* ((_$tgt119372119383_
                      (let () (declare (not safe)) (__AST-e _$e119369_)))
                     (_$hd119373119386_
                      (let () (declare (not safe)) (##car _$tgt119372119383_)))
                     (_$tl119374119389_
                      (let ()
                        (declare (not safe))
                        (##cdr _$tgt119372119383_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _$tl119374119389_))
                    (let* ((_$tgt119375119393_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl119374119389_)))
                           (_$hd119376119396_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt119375119393_)))
                           (_$tl119377119399_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt119375119393_))))
                      (let ((_e119403_ _$hd119376119396_))
                        (if (let ((__tmp125771
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl119377119399_))))
                              (declare (not safe))
                              (equal? __tmp125771 '()))
                            (let ((__tmp125769
                                   (let ((__tmp125770
                                          (let ()
                                            (declare (not safe))
                                            (cons _e119403_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp125770))))
                              (declare (not safe))
                              (__SRC__% __tmp125769 _stx119367_))
                            (let () (declare (not safe)) (_$E119371119380_)))))
                    (let () (declare (not safe)) (_$E119371119380_))))
              (let () (declare (not safe)) (_$E119371119380_))))))
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
