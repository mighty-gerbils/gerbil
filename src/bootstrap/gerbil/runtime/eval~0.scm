(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710943025)
  (begin
    (define __syntax::t
      (let ((__tmp79331 (list))
            (__tmp79329
             (let ((__tmp79330
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79330 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79331
         '(e id)
         __tmp79329
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79140_ (apply make-instance __syntax::t _$args79140_)))
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
      (let ((__tmp79334 (list __syntax::t))
            (__tmp79332
             (let ((__tmp79333
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79333 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79334
         '()
         __tmp79332
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79137_ (apply make-instance __core-form::t _$args79137_)))
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
      (let ((__tmp79337 (list __core-form::t))
            (__tmp79335
             (let ((__tmp79336
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79336 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79337
         '()
         __tmp79335
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79134_
        (apply make-instance __core-expression::t _$args79134_)))
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
      (let ((__tmp79340 (list __core-form::t))
            (__tmp79338
             (let ((__tmp79339
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79339 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79340
         '()
         __tmp79338
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79131_
        (apply make-instance __core-special-form::t _$args79131_)))
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
      (lambda (_id79129_)
        (let ((__tmp79341 (let () (declare (not safe)) (__AST-e _id79129_))))
          (declare (not safe))
          (hash-get __core __tmp79341))))
    (define __core-bound-id?__%
      (lambda (_id79113_ _is?79114_)
        (let ((_$e79116_
               (let () (declare (not safe)) (__core-resolve _id79113_))))
          (if _$e79116_ (_is?79114_ _$e79116_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79122_)
        (let ((_is?79124_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79122_ _is?79124_))))
    (define __core-bound-id?
      (lambda _g79343_
        (let ((_g79342_ (let () (declare (not safe)) (##length _g79343_))))
          (cond ((let () (declare (not safe)) (##fx= _g79342_ 1))
                 (apply (lambda (_id79122_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79122_)))
                        _g79343_))
                ((let () (declare (not safe)) (##fx= _g79342_ 2))
                 (apply (lambda (_id79126_ _is?79127_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79126_ _is?79127_)))
                        _g79343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79343_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79096_ _e79097_ _make79098_)
        (let ((__tmp79344
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79097_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79097_
                   (_make79098_ _e79097_ _id79096_))))
          (declare (not safe))
          (hash-put! __core _id79096_ __tmp79344))))
    (define __core-bind-syntax!__0
      (lambda (_id79103_ _e79104_)
        (let ((_make79106_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79103_ _e79104_ _make79106_))))
    (define __core-bind-syntax!
      (lambda _g79346_
        (let ((_g79345_ (let () (declare (not safe)) (##length _g79346_))))
          (cond ((let () (declare (not safe)) (##fx= _g79345_ 2))
                 (apply (lambda (_id79103_ _e79104_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79103_ _e79104_)))
                        _g79346_))
                ((let () (declare (not safe)) (##fx= _g79345_ 3))
                 (apply (lambda (_id79108_ _e79109_ _make79110_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79108_
                             _e79109_
                             _make79110_)))
                        _g79346_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79346_))))))
    (define __SRC__%
      (lambda (_e79079_ _src-stx79080_)
        (if (or (let () (declare (not safe)) (pair? _e79079_))
                (let () (declare (not safe)) (symbol? _e79079_)))
            (let ((__tmp79350
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79080_
                          'gerbil#AST::t))
                       (let ((__tmp79351
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79080_))))
                         (declare (not safe))
                         (__locat __tmp79351))
                       '#f)))
              (declare (not safe))
              (##make-source _e79079_ __tmp79350))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79079_ 'gerbil#AST::t))
                (let ((__tmp79349
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79079_ '1 AST::t '#f)))
                      (__tmp79347
                       (let ((__tmp79348
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79079_))))
                         (declare (not safe))
                         (__locat __tmp79348))))
                  (declare (not safe))
                  (##make-source __tmp79349 __tmp79347))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79079_))))))
    (define __SRC__0
      (lambda (_e79088_)
        (let ((_src-stx79090_ '#f))
          (declare (not safe))
          (__SRC__% _e79088_ _src-stx79090_))))
    (define __SRC
      (lambda _g79353_
        (let ((_g79352_ (let () (declare (not safe)) (##length _g79353_))))
          (cond ((let () (declare (not safe)) (##fx= _g79352_ 1))
                 (apply (lambda (_e79088_)
                          (let () (declare (not safe)) (__SRC__0 _e79088_)))
                        _g79353_))
                ((let () (declare (not safe)) (##fx= _g79352_ 2))
                 (apply (lambda (_e79092_ _src-stx79093_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79092_ _src-stx79093_)))
                        _g79353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79353_))))))
    (define __locat
      (lambda (_loc79076_)
        (if (let () (declare (not safe)) (##locat? _loc79076_))
            _loc79076_
            '#f)))
    (define __check-values
      (lambda (_obj79071_ _k79072_)
        (let ((_count79074_
               (if (let () (declare (not safe)) (##values? _obj79071_))
                   (let () (declare (not safe)) (##vector-length _obj79071_))
                   '1)))
          (if (fx= _count79074_ _k79072_)
              '#!void
              (let ((__tmp79355
                     (if (fx< _count79074_ _k79072_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79354
                     (if (let () (declare (not safe)) (##values? _obj79071_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79071_))
                         _obj79071_)))
                (declare (not safe))
                (error __tmp79355 __tmp79354 _k79072_))))))
    (define __compile
      (lambda (_stx79041_)
        (let* ((_$e79043_ _stx79041_)
               (_$E7904579051_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79043_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79043_))
              (let* ((_$tgt7904679054_
                      (let () (declare (not safe)) (__AST-e _$e79043_)))
                     (_$hd7904779057_
                      (let () (declare (not safe)) (##car _$tgt7904679054_)))
                     (_$tl7904879060_
                      (let () (declare (not safe)) (##cdr _$tgt7904679054_))))
                (let* ((_form79064_ _$hd7904779057_)
                       (_$e79066_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79064_))))
                  (if _$e79066_
                      ((lambda (_bind79069_)
                         ((##structure-ref _bind79069_ '1 __syntax::t '#f)
                          _stx79041_))
                       _$e79066_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx79041_
                         _form79064_)))))
              (let () (declare (not safe)) (_$E7904579051_))))))
    (define __compile-error__%
      (lambda (_stx79028_ _detail79029_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx79028_
           _detail79029_))))
    (define __compile-error__0
      (lambda (_stx79034_)
        (let ((_detail79036_ '#f))
          (declare (not safe))
          (__compile-error__% _stx79034_ _detail79036_))))
    (define __compile-error
      (lambda _g79357_
        (let ((_g79356_ (let () (declare (not safe)) (##length _g79357_))))
          (cond ((let () (declare (not safe)) (##fx= _g79356_ 1))
                 (apply (lambda (_stx79034_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx79034_)))
                        _g79357_))
                ((let () (declare (not safe)) (##fx= _g79356_ 2))
                 (apply (lambda (_stx79038_ _detail79039_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx79038_ _detail79039_)))
                        _g79357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79357_))))))
    (define __compile-ignore%
      (lambda (_stx79025_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx79025_))))
    (define __compile-begin%
      (lambda (_stx79000_)
        (let* ((_$e79002_ _stx79000_)
               (_$E7900479010_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79002_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79002_))
              (let* ((_$tgt7900579013_
                      (let () (declare (not safe)) (__AST-e _$e79002_)))
                     (_$hd7900679016_
                      (let () (declare (not safe)) (##car _$tgt7900579013_)))
                     (_$tl7900779019_
                      (let () (declare (not safe)) (##cdr _$tgt7900579013_))))
                (let* ((_body79023_ _$tl7900779019_)
                       (__tmp79358
                        (let ((__tmp79359 (map __compile _body79023_)))
                          (declare (not safe))
                          (cons 'begin __tmp79359))))
                  (declare (not safe))
                  (__SRC__% __tmp79358 _stx79000_)))
              (let () (declare (not safe)) (_$E7900479010_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78975_)
        (let* ((_$e78977_ _stx78975_)
               (_$E7897978985_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78977_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78977_))
              (let* ((_$tgt7898078988_
                      (let () (declare (not safe)) (__AST-e _$e78977_)))
                     (_$hd7898178991_
                      (let () (declare (not safe)) (##car _$tgt7898078988_)))
                     (_$tl7898278994_
                      (let () (declare (not safe)) (##cdr _$tgt7898078988_))))
                (let* ((_body78998_ _$tl7898278994_)
                       (__tmp79360
                        (let ((__tmp79361
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78998_))))
                          (declare (not safe))
                          (cons 'begin __tmp79361))))
                  (declare (not safe))
                  (__SRC__% __tmp79360 _stx78975_)))
              (let () (declare (not safe)) (_$E7897978985_))))))
    (define __compile-import%
      (lambda (_stx78950_)
        (let* ((_$e78952_ _stx78950_)
               (_$E7895478960_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78952_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78952_))
              (let* ((_$tgt7895578963_
                      (let () (declare (not safe)) (__AST-e _$e78952_)))
                     (_$hd7895678966_
                      (let () (declare (not safe)) (##car _$tgt7895578963_)))
                     (_$tl7895778969_
                      (let () (declare (not safe)) (##cdr _$tgt7895578963_))))
                (let* ((_body78973_ _$tl7895778969_)
                       (__tmp79362
                        (let ((__tmp79363
                               (let ((__tmp79364
                                      (let ((__tmp79365
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78973_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79365))))
                                 (declare (not safe))
                                 (cons __tmp79364 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79363))))
                  (declare (not safe))
                  (__SRC__% __tmp79362 _stx78950_)))
              (let () (declare (not safe)) (_$E7895478960_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78897_)
        (let* ((_$e78899_ _stx78897_)
               (_$E7890178913_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78899_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78899_))
              (let* ((_$tgt7890278916_
                      (let () (declare (not safe)) (__AST-e _$e78899_)))
                     (_$hd7890378919_
                      (let () (declare (not safe)) (##car _$tgt7890278916_)))
                     (_$tl7890478922_
                      (let () (declare (not safe)) (##cdr _$tgt7890278916_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7890478922_))
                    (let* ((_$tgt7890578926_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7890478922_)))
                           (_$hd7890678929_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7890578926_)))
                           (_$tl7890778932_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7890578926_))))
                      (let ((_ann78936_ _$hd7890678929_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7890778932_))
                            (let* ((_$tgt7890878938_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7890778932_)))
                                   (_$hd7890978941_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7890878938_)))
                                   (_$tl7891078944_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7890878938_))))
                              (let ((_expr78948_ _$hd7890978941_))
                                (if (let ((__tmp79366
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7891078944_))))
                                      (declare (not safe))
                                      (equal? __tmp79366 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78948_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7890178913_)))))
                            (let () (declare (not safe)) (_$E7890178913_)))))
                    (let () (declare (not safe)) (_$E7890178913_))))
              (let () (declare (not safe)) (_$E7890178913_))))))
    (define __compile-define-values%
      (lambda (_stx78788_)
        (let* ((_$e78790_ _stx78788_)
               (_$E7879278804_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78790_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78790_))
              (let* ((_$tgt7879378807_
                      (let () (declare (not safe)) (__AST-e _$e78790_)))
                     (_$hd7879478810_
                      (let () (declare (not safe)) (##car _$tgt7879378807_)))
                     (_$tl7879578813_
                      (let () (declare (not safe)) (##cdr _$tgt7879378807_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7879578813_))
                    (let* ((_$tgt7879678817_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7879578813_)))
                           (_$hd7879778820_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7879678817_)))
                           (_$tl7879878823_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7879678817_))))
                      (let ((_hd78827_ _$hd7879778820_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7879878823_))
                            (let* ((_$tgt7879978829_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7879878823_)))
                                   (_$hd7880078832_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7879978829_)))
                                   (_$tl7880178835_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7879978829_))))
                              (let ((_expr78839_ _$hd7880078832_))
                                (if (let ((__tmp79399
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7880178835_))))
                                      (declare (not safe))
                                      (equal? __tmp79399 '()))
                                    (let* ((_$e78841_ _hd78827_)
                                           (_$E7884378884_
                                            (lambda ()
                                              (let ((_$E7884478869_
                                                     (lambda ()
                                                       (let* ((_$E7884578856_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78841_))))
                      (_ids78859_ _hd78827_)
                      (_len78861_ (length _ids78859_))
                      (_tmp78863_
                       (let ((__tmp79367 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79367))))
                 (let ((__tmp79368
                        (let ((__tmp79369
                               (let ((__tmp79386
                                      (let ((__tmp79387
                                             (let ((__tmp79388
                                                    (let ((__tmp79389
                                                           (let ((__tmp79390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78839_))))
                     (declare (not safe))
                     (cons __tmp79390 '()))))
              (declare (not safe))
              (cons _tmp78863_ __tmp79389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79388))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79387 _stx78788_)))
                                     (__tmp79370
                                      (let ((__tmp79382
                                             (let ((__tmp79383
                                                    (let ((__tmp79384
                                                           (let ((__tmp79385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78861_ '()))))
                     (declare (not safe))
                     (cons _tmp78863_ __tmp79385))))
              (declare (not safe))
              (cons '__check-values __tmp79384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79383
                                                _stx78788_)))
                                            (__tmp79371
                                             (let ((__tmp79372
                                                    (let ((__tmp79374
                                                           (lambda (_id78866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78867_)
                     (if (let () (declare (not safe)) (__AST-e _id78866_))
                         (let ((__tmp79375
                                (let ((__tmp79376
                                       (let ((__tmp79381
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78866_)))
                                             (__tmp79377
                                              (let ((__tmp79378
                                                     (let ((__tmp79379
                                                            (let ((__tmp79380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78867_ '()))))
                      (declare (not safe))
                      (cons _tmp78863_ __tmp79380))))
               (declare (not safe))
               (cons '##vector-ref __tmp79379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79378 '()))))
                                         (declare (not safe))
                                         (cons __tmp79381 __tmp79377))))
                                  (declare (not safe))
                                  (cons 'define __tmp79376))))
                           (declare (not safe))
                           (__SRC__% __tmp79375 _stx78788_))
                         '#f)))
                  (__tmp79373 (iota _len78861_)))
              (declare (not safe))
              (filter-map2 __tmp79374 _ids78859_ __tmp79373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79372))))
                                        (declare (not safe))
                                        (cons __tmp79382 __tmp79371))))
                                 (declare (not safe))
                                 (cons __tmp79386 __tmp79370))))
                          (declare (not safe))
                          (cons 'begin __tmp79369))))
                   (declare (not safe))
                   (__SRC__% __tmp79368 _stx78788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78841_))
                                                    (let* ((_$tgt7884678872_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78841_)))
                                                           (_$hd7884778875_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7884678872_)))
                                                           (_$tl7884878878_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7884678872_))))
                                                      (let ((_id78882_
                                                             _$hd7884778875_))
                                                        (if (let ((__tmp79396
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7884878878_))))
                      (declare (not safe))
                      (equal? __tmp79396 '()))
                    (let ((__tmp79391
                           (let ((__tmp79392
                                  (let ((__tmp79395
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78882_)))
                                        (__tmp79393
                                         (let ((__tmp79394
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78839_))))
                                           (declare (not safe))
                                           (cons __tmp79394 '()))))
                                    (declare (not safe))
                                    (cons __tmp79395 __tmp79393))))
                             (declare (not safe))
                             (cons 'define __tmp79392))))
                      (declare (not safe))
                      (__SRC__% __tmp79391 _stx78788_))
                    (let () (declare (not safe)) (_$E7884478869_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7884478869_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78841_))
                                          (let* ((_$tgt7884978887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78841_)))
                                                 (_$hd7885078890_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7884978887_)))
                                                 (_$tl7885178893_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7884978887_))))
                                            (if (let ((__tmp79398
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7885078890_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79398 '#f))
                                                (if (let ((__tmp79397
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7885178893_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79397 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78839_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7884378884_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7884378884_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7884378884_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7879278804_)))))
                            (let () (declare (not safe)) (_$E7879278804_)))))
                    (let () (declare (not safe)) (_$E7879278804_))))
              (let () (declare (not safe)) (_$E7879278804_))))))
    (define __compile-head-id
      (lambda (_e78786_)
        (let ((__tmp79400
               (if (let () (declare (not safe)) (__AST-e _e78786_))
                   _e78786_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79400))))
    (define __compile-lambda-head
      (lambda (_hd78743_)
        (let _recur78745_ ((_rest78747_ _hd78743_))
          (let* ((_$e78749_ _rest78747_)
                 (_$E7875178769_
                  (lambda ()
                    (let ((_$E7875278766_
                           (lambda ()
                             (let* ((_$E7875378761_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78749_))))
                                    (_tail78764_ _$e78749_))
                               (declare (not safe))
                               (__compile-head-id _tail78764_)))))
                      (if (let ((__tmp79401
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78749_))))
                            (declare (not safe))
                            (equal? __tmp79401 '()))
                          '()
                          (let () (declare (not safe)) (_$E7875278766_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78749_))
                (let* ((_$tgt7875478772_
                        (let () (declare (not safe)) (__AST-e _$e78749_)))
                       (_$hd7875578775_
                        (let () (declare (not safe)) (##car _$tgt7875478772_)))
                       (_$tl7875678778_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7875478772_))))
                  (let* ((_hd78782_ _$hd7875578775_)
                         (_rest78784_ _$tl7875678778_))
                    (let ((__tmp79403
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78782_)))
                          (__tmp79402
                           (let ()
                             (declare (not safe))
                             (_recur78745_ _rest78784_))))
                      (declare (not safe))
                      (cons __tmp79403 __tmp79402))))
                (let () (declare (not safe)) (_$E7875178769_)))))))
    (define __compile-lambda%
      (lambda (_stx78690_)
        (let* ((_$e78692_ _stx78690_)
               (_$E7869478706_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78692_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78692_))
              (let* ((_$tgt7869578709_
                      (let () (declare (not safe)) (__AST-e _$e78692_)))
                     (_$hd7869678712_
                      (let () (declare (not safe)) (##car _$tgt7869578709_)))
                     (_$tl7869778715_
                      (let () (declare (not safe)) (##cdr _$tgt7869578709_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7869778715_))
                    (let* ((_$tgt7869878719_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7869778715_)))
                           (_$hd7869978722_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7869878719_)))
                           (_$tl7870078725_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7869878719_))))
                      (let ((_hd78729_ _$hd7869978722_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7870078725_))
                            (let* ((_$tgt7870178731_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7870078725_)))
                                   (_$hd7870278734_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7870178731_)))
                                   (_$tl7870378737_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7870178731_))))
                              (let ((_body78741_ _$hd7870278734_))
                                (if (let ((__tmp79409
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7870378737_))))
                                      (declare (not safe))
                                      (equal? __tmp79409 '()))
                                    (let ((__tmp79404
                                           (let ((__tmp79405
                                                  (let ((__tmp79408
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78729_)))
                                                        (__tmp79406
                                                         (let ((__tmp79407
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78741_))))
                   (declare (not safe))
                   (cons __tmp79407 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79408
                                                          __tmp79406))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79405))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79404 _stx78690_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7869478706_)))))
                            (let () (declare (not safe)) (_$E7869478706_)))))
                    (let () (declare (not safe)) (_$E7869478706_))))
              (let () (declare (not safe)) (_$E7869478706_))))))
    (define __compile-case-lambda%
      (lambda (_stx78482_)
        (letrec ((_variadic?78484_
                  (lambda (_hd78655_)
                    (let* ((_$e78657_ _hd78655_)
                           (_$E7865978675_
                            (lambda ()
                              (let ((_$E7866078672_
                                     (lambda ()
                                       (let ((_$E7866178669_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78657_)))))
                                         '#t))))
                                (if (let ((__tmp79410
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78657_))))
                                      (declare (not safe))
                                      (equal? __tmp79410 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7866078672_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78657_))
                          (let* ((_$tgt7866278678_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78657_)))
                                 (_$hd7866378681_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7866278678_)))
                                 (_$tl7866478684_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7866278678_))))
                            (let ((_rest78688_ _$tl7866478684_))
                              (declare (not safe))
                              (_variadic?78484_ _rest78688_)))
                          (let () (declare (not safe)) (_$E7865978675_))))))
                 (_arity78485_
                  (lambda (_hd78620_)
                    (let _lp78622_ ((_rest78624_ _hd78620_) (_k78625_ '0))
                      (let* ((_$e78627_ _rest78624_)
                             (_$E7862978640_
                              (lambda ()
                                (let ((_$E7863078637_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78627_)))))
                                  _k78625_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78627_))
                            (let* ((_$tgt7863178643_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78627_)))
                                   (_$hd7863278646_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7863178643_)))
                                   (_$tl7863378649_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7863178643_))))
                              (let* ((_rest78653_ _$tl7863378649_)
                                     (__tmp79411
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78625_ '1))))
                                (declare (not safe))
                                (_lp78622_ _rest78653_ __tmp79411)))
                            (let () (declare (not safe)) (_$E7862978640_)))))))
                 (_generate78486_
                  (lambda (_rest78547_ _args78548_ _len78549_)
                    (let* ((_$e78551_ _rest78547_)
                           (_$E7855378564_
                            (lambda ()
                              (let* ((_$E7855478561_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78551_))))
                                     (__tmp79412
                                      (let ((__tmp79413
                                             (let ((__tmp79414
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78548_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79414))))
                                        (declare (not safe))
                                        (cons 'error __tmp79413))))
                                (declare (not safe))
                                (__SRC__% __tmp79412 _stx78482_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78551_))
                          (let* ((_$tgt7855578567_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78551_)))
                                 (_$hd7855678570_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7855578567_)))
                                 (_$tl7855778573_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7855578567_))))
                            (let* ((_clause78577_ _$hd7855678570_)
                                   (_rest78579_ _$tl7855778573_)
                                   (_$e78581_ _clause78577_)
                                   (_$E7858378592_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78581_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78581_))
                                  (let* ((_$tgt7858478595_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78581_)))
                                         (_$hd7858578598_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7858478595_)))
                                         (_$tl7858678601_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7858478595_))))
                                    (let ((_hd78605_ _$hd7858578598_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7858678601_))
                                          (let* ((_$tgt7858778607_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7858678601_)))
                                                 (_$hd7858878610_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7858778607_)))
                                                 (_$tl7858978613_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7858778607_))))
                                            (if (let ((__tmp79429
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7858978613_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79429 '()))
                                                (let ((_clen78617_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78485_
                                                          _hd78605_)))
                                                      (_cmp78618_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78484_
                                                              _hd78605_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79415
                                                         (let ((__tmp79416
                                                                (let ((__tmp79426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79427
                                      (let ((__tmp79428
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78617_ '()))))
                                        (declare (not safe))
                                        (cons _len78549_ __tmp79428))))
                                 (declare (not safe))
                                 (cons _cmp78618_ __tmp79427)))
                              (__tmp79417
                               (let ((__tmp79420
                                      (let ((__tmp79421
                                             (let ((__tmp79422
                                                    (let ((__tmp79424
                                                           (let ((__tmp79425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78577_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79425)))
                  (__tmp79423
                   (let () (declare (not safe)) (cons _args78548_ '()))))
              (declare (not safe))
              (cons __tmp79424 __tmp79423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79422))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79421 _stx78482_)))
                                     (__tmp79418
                                      (let ((__tmp79419
                                             (let ()
                                               (declare (not safe))
                                               (_generate78486_
                                                _rest78579_
                                                _args78548_
                                                _len78549_))))
                                        (declare (not safe))
                                        (cons __tmp79419 '()))))
                                 (declare (not safe))
                                 (cons __tmp79420 __tmp79418))))
                          (declare (not safe))
                          (cons __tmp79426 __tmp79417))))
                   (declare (not safe))
                   (cons 'if __tmp79416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79415
                                                     _stx78482_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7858378592_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7858378592_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7858378592_)))))
                          (let () (declare (not safe)) (_$E7855378564_)))))))
          (let* ((_$e78488_ _stx78482_)
                 (_$E7849078522_
                  (lambda ()
                    (let ((_$E7849178504_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78488_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78488_))
                          (let* ((_$tgt7849278507_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78488_)))
                                 (_$hd7849378510_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7849278507_)))
                                 (_$tl7849478513_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7849278507_))))
                            (let ((_clauses78517_ _$tl7849478513_))
                              (let ((_args78519_
                                     (let ((__tmp79430 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79430 _stx78482_)))
                                    (_len78520_
                                     (let ((__tmp79431 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79431 _stx78482_))))
                                (let ((__tmp79432
                                       (let ((__tmp79433
                                              (let ((__tmp79434
                                                     (let ((__tmp79435
                                                            (let ((__tmp79436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79437
                                  (let ((__tmp79440
                                         (let ((__tmp79441
                                                (let ((__tmp79442
                                                       (let ((__tmp79443
                                                              (let ((__tmp79444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79445
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78519_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79445))))
                        (declare (not safe))
                        (__SRC__% __tmp79444 _stx78482_))))
                 (declare (not safe))
                 (cons __tmp79443 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78520_
                                                        __tmp79442))))
                                           (declare (not safe))
                                           (cons __tmp79441 '())))
                                        (__tmp79438
                                         (let ((__tmp79439
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78486_
                                                   _clauses78517_
                                                   _args78519_
                                                   _len78520_))))
                                           (declare (not safe))
                                           (cons __tmp79439 '()))))
                                    (declare (not safe))
                                    (cons __tmp79440 __tmp79438))))
                             (declare (not safe))
                             (cons 'let __tmp79437))))
                      (declare (not safe))
                      (__SRC__% __tmp79436 _stx78482_))))
               (declare (not safe))
               (cons __tmp79435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78519_
                                                      __tmp79434))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79433))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79432 _stx78482_)))))
                          (let () (declare (not safe)) (_$E7849178504_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78488_))
                (let* ((_$tgt7849578525_
                        (let () (declare (not safe)) (__AST-e _$e78488_)))
                       (_$hd7849678528_
                        (let () (declare (not safe)) (##car _$tgt7849578525_)))
                       (_$tl7849778531_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7849578525_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7849778531_))
                      (let* ((_$tgt7849878535_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7849778531_)))
                             (_$hd7849978538_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7849878535_)))
                             (_$tl7850078541_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7849878535_))))
                        (let ((_clause78545_ _$hd7849978538_))
                          (if (let ((__tmp79447
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7850078541_))))
                                (declare (not safe))
                                (equal? __tmp79447 '()))
                              (let ((__tmp79446
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78545_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79446))
                              (let () (declare (not safe)) (_$E7849078522_)))))
                      (let () (declare (not safe)) (_$E7849078522_))))
                (let () (declare (not safe)) (_$E7849078522_)))))))
    (define __compile-let-form
      (lambda (_stx78251_ _compile-simple78252_ _compile-values78253_)
        (letrec ((_simple-bind?78255_
                  (lambda (_hd78440_)
                    (let* ((_hd7844178451_ _hd78440_)
                           (_else7844478459_ (lambda () '#f)))
                      (let ((_K7844778472_ (lambda (_id78470_) '#t))
                            (_K7844678464_ (lambda () '#t)))
                        (let ((_try-match7844378467_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7844178451_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7844678464_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7844478459_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7844178451_))
                              (let ((_tl7844978477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7844178451_)))
                                    (_hd7844878475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7844178451_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7844978477_))
                                    (let ((_id78480_ _hd7844878475_))
                                      (declare (not safe))
                                      (_K7844778472_ _id78480_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7844378467_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7844378467_))))))))
                 (_car-e78256_
                  (lambda (_hd78438_)
                    (if (let () (declare (not safe)) (pair? _hd78438_))
                        (car _hd78438_)
                        _hd78438_))))
          (let* ((_$e78258_ _stx78251_)
                 (_$E7826078403_
                  (lambda ()
                    (let ((_$E7826178283_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78258_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78258_))
                          (let* ((_$tgt7826278286_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78258_)))
                                 (_$hd7826378289_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7826278286_)))
                                 (_$tl7826478292_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7826278286_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7826478292_))
                                (let* ((_$tgt7826578296_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7826478292_)))
                                       (_$hd7826678299_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7826578296_)))
                                       (_$tl7826778302_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7826578296_))))
                                  (let ((_hd78306_ _$hd7826678299_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7826778302_))
                                        (let* ((_$tgt7826878308_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7826778302_)))
                                               (_$hd7826978311_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7826878308_)))
                                               (_$tl7827078314_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7826878308_))))
                                          (let ((_body78318_ _$hd7826978311_))
                                            (if (let ((__tmp79450
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7827078314_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79450 '()))
                                                (let* ((_hd-ids78358_
                                                        (map (lambda (_bind78320_)
                                                               (let* ((_$e78322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78320_)
                              (_$E7832478333_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78322_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78322_))
                             (let* ((_$tgt7832578336_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78322_)))
                                    (_$hd7832678339_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7832578336_)))
                                    (_$tl7832778342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7832578336_))))
                               (let ((_ids78346_ _$hd7832678339_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7832778342_))
                                     (let* ((_$tgt7832878348_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7832778342_)))
                                            (_$hd7832978351_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7832878348_)))
                                            (_$tl7833078354_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7832878348_))))
                                       (if (let ((__tmp79448
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7833078354_))))
                                             (declare (not safe))
                                             (equal? __tmp79448 '()))
                                           _ids78346_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7832478333_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7832478333_)))))
                             (let () (declare (not safe)) (_$E7832478333_)))))
                     _hd78306_))
               (_exprs78398_
                (map (lambda (_bind78360_)
                       (let* ((_$e78362_ _bind78360_)
                              (_$E7836478373_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78362_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78362_))
                             (let* ((_$tgt7836578376_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78362_)))
                                    (_$hd7836678379_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7836578376_)))
                                    (_$tl7836778382_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7836578376_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7836778382_))
                                   (let* ((_$tgt7836878386_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7836778382_)))
                                          (_$hd7836978389_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7836878386_)))
                                          (_$tl7837078392_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7836878386_))))
                                     (let ((_expr78396_ _$hd7836978389_))
                                       (if (let ((__tmp79449
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7837078392_))))
                                             (declare (not safe))
                                             (equal? __tmp79449 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78396_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7836478373_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7836478373_))))
                             (let () (declare (not safe)) (_$E7836478373_)))))
                     _hd78306_))
               (_body78400_
                (let () (declare (not safe)) (__compile _body78318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78358_))
              (_compile-simple78252_
               (map _car-e78256_ _hd-ids78358_)
               _exprs78398_
               _body78400_)
              (_compile-values78253_ _hd-ids78358_ _exprs78398_ _body78400_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7826178283_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7826178283_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7826178283_))))
                          (let () (declare (not safe)) (_$E7826178283_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78258_))
                (let* ((_$tgt7827178406_
                        (let () (declare (not safe)) (__AST-e _$e78258_)))
                       (_$hd7827278409_
                        (let () (declare (not safe)) (##car _$tgt7827178406_)))
                       (_$tl7827378412_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7827178406_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7827378412_))
                      (let* ((_$tgt7827478416_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7827378412_)))
                             (_$hd7827578419_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7827478416_)))
                             (_$tl7827678422_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7827478416_))))
                        (if (let ((__tmp79452
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7827578419_))))
                              (declare (not safe))
                              (equal? __tmp79452 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7827678422_))
                                (let* ((_$tgt7827778426_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7827678422_)))
                                       (_$hd7827878429_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7827778426_)))
                                       (_$tl7827978432_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7827778426_))))
                                  (let ((_body78436_ _$hd7827878429_))
                                    (if (let ((__tmp79451
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7827978432_))))
                                          (declare (not safe))
                                          (equal? __tmp79451 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78436_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7826078403_)))))
                                (let () (declare (not safe)) (_$E7826078403_)))
                            (let () (declare (not safe)) (_$E7826078403_))))
                      (let () (declare (not safe)) (_$E7826078403_))))
                (let () (declare (not safe)) (_$E7826078403_)))))))
    (define __compile-let-values%
      (lambda (_stx78066_)
        (letrec ((_compile-simple78068_
                  (lambda (_hd-ids78247_ _exprs78248_ _body78249_)
                    (let ((__tmp79453
                           (let ((__tmp79454
                                  (let ((__tmp79456
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78247_)
                                              _exprs78248_))
                                        (__tmp79455
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78249_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79456 __tmp79455))))
                             (declare (not safe))
                             (cons 'let __tmp79454))))
                      (declare (not safe))
                      (__SRC__% __tmp79453 _stx78066_))))
                 (_compile-values78069_
                  (lambda (_hd-ids78165_ _exprs78166_ _body78167_)
                    (let _lp78169_ ((_rest78171_ _hd-ids78165_)
                                    (_exprs78172_ _exprs78166_)
                                    (_bind78173_ '())
                                    (_post78174_ '()))
                      (let* ((_rest7817578189_ _rest78171_)
                             (_else7817878197_
                              (lambda ()
                                (let ((__tmp79457
                                       (let ((__tmp79458
                                              (let ((__tmp79461
                                                     (reverse _bind78173_))
                                                    (__tmp79459
                                                     (let ((__tmp79460
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78070_
                                                               _post78174_
                                                               _body78167_))))
                                                       (declare (not safe))
                                                       (cons __tmp79460 '()))))
                                                (declare (not safe))
                                                (cons __tmp79461 __tmp79459))))
                                         (declare (not safe))
                                         (cons 'let __tmp79458))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79457 _stx78066_)))))
                        (let ((_K7818378230_
                               (lambda (_rest78227_ _id78228_)
                                 (let ((__tmp79467 (cdr _exprs78172_))
                                       (__tmp79462
                                        (let ((__tmp79463
                                               (let ((__tmp79466
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78228_)))
                                                     (__tmp79464
                                                      (let ((__tmp79465
                                                             (car _exprs78172_)))
                                                        (declare (not safe))
                                                        (cons __tmp79465
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79466
                                                       __tmp79464))))
                                          (declare (not safe))
                                          (cons __tmp79463 _bind78173_))))
                                   (declare (not safe))
                                   (_lp78169_
                                    _rest78227_
                                    __tmp79467
                                    __tmp79462
                                    _post78174_))))
                              (_K7818078212_
                               (lambda (_rest78201_ _hd78202_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78202_))
                                     (let ((__tmp79488 (cdr _exprs78172_))
                                           (__tmp79481
                                            (let ((__tmp79482
                                                   (let ((__tmp79487
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78202_)))
                                                         (__tmp79483
                                                          (let ((__tmp79484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79485
                                (let ((__tmp79486 (car _exprs78172_)))
                                  (declare (not safe))
                                  (cons __tmp79486 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79485))))
                    (declare (not safe))
                    (cons __tmp79484 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79487
                                                           __tmp79483))))
                                              (declare (not safe))
                                              (cons __tmp79482 _bind78173_))))
                                       (declare (not safe))
                                       (_lp78169_
                                        _rest78201_
                                        __tmp79488
                                        __tmp79481
                                        _post78174_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78202_))
                                         (let* ((_len78204_ (length _hd78202_))
                                                (_tmp78206_
                                                 (let ((__tmp79468 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79468))))
                                           (let ((__tmp79480
                                                  (cdr _exprs78172_))
                                                 (__tmp79476
                                                  (let ((__tmp79477
                                                         (let ((__tmp79478
                                                                (let ((__tmp79479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78172_)))
                          (declare (not safe))
                          (cons __tmp79479 '()))))
                   (declare (not safe))
                   (cons _tmp78206_ __tmp79478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79477
                                                          _bind78173_)))
                                                 (__tmp79469
                                                  (let ((__tmp79470
                                                         (let ((__tmp79471
                                                                (let ((__tmp79472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79474
                                      (lambda (_id78209_ _k78210_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78209_))
                                            (let ((__tmp79475
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78209_))))
                                              (declare (not safe))
                                              (cons __tmp79475 _k78210_))
                                            '#f)))
                                     (__tmp79473 (iota _len78204_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79474
                                  _hd78202_
                                  __tmp79473))))
                          (declare (not safe))
                          (cons _len78204_ __tmp79472))))
                   (declare (not safe))
                   (cons _tmp78206_ __tmp79471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79470
                                                          _post78174_))))
                                             (declare (not safe))
                                             (_lp78169_
                                              _rest78201_
                                              __tmp79480
                                              __tmp79476
                                              __tmp79469)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78066_
                                            _hd78202_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7817578189_))
                              (let ((_tl7818578235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7817578189_)))
                                    (_hd7818478233_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7817578189_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7818478233_))
                                    (let ((_tl7818778240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7818478233_)))
                                          (_hd7818678238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7818478233_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7818778240_))
                                          (let ((_id78243_ _hd7818678238_)
                                                (_rest78245_ _tl7818578235_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7818378230_
                                               _rest78245_
                                               _id78243_)))
                                          (let ((_hd78220_ _hd7818478233_)
                                                (_rest78222_ _tl7818578235_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7818078212_
                                               _rest78222_
                                               _hd78220_)))))
                                    (let ((_hd78220_ _hd7818478233_)
                                          (_rest78222_ _tl7818578235_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7818078212_
                                         _rest78222_
                                         _hd78220_)))))
                              (let ()
                                (declare (not safe))
                                (_else7817878197_))))))))
                 (_compile-post78070_
                  (lambda (_post78072_ _body78073_)
                    (let _lp78075_ ((_rest78077_ _post78072_)
                                    (_check78078_ '())
                                    (_bind78079_ '()))
                      (let* ((_rest7808078092_ _rest78077_)
                             (_else7808278100_
                              (lambda ()
                                (let ((__tmp79489
                                       (let ((__tmp79490
                                              (let ((__tmp79491
                                                     (let ((__tmp79492
                                                            (let ((__tmp79493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79494
                                  (let ((__tmp79495
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78073_ '()))))
                                    (declare (not safe))
                                    (cons _bind78079_ __tmp79495))))
                             (declare (not safe))
                             (cons 'let __tmp79494))))
                      (declare (not safe))
                      (__SRC__% __tmp79493 _stx78066_))))
               (declare (not safe))
               (cons __tmp79492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79491
                                                        _check78078_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79490))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79489 _stx78066_))))
                             (_K7808478139_
                              (lambda (_rest78103_
                                       _init78104_
                                       _len78105_
                                       _tmp78106_)
                                (let ((__tmp79503
                                       (let ((__tmp79504
                                              (let ((__tmp79505
                                                     (let ((__tmp79506
                                                            (let ((__tmp79507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78105_ '()))))
                      (declare (not safe))
                      (cons _tmp78106_ __tmp79507))))
               (declare (not safe))
               (cons '__check-values __tmp79506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79505
                                                 _stx78066_))))
                                         (declare (not safe))
                                         (cons __tmp79504 _check78078_)))
                                      (__tmp79496
                                       (let ((__tmp79497
                                              (lambda (_hd78108_ _r78109_)
                                                (let* ((_hd7811078117_
                                                        _hd78108_)
                                                       (_E7811278121_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7811078117_))))
               (_K7811378127_
                (lambda (_k78124_ _id78125_)
                  (let ((__tmp79498
                         (let ((__tmp79499
                                (let ((__tmp79500
                                       (let ((__tmp79501
                                              (let ((__tmp79502
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78124_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78106_ __tmp79502))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79501))))
                                  (declare (not safe))
                                  (cons __tmp79500 '()))))
                           (declare (not safe))
                           (cons _id78125_ __tmp79499))))
                    (declare (not safe))
                    (cons __tmp79498 _r78109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7811078117_))
                                                      (let ((_hd7811478130_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7811078117_)))
                    (_tl7811578132_
                     (let () (declare (not safe)) (##cdr _hd7811078117_))))
                (let* ((_id78135_ _hd7811478130_) (_k78137_ _tl7811578132_))
                  (declare (not safe))
                  (_K7811378127_ _k78137_ _id78135_)))
              (let () (declare (not safe)) (_E7811278121_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79497
                                                 _bind78079_
                                                 _init78104_))))
                                  (declare (not safe))
                                  (_lp78075_
                                   _rest78103_
                                   __tmp79503
                                   __tmp79496)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7808078092_))
                            (let ((_hd7808578142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7808078092_)))
                                  (_tl7808678144_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7808078092_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7808578142_))
                                  (let ((_hd7808778147_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7808578142_)))
                                        (_tl7808878149_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7808578142_))))
                                    (let ((_tmp78152_ _hd7808778147_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7808878149_))
                                          (let ((_hd7808978154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7808878149_)))
                                                (_tl7809078156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7808878149_))))
                                            (let* ((_len78159_ _hd7808978154_)
                                                   (_init78161_ _tl7809078156_)
                                                   (_rest78163_
                                                    _tl7808678144_))
                                              (declare (not safe))
                                              (_K7808478139_
                                               _rest78163_
                                               _init78161_
                                               _len78159_
                                               _tmp78152_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7808278100_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7808278100_))))
                            (let ()
                              (declare (not safe))
                              (_else7808278100_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78066_
             _compile-simple78068_
             _compile-values78069_)))))
    (define __compile-letrec-values%
      (lambda (_stx77866_)
        (letrec ((_compile-simple77868_
                  (lambda (_hd-ids78062_ _exprs78063_ _body78064_)
                    (let ((__tmp79508
                           (let ((__tmp79509
                                  (let ((__tmp79511
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78062_)
                                              _exprs78063_))
                                        (__tmp79510
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78064_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79511 __tmp79510))))
                             (declare (not safe))
                             (cons 'letrec __tmp79509))))
                      (declare (not safe))
                      (__SRC__% __tmp79508 _stx77866_))))
                 (_compile-values77869_
                  (lambda (_hd-ids77976_ _exprs77977_ _body77978_)
                    (let _lp77980_ ((_rest77982_ _hd-ids77976_)
                                    (_exprs77983_ _exprs77977_)
                                    (_pre77984_ '())
                                    (_bind77985_ '())
                                    (_post77986_ '()))
                      (let* ((_rest7798778001_ _rest77982_)
                             (_else7799078009_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77870_
                                   _pre77984_
                                   _bind77985_
                                   _post77986_
                                   _body77978_)))))
                        (let ((_K7799578045_
                               (lambda (_rest78042_ _id78043_)
                                 (let ((__tmp79517 (cdr _exprs77983_))
                                       (__tmp79512
                                        (let ((__tmp79513
                                               (let ((__tmp79516
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78043_)))
                                                     (__tmp79514
                                                      (let ((__tmp79515
                                                             (car _exprs77983_)))
                                                        (declare (not safe))
                                                        (cons __tmp79515
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79516
                                                       __tmp79514))))
                                          (declare (not safe))
                                          (cons __tmp79513 _bind77985_))))
                                   (declare (not safe))
                                   (_lp77980_
                                    _rest78042_
                                    __tmp79517
                                    _pre77984_
                                    __tmp79512
                                    _post77986_))))
                              (_K7799278027_
                               (lambda (_rest78013_ _hd78014_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78014_))
                                     (let ((__tmp79545 (cdr _exprs77983_))
                                           (__tmp79538
                                            (let ((__tmp79539
                                                   (let ((__tmp79544
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78014_)))
                                                         (__tmp79540
                                                          (let ((__tmp79541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79542
                                (let ((__tmp79543 (car _exprs77983_)))
                                  (declare (not safe))
                                  (cons __tmp79543 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79542))))
                    (declare (not safe))
                    (cons __tmp79541 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79544
                                                           __tmp79540))))
                                              (declare (not safe))
                                              (cons __tmp79539 _bind77985_))))
                                       (declare (not safe))
                                       (_lp77980_
                                        _rest78013_
                                        __tmp79545
                                        _pre77984_
                                        __tmp79538
                                        _post77986_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78014_))
                                         (let* ((_len78016_ (length _hd78014_))
                                                (_tmp78018_
                                                 (let ((__tmp79518 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79518))))
                                           (let ((__tmp79537
                                                  (cdr _exprs77983_))
                                                 (__tmp79530
                                                  (let ((__tmp79531
                                                         (lambda (_id78021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r78022_)
                   (if (let () (declare (not safe)) (__AST-e _id78021_))
                       (let ((__tmp79532
                              (let ((__tmp79536
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id78021_)))
                                    (__tmp79533
                                     (let ((__tmp79534
                                            (let ((__tmp79535
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79535))))
                                       (declare (not safe))
                                       (cons __tmp79534 '()))))
                                (declare (not safe))
                                (cons __tmp79536 __tmp79533))))
                         (declare (not safe))
                         (cons __tmp79532 _r78022_))
                       _r78022_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79531
                                                            _pre77984_
                                                            _hd78014_)))
                                                 (__tmp79526
                                                  (let ((__tmp79527
                                                         (let ((__tmp79528
                                                                (let ((__tmp79529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77983_)))
                          (declare (not safe))
                          (cons __tmp79529 '()))))
                   (declare (not safe))
                   (cons _tmp78018_ __tmp79528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79527
                                                          _bind77985_)))
                                                 (__tmp79519
                                                  (let ((__tmp79520
                                                         (let ((__tmp79521
                                                                (let ((__tmp79522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79524
                                      (lambda (_id78024_ _k78025_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78024_))
                                            (let ((__tmp79525
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78024_))))
                                              (declare (not safe))
                                              (cons __tmp79525 _k78025_))
                                            '#f)))
                                     (__tmp79523 (iota _len78016_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79524
                                  _hd78014_
                                  __tmp79523))))
                          (declare (not safe))
                          (cons _len78016_ __tmp79522))))
                   (declare (not safe))
                   (cons _tmp78018_ __tmp79521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79520
                                                          _post77986_))))
                                             (declare (not safe))
                                             (_lp77980_
                                              _rest78013_
                                              __tmp79537
                                              __tmp79530
                                              __tmp79526
                                              __tmp79519)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77866_
                                            _hd78014_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7798778001_))
                              (let ((_tl7799778050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7798778001_)))
                                    (_hd7799678048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7798778001_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7799678048_))
                                    (let ((_tl7799978055_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7799678048_)))
                                          (_hd7799878053_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7799678048_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7799978055_))
                                          (let ((_id78058_ _hd7799878053_)
                                                (_rest78060_ _tl7799778050_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7799578045_
                                               _rest78060_
                                               _id78058_)))
                                          (let ((_hd78035_ _hd7799678048_)
                                                (_rest78037_ _tl7799778050_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7799278027_
                                               _rest78037_
                                               _hd78035_)))))
                                    (let ((_hd78035_ _hd7799678048_)
                                          (_rest78037_ _tl7799778050_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7799278027_
                                         _rest78037_
                                         _hd78035_)))))
                              (let ()
                                (declare (not safe))
                                (_else7799078009_))))))))
                 (_compile-inner77870_
                  (lambda (_pre77971_ _bind77972_ _post77973_ _body77974_)
                    (if (let () (declare (not safe)) (null? _pre77971_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77871_
                           _bind77972_
                           _post77973_
                           _body77974_))
                        (let ((__tmp79546
                               (let ((__tmp79547
                                      (let ((__tmp79550 (reverse _pre77971_))
                                            (__tmp79548
                                             (let ((__tmp79549
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77871_
                                                       _bind77972_
                                                       _post77973_
                                                       _body77974_))))
                                               (declare (not safe))
                                               (cons __tmp79549 '()))))
                                        (declare (not safe))
                                        (cons __tmp79550 __tmp79548))))
                                 (declare (not safe))
                                 (cons 'let __tmp79547))))
                          (declare (not safe))
                          (__SRC__% __tmp79546 _stx77866_)))))
                 (_compile-bind77871_
                  (lambda (_bind77967_ _post77968_ _body77969_)
                    (let ((__tmp79551
                           (let ((__tmp79552
                                  (let ((__tmp79555 (reverse _bind77967_))
                                        (__tmp79553
                                         (let ((__tmp79554
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77872_
                                                   _post77968_
                                                   _body77969_))))
                                           (declare (not safe))
                                           (cons __tmp79554 '()))))
                                    (declare (not safe))
                                    (cons __tmp79555 __tmp79553))))
                             (declare (not safe))
                             (cons 'letrec __tmp79552))))
                      (declare (not safe))
                      (__SRC__% __tmp79551 _stx77866_))))
                 (_compile-post77872_
                  (lambda (_post77874_ _body77875_)
                    (let _lp77877_ ((_rest77879_ _post77874_)
                                    (_check77880_ '())
                                    (_bind77881_ '()))
                      (let* ((_rest7788277894_ _rest77879_)
                             (_else7788477902_
                              (lambda ()
                                (let ((__tmp79556
                                       (let ((__tmp79557
                                              (let ((__tmp79558
                                                     (let ((__tmp79559
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79559 _bind77881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79558
                                                        _check77880_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79557))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79556 _stx77866_))))
                             (_K7788677941_
                              (lambda (_rest77905_
                                       _init77906_
                                       _len77907_
                                       _tmp77908_)
                                (let ((__tmp79568
                                       (let ((__tmp79569
                                              (let ((__tmp79570
                                                     (let ((__tmp79571
                                                            (let ((__tmp79572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77907_ '()))))
                      (declare (not safe))
                      (cons _tmp77908_ __tmp79572))))
               (declare (not safe))
               (cons '__check-values __tmp79571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79570
                                                 _stx77866_))))
                                         (declare (not safe))
                                         (cons __tmp79569 _check77880_)))
                                      (__tmp79560
                                       (let ((__tmp79561
                                              (lambda (_hd77910_ _r77911_)
                                                (let* ((_hd7791277919_
                                                        _hd77910_)
                                                       (_E7791477923_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7791277919_))))
               (_K7791577929_
                (lambda (_k77926_ _id77927_)
                  (let ((__tmp79562
                         (let ((__tmp79563
                                (let ((__tmp79564
                                       (let ((__tmp79565
                                              (let ((__tmp79566
                                                     (let ((__tmp79567
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77908_ __tmp79567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79566))))
                                         (declare (not safe))
                                         (cons __tmp79565 '()))))
                                  (declare (not safe))
                                  (cons _id77927_ __tmp79564))))
                           (declare (not safe))
                           (cons 'set! __tmp79563))))
                    (declare (not safe))
                    (cons __tmp79562 _r77911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7791277919_))
                                                      (let ((_hd7791677932_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7791277919_)))
                    (_tl7791777934_
                     (let () (declare (not safe)) (##cdr _hd7791277919_))))
                (let* ((_id77937_ _hd7791677932_) (_k77939_ _tl7791777934_))
                  (declare (not safe))
                  (_K7791577929_ _k77939_ _id77937_)))
              (let () (declare (not safe)) (_E7791477923_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79561
                                                 _bind77881_
                                                 _init77906_))))
                                  (declare (not safe))
                                  (_lp77877_
                                   _rest77905_
                                   __tmp79568
                                   __tmp79560)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7788277894_))
                            (let ((_hd7788777944_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7788277894_)))
                                  (_tl7788877946_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7788277894_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7788777944_))
                                  (let ((_hd7788977949_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7788777944_)))
                                        (_tl7789077951_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7788777944_))))
                                    (let ((_tmp77954_ _hd7788977949_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7789077951_))
                                          (let ((_hd7789177956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7789077951_)))
                                                (_tl7789277958_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7789077951_))))
                                            (let* ((_len77961_ _hd7789177956_)
                                                   (_init77963_ _tl7789277958_)
                                                   (_rest77965_
                                                    _tl7788877946_))
                                              (declare (not safe))
                                              (_K7788677941_
                                               _rest77965_
                                               _init77963_
                                               _len77961_
                                               _tmp77954_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7788477902_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7788477902_))))
                            (let ()
                              (declare (not safe))
                              (_else7788477902_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77866_
             _compile-simple77868_
             _compile-values77869_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77621_)
        (letrec ((_compile-simple77623_
                  (lambda (_hd-ids77862_ _exprs77863_ _body77864_)
                    (let ((__tmp79573
                           (let ((__tmp79574
                                  (let ((__tmp79576
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77862_)
                                              _exprs77863_))
                                        (__tmp79575
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77864_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79576 __tmp79575))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79574))))
                      (declare (not safe))
                      (__SRC__% __tmp79573 _stx77621_))))
                 (_compile-values77624_
                  (lambda (_hd-ids77773_ _exprs77774_ _body77775_)
                    (let _lp77777_ ((_rest77779_ _hd-ids77773_)
                                    (_exprs77780_ _exprs77774_)
                                    (_bind77781_ '())
                                    (_post77782_ '()))
                      (let* ((_rest7778377797_ _rest77779_)
                             (_else7778677805_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77625_
                                   _bind77781_
                                   _post77782_
                                   _body77775_)))))
                        (let ((_K7779177845_
                               (lambda (_rest77840_ _hd77841_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77841_))
                                     (let ((_id77843_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77841_))))
                                       (let ((__tmp79591 (cdr _exprs77780_))
                                             (__tmp79586
                                              (let ((__tmp79587
                                                     (let ((__tmp79588
                                                            (let ((__tmp79589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79590
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79590))))
                      (declare (not safe))
                      (cons __tmp79589 '()))))
               (declare (not safe))
               (cons _id77843_ __tmp79588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79587 _bind77781_)))
                                             (__tmp79582
                                              (let ((__tmp79583
                                                     (let ((__tmp79584
                                                            (let ((__tmp79585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77780_)))
                      (declare (not safe))
                      (cons __tmp79585 '()))))
               (declare (not safe))
               (cons _id77843_ __tmp79584))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79583
                                                      _post77782_))))
                                         (declare (not safe))
                                         (_lp77777_
                                          _rest77840_
                                          __tmp79591
                                          __tmp79586
                                          __tmp79582)))
                                     (let ((__tmp79581 (cdr _exprs77780_))
                                           (__tmp79577
                                            (let ((__tmp79578
                                                   (let ((__tmp79579
                                                          (let ((__tmp79580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77780_)))
                    (declare (not safe))
                    (cons __tmp79580 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79579))))
                                              (declare (not safe))
                                              (cons __tmp79578 _post77782_))))
                                       (declare (not safe))
                                       (_lp77777_
                                        _rest77840_
                                        __tmp79581
                                        _bind77781_
                                        __tmp79577)))))
                              (_K7778877825_
                               (lambda (_rest77809_ _hd77810_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77810_))
                                     (let ((_id77812_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77810_))))
                                       (let ((__tmp79627 (cdr _exprs77780_))
                                             (__tmp79622
                                              (let ((__tmp79623
                                                     (let ((__tmp79624
                                                            (let ((__tmp79625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79626
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79626))))
                      (declare (not safe))
                      (cons __tmp79625 '()))))
               (declare (not safe))
               (cons _id77812_ __tmp79624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79623 _bind77781_)))
                                             (__tmp79616
                                              (let ((__tmp79617
                                                     (let ((__tmp79618
                                                            (let ((__tmp79619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79620
                                  (let ((__tmp79621 (car _exprs77780_)))
                                    (declare (not safe))
                                    (cons __tmp79621 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79620))))
                      (declare (not safe))
                      (cons __tmp79619 '()))))
               (declare (not safe))
               (cons _id77812_ __tmp79618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79617
                                                      _post77782_))))
                                         (declare (not safe))
                                         (_lp77777_
                                          _rest77809_
                                          __tmp79627
                                          __tmp79622
                                          __tmp79616)))
                                     (if (let ((__tmp79615
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77810_))))
                                           (declare (not safe))
                                           (not __tmp79615))
                                         (let ((__tmp79614 (cdr _exprs77780_))
                                               (__tmp79610
                                                (let ((__tmp79611
                                                       (let ((__tmp79612
                                                              (let ((__tmp79613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77780_)))
                        (declare (not safe))
                        (cons __tmp79613 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79611
                                                        _post77782_))))
                                           (declare (not safe))
                                           (_lp77777_
                                            _rest77809_
                                            __tmp79614
                                            _bind77781_
                                            __tmp79610))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77810_))
                                             (let* ((_len77814_
                                                     (length _hd77810_))
                                                    (_tmp77816_
                                                     (let ((__tmp79592
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79592))))
                                               (let ((__tmp79609
                                                      (cdr _exprs77780_))
                                                     (__tmp79602
                                                      (let ((__tmp79603
                                                             (lambda (_id77819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77820_)
                       (if (let () (declare (not safe)) (__AST-e _id77819_))
                           (let ((__tmp79604
                                  (let ((__tmp79608
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77819_)))
                                        (__tmp79605
                                         (let ((__tmp79606
                                                (let ((__tmp79607
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79607))))
                                           (declare (not safe))
                                           (cons __tmp79606 '()))))
                                    (declare (not safe))
                                    (cons __tmp79608 __tmp79605))))
                             (declare (not safe))
                             (cons __tmp79604 _r77820_))
                           _r77820_))))
                (declare (not safe))
                (foldl1 __tmp79603 _bind77781_ _hd77810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79593
                                                      (let ((__tmp79594
                                                             (let ((__tmp79595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79601 (car _exprs77780_))
                                  (__tmp79596
                                   (let ((__tmp79597
                                          (let ((__tmp79599
                                                 (lambda (_id77822_ _k77823_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77822_))
                                                       (let ((__tmp79600
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77822_))))
                 (declare (not safe))
                 (cons __tmp79600 _k77823_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79598 (iota _len77814_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79599
                                             _hd77810_
                                             __tmp79598))))
                                     (declare (not safe))
                                     (cons _len77814_ __tmp79597))))
                              (declare (not safe))
                              (cons __tmp79601 __tmp79596))))
                       (declare (not safe))
                       (cons _tmp77816_ __tmp79595))))
                (declare (not safe))
                (cons __tmp79594 _post77782_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77777_
                                                  _rest77809_
                                                  __tmp79609
                                                  __tmp79602
                                                  __tmp79593)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77621_
                                                _hd77810_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7778377797_))
                              (let ((_tl7779377850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7778377797_)))
                                    (_hd7779277848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7778377797_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7779277848_))
                                    (let ((_tl7779577855_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7779277848_)))
                                          (_hd7779477853_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7779277848_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7779577855_))
                                          (let ((_hd77858_ _hd7779477853_)
                                                (_rest77860_ _tl7779377850_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7779177845_
                                               _rest77860_
                                               _hd77858_)))
                                          (let ((_hd77833_ _hd7779277848_)
                                                (_rest77835_ _tl7779377850_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7778877825_
                                               _rest77835_
                                               _hd77833_)))))
                                    (let ((_hd77833_ _hd7779277848_)
                                          (_rest77835_ _tl7779377850_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7778877825_
                                         _rest77835_
                                         _hd77833_)))))
                              (let ()
                                (declare (not safe))
                                (_else7778677805_))))))))
                 (_compile-bind77625_
                  (lambda (_bind77769_ _post77770_ _body77771_)
                    (let ((__tmp79628
                           (let ((__tmp79629
                                  (let ((__tmp79632 (reverse _bind77769_))
                                        (__tmp79630
                                         (let ((__tmp79631
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77626_
                                                   _post77770_
                                                   _body77771_))))
                                           (declare (not safe))
                                           (cons __tmp79631 '()))))
                                    (declare (not safe))
                                    (cons __tmp79632 __tmp79630))))
                             (declare (not safe))
                             (cons 'let __tmp79629))))
                      (declare (not safe))
                      (__SRC__% __tmp79628 _stx77621_))))
                 (_compile-post77626_
                  (lambda (_post77628_ _body77629_)
                    (let ((__tmp79633
                           (let ((__tmp79634
                                  (let ((__tmp79635
                                         (let ((__tmp79637
                                                (lambda (_hd77631_ _r77632_)
                                                  (let* ((_hd7763377656_
                                                          _hd77631_)
                                                         (_E7763777660_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7763377656_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7765077754_
                                                           (lambda (_expr77752_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77752_ _r77632_))))
                  (_K7764577732_
                   (lambda (_expr77729_ _id77730_)
                     (let ((__tmp79638
                            (let ((__tmp79639
                                   (let ((__tmp79640
                                          (let ((__tmp79641
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77729_ '()))))
                                            (declare (not safe))
                                            (cons _id77730_ __tmp79641))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79640))))
                              (declare (not safe))
                              (__SRC__% __tmp79639 _stx77621_))))
                       (declare (not safe))
                       (cons __tmp79638 _r77632_))))
                  (_K7763877699_
                   (lambda (_init77664_ _len77665_ _expr77666_ _tmp77667_)
                     (let ((__tmp79642
                            (let ((__tmp79643
                                   (let ((__tmp79644
                                          (let ((__tmp79658
                                                 (let ((__tmp79659
                                                        (let ((__tmp79660
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77666_ '()))))
                  (declare (not safe))
                  (cons _tmp77667_ __tmp79660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79659 '())))
                                                (__tmp79645
                                                 (let ((__tmp79654
                                                        (let ((__tmp79655
                                                               (let ((__tmp79656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79657
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77665_ '()))))
                                (declare (not safe))
                                (cons _tmp77667_ __tmp79657))))
                         (declare (not safe))
                         (cons '__check-values __tmp79656))))
                  (declare (not safe))
                  (__SRC__% __tmp79655 _stx77621_)))
               (__tmp79646
                (let ((__tmp79647
                       (map (lambda (_hd77669_)
                              (let* ((_hd7767077677_ _hd77669_)
                                     (_E7767277681_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7767077677_))))
                                     (_K7767377687_
                                      (lambda (_k77684_ _id77685_)
                                        (let ((__tmp79648
                                               (let ((__tmp79649
                                                      (let ((__tmp79650
                                                             (let ((__tmp79651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79652
                                   (let ((__tmp79653
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77684_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77667_ __tmp79653))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79652))))
                       (declare (not safe))
                       (cons __tmp79651 '()))))
                (declare (not safe))
                (cons _id77685_ __tmp79650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79649))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79648 _stx77621_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7767077677_))
                                    (let ((_hd7767477690_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7767077677_)))
                                          (_tl7767577692_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7767077677_))))
                                      (let* ((_id77695_ _hd7767477690_)
                                             (_k77697_ _tl7767577692_))
                                        (declare (not safe))
                                        (_K7767377687_ _k77697_ _id77695_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7767277681_)))))
                            _init77664_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79654
                                                         __tmp79646))))
                                            (declare (not safe))
                                            (cons __tmp79658 __tmp79645))))
                                     (declare (not safe))
                                     (cons 'let __tmp79644))))
                              (declare (not safe))
                              (__SRC__% __tmp79643 _stx77621_))))
                       (declare (not safe))
                       (cons __tmp79642 _r77632_)))))
              (if (let () (declare (not safe)) (##pair? _hd7763377656_))
                  (let ((_tl7765277759_
                         (let () (declare (not safe)) (##cdr _hd7763377656_)))
                        (_hd7765177757_
                         (let () (declare (not safe)) (##car _hd7763377656_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7765177757_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7765277759_))
                            (let ((_tl7765477764_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7765277759_)))
                                  (_hd7765377762_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7765277759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7765477764_))
                                  (let ((_expr77767_ _hd7765377762_))
                                    (declare (not safe))
                                    (_K7765077754_ _expr77767_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7765477764_))
                                      (let ((_tl7764477718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7765477764_)))
                                            (_hd7764377716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7765477764_))))
                                        (let ((_tmp77707_ _hd7765177757_)
                                              (_expr77714_ _hd7765377762_)
                                              (_len77721_ _hd7764377716_)
                                              (_init77723_ _tl7764477718_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763877699_
                                             _init77723_
                                             _len77721_
                                             _expr77714_
                                             _tmp77707_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763777660_)))))
                            (let () (declare (not safe)) (_E7763777660_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7765277759_))
                            (let ((_tl7764977744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7765277759_)))
                                  (_hd7764877742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7765277759_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7764977744_))
                                  (let ((_id77740_ _hd7765177757_)
                                        (_expr77747_ _hd7764877742_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7764577732_ _expr77747_ _id77740_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7764977744_))
                                      (let ((_tl7764477718_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7764977744_)))
                                            (_hd7764377716_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7764977744_))))
                                        (let ((_tmp77707_ _hd7765177757_)
                                              (_expr77714_ _hd7764877742_)
                                              (_len77721_ _hd7764377716_)
                                              (_init77723_ _tl7764477718_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763877699_
                                             _init77723_
                                             _len77721_
                                             _expr77714_
                                             _tmp77707_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763777660_)))))
                            (let () (declare (not safe)) (_E7763777660_)))))
                  (let () (declare (not safe)) (_E7763777660_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79636 (list _body77629_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79637
                                                   __tmp79636
                                                   _post77628_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79635))))
                             (declare (not safe))
                             (cons 'begin __tmp79634))))
                      (declare (not safe))
                      (__SRC__% __tmp79633 _stx77621_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77621_
             _compile-simple77623_
             _compile-values77624_)))))
    (define __compile-call%
      (lambda (_stx77581_)
        (let* ((_$e77583_ _stx77581_)
               (_$E7758577594_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77583_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77583_))
              (let* ((_$tgt7758677597_
                      (let () (declare (not safe)) (__AST-e _$e77583_)))
                     (_$hd7758777600_
                      (let () (declare (not safe)) (##car _$tgt7758677597_)))
                     (_$tl7758877603_
                      (let () (declare (not safe)) (##cdr _$tgt7758677597_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7758877603_))
                    (let* ((_$tgt7758977607_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7758877603_)))
                           (_$hd7759077610_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7758977607_)))
                           (_$tl7759177613_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7758977607_))))
                      (let* ((_rator77617_ _$hd7759077610_)
                             (_rands77619_ _$tl7759177613_)
                             (__tmp79661
                              (let ((__tmp79663
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77617_)))
                                    (__tmp79662 (map __compile _rands77619_)))
                                (declare (not safe))
                                (cons __tmp79663 __tmp79662))))
                        (declare (not safe))
                        (__SRC__% __tmp79661 _stx77581_)))
                    (let () (declare (not safe)) (_$E7758577594_))))
              (let () (declare (not safe)) (_$E7758577594_))))))
    (define __compile-ref%
      (lambda (_stx77543_)
        (let* ((_$e77545_ _stx77543_)
               (_$E7754777556_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77545_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77545_))
              (let* ((_$tgt7754877559_
                      (let () (declare (not safe)) (__AST-e _$e77545_)))
                     (_$hd7754977562_
                      (let () (declare (not safe)) (##car _$tgt7754877559_)))
                     (_$tl7755077565_
                      (let () (declare (not safe)) (##cdr _$tgt7754877559_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7755077565_))
                    (let* ((_$tgt7755177569_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7755077565_)))
                           (_$hd7755277572_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7755177569_)))
                           (_$tl7755377575_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7755177569_))))
                      (let ((_id77579_ _$hd7755277572_))
                        (if (let ((__tmp79664
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7755377575_))))
                              (declare (not safe))
                              (equal? __tmp79664 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77579_ _stx77543_))
                            (let () (declare (not safe)) (_$E7754777556_)))))
                    (let () (declare (not safe)) (_$E7754777556_))))
              (let () (declare (not safe)) (_$E7754777556_))))))
    (define __compile-setq%
      (lambda (_stx77490_)
        (let* ((_$e77492_ _stx77490_)
               (_$E7749477506_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77492_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77492_))
              (let* ((_$tgt7749577509_
                      (let () (declare (not safe)) (__AST-e _$e77492_)))
                     (_$hd7749677512_
                      (let () (declare (not safe)) (##car _$tgt7749577509_)))
                     (_$tl7749777515_
                      (let () (declare (not safe)) (##cdr _$tgt7749577509_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7749777515_))
                    (let* ((_$tgt7749877519_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7749777515_)))
                           (_$hd7749977522_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7749877519_)))
                           (_$tl7750077525_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7749877519_))))
                      (let ((_id77529_ _$hd7749977522_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7750077525_))
                            (let* ((_$tgt7750177531_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7750077525_)))
                                   (_$hd7750277534_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7750177531_)))
                                   (_$tl7750377537_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7750177531_))))
                              (let ((_expr77541_ _$hd7750277534_))
                                (if (let ((__tmp79670
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7750377537_))))
                                      (declare (not safe))
                                      (equal? __tmp79670 '()))
                                    (let ((__tmp79665
                                           (let ((__tmp79666
                                                  (let ((__tmp79669
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77529_
                                                            _stx77490_)))
                                                        (__tmp79667
                                                         (let ((__tmp79668
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77541_))))
                   (declare (not safe))
                   (cons __tmp79668 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79669
                                                          __tmp79667))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79666))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79665 _stx77490_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7749477506_)))))
                            (let () (declare (not safe)) (_$E7749477506_)))))
                    (let () (declare (not safe)) (_$E7749477506_))))
              (let () (declare (not safe)) (_$E7749477506_))))))
    (define __compile-if%
      (lambda (_stx77422_)
        (let* ((_$e77424_ _stx77422_)
               (_$E7742677441_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77424_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77424_))
              (let* ((_$tgt7742777444_
                      (let () (declare (not safe)) (__AST-e _$e77424_)))
                     (_$hd7742877447_
                      (let () (declare (not safe)) (##car _$tgt7742777444_)))
                     (_$tl7742977450_
                      (let () (declare (not safe)) (##cdr _$tgt7742777444_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7742977450_))
                    (let* ((_$tgt7743077454_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7742977450_)))
                           (_$hd7743177457_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7743077454_)))
                           (_$tl7743277460_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7743077454_))))
                      (let ((_p77464_ _$hd7743177457_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7743277460_))
                            (let* ((_$tgt7743377466_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7743277460_)))
                                   (_$hd7743477469_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7743377466_)))
                                   (_$tl7743577472_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7743377466_))))
                              (let ((_t77476_ _$hd7743477469_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7743577472_))
                                    (let* ((_$tgt7743677478_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7743577472_)))
                                           (_$hd7743777481_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7743677478_)))
                                           (_$tl7743877484_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7743677478_))))
                                      (let ((_f77488_ _$hd7743777481_))
                                        (if (let ((__tmp79678
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7743877484_))))
                                              (declare (not safe))
                                              (equal? __tmp79678 '()))
                                            (let ((__tmp79671
                                                   (let ((__tmp79672
                                                          (let ((__tmp79677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77464_)))
                        (__tmp79673
                         (let ((__tmp79676
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77476_)))
                               (__tmp79674
                                (let ((__tmp79675
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77488_))))
                                  (declare (not safe))
                                  (cons __tmp79675 '()))))
                           (declare (not safe))
                           (cons __tmp79676 __tmp79674))))
                    (declare (not safe))
                    (cons __tmp79677 __tmp79673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79672))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79671 _stx77422_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7742677441_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7742677441_)))))
                            (let () (declare (not safe)) (_$E7742677441_)))))
                    (let () (declare (not safe)) (_$E7742677441_))))
              (let () (declare (not safe)) (_$E7742677441_))))))
    (define __compile-quote%
      (lambda (_stx77384_)
        (let* ((_$e77386_ _stx77384_)
               (_$E7738877397_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77386_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77386_))
              (let* ((_$tgt7738977400_
                      (let () (declare (not safe)) (__AST-e _$e77386_)))
                     (_$hd7739077403_
                      (let () (declare (not safe)) (##car _$tgt7738977400_)))
                     (_$tl7739177406_
                      (let () (declare (not safe)) (##cdr _$tgt7738977400_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7739177406_))
                    (let* ((_$tgt7739277410_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7739177406_)))
                           (_$hd7739377413_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7739277410_)))
                           (_$tl7739477416_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7739277410_))))
                      (let ((_e77420_ _$hd7739377413_))
                        (if (let ((__tmp79682
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7739477416_))))
                              (declare (not safe))
                              (equal? __tmp79682 '()))
                            (let ((__tmp79679
                                   (let ((__tmp79680
                                          (let ((__tmp79681
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77420_))))
                                            (declare (not safe))
                                            (cons __tmp79681 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79680))))
                              (declare (not safe))
                              (__SRC__% __tmp79679 _stx77384_))
                            (let () (declare (not safe)) (_$E7738877397_)))))
                    (let () (declare (not safe)) (_$E7738877397_))))
              (let () (declare (not safe)) (_$E7738877397_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77346_)
        (let* ((_$e77348_ _stx77346_)
               (_$E7735077359_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77348_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77348_))
              (let* ((_$tgt7735177362_
                      (let () (declare (not safe)) (__AST-e _$e77348_)))
                     (_$hd7735277365_
                      (let () (declare (not safe)) (##car _$tgt7735177362_)))
                     (_$tl7735377368_
                      (let () (declare (not safe)) (##cdr _$tgt7735177362_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7735377368_))
                    (let* ((_$tgt7735477372_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7735377368_)))
                           (_$hd7735577375_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7735477372_)))
                           (_$tl7735677378_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7735477372_))))
                      (let ((_e77382_ _$hd7735577375_))
                        (if (let ((__tmp79685
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7735677378_))))
                              (declare (not safe))
                              (equal? __tmp79685 '()))
                            (let ((__tmp79683
                                   (let ((__tmp79684
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77382_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79684))))
                              (declare (not safe))
                              (__SRC__% __tmp79683 _stx77346_))
                            (let () (declare (not safe)) (_$E7735077359_)))))
                    (let () (declare (not safe)) (_$E7735077359_))))
              (let () (declare (not safe)) (_$E7735077359_))))))
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
