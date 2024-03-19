(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710833424)
  (begin
    (define __syntax::t
      (let ((__tmp79330 (list))
            (__tmp79328
             (let ((__tmp79329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79329 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79330
         '(e id)
         __tmp79328
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79139_ (apply make-instance __syntax::t _$args79139_)))
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
      (let ((__tmp79333 (list __syntax::t))
            (__tmp79331
             (let ((__tmp79332
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79332 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79333
         '()
         __tmp79331
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79136_ (apply make-instance __core-form::t _$args79136_)))
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
      (let ((__tmp79336 (list __core-form::t))
            (__tmp79334
             (let ((__tmp79335
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79335 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79336
         '()
         __tmp79334
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79133_
        (apply make-instance __core-expression::t _$args79133_)))
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
      (let ((__tmp79339 (list __core-form::t))
            (__tmp79337
             (let ((__tmp79338
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79338 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79339
         '()
         __tmp79337
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79130_
        (apply make-instance __core-special-form::t _$args79130_)))
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
      (lambda (_id79128_)
        (let ((__tmp79340 (let () (declare (not safe)) (__AST-e _id79128_))))
          (declare (not safe))
          (hash-get __core __tmp79340))))
    (define __core-bound-id?__%
      (lambda (_id79112_ _is?79113_)
        (let ((_$e79115_
               (let () (declare (not safe)) (__core-resolve _id79112_))))
          (if _$e79115_ (_is?79113_ _$e79115_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79121_)
        (let ((_is?79123_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79121_ _is?79123_))))
    (define __core-bound-id?
      (lambda _g79342_
        (let ((_g79341_ (let () (declare (not safe)) (##length _g79342_))))
          (cond ((let () (declare (not safe)) (##fx= _g79341_ 1))
                 (apply (lambda (_id79121_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79121_)))
                        _g79342_))
                ((let () (declare (not safe)) (##fx= _g79341_ 2))
                 (apply (lambda (_id79125_ _is?79126_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79125_ _is?79126_)))
                        _g79342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79342_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79095_ _e79096_ _make79097_)
        (let ((__tmp79343
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79096_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79096_
                   (_make79097_ _e79096_ _id79095_))))
          (declare (not safe))
          (hash-put! __core _id79095_ __tmp79343))))
    (define __core-bind-syntax!__0
      (lambda (_id79102_ _e79103_)
        (let ((_make79105_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79102_ _e79103_ _make79105_))))
    (define __core-bind-syntax!
      (lambda _g79345_
        (let ((_g79344_ (let () (declare (not safe)) (##length _g79345_))))
          (cond ((let () (declare (not safe)) (##fx= _g79344_ 2))
                 (apply (lambda (_id79102_ _e79103_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79102_ _e79103_)))
                        _g79345_))
                ((let () (declare (not safe)) (##fx= _g79344_ 3))
                 (apply (lambda (_id79107_ _e79108_ _make79109_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79107_
                             _e79108_
                             _make79109_)))
                        _g79345_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79345_))))))
    (define __SRC__%
      (lambda (_e79078_ _src-stx79079_)
        (if (or (let () (declare (not safe)) (pair? _e79078_))
                (let () (declare (not safe)) (symbol? _e79078_)))
            (let ((__tmp79349
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79079_
                          'gerbil#AST::t))
                       (let ((__tmp79350
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79079_))))
                         (declare (not safe))
                         (__locat __tmp79350))
                       '#f)))
              (declare (not safe))
              (##make-source _e79078_ __tmp79349))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79078_ 'gerbil#AST::t))
                (let ((__tmp79348
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79078_ '1 AST::t '#f)))
                      (__tmp79346
                       (let ((__tmp79347
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79078_))))
                         (declare (not safe))
                         (__locat __tmp79347))))
                  (declare (not safe))
                  (##make-source __tmp79348 __tmp79346))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79078_))))))
    (define __SRC__0
      (lambda (_e79087_)
        (let ((_src-stx79089_ '#f))
          (declare (not safe))
          (__SRC__% _e79087_ _src-stx79089_))))
    (define __SRC
      (lambda _g79352_
        (let ((_g79351_ (let () (declare (not safe)) (##length _g79352_))))
          (cond ((let () (declare (not safe)) (##fx= _g79351_ 1))
                 (apply (lambda (_e79087_)
                          (let () (declare (not safe)) (__SRC__0 _e79087_)))
                        _g79352_))
                ((let () (declare (not safe)) (##fx= _g79351_ 2))
                 (apply (lambda (_e79091_ _src-stx79092_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79091_ _src-stx79092_)))
                        _g79352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79352_))))))
    (define __locat
      (lambda (_loc79075_)
        (if (let () (declare (not safe)) (##locat? _loc79075_))
            _loc79075_
            '#f)))
    (define __check-values
      (lambda (_obj79070_ _k79071_)
        (let ((_count79073_
               (if (let () (declare (not safe)) (##values? _obj79070_))
                   (let () (declare (not safe)) (##vector-length _obj79070_))
                   '1)))
          (if (fx= _count79073_ _k79071_)
              '#!void
              (let ((__tmp79354
                     (if (fx< _count79073_ _k79071_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79353
                     (if (let () (declare (not safe)) (##values? _obj79070_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79070_))
                         _obj79070_)))
                (declare (not safe))
                (error __tmp79354 __tmp79353 _k79071_))))))
    (define __compile
      (lambda (_stx79040_)
        (let* ((_$e79042_ _stx79040_)
               (_$E7904479050_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79042_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79042_))
              (let* ((_$tgt7904579053_
                      (let () (declare (not safe)) (__AST-e _$e79042_)))
                     (_$hd7904679056_
                      (let () (declare (not safe)) (##car _$tgt7904579053_)))
                     (_$tl7904779059_
                      (let () (declare (not safe)) (##cdr _$tgt7904579053_))))
                (let* ((_form79063_ _$hd7904679056_)
                       (_$e79065_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79063_))))
                  (if _$e79065_
                      ((lambda (_bind79068_)
                         ((##structure-ref _bind79068_ '1 __syntax::t '#f)
                          _stx79040_))
                       _$e79065_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx79040_
                         _form79063_)))))
              (let () (declare (not safe)) (_$E7904479050_))))))
    (define __compile-error__%
      (lambda (_stx79027_ _detail79028_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx79027_
           _detail79028_))))
    (define __compile-error__0
      (lambda (_stx79033_)
        (let ((_detail79035_ '#f))
          (declare (not safe))
          (__compile-error__% _stx79033_ _detail79035_))))
    (define __compile-error
      (lambda _g79356_
        (let ((_g79355_ (let () (declare (not safe)) (##length _g79356_))))
          (cond ((let () (declare (not safe)) (##fx= _g79355_ 1))
                 (apply (lambda (_stx79033_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx79033_)))
                        _g79356_))
                ((let () (declare (not safe)) (##fx= _g79355_ 2))
                 (apply (lambda (_stx79037_ _detail79038_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx79037_ _detail79038_)))
                        _g79356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79356_))))))
    (define __compile-ignore%
      (lambda (_stx79024_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx79024_))))
    (define __compile-begin%
      (lambda (_stx78999_)
        (let* ((_$e79001_ _stx78999_)
               (_$E7900379009_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79001_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79001_))
              (let* ((_$tgt7900479012_
                      (let () (declare (not safe)) (__AST-e _$e79001_)))
                     (_$hd7900579015_
                      (let () (declare (not safe)) (##car _$tgt7900479012_)))
                     (_$tl7900679018_
                      (let () (declare (not safe)) (##cdr _$tgt7900479012_))))
                (let* ((_body79022_ _$tl7900679018_)
                       (__tmp79357
                        (let ((__tmp79358 (map __compile _body79022_)))
                          (declare (not safe))
                          (cons 'begin __tmp79358))))
                  (declare (not safe))
                  (__SRC__% __tmp79357 _stx78999_)))
              (let () (declare (not safe)) (_$E7900379009_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78974_)
        (let* ((_$e78976_ _stx78974_)
               (_$E7897878984_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78976_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78976_))
              (let* ((_$tgt7897978987_
                      (let () (declare (not safe)) (__AST-e _$e78976_)))
                     (_$hd7898078990_
                      (let () (declare (not safe)) (##car _$tgt7897978987_)))
                     (_$tl7898178993_
                      (let () (declare (not safe)) (##cdr _$tgt7897978987_))))
                (let* ((_body78997_ _$tl7898178993_)
                       (__tmp79359
                        (let ((__tmp79360
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78997_))))
                          (declare (not safe))
                          (cons 'begin __tmp79360))))
                  (declare (not safe))
                  (__SRC__% __tmp79359 _stx78974_)))
              (let () (declare (not safe)) (_$E7897878984_))))))
    (define __compile-import%
      (lambda (_stx78949_)
        (let* ((_$e78951_ _stx78949_)
               (_$E7895378959_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78951_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78951_))
              (let* ((_$tgt7895478962_
                      (let () (declare (not safe)) (__AST-e _$e78951_)))
                     (_$hd7895578965_
                      (let () (declare (not safe)) (##car _$tgt7895478962_)))
                     (_$tl7895678968_
                      (let () (declare (not safe)) (##cdr _$tgt7895478962_))))
                (let* ((_body78972_ _$tl7895678968_)
                       (__tmp79361
                        (let ((__tmp79362
                               (let ((__tmp79363
                                      (let ((__tmp79364
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78972_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79364))))
                                 (declare (not safe))
                                 (cons __tmp79363 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79362))))
                  (declare (not safe))
                  (__SRC__% __tmp79361 _stx78949_)))
              (let () (declare (not safe)) (_$E7895378959_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78896_)
        (let* ((_$e78898_ _stx78896_)
               (_$E7890078912_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78898_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78898_))
              (let* ((_$tgt7890178915_
                      (let () (declare (not safe)) (__AST-e _$e78898_)))
                     (_$hd7890278918_
                      (let () (declare (not safe)) (##car _$tgt7890178915_)))
                     (_$tl7890378921_
                      (let () (declare (not safe)) (##cdr _$tgt7890178915_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7890378921_))
                    (let* ((_$tgt7890478925_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7890378921_)))
                           (_$hd7890578928_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7890478925_)))
                           (_$tl7890678931_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7890478925_))))
                      (let ((_ann78935_ _$hd7890578928_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7890678931_))
                            (let* ((_$tgt7890778937_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7890678931_)))
                                   (_$hd7890878940_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7890778937_)))
                                   (_$tl7890978943_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7890778937_))))
                              (let ((_expr78947_ _$hd7890878940_))
                                (if (let ((__tmp79365
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7890978943_))))
                                      (declare (not safe))
                                      (equal? __tmp79365 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78947_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7890078912_)))))
                            (let () (declare (not safe)) (_$E7890078912_)))))
                    (let () (declare (not safe)) (_$E7890078912_))))
              (let () (declare (not safe)) (_$E7890078912_))))))
    (define __compile-define-values%
      (lambda (_stx78787_)
        (let* ((_$e78789_ _stx78787_)
               (_$E7879178803_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78789_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78789_))
              (let* ((_$tgt7879278806_
                      (let () (declare (not safe)) (__AST-e _$e78789_)))
                     (_$hd7879378809_
                      (let () (declare (not safe)) (##car _$tgt7879278806_)))
                     (_$tl7879478812_
                      (let () (declare (not safe)) (##cdr _$tgt7879278806_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7879478812_))
                    (let* ((_$tgt7879578816_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7879478812_)))
                           (_$hd7879678819_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7879578816_)))
                           (_$tl7879778822_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7879578816_))))
                      (let ((_hd78826_ _$hd7879678819_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7879778822_))
                            (let* ((_$tgt7879878828_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7879778822_)))
                                   (_$hd7879978831_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7879878828_)))
                                   (_$tl7880078834_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7879878828_))))
                              (let ((_expr78838_ _$hd7879978831_))
                                (if (let ((__tmp79398
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7880078834_))))
                                      (declare (not safe))
                                      (equal? __tmp79398 '()))
                                    (let* ((_$e78840_ _hd78826_)
                                           (_$E7884278883_
                                            (lambda ()
                                              (let ((_$E7884378868_
                                                     (lambda ()
                                                       (let* ((_$E7884478855_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78840_))))
                      (_ids78858_ _hd78826_)
                      (_len78860_ (length _ids78858_))
                      (_tmp78862_
                       (let ((__tmp79366 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79366))))
                 (let ((__tmp79367
                        (let ((__tmp79368
                               (let ((__tmp79385
                                      (let ((__tmp79386
                                             (let ((__tmp79387
                                                    (let ((__tmp79388
                                                           (let ((__tmp79389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78838_))))
                     (declare (not safe))
                     (cons __tmp79389 '()))))
              (declare (not safe))
              (cons _tmp78862_ __tmp79388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79387))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79386 _stx78787_)))
                                     (__tmp79369
                                      (let ((__tmp79381
                                             (let ((__tmp79382
                                                    (let ((__tmp79383
                                                           (let ((__tmp79384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78860_ '()))))
                     (declare (not safe))
                     (cons _tmp78862_ __tmp79384))))
              (declare (not safe))
              (cons '__check-values __tmp79383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79382
                                                _stx78787_)))
                                            (__tmp79370
                                             (let ((__tmp79371
                                                    (let ((__tmp79373
                                                           (lambda (_id78865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78866_)
                     (if (let () (declare (not safe)) (__AST-e _id78865_))
                         (let ((__tmp79374
                                (let ((__tmp79375
                                       (let ((__tmp79380
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78865_)))
                                             (__tmp79376
                                              (let ((__tmp79377
                                                     (let ((__tmp79378
                                                            (let ((__tmp79379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78866_ '()))))
                      (declare (not safe))
                      (cons _tmp78862_ __tmp79379))))
               (declare (not safe))
               (cons '##vector-ref __tmp79378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79377 '()))))
                                         (declare (not safe))
                                         (cons __tmp79380 __tmp79376))))
                                  (declare (not safe))
                                  (cons 'define __tmp79375))))
                           (declare (not safe))
                           (__SRC__% __tmp79374 _stx78787_))
                         '#f)))
                  (__tmp79372 (iota _len78860_)))
              (declare (not safe))
              (filter-map2 __tmp79373 _ids78858_ __tmp79372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79371))))
                                        (declare (not safe))
                                        (cons __tmp79381 __tmp79370))))
                                 (declare (not safe))
                                 (cons __tmp79385 __tmp79369))))
                          (declare (not safe))
                          (cons 'begin __tmp79368))))
                   (declare (not safe))
                   (__SRC__% __tmp79367 _stx78787_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78840_))
                                                    (let* ((_$tgt7884578871_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78840_)))
                                                           (_$hd7884678874_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7884578871_)))
                                                           (_$tl7884778877_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7884578871_))))
                                                      (let ((_id78881_
                                                             _$hd7884678874_))
                                                        (if (let ((__tmp79395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7884778877_))))
                      (declare (not safe))
                      (equal? __tmp79395 '()))
                    (let ((__tmp79390
                           (let ((__tmp79391
                                  (let ((__tmp79394
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78881_)))
                                        (__tmp79392
                                         (let ((__tmp79393
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78838_))))
                                           (declare (not safe))
                                           (cons __tmp79393 '()))))
                                    (declare (not safe))
                                    (cons __tmp79394 __tmp79392))))
                             (declare (not safe))
                             (cons 'define __tmp79391))))
                      (declare (not safe))
                      (__SRC__% __tmp79390 _stx78787_))
                    (let () (declare (not safe)) (_$E7884378868_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7884378868_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78840_))
                                          (let* ((_$tgt7884878886_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78840_)))
                                                 (_$hd7884978889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7884878886_)))
                                                 (_$tl7885078892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7884878886_))))
                                            (if (let ((__tmp79397
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7884978889_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79397 '#f))
                                                (if (let ((__tmp79396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7885078892_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79396 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78838_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7884278883_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7884278883_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7884278883_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7879178803_)))))
                            (let () (declare (not safe)) (_$E7879178803_)))))
                    (let () (declare (not safe)) (_$E7879178803_))))
              (let () (declare (not safe)) (_$E7879178803_))))))
    (define __compile-head-id
      (lambda (_e78785_)
        (let ((__tmp79399
               (if (let () (declare (not safe)) (__AST-e _e78785_))
                   _e78785_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79399))))
    (define __compile-lambda-head
      (lambda (_hd78742_)
        (let _recur78744_ ((_rest78746_ _hd78742_))
          (let* ((_$e78748_ _rest78746_)
                 (_$E7875078768_
                  (lambda ()
                    (let ((_$E7875178765_
                           (lambda ()
                             (let* ((_$E7875278760_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78748_))))
                                    (_tail78763_ _$e78748_))
                               (declare (not safe))
                               (__compile-head-id _tail78763_)))))
                      (if (let ((__tmp79400
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78748_))))
                            (declare (not safe))
                            (equal? __tmp79400 '()))
                          '()
                          (let () (declare (not safe)) (_$E7875178765_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78748_))
                (let* ((_$tgt7875378771_
                        (let () (declare (not safe)) (__AST-e _$e78748_)))
                       (_$hd7875478774_
                        (let () (declare (not safe)) (##car _$tgt7875378771_)))
                       (_$tl7875578777_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7875378771_))))
                  (let* ((_hd78781_ _$hd7875478774_)
                         (_rest78783_ _$tl7875578777_))
                    (let ((__tmp79402
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78781_)))
                          (__tmp79401
                           (let ()
                             (declare (not safe))
                             (_recur78744_ _rest78783_))))
                      (declare (not safe))
                      (cons __tmp79402 __tmp79401))))
                (let () (declare (not safe)) (_$E7875078768_)))))))
    (define __compile-lambda%
      (lambda (_stx78689_)
        (let* ((_$e78691_ _stx78689_)
               (_$E7869378705_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78691_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78691_))
              (let* ((_$tgt7869478708_
                      (let () (declare (not safe)) (__AST-e _$e78691_)))
                     (_$hd7869578711_
                      (let () (declare (not safe)) (##car _$tgt7869478708_)))
                     (_$tl7869678714_
                      (let () (declare (not safe)) (##cdr _$tgt7869478708_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7869678714_))
                    (let* ((_$tgt7869778718_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7869678714_)))
                           (_$hd7869878721_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7869778718_)))
                           (_$tl7869978724_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7869778718_))))
                      (let ((_hd78728_ _$hd7869878721_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7869978724_))
                            (let* ((_$tgt7870078730_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7869978724_)))
                                   (_$hd7870178733_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7870078730_)))
                                   (_$tl7870278736_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7870078730_))))
                              (let ((_body78740_ _$hd7870178733_))
                                (if (let ((__tmp79408
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7870278736_))))
                                      (declare (not safe))
                                      (equal? __tmp79408 '()))
                                    (let ((__tmp79403
                                           (let ((__tmp79404
                                                  (let ((__tmp79407
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78728_)))
                                                        (__tmp79405
                                                         (let ((__tmp79406
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78740_))))
                   (declare (not safe))
                   (cons __tmp79406 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79407
                                                          __tmp79405))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79404))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79403 _stx78689_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7869378705_)))))
                            (let () (declare (not safe)) (_$E7869378705_)))))
                    (let () (declare (not safe)) (_$E7869378705_))))
              (let () (declare (not safe)) (_$E7869378705_))))))
    (define __compile-case-lambda%
      (lambda (_stx78481_)
        (letrec ((_variadic?78483_
                  (lambda (_hd78654_)
                    (let* ((_$e78656_ _hd78654_)
                           (_$E7865878674_
                            (lambda ()
                              (let ((_$E7865978671_
                                     (lambda ()
                                       (let ((_$E7866078668_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78656_)))))
                                         '#t))))
                                (if (let ((__tmp79409
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78656_))))
                                      (declare (not safe))
                                      (equal? __tmp79409 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7865978671_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78656_))
                          (let* ((_$tgt7866178677_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78656_)))
                                 (_$hd7866278680_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7866178677_)))
                                 (_$tl7866378683_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7866178677_))))
                            (let ((_rest78687_ _$tl7866378683_))
                              (declare (not safe))
                              (_variadic?78483_ _rest78687_)))
                          (let () (declare (not safe)) (_$E7865878674_))))))
                 (_arity78484_
                  (lambda (_hd78619_)
                    (let _lp78621_ ((_rest78623_ _hd78619_) (_k78624_ '0))
                      (let* ((_$e78626_ _rest78623_)
                             (_$E7862878639_
                              (lambda ()
                                (let ((_$E7862978636_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78626_)))))
                                  _k78624_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78626_))
                            (let* ((_$tgt7863078642_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78626_)))
                                   (_$hd7863178645_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7863078642_)))
                                   (_$tl7863278648_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7863078642_))))
                              (let* ((_rest78652_ _$tl7863278648_)
                                     (__tmp79410
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78624_ '1))))
                                (declare (not safe))
                                (_lp78621_ _rest78652_ __tmp79410)))
                            (let () (declare (not safe)) (_$E7862878639_)))))))
                 (_generate78485_
                  (lambda (_rest78546_ _args78547_ _len78548_)
                    (let* ((_$e78550_ _rest78546_)
                           (_$E7855278563_
                            (lambda ()
                              (let* ((_$E7855378560_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78550_))))
                                     (__tmp79411
                                      (let ((__tmp79412
                                             (let ((__tmp79413
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78547_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79413))))
                                        (declare (not safe))
                                        (cons 'error __tmp79412))))
                                (declare (not safe))
                                (__SRC__% __tmp79411 _stx78481_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78550_))
                          (let* ((_$tgt7855478566_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78550_)))
                                 (_$hd7855578569_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7855478566_)))
                                 (_$tl7855678572_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7855478566_))))
                            (let* ((_clause78576_ _$hd7855578569_)
                                   (_rest78578_ _$tl7855678572_)
                                   (_$e78580_ _clause78576_)
                                   (_$E7858278591_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78580_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78580_))
                                  (let* ((_$tgt7858378594_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78580_)))
                                         (_$hd7858478597_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7858378594_)))
                                         (_$tl7858578600_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7858378594_))))
                                    (let ((_hd78604_ _$hd7858478597_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7858578600_))
                                          (let* ((_$tgt7858678606_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7858578600_)))
                                                 (_$hd7858778609_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7858678606_)))
                                                 (_$tl7858878612_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7858678606_))))
                                            (if (let ((__tmp79428
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7858878612_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79428 '()))
                                                (let ((_clen78616_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78484_
                                                          _hd78604_)))
                                                      (_cmp78617_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78483_
                                                              _hd78604_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79414
                                                         (let ((__tmp79415
                                                                (let ((__tmp79425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79426
                                      (let ((__tmp79427
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78616_ '()))))
                                        (declare (not safe))
                                        (cons _len78548_ __tmp79427))))
                                 (declare (not safe))
                                 (cons _cmp78617_ __tmp79426)))
                              (__tmp79416
                               (let ((__tmp79419
                                      (let ((__tmp79420
                                             (let ((__tmp79421
                                                    (let ((__tmp79423
                                                           (let ((__tmp79424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78576_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79424)))
                  (__tmp79422
                   (let () (declare (not safe)) (cons _args78547_ '()))))
              (declare (not safe))
              (cons __tmp79423 __tmp79422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79421))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79420 _stx78481_)))
                                     (__tmp79417
                                      (let ((__tmp79418
                                             (let ()
                                               (declare (not safe))
                                               (_generate78485_
                                                _rest78578_
                                                _args78547_
                                                _len78548_))))
                                        (declare (not safe))
                                        (cons __tmp79418 '()))))
                                 (declare (not safe))
                                 (cons __tmp79419 __tmp79417))))
                          (declare (not safe))
                          (cons __tmp79425 __tmp79416))))
                   (declare (not safe))
                   (cons 'if __tmp79415))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79414
                                                     _stx78481_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7858278591_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7858278591_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7858278591_)))))
                          (let () (declare (not safe)) (_$E7855278563_)))))))
          (let* ((_$e78487_ _stx78481_)
                 (_$E7848978521_
                  (lambda ()
                    (let ((_$E7849078503_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78487_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78487_))
                          (let* ((_$tgt7849178506_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78487_)))
                                 (_$hd7849278509_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7849178506_)))
                                 (_$tl7849378512_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7849178506_))))
                            (let ((_clauses78516_ _$tl7849378512_))
                              (let ((_args78518_
                                     (let ((__tmp79429 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79429 _stx78481_)))
                                    (_len78519_
                                     (let ((__tmp79430 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79430 _stx78481_))))
                                (let ((__tmp79431
                                       (let ((__tmp79432
                                              (let ((__tmp79433
                                                     (let ((__tmp79434
                                                            (let ((__tmp79435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79436
                                  (let ((__tmp79439
                                         (let ((__tmp79440
                                                (let ((__tmp79441
                                                       (let ((__tmp79442
                                                              (let ((__tmp79443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79444
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78518_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79444))))
                        (declare (not safe))
                        (__SRC__% __tmp79443 _stx78481_))))
                 (declare (not safe))
                 (cons __tmp79442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78519_
                                                        __tmp79441))))
                                           (declare (not safe))
                                           (cons __tmp79440 '())))
                                        (__tmp79437
                                         (let ((__tmp79438
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78485_
                                                   _clauses78516_
                                                   _args78518_
                                                   _len78519_))))
                                           (declare (not safe))
                                           (cons __tmp79438 '()))))
                                    (declare (not safe))
                                    (cons __tmp79439 __tmp79437))))
                             (declare (not safe))
                             (cons 'let __tmp79436))))
                      (declare (not safe))
                      (__SRC__% __tmp79435 _stx78481_))))
               (declare (not safe))
               (cons __tmp79434 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78518_
                                                      __tmp79433))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79432))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79431 _stx78481_)))))
                          (let () (declare (not safe)) (_$E7849078503_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78487_))
                (let* ((_$tgt7849478524_
                        (let () (declare (not safe)) (__AST-e _$e78487_)))
                       (_$hd7849578527_
                        (let () (declare (not safe)) (##car _$tgt7849478524_)))
                       (_$tl7849678530_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7849478524_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7849678530_))
                      (let* ((_$tgt7849778534_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7849678530_)))
                             (_$hd7849878537_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7849778534_)))
                             (_$tl7849978540_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7849778534_))))
                        (let ((_clause78544_ _$hd7849878537_))
                          (if (let ((__tmp79446
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7849978540_))))
                                (declare (not safe))
                                (equal? __tmp79446 '()))
                              (let ((__tmp79445
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78544_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79445))
                              (let () (declare (not safe)) (_$E7848978521_)))))
                      (let () (declare (not safe)) (_$E7848978521_))))
                (let () (declare (not safe)) (_$E7848978521_)))))))
    (define __compile-let-form
      (lambda (_stx78250_ _compile-simple78251_ _compile-values78252_)
        (letrec ((_simple-bind?78254_
                  (lambda (_hd78439_)
                    (let* ((_hd7844078450_ _hd78439_)
                           (_else7844378458_ (lambda () '#f)))
                      (let ((_K7844678471_ (lambda (_id78469_) '#t))
                            (_K7844578463_ (lambda () '#t)))
                        (let ((_try-match7844278466_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7844078450_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7844578463_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7844378458_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7844078450_))
                              (let ((_tl7844878476_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7844078450_)))
                                    (_hd7844778474_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7844078450_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7844878476_))
                                    (let ((_id78479_ _hd7844778474_))
                                      (declare (not safe))
                                      (_K7844678471_ _id78479_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7844278466_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7844278466_))))))))
                 (_car-e78255_
                  (lambda (_hd78437_)
                    (if (let () (declare (not safe)) (pair? _hd78437_))
                        (car _hd78437_)
                        _hd78437_))))
          (let* ((_$e78257_ _stx78250_)
                 (_$E7825978402_
                  (lambda ()
                    (let ((_$E7826078282_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78257_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78257_))
                          (let* ((_$tgt7826178285_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78257_)))
                                 (_$hd7826278288_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7826178285_)))
                                 (_$tl7826378291_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7826178285_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7826378291_))
                                (let* ((_$tgt7826478295_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7826378291_)))
                                       (_$hd7826578298_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7826478295_)))
                                       (_$tl7826678301_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7826478295_))))
                                  (let ((_hd78305_ _$hd7826578298_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7826678301_))
                                        (let* ((_$tgt7826778307_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7826678301_)))
                                               (_$hd7826878310_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7826778307_)))
                                               (_$tl7826978313_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7826778307_))))
                                          (let ((_body78317_ _$hd7826878310_))
                                            (if (let ((__tmp79449
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7826978313_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79449 '()))
                                                (let* ((_hd-ids78357_
                                                        (map (lambda (_bind78319_)
                                                               (let* ((_$e78321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78319_)
                              (_$E7832378332_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78321_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78321_))
                             (let* ((_$tgt7832478335_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78321_)))
                                    (_$hd7832578338_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7832478335_)))
                                    (_$tl7832678341_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7832478335_))))
                               (let ((_ids78345_ _$hd7832578338_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7832678341_))
                                     (let* ((_$tgt7832778347_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7832678341_)))
                                            (_$hd7832878350_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7832778347_)))
                                            (_$tl7832978353_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7832778347_))))
                                       (if (let ((__tmp79447
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7832978353_))))
                                             (declare (not safe))
                                             (equal? __tmp79447 '()))
                                           _ids78345_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7832378332_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7832378332_)))))
                             (let () (declare (not safe)) (_$E7832378332_)))))
                     _hd78305_))
               (_exprs78397_
                (map (lambda (_bind78359_)
                       (let* ((_$e78361_ _bind78359_)
                              (_$E7836378372_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78361_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78361_))
                             (let* ((_$tgt7836478375_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78361_)))
                                    (_$hd7836578378_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7836478375_)))
                                    (_$tl7836678381_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7836478375_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7836678381_))
                                   (let* ((_$tgt7836778385_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7836678381_)))
                                          (_$hd7836878388_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7836778385_)))
                                          (_$tl7836978391_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7836778385_))))
                                     (let ((_expr78395_ _$hd7836878388_))
                                       (if (let ((__tmp79448
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7836978391_))))
                                             (declare (not safe))
                                             (equal? __tmp79448 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78395_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7836378372_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7836378372_))))
                             (let () (declare (not safe)) (_$E7836378372_)))))
                     _hd78305_))
               (_body78399_
                (let () (declare (not safe)) (__compile _body78317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78357_))
              (_compile-simple78251_
               (map _car-e78255_ _hd-ids78357_)
               _exprs78397_
               _body78399_)
              (_compile-values78252_ _hd-ids78357_ _exprs78397_ _body78399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7826078282_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7826078282_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7826078282_))))
                          (let () (declare (not safe)) (_$E7826078282_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78257_))
                (let* ((_$tgt7827078405_
                        (let () (declare (not safe)) (__AST-e _$e78257_)))
                       (_$hd7827178408_
                        (let () (declare (not safe)) (##car _$tgt7827078405_)))
                       (_$tl7827278411_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7827078405_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7827278411_))
                      (let* ((_$tgt7827378415_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7827278411_)))
                             (_$hd7827478418_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7827378415_)))
                             (_$tl7827578421_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7827378415_))))
                        (if (let ((__tmp79451
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7827478418_))))
                              (declare (not safe))
                              (equal? __tmp79451 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7827578421_))
                                (let* ((_$tgt7827678425_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7827578421_)))
                                       (_$hd7827778428_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7827678425_)))
                                       (_$tl7827878431_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7827678425_))))
                                  (let ((_body78435_ _$hd7827778428_))
                                    (if (let ((__tmp79450
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7827878431_))))
                                          (declare (not safe))
                                          (equal? __tmp79450 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78435_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7825978402_)))))
                                (let () (declare (not safe)) (_$E7825978402_)))
                            (let () (declare (not safe)) (_$E7825978402_))))
                      (let () (declare (not safe)) (_$E7825978402_))))
                (let () (declare (not safe)) (_$E7825978402_)))))))
    (define __compile-let-values%
      (lambda (_stx78065_)
        (letrec ((_compile-simple78067_
                  (lambda (_hd-ids78246_ _exprs78247_ _body78248_)
                    (let ((__tmp79452
                           (let ((__tmp79453
                                  (let ((__tmp79455
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78246_)
                                              _exprs78247_))
                                        (__tmp79454
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78248_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79455 __tmp79454))))
                             (declare (not safe))
                             (cons 'let __tmp79453))))
                      (declare (not safe))
                      (__SRC__% __tmp79452 _stx78065_))))
                 (_compile-values78068_
                  (lambda (_hd-ids78164_ _exprs78165_ _body78166_)
                    (let _lp78168_ ((_rest78170_ _hd-ids78164_)
                                    (_exprs78171_ _exprs78165_)
                                    (_bind78172_ '())
                                    (_post78173_ '()))
                      (let* ((_rest7817478188_ _rest78170_)
                             (_else7817778196_
                              (lambda ()
                                (let ((__tmp79456
                                       (let ((__tmp79457
                                              (let ((__tmp79460
                                                     (reverse _bind78172_))
                                                    (__tmp79458
                                                     (let ((__tmp79459
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78069_
                                                               _post78173_
                                                               _body78166_))))
                                                       (declare (not safe))
                                                       (cons __tmp79459 '()))))
                                                (declare (not safe))
                                                (cons __tmp79460 __tmp79458))))
                                         (declare (not safe))
                                         (cons 'let __tmp79457))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79456 _stx78065_)))))
                        (let ((_K7818278229_
                               (lambda (_rest78226_ _id78227_)
                                 (let ((__tmp79466 (cdr _exprs78171_))
                                       (__tmp79461
                                        (let ((__tmp79462
                                               (let ((__tmp79465
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78227_)))
                                                     (__tmp79463
                                                      (let ((__tmp79464
                                                             (car _exprs78171_)))
                                                        (declare (not safe))
                                                        (cons __tmp79464
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79465
                                                       __tmp79463))))
                                          (declare (not safe))
                                          (cons __tmp79462 _bind78172_))))
                                   (declare (not safe))
                                   (_lp78168_
                                    _rest78226_
                                    __tmp79466
                                    __tmp79461
                                    _post78173_))))
                              (_K7817978211_
                               (lambda (_rest78200_ _hd78201_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78201_))
                                     (let ((__tmp79487 (cdr _exprs78171_))
                                           (__tmp79480
                                            (let ((__tmp79481
                                                   (let ((__tmp79486
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78201_)))
                                                         (__tmp79482
                                                          (let ((__tmp79483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79484
                                (let ((__tmp79485 (car _exprs78171_)))
                                  (declare (not safe))
                                  (cons __tmp79485 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79484))))
                    (declare (not safe))
                    (cons __tmp79483 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79486
                                                           __tmp79482))))
                                              (declare (not safe))
                                              (cons __tmp79481 _bind78172_))))
                                       (declare (not safe))
                                       (_lp78168_
                                        _rest78200_
                                        __tmp79487
                                        __tmp79480
                                        _post78173_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78201_))
                                         (let* ((_len78203_ (length _hd78201_))
                                                (_tmp78205_
                                                 (let ((__tmp79467 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79467))))
                                           (let ((__tmp79479
                                                  (cdr _exprs78171_))
                                                 (__tmp79475
                                                  (let ((__tmp79476
                                                         (let ((__tmp79477
                                                                (let ((__tmp79478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78171_)))
                          (declare (not safe))
                          (cons __tmp79478 '()))))
                   (declare (not safe))
                   (cons _tmp78205_ __tmp79477))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79476
                                                          _bind78172_)))
                                                 (__tmp79468
                                                  (let ((__tmp79469
                                                         (let ((__tmp79470
                                                                (let ((__tmp79471
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79473
                                      (lambda (_id78208_ _k78209_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78208_))
                                            (let ((__tmp79474
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78208_))))
                                              (declare (not safe))
                                              (cons __tmp79474 _k78209_))
                                            '#f)))
                                     (__tmp79472 (iota _len78203_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79473
                                  _hd78201_
                                  __tmp79472))))
                          (declare (not safe))
                          (cons _len78203_ __tmp79471))))
                   (declare (not safe))
                   (cons _tmp78205_ __tmp79470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79469
                                                          _post78173_))))
                                             (declare (not safe))
                                             (_lp78168_
                                              _rest78200_
                                              __tmp79479
                                              __tmp79475
                                              __tmp79468)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78065_
                                            _hd78201_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7817478188_))
                              (let ((_tl7818478234_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7817478188_)))
                                    (_hd7818378232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7817478188_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7818378232_))
                                    (let ((_tl7818678239_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7818378232_)))
                                          (_hd7818578237_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7818378232_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7818678239_))
                                          (let ((_id78242_ _hd7818578237_)
                                                (_rest78244_ _tl7818478234_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7818278229_
                                               _rest78244_
                                               _id78242_)))
                                          (let ((_hd78219_ _hd7818378232_)
                                                (_rest78221_ _tl7818478234_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7817978211_
                                               _rest78221_
                                               _hd78219_)))))
                                    (let ((_hd78219_ _hd7818378232_)
                                          (_rest78221_ _tl7818478234_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7817978211_
                                         _rest78221_
                                         _hd78219_)))))
                              (let ()
                                (declare (not safe))
                                (_else7817778196_))))))))
                 (_compile-post78069_
                  (lambda (_post78071_ _body78072_)
                    (let _lp78074_ ((_rest78076_ _post78071_)
                                    (_check78077_ '())
                                    (_bind78078_ '()))
                      (let* ((_rest7807978091_ _rest78076_)
                             (_else7808178099_
                              (lambda ()
                                (let ((__tmp79488
                                       (let ((__tmp79489
                                              (let ((__tmp79490
                                                     (let ((__tmp79491
                                                            (let ((__tmp79492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79493
                                  (let ((__tmp79494
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78072_ '()))))
                                    (declare (not safe))
                                    (cons _bind78078_ __tmp79494))))
                             (declare (not safe))
                             (cons 'let __tmp79493))))
                      (declare (not safe))
                      (__SRC__% __tmp79492 _stx78065_))))
               (declare (not safe))
               (cons __tmp79491 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79490
                                                        _check78077_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79489))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79488 _stx78065_))))
                             (_K7808378138_
                              (lambda (_rest78102_
                                       _init78103_
                                       _len78104_
                                       _tmp78105_)
                                (let ((__tmp79502
                                       (let ((__tmp79503
                                              (let ((__tmp79504
                                                     (let ((__tmp79505
                                                            (let ((__tmp79506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78104_ '()))))
                      (declare (not safe))
                      (cons _tmp78105_ __tmp79506))))
               (declare (not safe))
               (cons '__check-values __tmp79505))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79504
                                                 _stx78065_))))
                                         (declare (not safe))
                                         (cons __tmp79503 _check78077_)))
                                      (__tmp79495
                                       (let ((__tmp79496
                                              (lambda (_hd78107_ _r78108_)
                                                (let* ((_hd7810978116_
                                                        _hd78107_)
                                                       (_E7811178120_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7810978116_))))
               (_K7811278126_
                (lambda (_k78123_ _id78124_)
                  (let ((__tmp79497
                         (let ((__tmp79498
                                (let ((__tmp79499
                                       (let ((__tmp79500
                                              (let ((__tmp79501
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78123_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78105_ __tmp79501))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79500))))
                                  (declare (not safe))
                                  (cons __tmp79499 '()))))
                           (declare (not safe))
                           (cons _id78124_ __tmp79498))))
                    (declare (not safe))
                    (cons __tmp79497 _r78108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7810978116_))
                                                      (let ((_hd7811378129_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7810978116_)))
                    (_tl7811478131_
                     (let () (declare (not safe)) (##cdr _hd7810978116_))))
                (let* ((_id78134_ _hd7811378129_) (_k78136_ _tl7811478131_))
                  (declare (not safe))
                  (_K7811278126_ _k78136_ _id78134_)))
              (let () (declare (not safe)) (_E7811178120_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79496
                                                 _bind78078_
                                                 _init78103_))))
                                  (declare (not safe))
                                  (_lp78074_
                                   _rest78102_
                                   __tmp79502
                                   __tmp79495)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7807978091_))
                            (let ((_hd7808478141_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7807978091_)))
                                  (_tl7808578143_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7807978091_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7808478141_))
                                  (let ((_hd7808678146_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7808478141_)))
                                        (_tl7808778148_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7808478141_))))
                                    (let ((_tmp78151_ _hd7808678146_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7808778148_))
                                          (let ((_hd7808878153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7808778148_)))
                                                (_tl7808978155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7808778148_))))
                                            (let* ((_len78158_ _hd7808878153_)
                                                   (_init78160_ _tl7808978155_)
                                                   (_rest78162_
                                                    _tl7808578143_))
                                              (declare (not safe))
                                              (_K7808378138_
                                               _rest78162_
                                               _init78160_
                                               _len78158_
                                               _tmp78151_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7808178099_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7808178099_))))
                            (let ()
                              (declare (not safe))
                              (_else7808178099_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78065_
             _compile-simple78067_
             _compile-values78068_)))))
    (define __compile-letrec-values%
      (lambda (_stx77865_)
        (letrec ((_compile-simple77867_
                  (lambda (_hd-ids78061_ _exprs78062_ _body78063_)
                    (let ((__tmp79507
                           (let ((__tmp79508
                                  (let ((__tmp79510
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78061_)
                                              _exprs78062_))
                                        (__tmp79509
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78063_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79510 __tmp79509))))
                             (declare (not safe))
                             (cons 'letrec __tmp79508))))
                      (declare (not safe))
                      (__SRC__% __tmp79507 _stx77865_))))
                 (_compile-values77868_
                  (lambda (_hd-ids77975_ _exprs77976_ _body77977_)
                    (let _lp77979_ ((_rest77981_ _hd-ids77975_)
                                    (_exprs77982_ _exprs77976_)
                                    (_pre77983_ '())
                                    (_bind77984_ '())
                                    (_post77985_ '()))
                      (let* ((_rest7798678000_ _rest77981_)
                             (_else7798978008_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77869_
                                   _pre77983_
                                   _bind77984_
                                   _post77985_
                                   _body77977_)))))
                        (let ((_K7799478044_
                               (lambda (_rest78041_ _id78042_)
                                 (let ((__tmp79516 (cdr _exprs77982_))
                                       (__tmp79511
                                        (let ((__tmp79512
                                               (let ((__tmp79515
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78042_)))
                                                     (__tmp79513
                                                      (let ((__tmp79514
                                                             (car _exprs77982_)))
                                                        (declare (not safe))
                                                        (cons __tmp79514
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79515
                                                       __tmp79513))))
                                          (declare (not safe))
                                          (cons __tmp79512 _bind77984_))))
                                   (declare (not safe))
                                   (_lp77979_
                                    _rest78041_
                                    __tmp79516
                                    _pre77983_
                                    __tmp79511
                                    _post77985_))))
                              (_K7799178026_
                               (lambda (_rest78012_ _hd78013_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78013_))
                                     (let ((__tmp79544 (cdr _exprs77982_))
                                           (__tmp79537
                                            (let ((__tmp79538
                                                   (let ((__tmp79543
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78013_)))
                                                         (__tmp79539
                                                          (let ((__tmp79540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79541
                                (let ((__tmp79542 (car _exprs77982_)))
                                  (declare (not safe))
                                  (cons __tmp79542 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79541))))
                    (declare (not safe))
                    (cons __tmp79540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79543
                                                           __tmp79539))))
                                              (declare (not safe))
                                              (cons __tmp79538 _bind77984_))))
                                       (declare (not safe))
                                       (_lp77979_
                                        _rest78012_
                                        __tmp79544
                                        _pre77983_
                                        __tmp79537
                                        _post77985_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78013_))
                                         (let* ((_len78015_ (length _hd78013_))
                                                (_tmp78017_
                                                 (let ((__tmp79517 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79517))))
                                           (let ((__tmp79536
                                                  (cdr _exprs77982_))
                                                 (__tmp79529
                                                  (let ((__tmp79530
                                                         (lambda (_id78020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r78021_)
                   (if (let () (declare (not safe)) (__AST-e _id78020_))
                       (let ((__tmp79531
                              (let ((__tmp79535
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id78020_)))
                                    (__tmp79532
                                     (let ((__tmp79533
                                            (let ((__tmp79534
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79534))))
                                       (declare (not safe))
                                       (cons __tmp79533 '()))))
                                (declare (not safe))
                                (cons __tmp79535 __tmp79532))))
                         (declare (not safe))
                         (cons __tmp79531 _r78021_))
                       _r78021_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79530
                                                            _pre77983_
                                                            _hd78013_)))
                                                 (__tmp79525
                                                  (let ((__tmp79526
                                                         (let ((__tmp79527
                                                                (let ((__tmp79528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77982_)))
                          (declare (not safe))
                          (cons __tmp79528 '()))))
                   (declare (not safe))
                   (cons _tmp78017_ __tmp79527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79526
                                                          _bind77984_)))
                                                 (__tmp79518
                                                  (let ((__tmp79519
                                                         (let ((__tmp79520
                                                                (let ((__tmp79521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79523
                                      (lambda (_id78023_ _k78024_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78023_))
                                            (let ((__tmp79524
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78023_))))
                                              (declare (not safe))
                                              (cons __tmp79524 _k78024_))
                                            '#f)))
                                     (__tmp79522 (iota _len78015_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79523
                                  _hd78013_
                                  __tmp79522))))
                          (declare (not safe))
                          (cons _len78015_ __tmp79521))))
                   (declare (not safe))
                   (cons _tmp78017_ __tmp79520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79519
                                                          _post77985_))))
                                             (declare (not safe))
                                             (_lp77979_
                                              _rest78012_
                                              __tmp79536
                                              __tmp79529
                                              __tmp79525
                                              __tmp79518)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77865_
                                            _hd78013_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7798678000_))
                              (let ((_tl7799678049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7798678000_)))
                                    (_hd7799578047_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7798678000_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7799578047_))
                                    (let ((_tl7799878054_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7799578047_)))
                                          (_hd7799778052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7799578047_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7799878054_))
                                          (let ((_id78057_ _hd7799778052_)
                                                (_rest78059_ _tl7799678049_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7799478044_
                                               _rest78059_
                                               _id78057_)))
                                          (let ((_hd78034_ _hd7799578047_)
                                                (_rest78036_ _tl7799678049_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7799178026_
                                               _rest78036_
                                               _hd78034_)))))
                                    (let ((_hd78034_ _hd7799578047_)
                                          (_rest78036_ _tl7799678049_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7799178026_
                                         _rest78036_
                                         _hd78034_)))))
                              (let ()
                                (declare (not safe))
                                (_else7798978008_))))))))
                 (_compile-inner77869_
                  (lambda (_pre77970_ _bind77971_ _post77972_ _body77973_)
                    (if (let () (declare (not safe)) (null? _pre77970_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77870_
                           _bind77971_
                           _post77972_
                           _body77973_))
                        (let ((__tmp79545
                               (let ((__tmp79546
                                      (let ((__tmp79549 (reverse _pre77970_))
                                            (__tmp79547
                                             (let ((__tmp79548
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77870_
                                                       _bind77971_
                                                       _post77972_
                                                       _body77973_))))
                                               (declare (not safe))
                                               (cons __tmp79548 '()))))
                                        (declare (not safe))
                                        (cons __tmp79549 __tmp79547))))
                                 (declare (not safe))
                                 (cons 'let __tmp79546))))
                          (declare (not safe))
                          (__SRC__% __tmp79545 _stx77865_)))))
                 (_compile-bind77870_
                  (lambda (_bind77966_ _post77967_ _body77968_)
                    (let ((__tmp79550
                           (let ((__tmp79551
                                  (let ((__tmp79554 (reverse _bind77966_))
                                        (__tmp79552
                                         (let ((__tmp79553
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77871_
                                                   _post77967_
                                                   _body77968_))))
                                           (declare (not safe))
                                           (cons __tmp79553 '()))))
                                    (declare (not safe))
                                    (cons __tmp79554 __tmp79552))))
                             (declare (not safe))
                             (cons 'letrec __tmp79551))))
                      (declare (not safe))
                      (__SRC__% __tmp79550 _stx77865_))))
                 (_compile-post77871_
                  (lambda (_post77873_ _body77874_)
                    (let _lp77876_ ((_rest77878_ _post77873_)
                                    (_check77879_ '())
                                    (_bind77880_ '()))
                      (let* ((_rest7788177893_ _rest77878_)
                             (_else7788377901_
                              (lambda ()
                                (let ((__tmp79555
                                       (let ((__tmp79556
                                              (let ((__tmp79557
                                                     (let ((__tmp79558
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79558 _bind77880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79557
                                                        _check77879_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79556))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79555 _stx77865_))))
                             (_K7788577940_
                              (lambda (_rest77904_
                                       _init77905_
                                       _len77906_
                                       _tmp77907_)
                                (let ((__tmp79567
                                       (let ((__tmp79568
                                              (let ((__tmp79569
                                                     (let ((__tmp79570
                                                            (let ((__tmp79571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77906_ '()))))
                      (declare (not safe))
                      (cons _tmp77907_ __tmp79571))))
               (declare (not safe))
               (cons '__check-values __tmp79570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79569
                                                 _stx77865_))))
                                         (declare (not safe))
                                         (cons __tmp79568 _check77879_)))
                                      (__tmp79559
                                       (let ((__tmp79560
                                              (lambda (_hd77909_ _r77910_)
                                                (let* ((_hd7791177918_
                                                        _hd77909_)
                                                       (_E7791377922_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7791177918_))))
               (_K7791477928_
                (lambda (_k77925_ _id77926_)
                  (let ((__tmp79561
                         (let ((__tmp79562
                                (let ((__tmp79563
                                       (let ((__tmp79564
                                              (let ((__tmp79565
                                                     (let ((__tmp79566
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77907_ __tmp79566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79565))))
                                         (declare (not safe))
                                         (cons __tmp79564 '()))))
                                  (declare (not safe))
                                  (cons _id77926_ __tmp79563))))
                           (declare (not safe))
                           (cons 'set! __tmp79562))))
                    (declare (not safe))
                    (cons __tmp79561 _r77910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7791177918_))
                                                      (let ((_hd7791577931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7791177918_)))
                    (_tl7791677933_
                     (let () (declare (not safe)) (##cdr _hd7791177918_))))
                (let* ((_id77936_ _hd7791577931_) (_k77938_ _tl7791677933_))
                  (declare (not safe))
                  (_K7791477928_ _k77938_ _id77936_)))
              (let () (declare (not safe)) (_E7791377922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79560
                                                 _bind77880_
                                                 _init77905_))))
                                  (declare (not safe))
                                  (_lp77876_
                                   _rest77904_
                                   __tmp79567
                                   __tmp79559)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7788177893_))
                            (let ((_hd7788677943_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7788177893_)))
                                  (_tl7788777945_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7788177893_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7788677943_))
                                  (let ((_hd7788877948_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7788677943_)))
                                        (_tl7788977950_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7788677943_))))
                                    (let ((_tmp77953_ _hd7788877948_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7788977950_))
                                          (let ((_hd7789077955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7788977950_)))
                                                (_tl7789177957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7788977950_))))
                                            (let* ((_len77960_ _hd7789077955_)
                                                   (_init77962_ _tl7789177957_)
                                                   (_rest77964_
                                                    _tl7788777945_))
                                              (declare (not safe))
                                              (_K7788577940_
                                               _rest77964_
                                               _init77962_
                                               _len77960_
                                               _tmp77953_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7788377901_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7788377901_))))
                            (let ()
                              (declare (not safe))
                              (_else7788377901_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77865_
             _compile-simple77867_
             _compile-values77868_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77620_)
        (letrec ((_compile-simple77622_
                  (lambda (_hd-ids77861_ _exprs77862_ _body77863_)
                    (let ((__tmp79572
                           (let ((__tmp79573
                                  (let ((__tmp79575
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77861_)
                                              _exprs77862_))
                                        (__tmp79574
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77863_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79575 __tmp79574))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79573))))
                      (declare (not safe))
                      (__SRC__% __tmp79572 _stx77620_))))
                 (_compile-values77623_
                  (lambda (_hd-ids77772_ _exprs77773_ _body77774_)
                    (let _lp77776_ ((_rest77778_ _hd-ids77772_)
                                    (_exprs77779_ _exprs77773_)
                                    (_bind77780_ '())
                                    (_post77781_ '()))
                      (let* ((_rest7778277796_ _rest77778_)
                             (_else7778577804_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77624_
                                   _bind77780_
                                   _post77781_
                                   _body77774_)))))
                        (let ((_K7779077844_
                               (lambda (_rest77839_ _hd77840_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77840_))
                                     (let ((_id77842_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77840_))))
                                       (let ((__tmp79590 (cdr _exprs77779_))
                                             (__tmp79585
                                              (let ((__tmp79586
                                                     (let ((__tmp79587
                                                            (let ((__tmp79588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79589
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79589))))
                      (declare (not safe))
                      (cons __tmp79588 '()))))
               (declare (not safe))
               (cons _id77842_ __tmp79587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79586 _bind77780_)))
                                             (__tmp79581
                                              (let ((__tmp79582
                                                     (let ((__tmp79583
                                                            (let ((__tmp79584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77779_)))
                      (declare (not safe))
                      (cons __tmp79584 '()))))
               (declare (not safe))
               (cons _id77842_ __tmp79583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79582
                                                      _post77781_))))
                                         (declare (not safe))
                                         (_lp77776_
                                          _rest77839_
                                          __tmp79590
                                          __tmp79585
                                          __tmp79581)))
                                     (let ((__tmp79580 (cdr _exprs77779_))
                                           (__tmp79576
                                            (let ((__tmp79577
                                                   (let ((__tmp79578
                                                          (let ((__tmp79579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77779_)))
                    (declare (not safe))
                    (cons __tmp79579 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79578))))
                                              (declare (not safe))
                                              (cons __tmp79577 _post77781_))))
                                       (declare (not safe))
                                       (_lp77776_
                                        _rest77839_
                                        __tmp79580
                                        _bind77780_
                                        __tmp79576)))))
                              (_K7778777824_
                               (lambda (_rest77808_ _hd77809_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77809_))
                                     (let ((_id77811_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77809_))))
                                       (let ((__tmp79626 (cdr _exprs77779_))
                                             (__tmp79621
                                              (let ((__tmp79622
                                                     (let ((__tmp79623
                                                            (let ((__tmp79624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79625
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79625))))
                      (declare (not safe))
                      (cons __tmp79624 '()))))
               (declare (not safe))
               (cons _id77811_ __tmp79623))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79622 _bind77780_)))
                                             (__tmp79615
                                              (let ((__tmp79616
                                                     (let ((__tmp79617
                                                            (let ((__tmp79618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79619
                                  (let ((__tmp79620 (car _exprs77779_)))
                                    (declare (not safe))
                                    (cons __tmp79620 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79619))))
                      (declare (not safe))
                      (cons __tmp79618 '()))))
               (declare (not safe))
               (cons _id77811_ __tmp79617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79616
                                                      _post77781_))))
                                         (declare (not safe))
                                         (_lp77776_
                                          _rest77808_
                                          __tmp79626
                                          __tmp79621
                                          __tmp79615)))
                                     (if (let ((__tmp79614
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77809_))))
                                           (declare (not safe))
                                           (not __tmp79614))
                                         (let ((__tmp79613 (cdr _exprs77779_))
                                               (__tmp79609
                                                (let ((__tmp79610
                                                       (let ((__tmp79611
                                                              (let ((__tmp79612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77779_)))
                        (declare (not safe))
                        (cons __tmp79612 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79610
                                                        _post77781_))))
                                           (declare (not safe))
                                           (_lp77776_
                                            _rest77808_
                                            __tmp79613
                                            _bind77780_
                                            __tmp79609))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77809_))
                                             (let* ((_len77813_
                                                     (length _hd77809_))
                                                    (_tmp77815_
                                                     (let ((__tmp79591
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79591))))
                                               (let ((__tmp79608
                                                      (cdr _exprs77779_))
                                                     (__tmp79601
                                                      (let ((__tmp79602
                                                             (lambda (_id77818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77819_)
                       (if (let () (declare (not safe)) (__AST-e _id77818_))
                           (let ((__tmp79603
                                  (let ((__tmp79607
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77818_)))
                                        (__tmp79604
                                         (let ((__tmp79605
                                                (let ((__tmp79606
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79606))))
                                           (declare (not safe))
                                           (cons __tmp79605 '()))))
                                    (declare (not safe))
                                    (cons __tmp79607 __tmp79604))))
                             (declare (not safe))
                             (cons __tmp79603 _r77819_))
                           _r77819_))))
                (declare (not safe))
                (foldl1 __tmp79602 _bind77780_ _hd77809_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79592
                                                      (let ((__tmp79593
                                                             (let ((__tmp79594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79600 (car _exprs77779_))
                                  (__tmp79595
                                   (let ((__tmp79596
                                          (let ((__tmp79598
                                                 (lambda (_id77821_ _k77822_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77821_))
                                                       (let ((__tmp79599
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77821_))))
                 (declare (not safe))
                 (cons __tmp79599 _k77822_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79597 (iota _len77813_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79598
                                             _hd77809_
                                             __tmp79597))))
                                     (declare (not safe))
                                     (cons _len77813_ __tmp79596))))
                              (declare (not safe))
                              (cons __tmp79600 __tmp79595))))
                       (declare (not safe))
                       (cons _tmp77815_ __tmp79594))))
                (declare (not safe))
                (cons __tmp79593 _post77781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77776_
                                                  _rest77808_
                                                  __tmp79608
                                                  __tmp79601
                                                  __tmp79592)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77620_
                                                _hd77809_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7778277796_))
                              (let ((_tl7779277849_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7778277796_)))
                                    (_hd7779177847_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7778277796_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7779177847_))
                                    (let ((_tl7779477854_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7779177847_)))
                                          (_hd7779377852_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7779177847_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7779477854_))
                                          (let ((_hd77857_ _hd7779377852_)
                                                (_rest77859_ _tl7779277849_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7779077844_
                                               _rest77859_
                                               _hd77857_)))
                                          (let ((_hd77832_ _hd7779177847_)
                                                (_rest77834_ _tl7779277849_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7778777824_
                                               _rest77834_
                                               _hd77832_)))))
                                    (let ((_hd77832_ _hd7779177847_)
                                          (_rest77834_ _tl7779277849_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7778777824_
                                         _rest77834_
                                         _hd77832_)))))
                              (let ()
                                (declare (not safe))
                                (_else7778577804_))))))))
                 (_compile-bind77624_
                  (lambda (_bind77768_ _post77769_ _body77770_)
                    (let ((__tmp79627
                           (let ((__tmp79628
                                  (let ((__tmp79631 (reverse _bind77768_))
                                        (__tmp79629
                                         (let ((__tmp79630
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77625_
                                                   _post77769_
                                                   _body77770_))))
                                           (declare (not safe))
                                           (cons __tmp79630 '()))))
                                    (declare (not safe))
                                    (cons __tmp79631 __tmp79629))))
                             (declare (not safe))
                             (cons 'let __tmp79628))))
                      (declare (not safe))
                      (__SRC__% __tmp79627 _stx77620_))))
                 (_compile-post77625_
                  (lambda (_post77627_ _body77628_)
                    (let ((__tmp79632
                           (let ((__tmp79633
                                  (let ((__tmp79634
                                         (let ((__tmp79636
                                                (lambda (_hd77630_ _r77631_)
                                                  (let* ((_hd7763277655_
                                                          _hd77630_)
                                                         (_E7763677659_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7763277655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7764977753_
                                                           (lambda (_expr77751_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77751_ _r77631_))))
                  (_K7764477731_
                   (lambda (_expr77728_ _id77729_)
                     (let ((__tmp79637
                            (let ((__tmp79638
                                   (let ((__tmp79639
                                          (let ((__tmp79640
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77728_ '()))))
                                            (declare (not safe))
                                            (cons _id77729_ __tmp79640))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79639))))
                              (declare (not safe))
                              (__SRC__% __tmp79638 _stx77620_))))
                       (declare (not safe))
                       (cons __tmp79637 _r77631_))))
                  (_K7763777698_
                   (lambda (_init77663_ _len77664_ _expr77665_ _tmp77666_)
                     (let ((__tmp79641
                            (let ((__tmp79642
                                   (let ((__tmp79643
                                          (let ((__tmp79657
                                                 (let ((__tmp79658
                                                        (let ((__tmp79659
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77665_ '()))))
                  (declare (not safe))
                  (cons _tmp77666_ __tmp79659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79658 '())))
                                                (__tmp79644
                                                 (let ((__tmp79653
                                                        (let ((__tmp79654
                                                               (let ((__tmp79655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79656
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77664_ '()))))
                                (declare (not safe))
                                (cons _tmp77666_ __tmp79656))))
                         (declare (not safe))
                         (cons '__check-values __tmp79655))))
                  (declare (not safe))
                  (__SRC__% __tmp79654 _stx77620_)))
               (__tmp79645
                (let ((__tmp79646
                       (map (lambda (_hd77668_)
                              (let* ((_hd7766977676_ _hd77668_)
                                     (_E7767177680_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7766977676_))))
                                     (_K7767277686_
                                      (lambda (_k77683_ _id77684_)
                                        (let ((__tmp79647
                                               (let ((__tmp79648
                                                      (let ((__tmp79649
                                                             (let ((__tmp79650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79651
                                   (let ((__tmp79652
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77683_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77666_ __tmp79652))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79651))))
                       (declare (not safe))
                       (cons __tmp79650 '()))))
                (declare (not safe))
                (cons _id77684_ __tmp79649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79648))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79647 _stx77620_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7766977676_))
                                    (let ((_hd7767377689_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7766977676_)))
                                          (_tl7767477691_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7766977676_))))
                                      (let* ((_id77694_ _hd7767377689_)
                                             (_k77696_ _tl7767477691_))
                                        (declare (not safe))
                                        (_K7767277686_ _k77696_ _id77694_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7767177680_)))))
                            _init77663_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79653
                                                         __tmp79645))))
                                            (declare (not safe))
                                            (cons __tmp79657 __tmp79644))))
                                     (declare (not safe))
                                     (cons 'let __tmp79643))))
                              (declare (not safe))
                              (__SRC__% __tmp79642 _stx77620_))))
                       (declare (not safe))
                       (cons __tmp79641 _r77631_)))))
              (if (let () (declare (not safe)) (##pair? _hd7763277655_))
                  (let ((_tl7765177758_
                         (let () (declare (not safe)) (##cdr _hd7763277655_)))
                        (_hd7765077756_
                         (let () (declare (not safe)) (##car _hd7763277655_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7765077756_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7765177758_))
                            (let ((_tl7765377763_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7765177758_)))
                                  (_hd7765277761_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7765177758_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7765377763_))
                                  (let ((_expr77766_ _hd7765277761_))
                                    (declare (not safe))
                                    (_K7764977753_ _expr77766_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7765377763_))
                                      (let ((_tl7764377717_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7765377763_)))
                                            (_hd7764277715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7765377763_))))
                                        (let ((_tmp77706_ _hd7765077756_)
                                              (_expr77713_ _hd7765277761_)
                                              (_len77720_ _hd7764277715_)
                                              (_init77722_ _tl7764377717_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763777698_
                                             _init77722_
                                             _len77720_
                                             _expr77713_
                                             _tmp77706_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763677659_)))))
                            (let () (declare (not safe)) (_E7763677659_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7765177758_))
                            (let ((_tl7764877743_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7765177758_)))
                                  (_hd7764777741_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7765177758_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7764877743_))
                                  (let ((_id77739_ _hd7765077756_)
                                        (_expr77746_ _hd7764777741_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7764477731_ _expr77746_ _id77739_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7764877743_))
                                      (let ((_tl7764377717_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7764877743_)))
                                            (_hd7764277715_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7764877743_))))
                                        (let ((_tmp77706_ _hd7765077756_)
                                              (_expr77713_ _hd7764777741_)
                                              (_len77720_ _hd7764277715_)
                                              (_init77722_ _tl7764377717_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763777698_
                                             _init77722_
                                             _len77720_
                                             _expr77713_
                                             _tmp77706_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763677659_)))))
                            (let () (declare (not safe)) (_E7763677659_)))))
                  (let () (declare (not safe)) (_E7763677659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79635 (list _body77628_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79636
                                                   __tmp79635
                                                   _post77627_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79634))))
                             (declare (not safe))
                             (cons 'begin __tmp79633))))
                      (declare (not safe))
                      (__SRC__% __tmp79632 _stx77620_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77620_
             _compile-simple77622_
             _compile-values77623_)))))
    (define __compile-call%
      (lambda (_stx77580_)
        (let* ((_$e77582_ _stx77580_)
               (_$E7758477593_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77582_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77582_))
              (let* ((_$tgt7758577596_
                      (let () (declare (not safe)) (__AST-e _$e77582_)))
                     (_$hd7758677599_
                      (let () (declare (not safe)) (##car _$tgt7758577596_)))
                     (_$tl7758777602_
                      (let () (declare (not safe)) (##cdr _$tgt7758577596_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7758777602_))
                    (let* ((_$tgt7758877606_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7758777602_)))
                           (_$hd7758977609_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7758877606_)))
                           (_$tl7759077612_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7758877606_))))
                      (let* ((_rator77616_ _$hd7758977609_)
                             (_rands77618_ _$tl7759077612_)
                             (__tmp79660
                              (let ((__tmp79662
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77616_)))
                                    (__tmp79661 (map __compile _rands77618_)))
                                (declare (not safe))
                                (cons __tmp79662 __tmp79661))))
                        (declare (not safe))
                        (__SRC__% __tmp79660 _stx77580_)))
                    (let () (declare (not safe)) (_$E7758477593_))))
              (let () (declare (not safe)) (_$E7758477593_))))))
    (define __compile-ref%
      (lambda (_stx77542_)
        (let* ((_$e77544_ _stx77542_)
               (_$E7754677555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77544_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77544_))
              (let* ((_$tgt7754777558_
                      (let () (declare (not safe)) (__AST-e _$e77544_)))
                     (_$hd7754877561_
                      (let () (declare (not safe)) (##car _$tgt7754777558_)))
                     (_$tl7754977564_
                      (let () (declare (not safe)) (##cdr _$tgt7754777558_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7754977564_))
                    (let* ((_$tgt7755077568_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7754977564_)))
                           (_$hd7755177571_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7755077568_)))
                           (_$tl7755277574_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7755077568_))))
                      (let ((_id77578_ _$hd7755177571_))
                        (if (let ((__tmp79663
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7755277574_))))
                              (declare (not safe))
                              (equal? __tmp79663 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77578_ _stx77542_))
                            (let () (declare (not safe)) (_$E7754677555_)))))
                    (let () (declare (not safe)) (_$E7754677555_))))
              (let () (declare (not safe)) (_$E7754677555_))))))
    (define __compile-setq%
      (lambda (_stx77489_)
        (let* ((_$e77491_ _stx77489_)
               (_$E7749377505_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77491_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77491_))
              (let* ((_$tgt7749477508_
                      (let () (declare (not safe)) (__AST-e _$e77491_)))
                     (_$hd7749577511_
                      (let () (declare (not safe)) (##car _$tgt7749477508_)))
                     (_$tl7749677514_
                      (let () (declare (not safe)) (##cdr _$tgt7749477508_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7749677514_))
                    (let* ((_$tgt7749777518_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7749677514_)))
                           (_$hd7749877521_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7749777518_)))
                           (_$tl7749977524_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7749777518_))))
                      (let ((_id77528_ _$hd7749877521_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7749977524_))
                            (let* ((_$tgt7750077530_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7749977524_)))
                                   (_$hd7750177533_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7750077530_)))
                                   (_$tl7750277536_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7750077530_))))
                              (let ((_expr77540_ _$hd7750177533_))
                                (if (let ((__tmp79669
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7750277536_))))
                                      (declare (not safe))
                                      (equal? __tmp79669 '()))
                                    (let ((__tmp79664
                                           (let ((__tmp79665
                                                  (let ((__tmp79668
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77528_
                                                            _stx77489_)))
                                                        (__tmp79666
                                                         (let ((__tmp79667
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77540_))))
                   (declare (not safe))
                   (cons __tmp79667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79668
                                                          __tmp79666))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79665))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79664 _stx77489_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7749377505_)))))
                            (let () (declare (not safe)) (_$E7749377505_)))))
                    (let () (declare (not safe)) (_$E7749377505_))))
              (let () (declare (not safe)) (_$E7749377505_))))))
    (define __compile-if%
      (lambda (_stx77421_)
        (let* ((_$e77423_ _stx77421_)
               (_$E7742577440_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77423_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77423_))
              (let* ((_$tgt7742677443_
                      (let () (declare (not safe)) (__AST-e _$e77423_)))
                     (_$hd7742777446_
                      (let () (declare (not safe)) (##car _$tgt7742677443_)))
                     (_$tl7742877449_
                      (let () (declare (not safe)) (##cdr _$tgt7742677443_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7742877449_))
                    (let* ((_$tgt7742977453_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7742877449_)))
                           (_$hd7743077456_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7742977453_)))
                           (_$tl7743177459_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7742977453_))))
                      (let ((_p77463_ _$hd7743077456_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7743177459_))
                            (let* ((_$tgt7743277465_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7743177459_)))
                                   (_$hd7743377468_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7743277465_)))
                                   (_$tl7743477471_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7743277465_))))
                              (let ((_t77475_ _$hd7743377468_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7743477471_))
                                    (let* ((_$tgt7743577477_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7743477471_)))
                                           (_$hd7743677480_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7743577477_)))
                                           (_$tl7743777483_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7743577477_))))
                                      (let ((_f77487_ _$hd7743677480_))
                                        (if (let ((__tmp79677
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7743777483_))))
                                              (declare (not safe))
                                              (equal? __tmp79677 '()))
                                            (let ((__tmp79670
                                                   (let ((__tmp79671
                                                          (let ((__tmp79676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77463_)))
                        (__tmp79672
                         (let ((__tmp79675
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77475_)))
                               (__tmp79673
                                (let ((__tmp79674
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77487_))))
                                  (declare (not safe))
                                  (cons __tmp79674 '()))))
                           (declare (not safe))
                           (cons __tmp79675 __tmp79673))))
                    (declare (not safe))
                    (cons __tmp79676 __tmp79672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79671))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79670 _stx77421_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7742577440_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7742577440_)))))
                            (let () (declare (not safe)) (_$E7742577440_)))))
                    (let () (declare (not safe)) (_$E7742577440_))))
              (let () (declare (not safe)) (_$E7742577440_))))))
    (define __compile-quote%
      (lambda (_stx77383_)
        (let* ((_$e77385_ _stx77383_)
               (_$E7738777396_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77385_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77385_))
              (let* ((_$tgt7738877399_
                      (let () (declare (not safe)) (__AST-e _$e77385_)))
                     (_$hd7738977402_
                      (let () (declare (not safe)) (##car _$tgt7738877399_)))
                     (_$tl7739077405_
                      (let () (declare (not safe)) (##cdr _$tgt7738877399_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7739077405_))
                    (let* ((_$tgt7739177409_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7739077405_)))
                           (_$hd7739277412_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7739177409_)))
                           (_$tl7739377415_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7739177409_))))
                      (let ((_e77419_ _$hd7739277412_))
                        (if (let ((__tmp79681
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7739377415_))))
                              (declare (not safe))
                              (equal? __tmp79681 '()))
                            (let ((__tmp79678
                                   (let ((__tmp79679
                                          (let ((__tmp79680
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77419_))))
                                            (declare (not safe))
                                            (cons __tmp79680 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79679))))
                              (declare (not safe))
                              (__SRC__% __tmp79678 _stx77383_))
                            (let () (declare (not safe)) (_$E7738777396_)))))
                    (let () (declare (not safe)) (_$E7738777396_))))
              (let () (declare (not safe)) (_$E7738777396_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77345_)
        (let* ((_$e77347_ _stx77345_)
               (_$E7734977358_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77347_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77347_))
              (let* ((_$tgt7735077361_
                      (let () (declare (not safe)) (__AST-e _$e77347_)))
                     (_$hd7735177364_
                      (let () (declare (not safe)) (##car _$tgt7735077361_)))
                     (_$tl7735277367_
                      (let () (declare (not safe)) (##cdr _$tgt7735077361_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7735277367_))
                    (let* ((_$tgt7735377371_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7735277367_)))
                           (_$hd7735477374_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7735377371_)))
                           (_$tl7735577377_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7735377371_))))
                      (let ((_e77381_ _$hd7735477374_))
                        (if (let ((__tmp79684
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7735577377_))))
                              (declare (not safe))
                              (equal? __tmp79684 '()))
                            (let ((__tmp79682
                                   (let ((__tmp79683
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77381_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79683))))
                              (declare (not safe))
                              (__SRC__% __tmp79682 _stx77345_))
                            (let () (declare (not safe)) (_$E7734977358_)))))
                    (let () (declare (not safe)) (_$E7734977358_))))
              (let () (declare (not safe)) (_$E7734977358_))))))
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
