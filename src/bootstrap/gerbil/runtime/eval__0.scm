(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710140929)
  (begin
    (define __syntax::t
      (let ((__tmp77444 (list))
            (__tmp77442
             (let ((__tmp77443
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77443 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77444
         '(e id)
         __tmp77442
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77253_ (apply make-instance __syntax::t _$args77253_)))
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
      (let ((__tmp77447 (list __syntax::t))
            (__tmp77445
             (let ((__tmp77446
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77446 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77447
         '()
         __tmp77445
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77250_ (apply make-instance __core-form::t _$args77250_)))
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
      (let ((__tmp77450 (list __core-form::t))
            (__tmp77448
             (let ((__tmp77449
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77449 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77450
         '()
         __tmp77448
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77247_
        (apply make-instance __core-expression::t _$args77247_)))
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
      (let ((__tmp77453 (list __core-form::t))
            (__tmp77451
             (let ((__tmp77452
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77452 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77453
         '()
         __tmp77451
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77244_
        (apply make-instance __core-special-form::t _$args77244_)))
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
      (lambda (_id77242_)
        (let ((__tmp77454 (let () (declare (not safe)) (__AST-e _id77242_))))
          (declare (not safe))
          (hash-get __core __tmp77454))))
    (define __core-bound-id?__%
      (lambda (_id77226_ _is?77227_)
        (let ((_$e77229_
               (let () (declare (not safe)) (__core-resolve _id77226_))))
          (if _$e77229_ (_is?77227_ _$e77229_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77235_)
        (let ((_is?77237_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77235_ _is?77237_))))
    (define __core-bound-id?
      (lambda _g77456_
        (let ((_g77455_ (let () (declare (not safe)) (##length _g77456_))))
          (cond ((let () (declare (not safe)) (##fx= _g77455_ 1))
                 (apply (lambda (_id77235_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77235_)))
                        _g77456_))
                ((let () (declare (not safe)) (##fx= _g77455_ 2))
                 (apply (lambda (_id77239_ _is?77240_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77239_ _is?77240_)))
                        _g77456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77456_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77209_ _e77210_ _make77211_)
        (let ((__tmp77457
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77210_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77210_
                   (_make77211_ _e77210_ _id77209_))))
          (declare (not safe))
          (hash-put! __core _id77209_ __tmp77457))))
    (define __core-bind-syntax!__0
      (lambda (_id77216_ _e77217_)
        (let ((_make77219_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77216_ _e77217_ _make77219_))))
    (define __core-bind-syntax!
      (lambda _g77459_
        (let ((_g77458_ (let () (declare (not safe)) (##length _g77459_))))
          (cond ((let () (declare (not safe)) (##fx= _g77458_ 2))
                 (apply (lambda (_id77216_ _e77217_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77216_ _e77217_)))
                        _g77459_))
                ((let () (declare (not safe)) (##fx= _g77458_ 3))
                 (apply (lambda (_id77221_ _e77222_ _make77223_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77221_
                             _e77222_
                             _make77223_)))
                        _g77459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77459_))))))
    (define __SRC__%
      (lambda (_e77192_ _src-stx77193_)
        (if (or (let () (declare (not safe)) (pair? _e77192_))
                (let () (declare (not safe)) (symbol? _e77192_)))
            (let ((__tmp77463
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77193_
                          'gerbil#AST::t))
                       (let ((__tmp77464
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77193_))))
                         (declare (not safe))
                         (__locat __tmp77464))
                       '#f)))
              (declare (not safe))
              (##make-source _e77192_ __tmp77463))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77192_ 'gerbil#AST::t))
                (let ((__tmp77462
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77192_ '1 AST::t '#f)))
                      (__tmp77460
                       (let ((__tmp77461
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77192_))))
                         (declare (not safe))
                         (__locat __tmp77461))))
                  (declare (not safe))
                  (##make-source __tmp77462 __tmp77460))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77192_))))))
    (define __SRC__0
      (lambda (_e77201_)
        (let ((_src-stx77203_ '#f))
          (declare (not safe))
          (__SRC__% _e77201_ _src-stx77203_))))
    (define __SRC
      (lambda _g77466_
        (let ((_g77465_ (let () (declare (not safe)) (##length _g77466_))))
          (cond ((let () (declare (not safe)) (##fx= _g77465_ 1))
                 (apply (lambda (_e77201_)
                          (let () (declare (not safe)) (__SRC__0 _e77201_)))
                        _g77466_))
                ((let () (declare (not safe)) (##fx= _g77465_ 2))
                 (apply (lambda (_e77205_ _src-stx77206_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77205_ _src-stx77206_)))
                        _g77466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77466_))))))
    (define __locat
      (lambda (_loc77189_)
        (if (let () (declare (not safe)) (##locat? _loc77189_))
            _loc77189_
            '#f)))
    (define __check-values
      (lambda (_obj77184_ _k77185_)
        (let ((_count77187_
               (if (let () (declare (not safe)) (##values? _obj77184_))
                   (let () (declare (not safe)) (##vector-length _obj77184_))
                   '1)))
          (if (fx= _count77187_ _k77185_)
              '#!void
              (let ((__tmp77468
                     (if (fx< _count77187_ _k77185_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77467
                     (if (let () (declare (not safe)) (##values? _obj77184_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77184_))
                         _obj77184_)))
                (declare (not safe))
                (error __tmp77468 __tmp77467 _k77185_))))))
    (define __compile
      (lambda (_stx77154_)
        (let* ((_$e77156_ _stx77154_)
               (_$E7715877164_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77156_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77156_))
              (let* ((_$tgt7715977167_
                      (let () (declare (not safe)) (__AST-e _$e77156_)))
                     (_$hd7716077170_
                      (let () (declare (not safe)) (##car _$tgt7715977167_)))
                     (_$tl7716177173_
                      (let () (declare (not safe)) (##cdr _$tgt7715977167_))))
                (let* ((_form77177_ _$hd7716077170_)
                       (_$e77179_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77177_))))
                  (if _$e77179_
                      ((lambda (_bind77182_)
                         ((##structure-ref _bind77182_ '1 __syntax::t '#f)
                          _stx77154_))
                       _$e77179_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77154_
                         _form77177_)))))
              (let () (declare (not safe)) (_$E7715877164_))))))
    (define __compile-error__%
      (lambda (_stx77141_ _detail77142_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77141_
           _detail77142_))))
    (define __compile-error__0
      (lambda (_stx77147_)
        (let ((_detail77149_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77147_ _detail77149_))))
    (define __compile-error
      (lambda _g77470_
        (let ((_g77469_ (let () (declare (not safe)) (##length _g77470_))))
          (cond ((let () (declare (not safe)) (##fx= _g77469_ 1))
                 (apply (lambda (_stx77147_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77147_)))
                        _g77470_))
                ((let () (declare (not safe)) (##fx= _g77469_ 2))
                 (apply (lambda (_stx77151_ _detail77152_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77151_ _detail77152_)))
                        _g77470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77470_))))))
    (define __compile-ignore%
      (lambda (_stx77138_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77138_))))
    (define __compile-begin%
      (lambda (_stx77113_)
        (let* ((_$e77115_ _stx77113_)
               (_$E7711777123_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77115_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77115_))
              (let* ((_$tgt7711877126_
                      (let () (declare (not safe)) (__AST-e _$e77115_)))
                     (_$hd7711977129_
                      (let () (declare (not safe)) (##car _$tgt7711877126_)))
                     (_$tl7712077132_
                      (let () (declare (not safe)) (##cdr _$tgt7711877126_))))
                (let* ((_body77136_ _$tl7712077132_)
                       (__tmp77471
                        (let ((__tmp77472 (map __compile _body77136_)))
                          (declare (not safe))
                          (cons 'begin __tmp77472))))
                  (declare (not safe))
                  (__SRC__% __tmp77471 _stx77113_)))
              (let () (declare (not safe)) (_$E7711777123_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77088_)
        (let* ((_$e77090_ _stx77088_)
               (_$E7709277098_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77090_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77090_))
              (let* ((_$tgt7709377101_
                      (let () (declare (not safe)) (__AST-e _$e77090_)))
                     (_$hd7709477104_
                      (let () (declare (not safe)) (##car _$tgt7709377101_)))
                     (_$tl7709577107_
                      (let () (declare (not safe)) (##cdr _$tgt7709377101_))))
                (let* ((_body77111_ _$tl7709577107_)
                       (__tmp77473
                        (let ((__tmp77474
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77111_))))
                          (declare (not safe))
                          (cons 'begin __tmp77474))))
                  (declare (not safe))
                  (__SRC__% __tmp77473 _stx77088_)))
              (let () (declare (not safe)) (_$E7709277098_))))))
    (define __compile-import%
      (lambda (_stx77063_)
        (let* ((_$e77065_ _stx77063_)
               (_$E7706777073_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77065_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77065_))
              (let* ((_$tgt7706877076_
                      (let () (declare (not safe)) (__AST-e _$e77065_)))
                     (_$hd7706977079_
                      (let () (declare (not safe)) (##car _$tgt7706877076_)))
                     (_$tl7707077082_
                      (let () (declare (not safe)) (##cdr _$tgt7706877076_))))
                (let* ((_body77086_ _$tl7707077082_)
                       (__tmp77475
                        (let ((__tmp77476
                               (let ((__tmp77477
                                      (let ((__tmp77478
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77086_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77478))))
                                 (declare (not safe))
                                 (cons __tmp77477 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77476))))
                  (declare (not safe))
                  (__SRC__% __tmp77475 _stx77063_)))
              (let () (declare (not safe)) (_$E7706777073_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77010_)
        (let* ((_$e77012_ _stx77010_)
               (_$E7701477026_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77012_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77012_))
              (let* ((_$tgt7701577029_
                      (let () (declare (not safe)) (__AST-e _$e77012_)))
                     (_$hd7701677032_
                      (let () (declare (not safe)) (##car _$tgt7701577029_)))
                     (_$tl7701777035_
                      (let () (declare (not safe)) (##cdr _$tgt7701577029_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7701777035_))
                    (let* ((_$tgt7701877039_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7701777035_)))
                           (_$hd7701977042_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7701877039_)))
                           (_$tl7702077045_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7701877039_))))
                      (let ((_ann77049_ _$hd7701977042_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7702077045_))
                            (let* ((_$tgt7702177051_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7702077045_)))
                                   (_$hd7702277054_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7702177051_)))
                                   (_$tl7702377057_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7702177051_))))
                              (let ((_expr77061_ _$hd7702277054_))
                                (if (let ((__tmp77479
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7702377057_))))
                                      (declare (not safe))
                                      (equal? __tmp77479 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77061_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7701477026_)))))
                            (let () (declare (not safe)) (_$E7701477026_)))))
                    (let () (declare (not safe)) (_$E7701477026_))))
              (let () (declare (not safe)) (_$E7701477026_))))))
    (define __compile-define-values%
      (lambda (_stx76901_)
        (let* ((_$e76903_ _stx76901_)
               (_$E7690576917_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76903_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76903_))
              (let* ((_$tgt7690676920_
                      (let () (declare (not safe)) (__AST-e _$e76903_)))
                     (_$hd7690776923_
                      (let () (declare (not safe)) (##car _$tgt7690676920_)))
                     (_$tl7690876926_
                      (let () (declare (not safe)) (##cdr _$tgt7690676920_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7690876926_))
                    (let* ((_$tgt7690976930_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7690876926_)))
                           (_$hd7691076933_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7690976930_)))
                           (_$tl7691176936_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7690976930_))))
                      (let ((_hd76940_ _$hd7691076933_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7691176936_))
                            (let* ((_$tgt7691276942_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7691176936_)))
                                   (_$hd7691376945_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7691276942_)))
                                   (_$tl7691476948_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7691276942_))))
                              (let ((_expr76952_ _$hd7691376945_))
                                (if (let ((__tmp77512
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7691476948_))))
                                      (declare (not safe))
                                      (equal? __tmp77512 '()))
                                    (let* ((_$e76954_ _hd76940_)
                                           (_$E7695676997_
                                            (lambda ()
                                              (let ((_$E7695776982_
                                                     (lambda ()
                                                       (let* ((_$E7695876969_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e76954_))))
                      (_ids76972_ _hd76940_)
                      (_len76974_ (length _ids76972_))
                      (_tmp76976_
                       (let ((__tmp77480 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77480))))
                 (let ((__tmp77481
                        (let ((__tmp77482
                               (let ((__tmp77499
                                      (let ((__tmp77500
                                             (let ((__tmp77501
                                                    (let ((__tmp77502
                                                           (let ((__tmp77503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr76952_))))
                     (declare (not safe))
                     (cons __tmp77503 '()))))
              (declare (not safe))
              (cons _tmp76976_ __tmp77502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77501))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77500 _stx76901_)))
                                     (__tmp77483
                                      (let ((__tmp77495
                                             (let ((__tmp77496
                                                    (let ((__tmp77497
                                                           (let ((__tmp77498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len76974_ '()))))
                     (declare (not safe))
                     (cons _tmp76976_ __tmp77498))))
              (declare (not safe))
              (cons '__check-values __tmp77497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77496
                                                _stx76901_)))
                                            (__tmp77484
                                             (let ((__tmp77485
                                                    (let ((__tmp77487
                                                           (lambda (_id76979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k76980_)
                     (if (let () (declare (not safe)) (__AST-e _id76979_))
                         (let ((__tmp77488
                                (let ((__tmp77489
                                       (let ((__tmp77494
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id76979_)))
                                             (__tmp77490
                                              (let ((__tmp77491
                                                     (let ((__tmp77492
                                                            (let ((__tmp77493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k76980_ '()))))
                      (declare (not safe))
                      (cons _tmp76976_ __tmp77493))))
               (declare (not safe))
               (cons '##vector-ref __tmp77492))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77491 '()))))
                                         (declare (not safe))
                                         (cons __tmp77494 __tmp77490))))
                                  (declare (not safe))
                                  (cons 'define __tmp77489))))
                           (declare (not safe))
                           (__SRC__% __tmp77488 _stx76901_))
                         '#f)))
                  (__tmp77486 (iota _len76974_)))
              (declare (not safe))
              (filter-map2 __tmp77487 _ids76972_ __tmp77486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77485))))
                                        (declare (not safe))
                                        (cons __tmp77495 __tmp77484))))
                                 (declare (not safe))
                                 (cons __tmp77499 __tmp77483))))
                          (declare (not safe))
                          (cons 'begin __tmp77482))))
                   (declare (not safe))
                   (__SRC__% __tmp77481 _stx76901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e76954_))
                                                    (let* ((_$tgt7695976985_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e76954_)))
                                                           (_$hd7696076988_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7695976985_)))
                                                           (_$tl7696176991_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7695976985_))))
                                                      (let ((_id76995_
                                                             _$hd7696076988_))
                                                        (if (let ((__tmp77509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7696176991_))))
                      (declare (not safe))
                      (equal? __tmp77509 '()))
                    (let ((__tmp77504
                           (let ((__tmp77505
                                  (let ((__tmp77508
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76995_)))
                                        (__tmp77506
                                         (let ((__tmp77507
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr76952_))))
                                           (declare (not safe))
                                           (cons __tmp77507 '()))))
                                    (declare (not safe))
                                    (cons __tmp77508 __tmp77506))))
                             (declare (not safe))
                             (cons 'define __tmp77505))))
                      (declare (not safe))
                      (__SRC__% __tmp77504 _stx76901_))
                    (let () (declare (not safe)) (_$E7695776982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7695776982_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e76954_))
                                          (let* ((_$tgt7696277000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e76954_)))
                                                 (_$hd7696377003_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7696277000_)))
                                                 (_$tl7696477006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7696277000_))))
                                            (if (let ((__tmp77511
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7696377003_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77511 '#f))
                                                (if (let ((__tmp77510
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7696477006_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77510 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr76952_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7695676997_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7695676997_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7695676997_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7690576917_)))))
                            (let () (declare (not safe)) (_$E7690576917_)))))
                    (let () (declare (not safe)) (_$E7690576917_))))
              (let () (declare (not safe)) (_$E7690576917_))))))
    (define __compile-head-id
      (lambda (_e76899_)
        (let ((__tmp77513
               (if (let () (declare (not safe)) (__AST-e _e76899_))
                   _e76899_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77513))))
    (define __compile-lambda-head
      (lambda (_hd76856_)
        (let _recur76858_ ((_rest76860_ _hd76856_))
          (let* ((_$e76862_ _rest76860_)
                 (_$E7686476882_
                  (lambda ()
                    (let ((_$E7686576879_
                           (lambda ()
                             (let* ((_$E7686676874_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e76862_))))
                                    (_tail76877_ _$e76862_))
                               (declare (not safe))
                               (__compile-head-id _tail76877_)))))
                      (if (let ((__tmp77514
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e76862_))))
                            (declare (not safe))
                            (equal? __tmp77514 '()))
                          '()
                          (let () (declare (not safe)) (_$E7686576879_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76862_))
                (let* ((_$tgt7686776885_
                        (let () (declare (not safe)) (__AST-e _$e76862_)))
                       (_$hd7686876888_
                        (let () (declare (not safe)) (##car _$tgt7686776885_)))
                       (_$tl7686976891_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7686776885_))))
                  (let* ((_hd76895_ _$hd7686876888_)
                         (_rest76897_ _$tl7686976891_))
                    (let ((__tmp77516
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd76895_)))
                          (__tmp77515
                           (let ()
                             (declare (not safe))
                             (_recur76858_ _rest76897_))))
                      (declare (not safe))
                      (cons __tmp77516 __tmp77515))))
                (let () (declare (not safe)) (_$E7686476882_)))))))
    (define __compile-lambda%
      (lambda (_stx76803_)
        (let* ((_$e76805_ _stx76803_)
               (_$E7680776819_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76805_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76805_))
              (let* ((_$tgt7680876822_
                      (let () (declare (not safe)) (__AST-e _$e76805_)))
                     (_$hd7680976825_
                      (let () (declare (not safe)) (##car _$tgt7680876822_)))
                     (_$tl7681076828_
                      (let () (declare (not safe)) (##cdr _$tgt7680876822_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7681076828_))
                    (let* ((_$tgt7681176832_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7681076828_)))
                           (_$hd7681276835_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7681176832_)))
                           (_$tl7681376838_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7681176832_))))
                      (let ((_hd76842_ _$hd7681276835_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7681376838_))
                            (let* ((_$tgt7681476844_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7681376838_)))
                                   (_$hd7681576847_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7681476844_)))
                                   (_$tl7681676850_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7681476844_))))
                              (let ((_body76854_ _$hd7681576847_))
                                (if (let ((__tmp77522
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7681676850_))))
                                      (declare (not safe))
                                      (equal? __tmp77522 '()))
                                    (let ((__tmp77517
                                           (let ((__tmp77518
                                                  (let ((__tmp77521
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd76842_)))
                                                        (__tmp77519
                                                         (let ((__tmp77520
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body76854_))))
                   (declare (not safe))
                   (cons __tmp77520 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77521
                                                          __tmp77519))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77518))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77517 _stx76803_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7680776819_)))))
                            (let () (declare (not safe)) (_$E7680776819_)))))
                    (let () (declare (not safe)) (_$E7680776819_))))
              (let () (declare (not safe)) (_$E7680776819_))))))
    (define __compile-case-lambda%
      (lambda (_stx76595_)
        (letrec ((_variadic?76597_
                  (lambda (_hd76768_)
                    (let* ((_$e76770_ _hd76768_)
                           (_$E7677276788_
                            (lambda ()
                              (let ((_$E7677376785_
                                     (lambda ()
                                       (let ((_$E7677476782_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e76770_)))))
                                         '#t))))
                                (if (let ((__tmp77523
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e76770_))))
                                      (declare (not safe))
                                      (equal? __tmp77523 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7677376785_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76770_))
                          (let* ((_$tgt7677576791_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76770_)))
                                 (_$hd7677676794_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7677576791_)))
                                 (_$tl7677776797_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7677576791_))))
                            (let ((_rest76801_ _$tl7677776797_))
                              (declare (not safe))
                              (_variadic?76597_ _rest76801_)))
                          (let () (declare (not safe)) (_$E7677276788_))))))
                 (_arity76598_
                  (lambda (_hd76733_)
                    (let _lp76735_ ((_rest76737_ _hd76733_) (_k76738_ '0))
                      (let* ((_$e76740_ _rest76737_)
                             (_$E7674276753_
                              (lambda ()
                                (let ((_$E7674376750_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e76740_)))))
                                  _k76738_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e76740_))
                            (let* ((_$tgt7674476756_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e76740_)))
                                   (_$hd7674576759_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7674476756_)))
                                   (_$tl7674676762_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7674476756_))))
                              (let* ((_rest76766_ _$tl7674676762_)
                                     (__tmp77524
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k76738_ '1))))
                                (declare (not safe))
                                (_lp76735_ _rest76766_ __tmp77524)))
                            (let () (declare (not safe)) (_$E7674276753_)))))))
                 (_generate76599_
                  (lambda (_rest76660_ _args76661_ _len76662_)
                    (let* ((_$e76664_ _rest76660_)
                           (_$E7666676677_
                            (lambda ()
                              (let* ((_$E7666776674_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e76664_))))
                                     (__tmp77525
                                      (let ((__tmp77526
                                             (let ((__tmp77527
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args76661_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77527))))
                                        (declare (not safe))
                                        (cons 'error __tmp77526))))
                                (declare (not safe))
                                (__SRC__% __tmp77525 _stx76595_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76664_))
                          (let* ((_$tgt7666876680_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76664_)))
                                 (_$hd7666976683_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7666876680_)))
                                 (_$tl7667076686_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7666876680_))))
                            (let* ((_clause76690_ _$hd7666976683_)
                                   (_rest76692_ _$tl7667076686_)
                                   (_$e76694_ _clause76690_)
                                   (_$E7669676705_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e76694_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e76694_))
                                  (let* ((_$tgt7669776708_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e76694_)))
                                         (_$hd7669876711_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7669776708_)))
                                         (_$tl7669976714_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7669776708_))))
                                    (let ((_hd76718_ _$hd7669876711_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7669976714_))
                                          (let* ((_$tgt7670076720_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7669976714_)))
                                                 (_$hd7670176723_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7670076720_)))
                                                 (_$tl7670276726_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7670076720_))))
                                            (if (let ((__tmp77542
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7670276726_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77542 '()))
                                                (let ((_clen76730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76598_
                                                          _hd76718_)))
                                                      (_cmp76731_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76597_
                                                              _hd76718_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77528
                                                         (let ((__tmp77529
                                                                (let ((__tmp77539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77540
                                      (let ((__tmp77541
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen76730_ '()))))
                                        (declare (not safe))
                                        (cons _len76662_ __tmp77541))))
                                 (declare (not safe))
                                 (cons _cmp76731_ __tmp77540)))
                              (__tmp77530
                               (let ((__tmp77533
                                      (let ((__tmp77534
                                             (let ((__tmp77535
                                                    (let ((__tmp77537
                                                           (let ((__tmp77538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause76690_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77538)))
                  (__tmp77536
                   (let () (declare (not safe)) (cons _args76661_ '()))))
              (declare (not safe))
              (cons __tmp77537 __tmp77536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77535))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77534 _stx76595_)))
                                     (__tmp77531
                                      (let ((__tmp77532
                                             (let ()
                                               (declare (not safe))
                                               (_generate76599_
                                                _rest76692_
                                                _args76661_
                                                _len76662_))))
                                        (declare (not safe))
                                        (cons __tmp77532 '()))))
                                 (declare (not safe))
                                 (cons __tmp77533 __tmp77531))))
                          (declare (not safe))
                          (cons __tmp77539 __tmp77530))))
                   (declare (not safe))
                   (cons 'if __tmp77529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77528
                                                     _stx76595_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7669676705_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7669676705_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7669676705_)))))
                          (let () (declare (not safe)) (_$E7666676677_)))))))
          (let* ((_$e76601_ _stx76595_)
                 (_$E7660376635_
                  (lambda ()
                    (let ((_$E7660476617_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76601_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76601_))
                          (let* ((_$tgt7660576620_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76601_)))
                                 (_$hd7660676623_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7660576620_)))
                                 (_$tl7660776626_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7660576620_))))
                            (let ((_clauses76630_ _$tl7660776626_))
                              (let ((_args76632_
                                     (let ((__tmp77543 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77543 _stx76595_)))
                                    (_len76633_
                                     (let ((__tmp77544 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77544 _stx76595_))))
                                (let ((__tmp77545
                                       (let ((__tmp77546
                                              (let ((__tmp77547
                                                     (let ((__tmp77548
                                                            (let ((__tmp77549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77550
                                  (let ((__tmp77553
                                         (let ((__tmp77554
                                                (let ((__tmp77555
                                                       (let ((__tmp77556
                                                              (let ((__tmp77557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77558
                                    (let ()
                                      (declare (not safe))
                                      (cons _args76632_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77558))))
                        (declare (not safe))
                        (__SRC__% __tmp77557 _stx76595_))))
                 (declare (not safe))
                 (cons __tmp77556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len76633_
                                                        __tmp77555))))
                                           (declare (not safe))
                                           (cons __tmp77554 '())))
                                        (__tmp77551
                                         (let ((__tmp77552
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate76599_
                                                   _clauses76630_
                                                   _args76632_
                                                   _len76633_))))
                                           (declare (not safe))
                                           (cons __tmp77552 '()))))
                                    (declare (not safe))
                                    (cons __tmp77553 __tmp77551))))
                             (declare (not safe))
                             (cons 'let __tmp77550))))
                      (declare (not safe))
                      (__SRC__% __tmp77549 _stx76595_))))
               (declare (not safe))
               (cons __tmp77548 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args76632_
                                                      __tmp77547))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77546))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77545 _stx76595_)))))
                          (let () (declare (not safe)) (_$E7660476617_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76601_))
                (let* ((_$tgt7660876638_
                        (let () (declare (not safe)) (__AST-e _$e76601_)))
                       (_$hd7660976641_
                        (let () (declare (not safe)) (##car _$tgt7660876638_)))
                       (_$tl7661076644_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7660876638_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7661076644_))
                      (let* ((_$tgt7661176648_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7661076644_)))
                             (_$hd7661276651_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7661176648_)))
                             (_$tl7661376654_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7661176648_))))
                        (let ((_clause76658_ _$hd7661276651_))
                          (if (let ((__tmp77560
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7661376654_))))
                                (declare (not safe))
                                (equal? __tmp77560 '()))
                              (let ((__tmp77559
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause76658_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77559))
                              (let () (declare (not safe)) (_$E7660376635_)))))
                      (let () (declare (not safe)) (_$E7660376635_))))
                (let () (declare (not safe)) (_$E7660376635_)))))))
    (define __compile-let-form
      (lambda (_stx76364_ _compile-simple76365_ _compile-values76366_)
        (letrec ((_simple-bind?76368_
                  (lambda (_hd76553_)
                    (let* ((_hd7655476564_ _hd76553_)
                           (_else7655776572_ (lambda () '#f)))
                      (let ((_K7656076585_ (lambda (_id76583_) '#t))
                            (_K7655976577_ (lambda () '#t)))
                        (let ((_try-match7655676580_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7655476564_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7655976577_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7655776572_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7655476564_))
                              (let ((_tl7656276590_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7655476564_)))
                                    (_hd7656176588_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7655476564_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7656276590_))
                                    (let ((_id76593_ _hd7656176588_))
                                      (declare (not safe))
                                      (_K7656076585_ _id76593_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7655676580_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7655676580_))))))))
                 (_car-e76369_
                  (lambda (_hd76551_)
                    (if (let () (declare (not safe)) (pair? _hd76551_))
                        (car _hd76551_)
                        _hd76551_))))
          (let* ((_$e76371_ _stx76364_)
                 (_$E7637376516_
                  (lambda ()
                    (let ((_$E7637476396_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76371_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76371_))
                          (let* ((_$tgt7637576399_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76371_)))
                                 (_$hd7637676402_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7637576399_)))
                                 (_$tl7637776405_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7637576399_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7637776405_))
                                (let* ((_$tgt7637876409_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7637776405_)))
                                       (_$hd7637976412_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7637876409_)))
                                       (_$tl7638076415_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7637876409_))))
                                  (let ((_hd76419_ _$hd7637976412_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7638076415_))
                                        (let* ((_$tgt7638176421_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7638076415_)))
                                               (_$hd7638276424_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7638176421_)))
                                               (_$tl7638376427_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7638176421_))))
                                          (let ((_body76431_ _$hd7638276424_))
                                            (if (let ((__tmp77563
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7638376427_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77563 '()))
                                                (let* ((_hd-ids76471_
                                                        (map (lambda (_bind76433_)
                                                               (let* ((_$e76435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76433_)
                              (_$E7643776446_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76435_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76435_))
                             (let* ((_$tgt7643876449_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76435_)))
                                    (_$hd7643976452_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7643876449_)))
                                    (_$tl7644076455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7643876449_))))
                               (let ((_ids76459_ _$hd7643976452_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7644076455_))
                                     (let* ((_$tgt7644176461_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7644076455_)))
                                            (_$hd7644276464_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7644176461_)))
                                            (_$tl7644376467_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7644176461_))))
                                       (if (let ((__tmp77561
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7644376467_))))
                                             (declare (not safe))
                                             (equal? __tmp77561 '()))
                                           _ids76459_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7643776446_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7643776446_)))))
                             (let () (declare (not safe)) (_$E7643776446_)))))
                     _hd76419_))
               (_exprs76511_
                (map (lambda (_bind76473_)
                       (let* ((_$e76475_ _bind76473_)
                              (_$E7647776486_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76475_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76475_))
                             (let* ((_$tgt7647876489_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76475_)))
                                    (_$hd7647976492_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7647876489_)))
                                    (_$tl7648076495_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7647876489_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7648076495_))
                                   (let* ((_$tgt7648176499_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7648076495_)))
                                          (_$hd7648276502_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7648176499_)))
                                          (_$tl7648376505_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7648176499_))))
                                     (let ((_expr76509_ _$hd7648276502_))
                                       (if (let ((__tmp77562
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7648376505_))))
                                             (declare (not safe))
                                             (equal? __tmp77562 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76509_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7647776486_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7647776486_))))
                             (let () (declare (not safe)) (_$E7647776486_)))))
                     _hd76419_))
               (_body76513_
                (let () (declare (not safe)) (__compile _body76431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76471_))
              (_compile-simple76365_
               (map _car-e76369_ _hd-ids76471_)
               _exprs76511_
               _body76513_)
              (_compile-values76366_ _hd-ids76471_ _exprs76511_ _body76513_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7637476396_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7637476396_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7637476396_))))
                          (let () (declare (not safe)) (_$E7637476396_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76371_))
                (let* ((_$tgt7638476519_
                        (let () (declare (not safe)) (__AST-e _$e76371_)))
                       (_$hd7638576522_
                        (let () (declare (not safe)) (##car _$tgt7638476519_)))
                       (_$tl7638676525_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7638476519_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7638676525_))
                      (let* ((_$tgt7638776529_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7638676525_)))
                             (_$hd7638876532_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7638776529_)))
                             (_$tl7638976535_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7638776529_))))
                        (if (let ((__tmp77565
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7638876532_))))
                              (declare (not safe))
                              (equal? __tmp77565 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7638976535_))
                                (let* ((_$tgt7639076539_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7638976535_)))
                                       (_$hd7639176542_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7639076539_)))
                                       (_$tl7639276545_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7639076539_))))
                                  (let ((_body76549_ _$hd7639176542_))
                                    (if (let ((__tmp77564
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7639276545_))))
                                          (declare (not safe))
                                          (equal? __tmp77564 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76549_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7637376516_)))))
                                (let () (declare (not safe)) (_$E7637376516_)))
                            (let () (declare (not safe)) (_$E7637376516_))))
                      (let () (declare (not safe)) (_$E7637376516_))))
                (let () (declare (not safe)) (_$E7637376516_)))))))
    (define __compile-let-values%
      (lambda (_stx76179_)
        (letrec ((_compile-simple76181_
                  (lambda (_hd-ids76360_ _exprs76361_ _body76362_)
                    (let ((__tmp77566
                           (let ((__tmp77567
                                  (let ((__tmp77569
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76360_)
                                              _exprs76361_))
                                        (__tmp77568
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76362_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77569 __tmp77568))))
                             (declare (not safe))
                             (cons 'let __tmp77567))))
                      (declare (not safe))
                      (__SRC__% __tmp77566 _stx76179_))))
                 (_compile-values76182_
                  (lambda (_hd-ids76278_ _exprs76279_ _body76280_)
                    (let _lp76282_ ((_rest76284_ _hd-ids76278_)
                                    (_exprs76285_ _exprs76279_)
                                    (_bind76286_ '())
                                    (_post76287_ '()))
                      (let* ((_rest7628876302_ _rest76284_)
                             (_else7629176310_
                              (lambda ()
                                (let ((__tmp77570
                                       (let ((__tmp77571
                                              (let ((__tmp77574
                                                     (reverse _bind76286_))
                                                    (__tmp77572
                                                     (let ((__tmp77573
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76183_
                                                               _post76287_
                                                               _body76280_))))
                                                       (declare (not safe))
                                                       (cons __tmp77573 '()))))
                                                (declare (not safe))
                                                (cons __tmp77574 __tmp77572))))
                                         (declare (not safe))
                                         (cons 'let __tmp77571))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77570 _stx76179_)))))
                        (let ((_K7629676343_
                               (lambda (_rest76340_ _id76341_)
                                 (let ((__tmp77580 (cdr _exprs76285_))
                                       (__tmp77575
                                        (let ((__tmp77576
                                               (let ((__tmp77579
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76341_)))
                                                     (__tmp77577
                                                      (let ((__tmp77578
                                                             (car _exprs76285_)))
                                                        (declare (not safe))
                                                        (cons __tmp77578
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77579
                                                       __tmp77577))))
                                          (declare (not safe))
                                          (cons __tmp77576 _bind76286_))))
                                   (declare (not safe))
                                   (_lp76282_
                                    _rest76340_
                                    __tmp77580
                                    __tmp77575
                                    _post76287_))))
                              (_K7629376325_
                               (lambda (_rest76314_ _hd76315_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76315_))
                                     (let ((__tmp77601 (cdr _exprs76285_))
                                           (__tmp77594
                                            (let ((__tmp77595
                                                   (let ((__tmp77600
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76315_)))
                                                         (__tmp77596
                                                          (let ((__tmp77597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77598
                                (let ((__tmp77599 (car _exprs76285_)))
                                  (declare (not safe))
                                  (cons __tmp77599 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77598))))
                    (declare (not safe))
                    (cons __tmp77597 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77600
                                                           __tmp77596))))
                                              (declare (not safe))
                                              (cons __tmp77595 _bind76286_))))
                                       (declare (not safe))
                                       (_lp76282_
                                        _rest76314_
                                        __tmp77601
                                        __tmp77594
                                        _post76287_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76315_))
                                         (let* ((_len76317_ (length _hd76315_))
                                                (_tmp76319_
                                                 (let ((__tmp77581 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77581))))
                                           (let ((__tmp77593
                                                  (cdr _exprs76285_))
                                                 (__tmp77589
                                                  (let ((__tmp77590
                                                         (let ((__tmp77591
                                                                (let ((__tmp77592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76285_)))
                          (declare (not safe))
                          (cons __tmp77592 '()))))
                   (declare (not safe))
                   (cons _tmp76319_ __tmp77591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77590
                                                          _bind76286_)))
                                                 (__tmp77582
                                                  (let ((__tmp77583
                                                         (let ((__tmp77584
                                                                (let ((__tmp77585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77587
                                      (lambda (_id76322_ _k76323_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76322_))
                                            (let ((__tmp77588
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76322_))))
                                              (declare (not safe))
                                              (cons __tmp77588 _k76323_))
                                            '#f)))
                                     (__tmp77586 (iota _len76317_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77587
                                  _hd76315_
                                  __tmp77586))))
                          (declare (not safe))
                          (cons _len76317_ __tmp77585))))
                   (declare (not safe))
                   (cons _tmp76319_ __tmp77584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77583
                                                          _post76287_))))
                                             (declare (not safe))
                                             (_lp76282_
                                              _rest76314_
                                              __tmp77593
                                              __tmp77589
                                              __tmp77582)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76179_
                                            _hd76315_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7628876302_))
                              (let ((_tl7629876348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7628876302_)))
                                    (_hd7629776346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7628876302_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7629776346_))
                                    (let ((_tl7630076353_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7629776346_)))
                                          (_hd7629976351_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7629776346_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7630076353_))
                                          (let ((_id76356_ _hd7629976351_)
                                                (_rest76358_ _tl7629876348_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629676343_
                                               _rest76358_
                                               _id76356_)))
                                          (let ((_hd76333_ _hd7629776346_)
                                                (_rest76335_ _tl7629876348_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7629376325_
                                               _rest76335_
                                               _hd76333_)))))
                                    (let ((_hd76333_ _hd7629776346_)
                                          (_rest76335_ _tl7629876348_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7629376325_
                                         _rest76335_
                                         _hd76333_)))))
                              (let ()
                                (declare (not safe))
                                (_else7629176310_))))))))
                 (_compile-post76183_
                  (lambda (_post76185_ _body76186_)
                    (let _lp76188_ ((_rest76190_ _post76185_)
                                    (_check76191_ '())
                                    (_bind76192_ '()))
                      (let* ((_rest7619376205_ _rest76190_)
                             (_else7619576213_
                              (lambda ()
                                (let ((__tmp77602
                                       (let ((__tmp77603
                                              (let ((__tmp77604
                                                     (let ((__tmp77605
                                                            (let ((__tmp77606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77607
                                  (let ((__tmp77608
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76186_ '()))))
                                    (declare (not safe))
                                    (cons _bind76192_ __tmp77608))))
                             (declare (not safe))
                             (cons 'let __tmp77607))))
                      (declare (not safe))
                      (__SRC__% __tmp77606 _stx76179_))))
               (declare (not safe))
               (cons __tmp77605 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77604
                                                        _check76191_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77603))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77602 _stx76179_))))
                             (_K7619776252_
                              (lambda (_rest76216_
                                       _init76217_
                                       _len76218_
                                       _tmp76219_)
                                (let ((__tmp77616
                                       (let ((__tmp77617
                                              (let ((__tmp77618
                                                     (let ((__tmp77619
                                                            (let ((__tmp77620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76218_ '()))))
                      (declare (not safe))
                      (cons _tmp76219_ __tmp77620))))
               (declare (not safe))
               (cons '__check-values __tmp77619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77618
                                                 _stx76179_))))
                                         (declare (not safe))
                                         (cons __tmp77617 _check76191_)))
                                      (__tmp77609
                                       (let ((__tmp77610
                                              (lambda (_hd76221_ _r76222_)
                                                (let* ((_hd7622376230_
                                                        _hd76221_)
                                                       (_E7622576234_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7622376230_))))
               (_K7622676240_
                (lambda (_k76237_ _id76238_)
                  (let ((__tmp77611
                         (let ((__tmp77612
                                (let ((__tmp77613
                                       (let ((__tmp77614
                                              (let ((__tmp77615
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76237_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76219_ __tmp77615))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp77614))))
                                  (declare (not safe))
                                  (cons __tmp77613 '()))))
                           (declare (not safe))
                           (cons _id76238_ __tmp77612))))
                    (declare (not safe))
                    (cons __tmp77611 _r76222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7622376230_))
                                                      (let ((_hd7622776243_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7622376230_)))
                    (_tl7622876245_
                     (let () (declare (not safe)) (##cdr _hd7622376230_))))
                (let* ((_id76248_ _hd7622776243_) (_k76250_ _tl7622876245_))
                  (declare (not safe))
                  (_K7622676240_ _k76250_ _id76248_)))
              (let () (declare (not safe)) (_E7622576234_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77610
                                                 _bind76192_
                                                 _init76217_))))
                                  (declare (not safe))
                                  (_lp76188_
                                   _rest76216_
                                   __tmp77616
                                   __tmp77609)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7619376205_))
                            (let ((_hd7619876255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7619376205_)))
                                  (_tl7619976257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7619376205_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7619876255_))
                                  (let ((_hd7620076260_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7619876255_)))
                                        (_tl7620176262_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7619876255_))))
                                    (let ((_tmp76265_ _hd7620076260_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7620176262_))
                                          (let ((_hd7620276267_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7620176262_)))
                                                (_tl7620376269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7620176262_))))
                                            (let* ((_len76272_ _hd7620276267_)
                                                   (_init76274_ _tl7620376269_)
                                                   (_rest76276_
                                                    _tl7619976257_))
                                              (declare (not safe))
                                              (_K7619776252_
                                               _rest76276_
                                               _init76274_
                                               _len76272_
                                               _tmp76265_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7619576213_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7619576213_))))
                            (let ()
                              (declare (not safe))
                              (_else7619576213_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76179_
             _compile-simple76181_
             _compile-values76182_)))))
    (define __compile-letrec-values%
      (lambda (_stx75979_)
        (letrec ((_compile-simple75981_
                  (lambda (_hd-ids76175_ _exprs76176_ _body76177_)
                    (let ((__tmp77621
                           (let ((__tmp77622
                                  (let ((__tmp77624
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76175_)
                                              _exprs76176_))
                                        (__tmp77623
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76177_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77624 __tmp77623))))
                             (declare (not safe))
                             (cons 'letrec __tmp77622))))
                      (declare (not safe))
                      (__SRC__% __tmp77621 _stx75979_))))
                 (_compile-values75982_
                  (lambda (_hd-ids76089_ _exprs76090_ _body76091_)
                    (let _lp76093_ ((_rest76095_ _hd-ids76089_)
                                    (_exprs76096_ _exprs76090_)
                                    (_pre76097_ '())
                                    (_bind76098_ '())
                                    (_post76099_ '()))
                      (let* ((_rest7610076114_ _rest76095_)
                             (_else7610376122_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner75983_
                                   _pre76097_
                                   _bind76098_
                                   _post76099_
                                   _body76091_)))))
                        (let ((_K7610876158_
                               (lambda (_rest76155_ _id76156_)
                                 (let ((__tmp77630 (cdr _exprs76096_))
                                       (__tmp77625
                                        (let ((__tmp77626
                                               (let ((__tmp77629
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76156_)))
                                                     (__tmp77627
                                                      (let ((__tmp77628
                                                             (car _exprs76096_)))
                                                        (declare (not safe))
                                                        (cons __tmp77628
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77629
                                                       __tmp77627))))
                                          (declare (not safe))
                                          (cons __tmp77626 _bind76098_))))
                                   (declare (not safe))
                                   (_lp76093_
                                    _rest76155_
                                    __tmp77630
                                    _pre76097_
                                    __tmp77625
                                    _post76099_))))
                              (_K7610576140_
                               (lambda (_rest76126_ _hd76127_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76127_))
                                     (let ((__tmp77658 (cdr _exprs76096_))
                                           (__tmp77651
                                            (let ((__tmp77652
                                                   (let ((__tmp77657
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76127_)))
                                                         (__tmp77653
                                                          (let ((__tmp77654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77655
                                (let ((__tmp77656 (car _exprs76096_)))
                                  (declare (not safe))
                                  (cons __tmp77656 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77655))))
                    (declare (not safe))
                    (cons __tmp77654 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp77657
                                                           __tmp77653))))
                                              (declare (not safe))
                                              (cons __tmp77652 _bind76098_))))
                                       (declare (not safe))
                                       (_lp76093_
                                        _rest76126_
                                        __tmp77658
                                        _pre76097_
                                        __tmp77651
                                        _post76099_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76127_))
                                         (let* ((_len76129_ (length _hd76127_))
                                                (_tmp76131_
                                                 (let ((__tmp77631 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77631))))
                                           (let ((__tmp77650
                                                  (cdr _exprs76096_))
                                                 (__tmp77643
                                                  (let ((__tmp77644
                                                         (lambda (_id76134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76135_)
                   (if (let () (declare (not safe)) (__AST-e _id76134_))
                       (let ((__tmp77645
                              (let ((__tmp77649
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76134_)))
                                    (__tmp77646
                                     (let ((__tmp77647
                                            (let ((__tmp77648
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp77648))))
                                       (declare (not safe))
                                       (cons __tmp77647 '()))))
                                (declare (not safe))
                                (cons __tmp77649 __tmp77646))))
                         (declare (not safe))
                         (cons __tmp77645 _r76135_))
                       _r76135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp77644
                                                            _pre76097_
                                                            _hd76127_)))
                                                 (__tmp77639
                                                  (let ((__tmp77640
                                                         (let ((__tmp77641
                                                                (let ((__tmp77642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76096_)))
                          (declare (not safe))
                          (cons __tmp77642 '()))))
                   (declare (not safe))
                   (cons _tmp76131_ __tmp77641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77640
                                                          _bind76098_)))
                                                 (__tmp77632
                                                  (let ((__tmp77633
                                                         (let ((__tmp77634
                                                                (let ((__tmp77635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77637
                                      (lambda (_id76137_ _k76138_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76137_))
                                            (let ((__tmp77638
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76137_))))
                                              (declare (not safe))
                                              (cons __tmp77638 _k76138_))
                                            '#f)))
                                     (__tmp77636 (iota _len76129_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77637
                                  _hd76127_
                                  __tmp77636))))
                          (declare (not safe))
                          (cons _len76129_ __tmp77635))))
                   (declare (not safe))
                   (cons _tmp76131_ __tmp77634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77633
                                                          _post76099_))))
                                             (declare (not safe))
                                             (_lp76093_
                                              _rest76126_
                                              __tmp77650
                                              __tmp77643
                                              __tmp77639
                                              __tmp77632)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx75979_
                                            _hd76127_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7610076114_))
                              (let ((_tl7611076163_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7610076114_)))
                                    (_hd7610976161_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7610076114_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7610976161_))
                                    (let ((_tl7611276168_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7610976161_)))
                                          (_hd7611176166_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7610976161_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7611276168_))
                                          (let ((_id76171_ _hd7611176166_)
                                                (_rest76173_ _tl7611076163_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7610876158_
                                               _rest76173_
                                               _id76171_)))
                                          (let ((_hd76148_ _hd7610976161_)
                                                (_rest76150_ _tl7611076163_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7610576140_
                                               _rest76150_
                                               _hd76148_)))))
                                    (let ((_hd76148_ _hd7610976161_)
                                          (_rest76150_ _tl7611076163_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7610576140_
                                         _rest76150_
                                         _hd76148_)))))
                              (let ()
                                (declare (not safe))
                                (_else7610376122_))))))))
                 (_compile-inner75983_
                  (lambda (_pre76084_ _bind76085_ _post76086_ _body76087_)
                    (if (let () (declare (not safe)) (null? _pre76084_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind75984_
                           _bind76085_
                           _post76086_
                           _body76087_))
                        (let ((__tmp77659
                               (let ((__tmp77660
                                      (let ((__tmp77663 (reverse _pre76084_))
                                            (__tmp77661
                                             (let ((__tmp77662
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind75984_
                                                       _bind76085_
                                                       _post76086_
                                                       _body76087_))))
                                               (declare (not safe))
                                               (cons __tmp77662 '()))))
                                        (declare (not safe))
                                        (cons __tmp77663 __tmp77661))))
                                 (declare (not safe))
                                 (cons 'let __tmp77660))))
                          (declare (not safe))
                          (__SRC__% __tmp77659 _stx75979_)))))
                 (_compile-bind75984_
                  (lambda (_bind76080_ _post76081_ _body76082_)
                    (let ((__tmp77664
                           (let ((__tmp77665
                                  (let ((__tmp77668 (reverse _bind76080_))
                                        (__tmp77666
                                         (let ((__tmp77667
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75985_
                                                   _post76081_
                                                   _body76082_))))
                                           (declare (not safe))
                                           (cons __tmp77667 '()))))
                                    (declare (not safe))
                                    (cons __tmp77668 __tmp77666))))
                             (declare (not safe))
                             (cons 'letrec __tmp77665))))
                      (declare (not safe))
                      (__SRC__% __tmp77664 _stx75979_))))
                 (_compile-post75985_
                  (lambda (_post75987_ _body75988_)
                    (let _lp75990_ ((_rest75992_ _post75987_)
                                    (_check75993_ '())
                                    (_bind75994_ '()))
                      (let* ((_rest7599576007_ _rest75992_)
                             (_else7599776015_
                              (lambda ()
                                (let ((__tmp77669
                                       (let ((__tmp77670
                                              (let ((__tmp77671
                                                     (let ((__tmp77672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body75988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp77672 _bind75994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp77671
                                                        _check75993_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp77670))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77669 _stx75979_))))
                             (_K7599976054_
                              (lambda (_rest76018_
                                       _init76019_
                                       _len76020_
                                       _tmp76021_)
                                (let ((__tmp77681
                                       (let ((__tmp77682
                                              (let ((__tmp77683
                                                     (let ((__tmp77684
                                                            (let ((__tmp77685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76020_ '()))))
                      (declare (not safe))
                      (cons _tmp76021_ __tmp77685))))
               (declare (not safe))
               (cons '__check-values __tmp77684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp77683
                                                 _stx75979_))))
                                         (declare (not safe))
                                         (cons __tmp77682 _check75993_)))
                                      (__tmp77673
                                       (let ((__tmp77674
                                              (lambda (_hd76023_ _r76024_)
                                                (let* ((_hd7602576032_
                                                        _hd76023_)
                                                       (_E7602776036_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7602576032_))))
               (_K7602876042_
                (lambda (_k76039_ _id76040_)
                  (let ((__tmp77675
                         (let ((__tmp77676
                                (let ((__tmp77677
                                       (let ((__tmp77678
                                              (let ((__tmp77679
                                                     (let ((__tmp77680
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76021_ __tmp77680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp77679))))
                                         (declare (not safe))
                                         (cons __tmp77678 '()))))
                                  (declare (not safe))
                                  (cons _id76040_ __tmp77677))))
                           (declare (not safe))
                           (cons 'set! __tmp77676))))
                    (declare (not safe))
                    (cons __tmp77675 _r76024_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7602576032_))
                                                      (let ((_hd7602976045_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7602576032_)))
                    (_tl7603076047_
                     (let () (declare (not safe)) (##cdr _hd7602576032_))))
                (let* ((_id76050_ _hd7602976045_) (_k76052_ _tl7603076047_))
                  (declare (not safe))
                  (_K7602876042_ _k76052_ _id76050_)))
              (let () (declare (not safe)) (_E7602776036_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp77674
                                                 _bind75994_
                                                 _init76019_))))
                                  (declare (not safe))
                                  (_lp75990_
                                   _rest76018_
                                   __tmp77681
                                   __tmp77673)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7599576007_))
                            (let ((_hd7600076057_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7599576007_)))
                                  (_tl7600176059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7599576007_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7600076057_))
                                  (let ((_hd7600276062_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7600076057_)))
                                        (_tl7600376064_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7600076057_))))
                                    (let ((_tmp76067_ _hd7600276062_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7600376064_))
                                          (let ((_hd7600476069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7600376064_)))
                                                (_tl7600576071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7600376064_))))
                                            (let* ((_len76074_ _hd7600476069_)
                                                   (_init76076_ _tl7600576071_)
                                                   (_rest76078_
                                                    _tl7600176059_))
                                              (declare (not safe))
                                              (_K7599976054_
                                               _rest76078_
                                               _init76076_
                                               _len76074_
                                               _tmp76067_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7599776015_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7599776015_))))
                            (let ()
                              (declare (not safe))
                              (_else7599776015_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75979_
             _compile-simple75981_
             _compile-values75982_)))))
    (define __compile-letrec*-values%
      (lambda (_stx75734_)
        (letrec ((_compile-simple75736_
                  (lambda (_hd-ids75975_ _exprs75976_ _body75977_)
                    (let ((__tmp77686
                           (let ((__tmp77687
                                  (let ((__tmp77689
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids75975_)
                                              _exprs75976_))
                                        (__tmp77688
                                         (let ()
                                           (declare (not safe))
                                           (cons _body75977_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77689 __tmp77688))))
                             (declare (not safe))
                             (cons 'letrec* __tmp77687))))
                      (declare (not safe))
                      (__SRC__% __tmp77686 _stx75734_))))
                 (_compile-values75737_
                  (lambda (_hd-ids75886_ _exprs75887_ _body75888_)
                    (let _lp75890_ ((_rest75892_ _hd-ids75886_)
                                    (_exprs75893_ _exprs75887_)
                                    (_bind75894_ '())
                                    (_post75895_ '()))
                      (let* ((_rest7589675910_ _rest75892_)
                             (_else7589975918_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind75738_
                                   _bind75894_
                                   _post75895_
                                   _body75888_)))))
                        (let ((_K7590475958_
                               (lambda (_rest75953_ _hd75954_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75954_))
                                     (let ((_id75956_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75954_))))
                                       (let ((__tmp77704 (cdr _exprs75893_))
                                             (__tmp77699
                                              (let ((__tmp77700
                                                     (let ((__tmp77701
                                                            (let ((__tmp77702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77703
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77703))))
                      (declare (not safe))
                      (cons __tmp77702 '()))))
               (declare (not safe))
               (cons _id75956_ __tmp77701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77700 _bind75894_)))
                                             (__tmp77695
                                              (let ((__tmp77696
                                                     (let ((__tmp77697
                                                            (let ((__tmp77698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs75893_)))
                      (declare (not safe))
                      (cons __tmp77698 '()))))
               (declare (not safe))
               (cons _id75956_ __tmp77697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77696
                                                      _post75895_))))
                                         (declare (not safe))
                                         (_lp75890_
                                          _rest75953_
                                          __tmp77704
                                          __tmp77699
                                          __tmp77695)))
                                     (let ((__tmp77694 (cdr _exprs75893_))
                                           (__tmp77690
                                            (let ((__tmp77691
                                                   (let ((__tmp77692
                                                          (let ((__tmp77693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs75893_)))
                    (declare (not safe))
                    (cons __tmp77693 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp77692))))
                                              (declare (not safe))
                                              (cons __tmp77691 _post75895_))))
                                       (declare (not safe))
                                       (_lp75890_
                                        _rest75953_
                                        __tmp77694
                                        _bind75894_
                                        __tmp77690)))))
                              (_K7590175938_
                               (lambda (_rest75922_ _hd75923_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd75923_))
                                     (let ((_id75925_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd75923_))))
                                       (let ((__tmp77740 (cdr _exprs75893_))
                                             (__tmp77735
                                              (let ((__tmp77736
                                                     (let ((__tmp77737
                                                            (let ((__tmp77738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77739
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp77739))))
                      (declare (not safe))
                      (cons __tmp77738 '()))))
               (declare (not safe))
               (cons _id75925_ __tmp77737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77736 _bind75894_)))
                                             (__tmp77729
                                              (let ((__tmp77730
                                                     (let ((__tmp77731
                                                            (let ((__tmp77732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77733
                                  (let ((__tmp77734 (car _exprs75893_)))
                                    (declare (not safe))
                                    (cons __tmp77734 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp77733))))
                      (declare (not safe))
                      (cons __tmp77732 '()))))
               (declare (not safe))
               (cons _id75925_ __tmp77731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77730
                                                      _post75895_))))
                                         (declare (not safe))
                                         (_lp75890_
                                          _rest75922_
                                          __tmp77740
                                          __tmp77735
                                          __tmp77729)))
                                     (if (let ((__tmp77728
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd75923_))))
                                           (declare (not safe))
                                           (not __tmp77728))
                                         (let ((__tmp77727 (cdr _exprs75893_))
                                               (__tmp77723
                                                (let ((__tmp77724
                                                       (let ((__tmp77725
                                                              (let ((__tmp77726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs75893_)))
                        (declare (not safe))
                        (cons __tmp77726 '()))))
                 (declare (not safe))
                 (cons '#f __tmp77725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp77724
                                                        _post75895_))))
                                           (declare (not safe))
                                           (_lp75890_
                                            _rest75922_
                                            __tmp77727
                                            _bind75894_
                                            __tmp77723))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd75923_))
                                             (let* ((_len75927_
                                                     (length _hd75923_))
                                                    (_tmp75929_
                                                     (let ((__tmp77705
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp77705))))
                                               (let ((__tmp77722
                                                      (cdr _exprs75893_))
                                                     (__tmp77715
                                                      (let ((__tmp77716
                                                             (lambda (_id75932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r75933_)
                       (if (let () (declare (not safe)) (__AST-e _id75932_))
                           (let ((__tmp77717
                                  (let ((__tmp77721
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id75932_)))
                                        (__tmp77718
                                         (let ((__tmp77719
                                                (let ((__tmp77720
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp77720))))
                                           (declare (not safe))
                                           (cons __tmp77719 '()))))
                                    (declare (not safe))
                                    (cons __tmp77721 __tmp77718))))
                             (declare (not safe))
                             (cons __tmp77717 _r75933_))
                           _r75933_))))
                (declare (not safe))
                (foldl1 __tmp77716 _bind75894_ _hd75923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp77706
                                                      (let ((__tmp77707
                                                             (let ((__tmp77708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77714 (car _exprs75893_))
                                  (__tmp77709
                                   (let ((__tmp77710
                                          (let ((__tmp77712
                                                 (lambda (_id75935_ _k75936_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id75935_))
                                                       (let ((__tmp77713
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id75935_))))
                 (declare (not safe))
                 (cons __tmp77713 _k75936_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp77711 (iota _len75927_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp77712
                                             _hd75923_
                                             __tmp77711))))
                                     (declare (not safe))
                                     (cons _len75927_ __tmp77710))))
                              (declare (not safe))
                              (cons __tmp77714 __tmp77709))))
                       (declare (not safe))
                       (cons _tmp75929_ __tmp77708))))
                (declare (not safe))
                (cons __tmp77707 _post75895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp75890_
                                                  _rest75922_
                                                  __tmp77722
                                                  __tmp77715
                                                  __tmp77706)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx75734_
                                                _hd75923_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7589675910_))
                              (let ((_tl7590675963_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7589675910_)))
                                    (_hd7590575961_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7589675910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7590575961_))
                                    (let ((_tl7590875968_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7590575961_)))
                                          (_hd7590775966_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7590575961_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7590875968_))
                                          (let ((_hd75971_ _hd7590775966_)
                                                (_rest75973_ _tl7590675963_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7590475958_
                                               _rest75973_
                                               _hd75971_)))
                                          (let ((_hd75946_ _hd7590575961_)
                                                (_rest75948_ _tl7590675963_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7590175938_
                                               _rest75948_
                                               _hd75946_)))))
                                    (let ((_hd75946_ _hd7590575961_)
                                          (_rest75948_ _tl7590675963_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7590175938_
                                         _rest75948_
                                         _hd75946_)))))
                              (let ()
                                (declare (not safe))
                                (_else7589975918_))))))))
                 (_compile-bind75738_
                  (lambda (_bind75882_ _post75883_ _body75884_)
                    (let ((__tmp77741
                           (let ((__tmp77742
                                  (let ((__tmp77745 (reverse _bind75882_))
                                        (__tmp77743
                                         (let ((__tmp77744
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post75739_
                                                   _post75883_
                                                   _body75884_))))
                                           (declare (not safe))
                                           (cons __tmp77744 '()))))
                                    (declare (not safe))
                                    (cons __tmp77745 __tmp77743))))
                             (declare (not safe))
                             (cons 'let __tmp77742))))
                      (declare (not safe))
                      (__SRC__% __tmp77741 _stx75734_))))
                 (_compile-post75739_
                  (lambda (_post75741_ _body75742_)
                    (let ((__tmp77746
                           (let ((__tmp77747
                                  (let ((__tmp77748
                                         (let ((__tmp77750
                                                (lambda (_hd75744_ _r75745_)
                                                  (let* ((_hd7574675769_
                                                          _hd75744_)
                                                         (_E7575075773_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7574675769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7576375867_
                                                           (lambda (_expr75865_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr75865_ _r75745_))))
                  (_K7575875845_
                   (lambda (_expr75842_ _id75843_)
                     (let ((__tmp77751
                            (let ((__tmp77752
                                   (let ((__tmp77753
                                          (let ((__tmp77754
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr75842_ '()))))
                                            (declare (not safe))
                                            (cons _id75843_ __tmp77754))))
                                     (declare (not safe))
                                     (cons 'set! __tmp77753))))
                              (declare (not safe))
                              (__SRC__% __tmp77752 _stx75734_))))
                       (declare (not safe))
                       (cons __tmp77751 _r75745_))))
                  (_K7575175812_
                   (lambda (_init75777_ _len75778_ _expr75779_ _tmp75780_)
                     (let ((__tmp77755
                            (let ((__tmp77756
                                   (let ((__tmp77757
                                          (let ((__tmp77771
                                                 (let ((__tmp77772
                                                        (let ((__tmp77773
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr75779_ '()))))
                  (declare (not safe))
                  (cons _tmp75780_ __tmp77773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77772 '())))
                                                (__tmp77758
                                                 (let ((__tmp77767
                                                        (let ((__tmp77768
                                                               (let ((__tmp77769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp77770
                                     (let ()
                                       (declare (not safe))
                                       (cons _len75778_ '()))))
                                (declare (not safe))
                                (cons _tmp75780_ __tmp77770))))
                         (declare (not safe))
                         (cons '__check-values __tmp77769))))
                  (declare (not safe))
                  (__SRC__% __tmp77768 _stx75734_)))
               (__tmp77759
                (let ((__tmp77760
                       (map (lambda (_hd75782_)
                              (let* ((_hd7578375790_ _hd75782_)
                                     (_E7578575794_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7578375790_))))
                                     (_K7578675800_
                                      (lambda (_k75797_ _id75798_)
                                        (let ((__tmp77761
                                               (let ((__tmp77762
                                                      (let ((__tmp77763
                                                             (let ((__tmp77764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp77765
                                   (let ((__tmp77766
                                          (let ()
                                            (declare (not safe))
                                            (cons _k75797_ '()))))
                                     (declare (not safe))
                                     (cons _tmp75780_ __tmp77766))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp77765))))
                       (declare (not safe))
                       (cons __tmp77764 '()))))
                (declare (not safe))
                (cons _id75798_ __tmp77763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp77762))))
                                          (declare (not safe))
                                          (__SRC__% __tmp77761 _stx75734_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7578375790_))
                                    (let ((_hd7578775803_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7578375790_)))
                                          (_tl7578875805_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7578375790_))))
                                      (let* ((_id75808_ _hd7578775803_)
                                             (_k75810_ _tl7578875805_))
                                        (declare (not safe))
                                        (_K7578675800_ _k75810_ _id75808_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7578575794_)))))
                            _init75777_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp77760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp77767
                                                         __tmp77759))))
                                            (declare (not safe))
                                            (cons __tmp77771 __tmp77758))))
                                     (declare (not safe))
                                     (cons 'let __tmp77757))))
                              (declare (not safe))
                              (__SRC__% __tmp77756 _stx75734_))))
                       (declare (not safe))
                       (cons __tmp77755 _r75745_)))))
              (if (let () (declare (not safe)) (##pair? _hd7574675769_))
                  (let ((_tl7576575872_
                         (let () (declare (not safe)) (##cdr _hd7574675769_)))
                        (_hd7576475870_
                         (let () (declare (not safe)) (##car _hd7574675769_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7576475870_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7576575872_))
                            (let ((_tl7576775877_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7576575872_)))
                                  (_hd7576675875_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7576575872_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7576775877_))
                                  (let ((_expr75880_ _hd7576675875_))
                                    (declare (not safe))
                                    (_K7576375867_ _expr75880_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7576775877_))
                                      (let ((_tl7575775831_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7576775877_)))
                                            (_hd7575675829_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7576775877_))))
                                        (let ((_tmp75820_ _hd7576475870_)
                                              (_expr75827_ _hd7576675875_)
                                              (_len75834_ _hd7575675829_)
                                              (_init75836_ _tl7575775831_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7575175812_
                                             _init75836_
                                             _len75834_
                                             _expr75827_
                                             _tmp75820_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7575075773_)))))
                            (let () (declare (not safe)) (_E7575075773_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7576575872_))
                            (let ((_tl7576275857_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7576575872_)))
                                  (_hd7576175855_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7576575872_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7576275857_))
                                  (let ((_id75853_ _hd7576475870_)
                                        (_expr75860_ _hd7576175855_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7575875845_ _expr75860_ _id75853_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7576275857_))
                                      (let ((_tl7575775831_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7576275857_)))
                                            (_hd7575675829_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7576275857_))))
                                        (let ((_tmp75820_ _hd7576475870_)
                                              (_expr75827_ _hd7576175855_)
                                              (_len75834_ _hd7575675829_)
                                              (_init75836_ _tl7575775831_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7575175812_
                                             _init75836_
                                             _len75834_
                                             _expr75827_
                                             _tmp75820_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7575075773_)))))
                            (let () (declare (not safe)) (_E7575075773_)))))
                  (let () (declare (not safe)) (_E7575075773_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp77749 (list _body75742_)))
                                           (declare (not safe))
                                           (foldl1 __tmp77750
                                                   __tmp77749
                                                   _post75741_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp77748))))
                             (declare (not safe))
                             (cons 'begin __tmp77747))))
                      (declare (not safe))
                      (__SRC__% __tmp77746 _stx75734_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx75734_
             _compile-simple75736_
             _compile-values75737_)))))
    (define __compile-call%
      (lambda (_stx75694_)
        (let* ((_$e75696_ _stx75694_)
               (_$E7569875707_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75696_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75696_))
              (let* ((_$tgt7569975710_
                      (let () (declare (not safe)) (__AST-e _$e75696_)))
                     (_$hd7570075713_
                      (let () (declare (not safe)) (##car _$tgt7569975710_)))
                     (_$tl7570175716_
                      (let () (declare (not safe)) (##cdr _$tgt7569975710_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7570175716_))
                    (let* ((_$tgt7570275720_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7570175716_)))
                           (_$hd7570375723_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7570275720_)))
                           (_$tl7570475726_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7570275720_))))
                      (let* ((_rator75730_ _$hd7570375723_)
                             (_rands75732_ _$tl7570475726_)
                             (__tmp77774
                              (let ((__tmp77776
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator75730_)))
                                    (__tmp77775 (map __compile _rands75732_)))
                                (declare (not safe))
                                (cons __tmp77776 __tmp77775))))
                        (declare (not safe))
                        (__SRC__% __tmp77774 _stx75694_)))
                    (let () (declare (not safe)) (_$E7569875707_))))
              (let () (declare (not safe)) (_$E7569875707_))))))
    (define __compile-ref%
      (lambda (_stx75656_)
        (let* ((_$e75658_ _stx75656_)
               (_$E7566075669_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75658_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75658_))
              (let* ((_$tgt7566175672_
                      (let () (declare (not safe)) (__AST-e _$e75658_)))
                     (_$hd7566275675_
                      (let () (declare (not safe)) (##car _$tgt7566175672_)))
                     (_$tl7566375678_
                      (let () (declare (not safe)) (##cdr _$tgt7566175672_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7566375678_))
                    (let* ((_$tgt7566475682_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7566375678_)))
                           (_$hd7566575685_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7566475682_)))
                           (_$tl7566675688_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7566475682_))))
                      (let ((_id75692_ _$hd7566575685_))
                        (if (let ((__tmp77777
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7566675688_))))
                              (declare (not safe))
                              (equal? __tmp77777 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id75692_ _stx75656_))
                            (let () (declare (not safe)) (_$E7566075669_)))))
                    (let () (declare (not safe)) (_$E7566075669_))))
              (let () (declare (not safe)) (_$E7566075669_))))))
    (define __compile-setq%
      (lambda (_stx75603_)
        (let* ((_$e75605_ _stx75603_)
               (_$E7560775619_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75605_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75605_))
              (let* ((_$tgt7560875622_
                      (let () (declare (not safe)) (__AST-e _$e75605_)))
                     (_$hd7560975625_
                      (let () (declare (not safe)) (##car _$tgt7560875622_)))
                     (_$tl7561075628_
                      (let () (declare (not safe)) (##cdr _$tgt7560875622_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7561075628_))
                    (let* ((_$tgt7561175632_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7561075628_)))
                           (_$hd7561275635_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7561175632_)))
                           (_$tl7561375638_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7561175632_))))
                      (let ((_id75642_ _$hd7561275635_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7561375638_))
                            (let* ((_$tgt7561475644_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7561375638_)))
                                   (_$hd7561575647_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7561475644_)))
                                   (_$tl7561675650_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7561475644_))))
                              (let ((_expr75654_ _$hd7561575647_))
                                (if (let ((__tmp77783
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7561675650_))))
                                      (declare (not safe))
                                      (equal? __tmp77783 '()))
                                    (let ((__tmp77778
                                           (let ((__tmp77779
                                                  (let ((__tmp77782
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id75642_
                                                            _stx75603_)))
                                                        (__tmp77780
                                                         (let ((__tmp77781
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr75654_))))
                   (declare (not safe))
                   (cons __tmp77781 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77782
                                                          __tmp77780))))
                                             (declare (not safe))
                                             (cons 'set! __tmp77779))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77778 _stx75603_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7560775619_)))))
                            (let () (declare (not safe)) (_$E7560775619_)))))
                    (let () (declare (not safe)) (_$E7560775619_))))
              (let () (declare (not safe)) (_$E7560775619_))))))
    (define __compile-if%
      (lambda (_stx75535_)
        (let* ((_$e75537_ _stx75535_)
               (_$E7553975554_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75537_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75537_))
              (let* ((_$tgt7554075557_
                      (let () (declare (not safe)) (__AST-e _$e75537_)))
                     (_$hd7554175560_
                      (let () (declare (not safe)) (##car _$tgt7554075557_)))
                     (_$tl7554275563_
                      (let () (declare (not safe)) (##cdr _$tgt7554075557_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7554275563_))
                    (let* ((_$tgt7554375567_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7554275563_)))
                           (_$hd7554475570_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7554375567_)))
                           (_$tl7554575573_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7554375567_))))
                      (let ((_p75577_ _$hd7554475570_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7554575573_))
                            (let* ((_$tgt7554675579_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7554575573_)))
                                   (_$hd7554775582_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7554675579_)))
                                   (_$tl7554875585_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7554675579_))))
                              (let ((_t75589_ _$hd7554775582_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7554875585_))
                                    (let* ((_$tgt7554975591_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7554875585_)))
                                           (_$hd7555075594_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7554975591_)))
                                           (_$tl7555175597_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7554975591_))))
                                      (let ((_f75601_ _$hd7555075594_))
                                        (if (let ((__tmp77791
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7555175597_))))
                                              (declare (not safe))
                                              (equal? __tmp77791 '()))
                                            (let ((__tmp77784
                                                   (let ((__tmp77785
                                                          (let ((__tmp77790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75577_)))
                        (__tmp77786
                         (let ((__tmp77789
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75589_)))
                               (__tmp77787
                                (let ((__tmp77788
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f75601_))))
                                  (declare (not safe))
                                  (cons __tmp77788 '()))))
                           (declare (not safe))
                           (cons __tmp77789 __tmp77787))))
                    (declare (not safe))
                    (cons __tmp77790 __tmp77786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp77785))))
                                              (declare (not safe))
                                              (__SRC__% __tmp77784 _stx75535_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7553975554_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7553975554_)))))
                            (let () (declare (not safe)) (_$E7553975554_)))))
                    (let () (declare (not safe)) (_$E7553975554_))))
              (let () (declare (not safe)) (_$E7553975554_))))))
    (define __compile-quote%
      (lambda (_stx75497_)
        (let* ((_$e75499_ _stx75497_)
               (_$E7550175510_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75499_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75499_))
              (let* ((_$tgt7550275513_
                      (let () (declare (not safe)) (__AST-e _$e75499_)))
                     (_$hd7550375516_
                      (let () (declare (not safe)) (##car _$tgt7550275513_)))
                     (_$tl7550475519_
                      (let () (declare (not safe)) (##cdr _$tgt7550275513_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7550475519_))
                    (let* ((_$tgt7550575523_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7550475519_)))
                           (_$hd7550675526_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7550575523_)))
                           (_$tl7550775529_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7550575523_))))
                      (let ((_e75533_ _$hd7550675526_))
                        (if (let ((__tmp77795
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7550775529_))))
                              (declare (not safe))
                              (equal? __tmp77795 '()))
                            (let ((__tmp77792
                                   (let ((__tmp77793
                                          (let ((__tmp77794
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75533_))))
                                            (declare (not safe))
                                            (cons __tmp77794 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77793))))
                              (declare (not safe))
                              (__SRC__% __tmp77792 _stx75497_))
                            (let () (declare (not safe)) (_$E7550175510_)))))
                    (let () (declare (not safe)) (_$E7550175510_))))
              (let () (declare (not safe)) (_$E7550175510_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75459_)
        (let* ((_$e75461_ _stx75459_)
               (_$E7546375472_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75461_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75461_))
              (let* ((_$tgt7546475475_
                      (let () (declare (not safe)) (__AST-e _$e75461_)))
                     (_$hd7546575478_
                      (let () (declare (not safe)) (##car _$tgt7546475475_)))
                     (_$tl7546675481_
                      (let () (declare (not safe)) (##cdr _$tgt7546475475_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7546675481_))
                    (let* ((_$tgt7546775485_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7546675481_)))
                           (_$hd7546875488_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7546775485_)))
                           (_$tl7546975491_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7546775485_))))
                      (let ((_e75495_ _$hd7546875488_))
                        (if (let ((__tmp77798
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7546975491_))))
                              (declare (not safe))
                              (equal? __tmp77798 '()))
                            (let ((__tmp77796
                                   (let ((__tmp77797
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75495_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp77797))))
                              (declare (not safe))
                              (__SRC__% __tmp77796 _stx75459_))
                            (let () (declare (not safe)) (_$E7546375472_)))))
                    (let () (declare (not safe)) (_$E7546375472_))))
              (let () (declare (not safe)) (_$E7546375472_))))))
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
