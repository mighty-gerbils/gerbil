(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1711108655)
  (begin
    (define __syntax::t
      (let ((__tmp79321 (list))
            (__tmp79319
             (let ((__tmp79320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79320 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79321
         '(e id)
         __tmp79319
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79130_ (apply make-instance __syntax::t _$args79130_)))
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
      (let ((__tmp79324 (list __syntax::t))
            (__tmp79322
             (let ((__tmp79323
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79323 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79324
         '()
         __tmp79322
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79127_ (apply make-instance __core-form::t _$args79127_)))
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
      (let ((__tmp79327 (list __core-form::t))
            (__tmp79325
             (let ((__tmp79326
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79326 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79327
         '()
         __tmp79325
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79124_
        (apply make-instance __core-expression::t _$args79124_)))
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
      (let ((__tmp79330 (list __core-form::t))
            (__tmp79328
             (let ((__tmp79329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79329 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79330
         '()
         __tmp79328
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79121_
        (apply make-instance __core-special-form::t _$args79121_)))
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
      (lambda (_id79119_)
        (let ((__tmp79331 (let () (declare (not safe)) (__AST-e _id79119_))))
          (declare (not safe))
          (hash-get __core __tmp79331))))
    (define __core-bound-id?__%
      (lambda (_id79103_ _is?79104_)
        (let ((_$e79106_
               (let () (declare (not safe)) (__core-resolve _id79103_))))
          (if _$e79106_ (_is?79104_ _$e79106_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79112_)
        (let ((_is?79114_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79112_ _is?79114_))))
    (define __core-bound-id?
      (lambda _g79333_
        (let ((_g79332_ (let () (declare (not safe)) (##length _g79333_))))
          (cond ((let () (declare (not safe)) (##fx= _g79332_ 1))
                 (apply (lambda (_id79112_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79112_)))
                        _g79333_))
                ((let () (declare (not safe)) (##fx= _g79332_ 2))
                 (apply (lambda (_id79116_ _is?79117_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79116_ _is?79117_)))
                        _g79333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79333_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79086_ _e79087_ _make79088_)
        (let ((__tmp79334
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79087_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79087_
                   (_make79088_ _e79087_ _id79086_))))
          (declare (not safe))
          (hash-put! __core _id79086_ __tmp79334))))
    (define __core-bind-syntax!__0
      (lambda (_id79093_ _e79094_)
        (let ((_make79096_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79093_ _e79094_ _make79096_))))
    (define __core-bind-syntax!
      (lambda _g79336_
        (let ((_g79335_ (let () (declare (not safe)) (##length _g79336_))))
          (cond ((let () (declare (not safe)) (##fx= _g79335_ 2))
                 (apply (lambda (_id79093_ _e79094_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79093_ _e79094_)))
                        _g79336_))
                ((let () (declare (not safe)) (##fx= _g79335_ 3))
                 (apply (lambda (_id79098_ _e79099_ _make79100_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79098_
                             _e79099_
                             _make79100_)))
                        _g79336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79336_))))))
    (define __SRC__%
      (lambda (_e79069_ _src-stx79070_)
        (if (or (let () (declare (not safe)) (pair? _e79069_))
                (let () (declare (not safe)) (symbol? _e79069_)))
            (let ((__tmp79340
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79070_
                          'gerbil#AST::t))
                       (let ((__tmp79341
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79070_))))
                         (declare (not safe))
                         (__locat __tmp79341))
                       '#f)))
              (declare (not safe))
              (##make-source _e79069_ __tmp79340))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79069_ 'gerbil#AST::t))
                (let ((__tmp79339
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79069_ '1 AST::t '#f)))
                      (__tmp79337
                       (let ((__tmp79338
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79069_))))
                         (declare (not safe))
                         (__locat __tmp79338))))
                  (declare (not safe))
                  (##make-source __tmp79339 __tmp79337))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79069_))))))
    (define __SRC__0
      (lambda (_e79078_)
        (let ((_src-stx79080_ '#f))
          (declare (not safe))
          (__SRC__% _e79078_ _src-stx79080_))))
    (define __SRC
      (lambda _g79343_
        (let ((_g79342_ (let () (declare (not safe)) (##length _g79343_))))
          (cond ((let () (declare (not safe)) (##fx= _g79342_ 1))
                 (apply (lambda (_e79078_)
                          (let () (declare (not safe)) (__SRC__0 _e79078_)))
                        _g79343_))
                ((let () (declare (not safe)) (##fx= _g79342_ 2))
                 (apply (lambda (_e79082_ _src-stx79083_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79082_ _src-stx79083_)))
                        _g79343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79343_))))))
    (define __locat
      (lambda (_loc79066_)
        (if (let () (declare (not safe)) (##locat? _loc79066_))
            _loc79066_
            '#f)))
    (define __check-values
      (lambda (_obj79061_ _k79062_)
        (let ((_count79064_
               (if (let () (declare (not safe)) (##values? _obj79061_))
                   (let () (declare (not safe)) (##vector-length _obj79061_))
                   '1)))
          (if (fx= _count79064_ _k79062_)
              '#!void
              (let ((__tmp79345
                     (if (fx< _count79064_ _k79062_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79344
                     (if (let () (declare (not safe)) (##values? _obj79061_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79061_))
                         _obj79061_)))
                (declare (not safe))
                (error __tmp79345 __tmp79344 _k79062_))))))
    (define __compile
      (lambda (_stx79031_)
        (let* ((_$e79033_ _stx79031_)
               (_$E7903579041_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79033_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79033_))
              (let* ((_$tgt7903679044_
                      (let () (declare (not safe)) (__AST-e _$e79033_)))
                     (_$hd7903779047_
                      (let () (declare (not safe)) (##car _$tgt7903679044_)))
                     (_$tl7903879050_
                      (let () (declare (not safe)) (##cdr _$tgt7903679044_))))
                (let* ((_form79054_ _$hd7903779047_)
                       (_$e79056_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79054_))))
                  (if _$e79056_
                      ((lambda (_bind79059_)
                         ((##structure-ref _bind79059_ '1 __syntax::t '#f)
                          _stx79031_))
                       _$e79056_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx79031_
                         _form79054_)))))
              (let () (declare (not safe)) (_$E7903579041_))))))
    (define __compile-error__%
      (lambda (_stx79018_ _detail79019_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx79018_
           _detail79019_))))
    (define __compile-error__0
      (lambda (_stx79024_)
        (let ((_detail79026_ '#f))
          (declare (not safe))
          (__compile-error__% _stx79024_ _detail79026_))))
    (define __compile-error
      (lambda _g79347_
        (let ((_g79346_ (let () (declare (not safe)) (##length _g79347_))))
          (cond ((let () (declare (not safe)) (##fx= _g79346_ 1))
                 (apply (lambda (_stx79024_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx79024_)))
                        _g79347_))
                ((let () (declare (not safe)) (##fx= _g79346_ 2))
                 (apply (lambda (_stx79028_ _detail79029_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx79028_ _detail79029_)))
                        _g79347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79347_))))))
    (define __compile-ignore%
      (lambda (_stx79015_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx79015_))))
    (define __compile-begin%
      (lambda (_stx78990_)
        (let* ((_$e78992_ _stx78990_)
               (_$E7899479000_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78992_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78992_))
              (let* ((_$tgt7899579003_
                      (let () (declare (not safe)) (__AST-e _$e78992_)))
                     (_$hd7899679006_
                      (let () (declare (not safe)) (##car _$tgt7899579003_)))
                     (_$tl7899779009_
                      (let () (declare (not safe)) (##cdr _$tgt7899579003_))))
                (let* ((_body79013_ _$tl7899779009_)
                       (__tmp79348
                        (let ((__tmp79349 (map __compile _body79013_)))
                          (declare (not safe))
                          (cons 'begin __tmp79349))))
                  (declare (not safe))
                  (__SRC__% __tmp79348 _stx78990_)))
              (let () (declare (not safe)) (_$E7899479000_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78965_)
        (let* ((_$e78967_ _stx78965_)
               (_$E7896978975_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78967_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78967_))
              (let* ((_$tgt7897078978_
                      (let () (declare (not safe)) (__AST-e _$e78967_)))
                     (_$hd7897178981_
                      (let () (declare (not safe)) (##car _$tgt7897078978_)))
                     (_$tl7897278984_
                      (let () (declare (not safe)) (##cdr _$tgt7897078978_))))
                (let* ((_body78988_ _$tl7897278984_)
                       (__tmp79350
                        (let ((__tmp79351
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78988_))))
                          (declare (not safe))
                          (cons 'begin __tmp79351))))
                  (declare (not safe))
                  (__SRC__% __tmp79350 _stx78965_)))
              (let () (declare (not safe)) (_$E7896978975_))))))
    (define __compile-import%
      (lambda (_stx78940_)
        (let* ((_$e78942_ _stx78940_)
               (_$E7894478950_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78942_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78942_))
              (let* ((_$tgt7894578953_
                      (let () (declare (not safe)) (__AST-e _$e78942_)))
                     (_$hd7894678956_
                      (let () (declare (not safe)) (##car _$tgt7894578953_)))
                     (_$tl7894778959_
                      (let () (declare (not safe)) (##cdr _$tgt7894578953_))))
                (let* ((_body78963_ _$tl7894778959_)
                       (__tmp79352
                        (let ((__tmp79353
                               (let ((__tmp79354
                                      (let ((__tmp79355
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78963_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79355))))
                                 (declare (not safe))
                                 (cons __tmp79354 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79353))))
                  (declare (not safe))
                  (__SRC__% __tmp79352 _stx78940_)))
              (let () (declare (not safe)) (_$E7894478950_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78887_)
        (let* ((_$e78889_ _stx78887_)
               (_$E7889178903_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78889_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78889_))
              (let* ((_$tgt7889278906_
                      (let () (declare (not safe)) (__AST-e _$e78889_)))
                     (_$hd7889378909_
                      (let () (declare (not safe)) (##car _$tgt7889278906_)))
                     (_$tl7889478912_
                      (let () (declare (not safe)) (##cdr _$tgt7889278906_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7889478912_))
                    (let* ((_$tgt7889578916_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7889478912_)))
                           (_$hd7889678919_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7889578916_)))
                           (_$tl7889778922_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7889578916_))))
                      (let ((_ann78926_ _$hd7889678919_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7889778922_))
                            (let* ((_$tgt7889878928_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7889778922_)))
                                   (_$hd7889978931_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7889878928_)))
                                   (_$tl7890078934_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7889878928_))))
                              (let ((_expr78938_ _$hd7889978931_))
                                (if (let ((__tmp79356
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7890078934_))))
                                      (declare (not safe))
                                      (equal? __tmp79356 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78938_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7889178903_)))))
                            (let () (declare (not safe)) (_$E7889178903_)))))
                    (let () (declare (not safe)) (_$E7889178903_))))
              (let () (declare (not safe)) (_$E7889178903_))))))
    (define __compile-define-values%
      (lambda (_stx78778_)
        (let* ((_$e78780_ _stx78778_)
               (_$E7878278794_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78780_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78780_))
              (let* ((_$tgt7878378797_
                      (let () (declare (not safe)) (__AST-e _$e78780_)))
                     (_$hd7878478800_
                      (let () (declare (not safe)) (##car _$tgt7878378797_)))
                     (_$tl7878578803_
                      (let () (declare (not safe)) (##cdr _$tgt7878378797_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7878578803_))
                    (let* ((_$tgt7878678807_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7878578803_)))
                           (_$hd7878778810_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7878678807_)))
                           (_$tl7878878813_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7878678807_))))
                      (let ((_hd78817_ _$hd7878778810_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7878878813_))
                            (let* ((_$tgt7878978819_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7878878813_)))
                                   (_$hd7879078822_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7878978819_)))
                                   (_$tl7879178825_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7878978819_))))
                              (let ((_expr78829_ _$hd7879078822_))
                                (if (let ((__tmp79389
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7879178825_))))
                                      (declare (not safe))
                                      (equal? __tmp79389 '()))
                                    (let* ((_$e78831_ _hd78817_)
                                           (_$E7883378874_
                                            (lambda ()
                                              (let ((_$E7883478859_
                                                     (lambda ()
                                                       (let* ((_$E7883578846_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78831_))))
                      (_ids78849_ _hd78817_)
                      (_len78851_ (length _ids78849_))
                      (_tmp78853_
                       (let ((__tmp79357 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79357))))
                 (let ((__tmp79358
                        (let ((__tmp79359
                               (let ((__tmp79376
                                      (let ((__tmp79377
                                             (let ((__tmp79378
                                                    (let ((__tmp79379
                                                           (let ((__tmp79380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78829_))))
                     (declare (not safe))
                     (cons __tmp79380 '()))))
              (declare (not safe))
              (cons _tmp78853_ __tmp79379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79378))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79377 _stx78778_)))
                                     (__tmp79360
                                      (let ((__tmp79372
                                             (let ((__tmp79373
                                                    (let ((__tmp79374
                                                           (let ((__tmp79375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78851_ '()))))
                     (declare (not safe))
                     (cons _tmp78853_ __tmp79375))))
              (declare (not safe))
              (cons '__check-values __tmp79374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79373
                                                _stx78778_)))
                                            (__tmp79361
                                             (let ((__tmp79362
                                                    (let ((__tmp79364
                                                           (lambda (_id78856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78857_)
                     (if (let () (declare (not safe)) (__AST-e _id78856_))
                         (let ((__tmp79365
                                (let ((__tmp79366
                                       (let ((__tmp79371
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78856_)))
                                             (__tmp79367
                                              (let ((__tmp79368
                                                     (let ((__tmp79369
                                                            (let ((__tmp79370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78857_ '()))))
                      (declare (not safe))
                      (cons _tmp78853_ __tmp79370))))
               (declare (not safe))
               (cons '##vector-ref __tmp79369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79368 '()))))
                                         (declare (not safe))
                                         (cons __tmp79371 __tmp79367))))
                                  (declare (not safe))
                                  (cons 'define __tmp79366))))
                           (declare (not safe))
                           (__SRC__% __tmp79365 _stx78778_))
                         '#f)))
                  (__tmp79363 (iota _len78851_)))
              (declare (not safe))
              (filter-map2 __tmp79364 _ids78849_ __tmp79363))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79362))))
                                        (declare (not safe))
                                        (cons __tmp79372 __tmp79361))))
                                 (declare (not safe))
                                 (cons __tmp79376 __tmp79360))))
                          (declare (not safe))
                          (cons 'begin __tmp79359))))
                   (declare (not safe))
                   (__SRC__% __tmp79358 _stx78778_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78831_))
                                                    (let* ((_$tgt7883678862_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78831_)))
                                                           (_$hd7883778865_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7883678862_)))
                                                           (_$tl7883878868_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7883678862_))))
                                                      (let ((_id78872_
                                                             _$hd7883778865_))
                                                        (if (let ((__tmp79386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7883878868_))))
                      (declare (not safe))
                      (equal? __tmp79386 '()))
                    (let ((__tmp79381
                           (let ((__tmp79382
                                  (let ((__tmp79385
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78872_)))
                                        (__tmp79383
                                         (let ((__tmp79384
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78829_))))
                                           (declare (not safe))
                                           (cons __tmp79384 '()))))
                                    (declare (not safe))
                                    (cons __tmp79385 __tmp79383))))
                             (declare (not safe))
                             (cons 'define __tmp79382))))
                      (declare (not safe))
                      (__SRC__% __tmp79381 _stx78778_))
                    (let () (declare (not safe)) (_$E7883478859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7883478859_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78831_))
                                          (let* ((_$tgt7883978877_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78831_)))
                                                 (_$hd7884078880_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7883978877_)))
                                                 (_$tl7884178883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7883978877_))))
                                            (if (let ((__tmp79388
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7884078880_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79388 '#f))
                                                (if (let ((__tmp79387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7884178883_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79387 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78829_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7883378874_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7883378874_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7883378874_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7878278794_)))))
                            (let () (declare (not safe)) (_$E7878278794_)))))
                    (let () (declare (not safe)) (_$E7878278794_))))
              (let () (declare (not safe)) (_$E7878278794_))))))
    (define __compile-head-id
      (lambda (_e78776_)
        (let ((__tmp79390
               (if (let () (declare (not safe)) (__AST-e _e78776_))
                   _e78776_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79390))))
    (define __compile-lambda-head
      (lambda (_hd78733_)
        (let _recur78735_ ((_rest78737_ _hd78733_))
          (let* ((_$e78739_ _rest78737_)
                 (_$E7874178759_
                  (lambda ()
                    (let ((_$E7874278756_
                           (lambda ()
                             (let* ((_$E7874378751_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78739_))))
                                    (_tail78754_ _$e78739_))
                               (declare (not safe))
                               (__compile-head-id _tail78754_)))))
                      (if (let ((__tmp79391
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78739_))))
                            (declare (not safe))
                            (equal? __tmp79391 '()))
                          '()
                          (let () (declare (not safe)) (_$E7874278756_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78739_))
                (let* ((_$tgt7874478762_
                        (let () (declare (not safe)) (__AST-e _$e78739_)))
                       (_$hd7874578765_
                        (let () (declare (not safe)) (##car _$tgt7874478762_)))
                       (_$tl7874678768_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7874478762_))))
                  (let* ((_hd78772_ _$hd7874578765_)
                         (_rest78774_ _$tl7874678768_))
                    (let ((__tmp79393
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78772_)))
                          (__tmp79392
                           (let ()
                             (declare (not safe))
                             (_recur78735_ _rest78774_))))
                      (declare (not safe))
                      (cons __tmp79393 __tmp79392))))
                (let () (declare (not safe)) (_$E7874178759_)))))))
    (define __compile-lambda%
      (lambda (_stx78680_)
        (let* ((_$e78682_ _stx78680_)
               (_$E7868478696_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78682_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78682_))
              (let* ((_$tgt7868578699_
                      (let () (declare (not safe)) (__AST-e _$e78682_)))
                     (_$hd7868678702_
                      (let () (declare (not safe)) (##car _$tgt7868578699_)))
                     (_$tl7868778705_
                      (let () (declare (not safe)) (##cdr _$tgt7868578699_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7868778705_))
                    (let* ((_$tgt7868878709_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7868778705_)))
                           (_$hd7868978712_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7868878709_)))
                           (_$tl7869078715_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7868878709_))))
                      (let ((_hd78719_ _$hd7868978712_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7869078715_))
                            (let* ((_$tgt7869178721_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7869078715_)))
                                   (_$hd7869278724_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7869178721_)))
                                   (_$tl7869378727_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7869178721_))))
                              (let ((_body78731_ _$hd7869278724_))
                                (if (let ((__tmp79399
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7869378727_))))
                                      (declare (not safe))
                                      (equal? __tmp79399 '()))
                                    (let ((__tmp79394
                                           (let ((__tmp79395
                                                  (let ((__tmp79398
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78719_)))
                                                        (__tmp79396
                                                         (let ((__tmp79397
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78731_))))
                   (declare (not safe))
                   (cons __tmp79397 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79398
                                                          __tmp79396))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79395))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79394 _stx78680_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7868478696_)))))
                            (let () (declare (not safe)) (_$E7868478696_)))))
                    (let () (declare (not safe)) (_$E7868478696_))))
              (let () (declare (not safe)) (_$E7868478696_))))))
    (define __compile-case-lambda%
      (lambda (_stx78472_)
        (letrec ((_variadic?78474_
                  (lambda (_hd78645_)
                    (let* ((_$e78647_ _hd78645_)
                           (_$E7864978665_
                            (lambda ()
                              (let ((_$E7865078662_
                                     (lambda ()
                                       (let ((_$E7865178659_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78647_)))))
                                         '#t))))
                                (if (let ((__tmp79400
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78647_))))
                                      (declare (not safe))
                                      (equal? __tmp79400 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7865078662_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78647_))
                          (let* ((_$tgt7865278668_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78647_)))
                                 (_$hd7865378671_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7865278668_)))
                                 (_$tl7865478674_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7865278668_))))
                            (let ((_rest78678_ _$tl7865478674_))
                              (declare (not safe))
                              (_variadic?78474_ _rest78678_)))
                          (let () (declare (not safe)) (_$E7864978665_))))))
                 (_arity78475_
                  (lambda (_hd78610_)
                    (let _lp78612_ ((_rest78614_ _hd78610_) (_k78615_ '0))
                      (let* ((_$e78617_ _rest78614_)
                             (_$E7861978630_
                              (lambda ()
                                (let ((_$E7862078627_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78617_)))))
                                  _k78615_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78617_))
                            (let* ((_$tgt7862178633_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78617_)))
                                   (_$hd7862278636_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7862178633_)))
                                   (_$tl7862378639_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7862178633_))))
                              (let* ((_rest78643_ _$tl7862378639_)
                                     (__tmp79401
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78615_ '1))))
                                (declare (not safe))
                                (_lp78612_ _rest78643_ __tmp79401)))
                            (let () (declare (not safe)) (_$E7861978630_)))))))
                 (_generate78476_
                  (lambda (_rest78537_ _args78538_ _len78539_)
                    (let* ((_$e78541_ _rest78537_)
                           (_$E7854378554_
                            (lambda ()
                              (let* ((_$E7854478551_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78541_))))
                                     (__tmp79402
                                      (let ((__tmp79403
                                             (let ((__tmp79404
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78538_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79404))))
                                        (declare (not safe))
                                        (cons 'error __tmp79403))))
                                (declare (not safe))
                                (__SRC__% __tmp79402 _stx78472_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78541_))
                          (let* ((_$tgt7854578557_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78541_)))
                                 (_$hd7854678560_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7854578557_)))
                                 (_$tl7854778563_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7854578557_))))
                            (let* ((_clause78567_ _$hd7854678560_)
                                   (_rest78569_ _$tl7854778563_)
                                   (_$e78571_ _clause78567_)
                                   (_$E7857378582_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78571_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78571_))
                                  (let* ((_$tgt7857478585_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78571_)))
                                         (_$hd7857578588_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7857478585_)))
                                         (_$tl7857678591_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7857478585_))))
                                    (let ((_hd78595_ _$hd7857578588_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7857678591_))
                                          (let* ((_$tgt7857778597_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7857678591_)))
                                                 (_$hd7857878600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7857778597_)))
                                                 (_$tl7857978603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7857778597_))))
                                            (if (let ((__tmp79419
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7857978603_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79419 '()))
                                                (let ((_clen78607_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78475_
                                                          _hd78595_)))
                                                      (_cmp78608_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78474_
                                                              _hd78595_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79405
                                                         (let ((__tmp79406
                                                                (let ((__tmp79416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79417
                                      (let ((__tmp79418
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78607_ '()))))
                                        (declare (not safe))
                                        (cons _len78539_ __tmp79418))))
                                 (declare (not safe))
                                 (cons _cmp78608_ __tmp79417)))
                              (__tmp79407
                               (let ((__tmp79410
                                      (let ((__tmp79411
                                             (let ((__tmp79412
                                                    (let ((__tmp79414
                                                           (let ((__tmp79415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78567_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79415)))
                  (__tmp79413
                   (let () (declare (not safe)) (cons _args78538_ '()))))
              (declare (not safe))
              (cons __tmp79414 __tmp79413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79412))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79411 _stx78472_)))
                                     (__tmp79408
                                      (let ((__tmp79409
                                             (let ()
                                               (declare (not safe))
                                               (_generate78476_
                                                _rest78569_
                                                _args78538_
                                                _len78539_))))
                                        (declare (not safe))
                                        (cons __tmp79409 '()))))
                                 (declare (not safe))
                                 (cons __tmp79410 __tmp79408))))
                          (declare (not safe))
                          (cons __tmp79416 __tmp79407))))
                   (declare (not safe))
                   (cons 'if __tmp79406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79405
                                                     _stx78472_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7857378582_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7857378582_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7857378582_)))))
                          (let () (declare (not safe)) (_$E7854378554_)))))))
          (let* ((_$e78478_ _stx78472_)
                 (_$E7848078512_
                  (lambda ()
                    (let ((_$E7848178494_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78478_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78478_))
                          (let* ((_$tgt7848278497_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78478_)))
                                 (_$hd7848378500_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7848278497_)))
                                 (_$tl7848478503_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7848278497_))))
                            (let ((_clauses78507_ _$tl7848478503_))
                              (let ((_args78509_
                                     (let ((__tmp79420 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79420 _stx78472_)))
                                    (_len78510_
                                     (let ((__tmp79421 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79421 _stx78472_))))
                                (let ((__tmp79422
                                       (let ((__tmp79423
                                              (let ((__tmp79424
                                                     (let ((__tmp79425
                                                            (let ((__tmp79426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79427
                                  (let ((__tmp79430
                                         (let ((__tmp79431
                                                (let ((__tmp79432
                                                       (let ((__tmp79433
                                                              (let ((__tmp79434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79435
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78509_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79435))))
                        (declare (not safe))
                        (__SRC__% __tmp79434 _stx78472_))))
                 (declare (not safe))
                 (cons __tmp79433 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78510_
                                                        __tmp79432))))
                                           (declare (not safe))
                                           (cons __tmp79431 '())))
                                        (__tmp79428
                                         (let ((__tmp79429
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78476_
                                                   _clauses78507_
                                                   _args78509_
                                                   _len78510_))))
                                           (declare (not safe))
                                           (cons __tmp79429 '()))))
                                    (declare (not safe))
                                    (cons __tmp79430 __tmp79428))))
                             (declare (not safe))
                             (cons 'let __tmp79427))))
                      (declare (not safe))
                      (__SRC__% __tmp79426 _stx78472_))))
               (declare (not safe))
               (cons __tmp79425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78509_
                                                      __tmp79424))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79423))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79422 _stx78472_)))))
                          (let () (declare (not safe)) (_$E7848178494_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78478_))
                (let* ((_$tgt7848578515_
                        (let () (declare (not safe)) (__AST-e _$e78478_)))
                       (_$hd7848678518_
                        (let () (declare (not safe)) (##car _$tgt7848578515_)))
                       (_$tl7848778521_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7848578515_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7848778521_))
                      (let* ((_$tgt7848878525_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7848778521_)))
                             (_$hd7848978528_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7848878525_)))
                             (_$tl7849078531_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7848878525_))))
                        (let ((_clause78535_ _$hd7848978528_))
                          (if (let ((__tmp79437
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7849078531_))))
                                (declare (not safe))
                                (equal? __tmp79437 '()))
                              (let ((__tmp79436
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78535_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79436))
                              (let () (declare (not safe)) (_$E7848078512_)))))
                      (let () (declare (not safe)) (_$E7848078512_))))
                (let () (declare (not safe)) (_$E7848078512_)))))))
    (define __compile-let-form
      (lambda (_stx78241_ _compile-simple78242_ _compile-values78243_)
        (letrec ((_simple-bind?78245_
                  (lambda (_hd78430_)
                    (let* ((_hd7843178441_ _hd78430_)
                           (_else7843478449_ (lambda () '#f)))
                      (let ((_K7843778462_ (lambda (_id78460_) '#t))
                            (_K7843678454_ (lambda () '#t)))
                        (let ((_try-match7843378457_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7843178441_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7843678454_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7843478449_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7843178441_))
                              (let ((_tl7843978467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7843178441_)))
                                    (_hd7843878465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7843178441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7843978467_))
                                    (let ((_id78470_ _hd7843878465_))
                                      (declare (not safe))
                                      (_K7843778462_ _id78470_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7843378457_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7843378457_))))))))
                 (_car-e78246_
                  (lambda (_hd78428_)
                    (if (let () (declare (not safe)) (pair? _hd78428_))
                        (car _hd78428_)
                        _hd78428_))))
          (let* ((_$e78248_ _stx78241_)
                 (_$E7825078393_
                  (lambda ()
                    (let ((_$E7825178273_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78248_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78248_))
                          (let* ((_$tgt7825278276_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78248_)))
                                 (_$hd7825378279_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7825278276_)))
                                 (_$tl7825478282_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7825278276_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7825478282_))
                                (let* ((_$tgt7825578286_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7825478282_)))
                                       (_$hd7825678289_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7825578286_)))
                                       (_$tl7825778292_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7825578286_))))
                                  (let ((_hd78296_ _$hd7825678289_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7825778292_))
                                        (let* ((_$tgt7825878298_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7825778292_)))
                                               (_$hd7825978301_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7825878298_)))
                                               (_$tl7826078304_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7825878298_))))
                                          (let ((_body78308_ _$hd7825978301_))
                                            (if (let ((__tmp79440
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7826078304_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79440 '()))
                                                (let* ((_hd-ids78348_
                                                        (map (lambda (_bind78310_)
                                                               (let* ((_$e78312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78310_)
                              (_$E7831478323_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78312_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78312_))
                             (let* ((_$tgt7831578326_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78312_)))
                                    (_$hd7831678329_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7831578326_)))
                                    (_$tl7831778332_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7831578326_))))
                               (let ((_ids78336_ _$hd7831678329_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7831778332_))
                                     (let* ((_$tgt7831878338_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7831778332_)))
                                            (_$hd7831978341_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7831878338_)))
                                            (_$tl7832078344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7831878338_))))
                                       (if (let ((__tmp79438
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7832078344_))))
                                             (declare (not safe))
                                             (equal? __tmp79438 '()))
                                           _ids78336_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7831478323_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7831478323_)))))
                             (let () (declare (not safe)) (_$E7831478323_)))))
                     _hd78296_))
               (_exprs78388_
                (map (lambda (_bind78350_)
                       (let* ((_$e78352_ _bind78350_)
                              (_$E7835478363_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78352_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78352_))
                             (let* ((_$tgt7835578366_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78352_)))
                                    (_$hd7835678369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7835578366_)))
                                    (_$tl7835778372_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7835578366_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7835778372_))
                                   (let* ((_$tgt7835878376_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7835778372_)))
                                          (_$hd7835978379_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7835878376_)))
                                          (_$tl7836078382_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7835878376_))))
                                     (let ((_expr78386_ _$hd7835978379_))
                                       (if (let ((__tmp79439
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7836078382_))))
                                             (declare (not safe))
                                             (equal? __tmp79439 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78386_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7835478363_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7835478363_))))
                             (let () (declare (not safe)) (_$E7835478363_)))))
                     _hd78296_))
               (_body78390_
                (let () (declare (not safe)) (__compile _body78308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78348_))
              (_compile-simple78242_
               (map _car-e78246_ _hd-ids78348_)
               _exprs78388_
               _body78390_)
              (_compile-values78243_ _hd-ids78348_ _exprs78388_ _body78390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7825178273_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7825178273_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7825178273_))))
                          (let () (declare (not safe)) (_$E7825178273_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78248_))
                (let* ((_$tgt7826178396_
                        (let () (declare (not safe)) (__AST-e _$e78248_)))
                       (_$hd7826278399_
                        (let () (declare (not safe)) (##car _$tgt7826178396_)))
                       (_$tl7826378402_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7826178396_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7826378402_))
                      (let* ((_$tgt7826478406_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7826378402_)))
                             (_$hd7826578409_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7826478406_)))
                             (_$tl7826678412_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7826478406_))))
                        (if (let ((__tmp79442
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7826578409_))))
                              (declare (not safe))
                              (equal? __tmp79442 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7826678412_))
                                (let* ((_$tgt7826778416_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7826678412_)))
                                       (_$hd7826878419_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7826778416_)))
                                       (_$tl7826978422_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7826778416_))))
                                  (let ((_body78426_ _$hd7826878419_))
                                    (if (let ((__tmp79441
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7826978422_))))
                                          (declare (not safe))
                                          (equal? __tmp79441 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78426_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7825078393_)))))
                                (let () (declare (not safe)) (_$E7825078393_)))
                            (let () (declare (not safe)) (_$E7825078393_))))
                      (let () (declare (not safe)) (_$E7825078393_))))
                (let () (declare (not safe)) (_$E7825078393_)))))))
    (define __compile-let-values%
      (lambda (_stx78056_)
        (letrec ((_compile-simple78058_
                  (lambda (_hd-ids78237_ _exprs78238_ _body78239_)
                    (let ((__tmp79443
                           (let ((__tmp79444
                                  (let ((__tmp79446
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78237_)
                                              _exprs78238_))
                                        (__tmp79445
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78239_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79446 __tmp79445))))
                             (declare (not safe))
                             (cons 'let __tmp79444))))
                      (declare (not safe))
                      (__SRC__% __tmp79443 _stx78056_))))
                 (_compile-values78059_
                  (lambda (_hd-ids78155_ _exprs78156_ _body78157_)
                    (let _lp78159_ ((_rest78161_ _hd-ids78155_)
                                    (_exprs78162_ _exprs78156_)
                                    (_bind78163_ '())
                                    (_post78164_ '()))
                      (let* ((_rest7816578179_ _rest78161_)
                             (_else7816878187_
                              (lambda ()
                                (let ((__tmp79447
                                       (let ((__tmp79448
                                              (let ((__tmp79451
                                                     (reverse _bind78163_))
                                                    (__tmp79449
                                                     (let ((__tmp79450
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78060_
                                                               _post78164_
                                                               _body78157_))))
                                                       (declare (not safe))
                                                       (cons __tmp79450 '()))))
                                                (declare (not safe))
                                                (cons __tmp79451 __tmp79449))))
                                         (declare (not safe))
                                         (cons 'let __tmp79448))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79447 _stx78056_)))))
                        (let ((_K7817378220_
                               (lambda (_rest78217_ _id78218_)
                                 (let ((__tmp79457 (cdr _exprs78162_))
                                       (__tmp79452
                                        (let ((__tmp79453
                                               (let ((__tmp79456
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78218_)))
                                                     (__tmp79454
                                                      (let ((__tmp79455
                                                             (car _exprs78162_)))
                                                        (declare (not safe))
                                                        (cons __tmp79455
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79456
                                                       __tmp79454))))
                                          (declare (not safe))
                                          (cons __tmp79453 _bind78163_))))
                                   (declare (not safe))
                                   (_lp78159_
                                    _rest78217_
                                    __tmp79457
                                    __tmp79452
                                    _post78164_))))
                              (_K7817078202_
                               (lambda (_rest78191_ _hd78192_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78192_))
                                     (let ((__tmp79478 (cdr _exprs78162_))
                                           (__tmp79471
                                            (let ((__tmp79472
                                                   (let ((__tmp79477
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78192_)))
                                                         (__tmp79473
                                                          (let ((__tmp79474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79475
                                (let ((__tmp79476 (car _exprs78162_)))
                                  (declare (not safe))
                                  (cons __tmp79476 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79475))))
                    (declare (not safe))
                    (cons __tmp79474 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79477
                                                           __tmp79473))))
                                              (declare (not safe))
                                              (cons __tmp79472 _bind78163_))))
                                       (declare (not safe))
                                       (_lp78159_
                                        _rest78191_
                                        __tmp79478
                                        __tmp79471
                                        _post78164_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78192_))
                                         (let* ((_len78194_ (length _hd78192_))
                                                (_tmp78196_
                                                 (let ((__tmp79458 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79458))))
                                           (let ((__tmp79470
                                                  (cdr _exprs78162_))
                                                 (__tmp79466
                                                  (let ((__tmp79467
                                                         (let ((__tmp79468
                                                                (let ((__tmp79469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78162_)))
                          (declare (not safe))
                          (cons __tmp79469 '()))))
                   (declare (not safe))
                   (cons _tmp78196_ __tmp79468))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79467
                                                          _bind78163_)))
                                                 (__tmp79459
                                                  (let ((__tmp79460
                                                         (let ((__tmp79461
                                                                (let ((__tmp79462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79464
                                      (lambda (_id78199_ _k78200_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78199_))
                                            (let ((__tmp79465
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78199_))))
                                              (declare (not safe))
                                              (cons __tmp79465 _k78200_))
                                            '#f)))
                                     (__tmp79463 (iota _len78194_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79464
                                  _hd78192_
                                  __tmp79463))))
                          (declare (not safe))
                          (cons _len78194_ __tmp79462))))
                   (declare (not safe))
                   (cons _tmp78196_ __tmp79461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79460
                                                          _post78164_))))
                                             (declare (not safe))
                                             (_lp78159_
                                              _rest78191_
                                              __tmp79470
                                              __tmp79466
                                              __tmp79459)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78056_
                                            _hd78192_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7816578179_))
                              (let ((_tl7817578225_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7816578179_)))
                                    (_hd7817478223_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7816578179_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7817478223_))
                                    (let ((_tl7817778230_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7817478223_)))
                                          (_hd7817678228_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7817478223_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7817778230_))
                                          (let ((_id78233_ _hd7817678228_)
                                                (_rest78235_ _tl7817578225_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7817378220_
                                               _rest78235_
                                               _id78233_)))
                                          (let ((_hd78210_ _hd7817478223_)
                                                (_rest78212_ _tl7817578225_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7817078202_
                                               _rest78212_
                                               _hd78210_)))))
                                    (let ((_hd78210_ _hd7817478223_)
                                          (_rest78212_ _tl7817578225_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7817078202_
                                         _rest78212_
                                         _hd78210_)))))
                              (let ()
                                (declare (not safe))
                                (_else7816878187_))))))))
                 (_compile-post78060_
                  (lambda (_post78062_ _body78063_)
                    (let _lp78065_ ((_rest78067_ _post78062_)
                                    (_check78068_ '())
                                    (_bind78069_ '()))
                      (let* ((_rest7807078082_ _rest78067_)
                             (_else7807278090_
                              (lambda ()
                                (let ((__tmp79479
                                       (let ((__tmp79480
                                              (let ((__tmp79481
                                                     (let ((__tmp79482
                                                            (let ((__tmp79483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79484
                                  (let ((__tmp79485
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78063_ '()))))
                                    (declare (not safe))
                                    (cons _bind78069_ __tmp79485))))
                             (declare (not safe))
                             (cons 'let __tmp79484))))
                      (declare (not safe))
                      (__SRC__% __tmp79483 _stx78056_))))
               (declare (not safe))
               (cons __tmp79482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79481
                                                        _check78068_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79480))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79479 _stx78056_))))
                             (_K7807478129_
                              (lambda (_rest78093_
                                       _init78094_
                                       _len78095_
                                       _tmp78096_)
                                (let ((__tmp79493
                                       (let ((__tmp79494
                                              (let ((__tmp79495
                                                     (let ((__tmp79496
                                                            (let ((__tmp79497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78095_ '()))))
                      (declare (not safe))
                      (cons _tmp78096_ __tmp79497))))
               (declare (not safe))
               (cons '__check-values __tmp79496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79495
                                                 _stx78056_))))
                                         (declare (not safe))
                                         (cons __tmp79494 _check78068_)))
                                      (__tmp79486
                                       (let ((__tmp79487
                                              (lambda (_hd78098_ _r78099_)
                                                (let* ((_hd7810078107_
                                                        _hd78098_)
                                                       (_E7810278111_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7810078107_))))
               (_K7810378117_
                (lambda (_k78114_ _id78115_)
                  (let ((__tmp79488
                         (let ((__tmp79489
                                (let ((__tmp79490
                                       (let ((__tmp79491
                                              (let ((__tmp79492
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78114_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78096_ __tmp79492))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79491))))
                                  (declare (not safe))
                                  (cons __tmp79490 '()))))
                           (declare (not safe))
                           (cons _id78115_ __tmp79489))))
                    (declare (not safe))
                    (cons __tmp79488 _r78099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7810078107_))
                                                      (let ((_hd7810478120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7810078107_)))
                    (_tl7810578122_
                     (let () (declare (not safe)) (##cdr _hd7810078107_))))
                (let* ((_id78125_ _hd7810478120_) (_k78127_ _tl7810578122_))
                  (declare (not safe))
                  (_K7810378117_ _k78127_ _id78125_)))
              (let () (declare (not safe)) (_E7810278111_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79487
                                                 _bind78069_
                                                 _init78094_))))
                                  (declare (not safe))
                                  (_lp78065_
                                   _rest78093_
                                   __tmp79493
                                   __tmp79486)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7807078082_))
                            (let ((_hd7807578132_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7807078082_)))
                                  (_tl7807678134_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7807078082_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7807578132_))
                                  (let ((_hd7807778137_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7807578132_)))
                                        (_tl7807878139_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7807578132_))))
                                    (let ((_tmp78142_ _hd7807778137_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7807878139_))
                                          (let ((_hd7807978144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7807878139_)))
                                                (_tl7808078146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7807878139_))))
                                            (let* ((_len78149_ _hd7807978144_)
                                                   (_init78151_ _tl7808078146_)
                                                   (_rest78153_
                                                    _tl7807678134_))
                                              (declare (not safe))
                                              (_K7807478129_
                                               _rest78153_
                                               _init78151_
                                               _len78149_
                                               _tmp78142_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7807278090_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7807278090_))))
                            (let ()
                              (declare (not safe))
                              (_else7807278090_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78056_
             _compile-simple78058_
             _compile-values78059_)))))
    (define __compile-letrec-values%
      (lambda (_stx77856_)
        (letrec ((_compile-simple77858_
                  (lambda (_hd-ids78052_ _exprs78053_ _body78054_)
                    (let ((__tmp79498
                           (let ((__tmp79499
                                  (let ((__tmp79501
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78052_)
                                              _exprs78053_))
                                        (__tmp79500
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78054_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79501 __tmp79500))))
                             (declare (not safe))
                             (cons 'letrec __tmp79499))))
                      (declare (not safe))
                      (__SRC__% __tmp79498 _stx77856_))))
                 (_compile-values77859_
                  (lambda (_hd-ids77966_ _exprs77967_ _body77968_)
                    (let _lp77970_ ((_rest77972_ _hd-ids77966_)
                                    (_exprs77973_ _exprs77967_)
                                    (_pre77974_ '())
                                    (_bind77975_ '())
                                    (_post77976_ '()))
                      (let* ((_rest7797777991_ _rest77972_)
                             (_else7798077999_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77860_
                                   _pre77974_
                                   _bind77975_
                                   _post77976_
                                   _body77968_)))))
                        (let ((_K7798578035_
                               (lambda (_rest78032_ _id78033_)
                                 (let ((__tmp79507 (cdr _exprs77973_))
                                       (__tmp79502
                                        (let ((__tmp79503
                                               (let ((__tmp79506
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78033_)))
                                                     (__tmp79504
                                                      (let ((__tmp79505
                                                             (car _exprs77973_)))
                                                        (declare (not safe))
                                                        (cons __tmp79505
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79506
                                                       __tmp79504))))
                                          (declare (not safe))
                                          (cons __tmp79503 _bind77975_))))
                                   (declare (not safe))
                                   (_lp77970_
                                    _rest78032_
                                    __tmp79507
                                    _pre77974_
                                    __tmp79502
                                    _post77976_))))
                              (_K7798278017_
                               (lambda (_rest78003_ _hd78004_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78004_))
                                     (let ((__tmp79535 (cdr _exprs77973_))
                                           (__tmp79528
                                            (let ((__tmp79529
                                                   (let ((__tmp79534
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78004_)))
                                                         (__tmp79530
                                                          (let ((__tmp79531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79532
                                (let ((__tmp79533 (car _exprs77973_)))
                                  (declare (not safe))
                                  (cons __tmp79533 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79532))))
                    (declare (not safe))
                    (cons __tmp79531 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79534
                                                           __tmp79530))))
                                              (declare (not safe))
                                              (cons __tmp79529 _bind77975_))))
                                       (declare (not safe))
                                       (_lp77970_
                                        _rest78003_
                                        __tmp79535
                                        _pre77974_
                                        __tmp79528
                                        _post77976_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78004_))
                                         (let* ((_len78006_ (length _hd78004_))
                                                (_tmp78008_
                                                 (let ((__tmp79508 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79508))))
                                           (let ((__tmp79527
                                                  (cdr _exprs77973_))
                                                 (__tmp79520
                                                  (let ((__tmp79521
                                                         (lambda (_id78011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r78012_)
                   (if (let () (declare (not safe)) (__AST-e _id78011_))
                       (let ((__tmp79522
                              (let ((__tmp79526
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id78011_)))
                                    (__tmp79523
                                     (let ((__tmp79524
                                            (let ((__tmp79525
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79525))))
                                       (declare (not safe))
                                       (cons __tmp79524 '()))))
                                (declare (not safe))
                                (cons __tmp79526 __tmp79523))))
                         (declare (not safe))
                         (cons __tmp79522 _r78012_))
                       _r78012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79521
                                                            _pre77974_
                                                            _hd78004_)))
                                                 (__tmp79516
                                                  (let ((__tmp79517
                                                         (let ((__tmp79518
                                                                (let ((__tmp79519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77973_)))
                          (declare (not safe))
                          (cons __tmp79519 '()))))
                   (declare (not safe))
                   (cons _tmp78008_ __tmp79518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79517
                                                          _bind77975_)))
                                                 (__tmp79509
                                                  (let ((__tmp79510
                                                         (let ((__tmp79511
                                                                (let ((__tmp79512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79514
                                      (lambda (_id78014_ _k78015_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78014_))
                                            (let ((__tmp79515
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78014_))))
                                              (declare (not safe))
                                              (cons __tmp79515 _k78015_))
                                            '#f)))
                                     (__tmp79513 (iota _len78006_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79514
                                  _hd78004_
                                  __tmp79513))))
                          (declare (not safe))
                          (cons _len78006_ __tmp79512))))
                   (declare (not safe))
                   (cons _tmp78008_ __tmp79511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79510
                                                          _post77976_))))
                                             (declare (not safe))
                                             (_lp77970_
                                              _rest78003_
                                              __tmp79527
                                              __tmp79520
                                              __tmp79516
                                              __tmp79509)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77856_
                                            _hd78004_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7797777991_))
                              (let ((_tl7798778040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7797777991_)))
                                    (_hd7798678038_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7797777991_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7798678038_))
                                    (let ((_tl7798978045_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7798678038_)))
                                          (_hd7798878043_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7798678038_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7798978045_))
                                          (let ((_id78048_ _hd7798878043_)
                                                (_rest78050_ _tl7798778040_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7798578035_
                                               _rest78050_
                                               _id78048_)))
                                          (let ((_hd78025_ _hd7798678038_)
                                                (_rest78027_ _tl7798778040_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7798278017_
                                               _rest78027_
                                               _hd78025_)))))
                                    (let ((_hd78025_ _hd7798678038_)
                                          (_rest78027_ _tl7798778040_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7798278017_
                                         _rest78027_
                                         _hd78025_)))))
                              (let ()
                                (declare (not safe))
                                (_else7798077999_))))))))
                 (_compile-inner77860_
                  (lambda (_pre77961_ _bind77962_ _post77963_ _body77964_)
                    (if (let () (declare (not safe)) (null? _pre77961_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77861_
                           _bind77962_
                           _post77963_
                           _body77964_))
                        (let ((__tmp79536
                               (let ((__tmp79537
                                      (let ((__tmp79540 (reverse _pre77961_))
                                            (__tmp79538
                                             (let ((__tmp79539
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77861_
                                                       _bind77962_
                                                       _post77963_
                                                       _body77964_))))
                                               (declare (not safe))
                                               (cons __tmp79539 '()))))
                                        (declare (not safe))
                                        (cons __tmp79540 __tmp79538))))
                                 (declare (not safe))
                                 (cons 'let __tmp79537))))
                          (declare (not safe))
                          (__SRC__% __tmp79536 _stx77856_)))))
                 (_compile-bind77861_
                  (lambda (_bind77957_ _post77958_ _body77959_)
                    (let ((__tmp79541
                           (let ((__tmp79542
                                  (let ((__tmp79545 (reverse _bind77957_))
                                        (__tmp79543
                                         (let ((__tmp79544
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77862_
                                                   _post77958_
                                                   _body77959_))))
                                           (declare (not safe))
                                           (cons __tmp79544 '()))))
                                    (declare (not safe))
                                    (cons __tmp79545 __tmp79543))))
                             (declare (not safe))
                             (cons 'letrec __tmp79542))))
                      (declare (not safe))
                      (__SRC__% __tmp79541 _stx77856_))))
                 (_compile-post77862_
                  (lambda (_post77864_ _body77865_)
                    (let _lp77867_ ((_rest77869_ _post77864_)
                                    (_check77870_ '())
                                    (_bind77871_ '()))
                      (let* ((_rest7787277884_ _rest77869_)
                             (_else7787477892_
                              (lambda ()
                                (let ((__tmp79546
                                       (let ((__tmp79547
                                              (let ((__tmp79548
                                                     (let ((__tmp79549
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79549 _bind77871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79548
                                                        _check77870_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79547))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79546 _stx77856_))))
                             (_K7787677931_
                              (lambda (_rest77895_
                                       _init77896_
                                       _len77897_
                                       _tmp77898_)
                                (let ((__tmp79558
                                       (let ((__tmp79559
                                              (let ((__tmp79560
                                                     (let ((__tmp79561
                                                            (let ((__tmp79562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77897_ '()))))
                      (declare (not safe))
                      (cons _tmp77898_ __tmp79562))))
               (declare (not safe))
               (cons '__check-values __tmp79561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79560
                                                 _stx77856_))))
                                         (declare (not safe))
                                         (cons __tmp79559 _check77870_)))
                                      (__tmp79550
                                       (let ((__tmp79551
                                              (lambda (_hd77900_ _r77901_)
                                                (let* ((_hd7790277909_
                                                        _hd77900_)
                                                       (_E7790477913_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7790277909_))))
               (_K7790577919_
                (lambda (_k77916_ _id77917_)
                  (let ((__tmp79552
                         (let ((__tmp79553
                                (let ((__tmp79554
                                       (let ((__tmp79555
                                              (let ((__tmp79556
                                                     (let ((__tmp79557
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77898_ __tmp79557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79556))))
                                         (declare (not safe))
                                         (cons __tmp79555 '()))))
                                  (declare (not safe))
                                  (cons _id77917_ __tmp79554))))
                           (declare (not safe))
                           (cons 'set! __tmp79553))))
                    (declare (not safe))
                    (cons __tmp79552 _r77901_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7790277909_))
                                                      (let ((_hd7790677922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7790277909_)))
                    (_tl7790777924_
                     (let () (declare (not safe)) (##cdr _hd7790277909_))))
                (let* ((_id77927_ _hd7790677922_) (_k77929_ _tl7790777924_))
                  (declare (not safe))
                  (_K7790577919_ _k77929_ _id77927_)))
              (let () (declare (not safe)) (_E7790477913_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79551
                                                 _bind77871_
                                                 _init77896_))))
                                  (declare (not safe))
                                  (_lp77867_
                                   _rest77895_
                                   __tmp79558
                                   __tmp79550)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7787277884_))
                            (let ((_hd7787777934_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7787277884_)))
                                  (_tl7787877936_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7787277884_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7787777934_))
                                  (let ((_hd7787977939_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7787777934_)))
                                        (_tl7788077941_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7787777934_))))
                                    (let ((_tmp77944_ _hd7787977939_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7788077941_))
                                          (let ((_hd7788177946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7788077941_)))
                                                (_tl7788277948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7788077941_))))
                                            (let* ((_len77951_ _hd7788177946_)
                                                   (_init77953_ _tl7788277948_)
                                                   (_rest77955_
                                                    _tl7787877936_))
                                              (declare (not safe))
                                              (_K7787677931_
                                               _rest77955_
                                               _init77953_
                                               _len77951_
                                               _tmp77944_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7787477892_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7787477892_))))
                            (let ()
                              (declare (not safe))
                              (_else7787477892_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77856_
             _compile-simple77858_
             _compile-values77859_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77611_)
        (letrec ((_compile-simple77613_
                  (lambda (_hd-ids77852_ _exprs77853_ _body77854_)
                    (let ((__tmp79563
                           (let ((__tmp79564
                                  (let ((__tmp79566
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77852_)
                                              _exprs77853_))
                                        (__tmp79565
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77854_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79566 __tmp79565))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79564))))
                      (declare (not safe))
                      (__SRC__% __tmp79563 _stx77611_))))
                 (_compile-values77614_
                  (lambda (_hd-ids77763_ _exprs77764_ _body77765_)
                    (let _lp77767_ ((_rest77769_ _hd-ids77763_)
                                    (_exprs77770_ _exprs77764_)
                                    (_bind77771_ '())
                                    (_post77772_ '()))
                      (let* ((_rest7777377787_ _rest77769_)
                             (_else7777677795_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77615_
                                   _bind77771_
                                   _post77772_
                                   _body77765_)))))
                        (let ((_K7778177835_
                               (lambda (_rest77830_ _hd77831_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77831_))
                                     (let ((_id77833_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77831_))))
                                       (let ((__tmp79581 (cdr _exprs77770_))
                                             (__tmp79576
                                              (let ((__tmp79577
                                                     (let ((__tmp79578
                                                            (let ((__tmp79579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79580
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79580))))
                      (declare (not safe))
                      (cons __tmp79579 '()))))
               (declare (not safe))
               (cons _id77833_ __tmp79578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79577 _bind77771_)))
                                             (__tmp79572
                                              (let ((__tmp79573
                                                     (let ((__tmp79574
                                                            (let ((__tmp79575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77770_)))
                      (declare (not safe))
                      (cons __tmp79575 '()))))
               (declare (not safe))
               (cons _id77833_ __tmp79574))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79573
                                                      _post77772_))))
                                         (declare (not safe))
                                         (_lp77767_
                                          _rest77830_
                                          __tmp79581
                                          __tmp79576
                                          __tmp79572)))
                                     (let ((__tmp79571 (cdr _exprs77770_))
                                           (__tmp79567
                                            (let ((__tmp79568
                                                   (let ((__tmp79569
                                                          (let ((__tmp79570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77770_)))
                    (declare (not safe))
                    (cons __tmp79570 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79569))))
                                              (declare (not safe))
                                              (cons __tmp79568 _post77772_))))
                                       (declare (not safe))
                                       (_lp77767_
                                        _rest77830_
                                        __tmp79571
                                        _bind77771_
                                        __tmp79567)))))
                              (_K7777877815_
                               (lambda (_rest77799_ _hd77800_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77800_))
                                     (let ((_id77802_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77800_))))
                                       (let ((__tmp79617 (cdr _exprs77770_))
                                             (__tmp79612
                                              (let ((__tmp79613
                                                     (let ((__tmp79614
                                                            (let ((__tmp79615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79616
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79616))))
                      (declare (not safe))
                      (cons __tmp79615 '()))))
               (declare (not safe))
               (cons _id77802_ __tmp79614))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79613 _bind77771_)))
                                             (__tmp79606
                                              (let ((__tmp79607
                                                     (let ((__tmp79608
                                                            (let ((__tmp79609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79610
                                  (let ((__tmp79611 (car _exprs77770_)))
                                    (declare (not safe))
                                    (cons __tmp79611 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79610))))
                      (declare (not safe))
                      (cons __tmp79609 '()))))
               (declare (not safe))
               (cons _id77802_ __tmp79608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79607
                                                      _post77772_))))
                                         (declare (not safe))
                                         (_lp77767_
                                          _rest77799_
                                          __tmp79617
                                          __tmp79612
                                          __tmp79606)))
                                     (if (let ((__tmp79605
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77800_))))
                                           (declare (not safe))
                                           (not __tmp79605))
                                         (let ((__tmp79604 (cdr _exprs77770_))
                                               (__tmp79600
                                                (let ((__tmp79601
                                                       (let ((__tmp79602
                                                              (let ((__tmp79603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77770_)))
                        (declare (not safe))
                        (cons __tmp79603 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79601
                                                        _post77772_))))
                                           (declare (not safe))
                                           (_lp77767_
                                            _rest77799_
                                            __tmp79604
                                            _bind77771_
                                            __tmp79600))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77800_))
                                             (let* ((_len77804_
                                                     (length _hd77800_))
                                                    (_tmp77806_
                                                     (let ((__tmp79582
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79582))))
                                               (let ((__tmp79599
                                                      (cdr _exprs77770_))
                                                     (__tmp79592
                                                      (let ((__tmp79593
                                                             (lambda (_id77809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77810_)
                       (if (let () (declare (not safe)) (__AST-e _id77809_))
                           (let ((__tmp79594
                                  (let ((__tmp79598
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77809_)))
                                        (__tmp79595
                                         (let ((__tmp79596
                                                (let ((__tmp79597
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79597))))
                                           (declare (not safe))
                                           (cons __tmp79596 '()))))
                                    (declare (not safe))
                                    (cons __tmp79598 __tmp79595))))
                             (declare (not safe))
                             (cons __tmp79594 _r77810_))
                           _r77810_))))
                (declare (not safe))
                (foldl1 __tmp79593 _bind77771_ _hd77800_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79583
                                                      (let ((__tmp79584
                                                             (let ((__tmp79585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79591 (car _exprs77770_))
                                  (__tmp79586
                                   (let ((__tmp79587
                                          (let ((__tmp79589
                                                 (lambda (_id77812_ _k77813_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77812_))
                                                       (let ((__tmp79590
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77812_))))
                 (declare (not safe))
                 (cons __tmp79590 _k77813_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79588 (iota _len77804_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79589
                                             _hd77800_
                                             __tmp79588))))
                                     (declare (not safe))
                                     (cons _len77804_ __tmp79587))))
                              (declare (not safe))
                              (cons __tmp79591 __tmp79586))))
                       (declare (not safe))
                       (cons _tmp77806_ __tmp79585))))
                (declare (not safe))
                (cons __tmp79584 _post77772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77767_
                                                  _rest77799_
                                                  __tmp79599
                                                  __tmp79592
                                                  __tmp79583)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77611_
                                                _hd77800_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7777377787_))
                              (let ((_tl7778377840_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7777377787_)))
                                    (_hd7778277838_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7777377787_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7778277838_))
                                    (let ((_tl7778577845_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7778277838_)))
                                          (_hd7778477843_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7778277838_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7778577845_))
                                          (let ((_hd77848_ _hd7778477843_)
                                                (_rest77850_ _tl7778377840_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7778177835_
                                               _rest77850_
                                               _hd77848_)))
                                          (let ((_hd77823_ _hd7778277838_)
                                                (_rest77825_ _tl7778377840_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7777877815_
                                               _rest77825_
                                               _hd77823_)))))
                                    (let ((_hd77823_ _hd7778277838_)
                                          (_rest77825_ _tl7778377840_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7777877815_
                                         _rest77825_
                                         _hd77823_)))))
                              (let ()
                                (declare (not safe))
                                (_else7777677795_))))))))
                 (_compile-bind77615_
                  (lambda (_bind77759_ _post77760_ _body77761_)
                    (let ((__tmp79618
                           (let ((__tmp79619
                                  (let ((__tmp79622 (reverse _bind77759_))
                                        (__tmp79620
                                         (let ((__tmp79621
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77616_
                                                   _post77760_
                                                   _body77761_))))
                                           (declare (not safe))
                                           (cons __tmp79621 '()))))
                                    (declare (not safe))
                                    (cons __tmp79622 __tmp79620))))
                             (declare (not safe))
                             (cons 'let __tmp79619))))
                      (declare (not safe))
                      (__SRC__% __tmp79618 _stx77611_))))
                 (_compile-post77616_
                  (lambda (_post77618_ _body77619_)
                    (let ((__tmp79623
                           (let ((__tmp79624
                                  (let ((__tmp79625
                                         (let ((__tmp79627
                                                (lambda (_hd77621_ _r77622_)
                                                  (let* ((_hd7762377646_
                                                          _hd77621_)
                                                         (_E7762777650_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7762377646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7764077744_
                                                           (lambda (_expr77742_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77742_ _r77622_))))
                  (_K7763577722_
                   (lambda (_expr77719_ _id77720_)
                     (let ((__tmp79628
                            (let ((__tmp79629
                                   (let ((__tmp79630
                                          (let ((__tmp79631
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77719_ '()))))
                                            (declare (not safe))
                                            (cons _id77720_ __tmp79631))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79630))))
                              (declare (not safe))
                              (__SRC__% __tmp79629 _stx77611_))))
                       (declare (not safe))
                       (cons __tmp79628 _r77622_))))
                  (_K7762877689_
                   (lambda (_init77654_ _len77655_ _expr77656_ _tmp77657_)
                     (let ((__tmp79632
                            (let ((__tmp79633
                                   (let ((__tmp79634
                                          (let ((__tmp79648
                                                 (let ((__tmp79649
                                                        (let ((__tmp79650
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77656_ '()))))
                  (declare (not safe))
                  (cons _tmp77657_ __tmp79650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79649 '())))
                                                (__tmp79635
                                                 (let ((__tmp79644
                                                        (let ((__tmp79645
                                                               (let ((__tmp79646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79647
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77655_ '()))))
                                (declare (not safe))
                                (cons _tmp77657_ __tmp79647))))
                         (declare (not safe))
                         (cons '__check-values __tmp79646))))
                  (declare (not safe))
                  (__SRC__% __tmp79645 _stx77611_)))
               (__tmp79636
                (let ((__tmp79637
                       (map (lambda (_hd77659_)
                              (let* ((_hd7766077667_ _hd77659_)
                                     (_E7766277671_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7766077667_))))
                                     (_K7766377677_
                                      (lambda (_k77674_ _id77675_)
                                        (let ((__tmp79638
                                               (let ((__tmp79639
                                                      (let ((__tmp79640
                                                             (let ((__tmp79641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79642
                                   (let ((__tmp79643
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77674_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77657_ __tmp79643))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79642))))
                       (declare (not safe))
                       (cons __tmp79641 '()))))
                (declare (not safe))
                (cons _id77675_ __tmp79640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79639))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79638 _stx77611_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7766077667_))
                                    (let ((_hd7766477680_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7766077667_)))
                                          (_tl7766577682_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7766077667_))))
                                      (let* ((_id77685_ _hd7766477680_)
                                             (_k77687_ _tl7766577682_))
                                        (declare (not safe))
                                        (_K7766377677_ _k77687_ _id77685_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7766277671_)))))
                            _init77654_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79644
                                                         __tmp79636))))
                                            (declare (not safe))
                                            (cons __tmp79648 __tmp79635))))
                                     (declare (not safe))
                                     (cons 'let __tmp79634))))
                              (declare (not safe))
                              (__SRC__% __tmp79633 _stx77611_))))
                       (declare (not safe))
                       (cons __tmp79632 _r77622_)))))
              (if (let () (declare (not safe)) (##pair? _hd7762377646_))
                  (let ((_tl7764277749_
                         (let () (declare (not safe)) (##cdr _hd7762377646_)))
                        (_hd7764177747_
                         (let () (declare (not safe)) (##car _hd7762377646_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7764177747_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7764277749_))
                            (let ((_tl7764477754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7764277749_)))
                                  (_hd7764377752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7764277749_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7764477754_))
                                  (let ((_expr77757_ _hd7764377752_))
                                    (declare (not safe))
                                    (_K7764077744_ _expr77757_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7764477754_))
                                      (let ((_tl7763477708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7764477754_)))
                                            (_hd7763377706_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7764477754_))))
                                        (let ((_tmp77697_ _hd7764177747_)
                                              (_expr77704_ _hd7764377752_)
                                              (_len77711_ _hd7763377706_)
                                              (_init77713_ _tl7763477708_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7762877689_
                                             _init77713_
                                             _len77711_
                                             _expr77704_
                                             _tmp77697_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7762777650_)))))
                            (let () (declare (not safe)) (_E7762777650_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7764277749_))
                            (let ((_tl7763977734_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7764277749_)))
                                  (_hd7763877732_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7764277749_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7763977734_))
                                  (let ((_id77730_ _hd7764177747_)
                                        (_expr77737_ _hd7763877732_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7763577722_ _expr77737_ _id77730_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7763977734_))
                                      (let ((_tl7763477708_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7763977734_)))
                                            (_hd7763377706_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7763977734_))))
                                        (let ((_tmp77697_ _hd7764177747_)
                                              (_expr77704_ _hd7763877732_)
                                              (_len77711_ _hd7763377706_)
                                              (_init77713_ _tl7763477708_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7762877689_
                                             _init77713_
                                             _len77711_
                                             _expr77704_
                                             _tmp77697_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7762777650_)))))
                            (let () (declare (not safe)) (_E7762777650_)))))
                  (let () (declare (not safe)) (_E7762777650_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79626 (list _body77619_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79627
                                                   __tmp79626
                                                   _post77618_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79625))))
                             (declare (not safe))
                             (cons 'begin __tmp79624))))
                      (declare (not safe))
                      (__SRC__% __tmp79623 _stx77611_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77611_
             _compile-simple77613_
             _compile-values77614_)))))
    (define __compile-call%
      (lambda (_stx77571_)
        (let* ((_$e77573_ _stx77571_)
               (_$E7757577584_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77573_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77573_))
              (let* ((_$tgt7757677587_
                      (let () (declare (not safe)) (__AST-e _$e77573_)))
                     (_$hd7757777590_
                      (let () (declare (not safe)) (##car _$tgt7757677587_)))
                     (_$tl7757877593_
                      (let () (declare (not safe)) (##cdr _$tgt7757677587_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7757877593_))
                    (let* ((_$tgt7757977597_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7757877593_)))
                           (_$hd7758077600_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7757977597_)))
                           (_$tl7758177603_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7757977597_))))
                      (let* ((_rator77607_ _$hd7758077600_)
                             (_rands77609_ _$tl7758177603_)
                             (__tmp79651
                              (let ((__tmp79653
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77607_)))
                                    (__tmp79652 (map __compile _rands77609_)))
                                (declare (not safe))
                                (cons __tmp79653 __tmp79652))))
                        (declare (not safe))
                        (__SRC__% __tmp79651 _stx77571_)))
                    (let () (declare (not safe)) (_$E7757577584_))))
              (let () (declare (not safe)) (_$E7757577584_))))))
    (define __compile-ref%
      (lambda (_stx77533_)
        (let* ((_$e77535_ _stx77533_)
               (_$E7753777546_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77535_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77535_))
              (let* ((_$tgt7753877549_
                      (let () (declare (not safe)) (__AST-e _$e77535_)))
                     (_$hd7753977552_
                      (let () (declare (not safe)) (##car _$tgt7753877549_)))
                     (_$tl7754077555_
                      (let () (declare (not safe)) (##cdr _$tgt7753877549_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7754077555_))
                    (let* ((_$tgt7754177559_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7754077555_)))
                           (_$hd7754277562_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7754177559_)))
                           (_$tl7754377565_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7754177559_))))
                      (let ((_id77569_ _$hd7754277562_))
                        (if (let ((__tmp79654
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7754377565_))))
                              (declare (not safe))
                              (equal? __tmp79654 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77569_ _stx77533_))
                            (let () (declare (not safe)) (_$E7753777546_)))))
                    (let () (declare (not safe)) (_$E7753777546_))))
              (let () (declare (not safe)) (_$E7753777546_))))))
    (define __compile-setq%
      (lambda (_stx77480_)
        (let* ((_$e77482_ _stx77480_)
               (_$E7748477496_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77482_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77482_))
              (let* ((_$tgt7748577499_
                      (let () (declare (not safe)) (__AST-e _$e77482_)))
                     (_$hd7748677502_
                      (let () (declare (not safe)) (##car _$tgt7748577499_)))
                     (_$tl7748777505_
                      (let () (declare (not safe)) (##cdr _$tgt7748577499_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7748777505_))
                    (let* ((_$tgt7748877509_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7748777505_)))
                           (_$hd7748977512_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7748877509_)))
                           (_$tl7749077515_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7748877509_))))
                      (let ((_id77519_ _$hd7748977512_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7749077515_))
                            (let* ((_$tgt7749177521_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7749077515_)))
                                   (_$hd7749277524_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7749177521_)))
                                   (_$tl7749377527_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7749177521_))))
                              (let ((_expr77531_ _$hd7749277524_))
                                (if (let ((__tmp79660
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7749377527_))))
                                      (declare (not safe))
                                      (equal? __tmp79660 '()))
                                    (let ((__tmp79655
                                           (let ((__tmp79656
                                                  (let ((__tmp79659
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77519_
                                                            _stx77480_)))
                                                        (__tmp79657
                                                         (let ((__tmp79658
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77531_))))
                   (declare (not safe))
                   (cons __tmp79658 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79659
                                                          __tmp79657))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79656))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79655 _stx77480_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7748477496_)))))
                            (let () (declare (not safe)) (_$E7748477496_)))))
                    (let () (declare (not safe)) (_$E7748477496_))))
              (let () (declare (not safe)) (_$E7748477496_))))))
    (define __compile-if%
      (lambda (_stx77412_)
        (let* ((_$e77414_ _stx77412_)
               (_$E7741677431_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77414_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77414_))
              (let* ((_$tgt7741777434_
                      (let () (declare (not safe)) (__AST-e _$e77414_)))
                     (_$hd7741877437_
                      (let () (declare (not safe)) (##car _$tgt7741777434_)))
                     (_$tl7741977440_
                      (let () (declare (not safe)) (##cdr _$tgt7741777434_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7741977440_))
                    (let* ((_$tgt7742077444_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7741977440_)))
                           (_$hd7742177447_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7742077444_)))
                           (_$tl7742277450_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7742077444_))))
                      (let ((_p77454_ _$hd7742177447_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7742277450_))
                            (let* ((_$tgt7742377456_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7742277450_)))
                                   (_$hd7742477459_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7742377456_)))
                                   (_$tl7742577462_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7742377456_))))
                              (let ((_t77466_ _$hd7742477459_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7742577462_))
                                    (let* ((_$tgt7742677468_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7742577462_)))
                                           (_$hd7742777471_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7742677468_)))
                                           (_$tl7742877474_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7742677468_))))
                                      (let ((_f77478_ _$hd7742777471_))
                                        (if (let ((__tmp79668
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7742877474_))))
                                              (declare (not safe))
                                              (equal? __tmp79668 '()))
                                            (let ((__tmp79661
                                                   (let ((__tmp79662
                                                          (let ((__tmp79667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77454_)))
                        (__tmp79663
                         (let ((__tmp79666
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77466_)))
                               (__tmp79664
                                (let ((__tmp79665
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77478_))))
                                  (declare (not safe))
                                  (cons __tmp79665 '()))))
                           (declare (not safe))
                           (cons __tmp79666 __tmp79664))))
                    (declare (not safe))
                    (cons __tmp79667 __tmp79663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79662))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79661 _stx77412_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7741677431_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7741677431_)))))
                            (let () (declare (not safe)) (_$E7741677431_)))))
                    (let () (declare (not safe)) (_$E7741677431_))))
              (let () (declare (not safe)) (_$E7741677431_))))))
    (define __compile-quote%
      (lambda (_stx77374_)
        (let* ((_$e77376_ _stx77374_)
               (_$E7737877387_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77376_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77376_))
              (let* ((_$tgt7737977390_
                      (let () (declare (not safe)) (__AST-e _$e77376_)))
                     (_$hd7738077393_
                      (let () (declare (not safe)) (##car _$tgt7737977390_)))
                     (_$tl7738177396_
                      (let () (declare (not safe)) (##cdr _$tgt7737977390_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7738177396_))
                    (let* ((_$tgt7738277400_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7738177396_)))
                           (_$hd7738377403_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7738277400_)))
                           (_$tl7738477406_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7738277400_))))
                      (let ((_e77410_ _$hd7738377403_))
                        (if (let ((__tmp79672
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7738477406_))))
                              (declare (not safe))
                              (equal? __tmp79672 '()))
                            (let ((__tmp79669
                                   (let ((__tmp79670
                                          (let ((__tmp79671
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77410_))))
                                            (declare (not safe))
                                            (cons __tmp79671 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79670))))
                              (declare (not safe))
                              (__SRC__% __tmp79669 _stx77374_))
                            (let () (declare (not safe)) (_$E7737877387_)))))
                    (let () (declare (not safe)) (_$E7737877387_))))
              (let () (declare (not safe)) (_$E7737877387_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77336_)
        (let* ((_$e77338_ _stx77336_)
               (_$E7734077349_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77338_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77338_))
              (let* ((_$tgt7734177352_
                      (let () (declare (not safe)) (__AST-e _$e77338_)))
                     (_$hd7734277355_
                      (let () (declare (not safe)) (##car _$tgt7734177352_)))
                     (_$tl7734377358_
                      (let () (declare (not safe)) (##cdr _$tgt7734177352_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7734377358_))
                    (let* ((_$tgt7734477362_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7734377358_)))
                           (_$hd7734577365_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7734477362_)))
                           (_$tl7734677368_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7734477362_))))
                      (let ((_e77372_ _$hd7734577365_))
                        (if (let ((__tmp79675
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7734677368_))))
                              (declare (not safe))
                              (equal? __tmp79675 '()))
                            (let ((__tmp79673
                                   (let ((__tmp79674
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77372_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79674))))
                              (declare (not safe))
                              (__SRC__% __tmp79673 _stx77336_))
                            (let () (declare (not safe)) (_$E7734077349_)))))
                    (let () (declare (not safe)) (_$E7734077349_))))
              (let () (declare (not safe)) (_$E7734077349_))))))
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
